package generator;

import ast.*;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import javascript.Require;
import javascript.JavaScriptStatement;
import javascript.TypedArray;
import programprinter.PrettyPrinter;

import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

public class Generator {
    private static final Random rand = new Random();
    private static final PrettyPrinter printer = new PrettyPrinter();
    private static final String DEFAULT_CONTEXT_NAME = "context";
    private final String HEADER = "\nasync function main() {";
    private final String FOOTER = "\n}main().catch(console.error);";
    private final String SHADERS_PATH = "/rsrcs/shaders/";
    private final String JSON_DIRECTORY_PATH = "./rsrcs/webgpu/interfaces/";
    private final int MAX_DEVICES = 1;
    private final int numDevices;

    // Hash map to keep track of state
    // Key: Type of object eg adapter, device
    // Value: Reference to that objet that currently exists
    private final Map<String, List<String>> symbolTable = new HashMap<>();
    public final Map<String, Map<String, List<Parameter>>> objectAttributesTable = new HashMap<>();
    private final Map<String, String> variableToReceiverType = new HashMap<>();
    private final Map<String, String> variableToReceiverName = new HashMap<>();
    private final Map<String, Set<String>> callUnavailability = new HashMap<>();
    private final Map<String, Set<String>> interfaceToAvailableCalls = new HashMap<>();
    private final Map<String, String> availableCallsToInterface = new HashMap<>();
    private final HashMap<String, Map<String, String>> shaderNameToProperties = new HashMap<>();
    private final HashMap<String, Map<String, Set<String>>> variableNameToTypeAndGeneratedVariableNames = new HashMap<>();

    private final Map<String, FileNameReceiverTypeCallNameCallType> receiverInits = new HashMap<>();
    // Maps method call name to File it's located in and Probability (double)
    private final Map<ReceiverTypeCallNameCallType, FileNameCallProbPair> callProbabilities = new HashMap<>();
    // Tracks call histories
//    private final Set<ReceiverNameCallNameCallType> callState = new HashSet<>();
    private final Map<String, Set<String>> callState = new HashMap<>();

    private final Parser parser = new Parser(this);
    private final int maxCalls;
    private final boolean allowOptParams;
    private final String platform;
    private ASTNode programNode;

    public Generator(int maxCalls, boolean allowOptParams, String platform) {
        this.maxCalls = maxCalls;
        this.allowOptParams = allowOptParams;
        this.numDevices = 0;
        this.platform = platform;

        try {
            this.initializeReceiverInitsAndCallProbs();
        } catch (IOException e) {
            System.err.println("Error initializing call probabilities and receiver init methods: " + e.getMessage());
        }

        symbolTable.put("RenderingContext", new ArrayList<>(List.of(DEFAULT_CONTEXT_NAME)));
    }

    public static void main(String[] args) {
        Generator generator = new Generator(500, false, "dawn");
        generator.generateProgram(1);
    }

    public String getParentVariable(String childVariable) {
        return variableToReceiverName.get(childVariable);
    }

    public String getPlatform() {
        return platform;
    }

    private void initializeReceiverInitsAndCallProbs() throws IOException {
        File jsonDirectory = new File(JSON_DIRECTORY_PATH);
        File[] apiInterfaces = jsonDirectory.listFiles();
        assert apiInterfaces != null;

        // Get all the names of the interfaces
//        List<String> interfaceNames = Arrays.stream(apiInterfaces).map(file -> file.getName().substring(0, file.getName().lastIndexOf('.'))).toList();
//        System.out.println(interfaceNames);

        for (File apiInterface : apiInterfaces) {

            ObjectMapper mapper = new ObjectMapper();
            JsonNode rootJsonNode = mapper.readTree(new File(JSON_DIRECTORY_PATH + apiInterface.getName()));
            String receiverType = rootJsonNode.get("receiverType").asText();

            if (rootJsonNode.has("methods")) {
                JsonNode methodsJsonNode = rootJsonNode.get("methods");
                for (JsonNode methodJsonNode : methodsJsonNode) {
                    addCall(apiInterface, methodJsonNode, receiverType, true);
                }
            }

            if (rootJsonNode.has("attributes")) {
                JsonNode attributesJsonNode = rootJsonNode.get("attributes");

                for (JsonNode attributeJsonNode : attributesJsonNode) {
                    addCall(apiInterface, attributeJsonNode, receiverType, false);
                }
            }

        }

    }

    private void addCall(File apiInterface, JsonNode callJsonNode, String receiverType, boolean isMethod) {
        String returnType = callJsonNode.get("returnType").asText();
        String callName = callJsonNode.get("name").asText();
        String fileName = apiInterface.getName();

        List<String> ignoredTypes = new ArrayList<>(Arrays.asList("string", "none", "boolean"));

        if (!ignoredTypes.contains(returnType)) {
            receiverInits.put(returnType, new FileNameReceiverTypeCallNameCallType(fileName, receiverType, callName, isMethod, returnType));
        }

        // READ FROM CONFIG FILE HERE
        callProbabilities.put(new ReceiverTypeCallNameCallType(receiverType, callName, isMethod), new FileNameCallProbPair(fileName, 0.0));
        addToInterfacesAvailableCalls(receiverType, callName);
        availableCallsToInterface.put(callName, receiverType);
    }

    public void addToMapOfGeneratedVariables(String receiverVariable, String newlyGeneratedVariable, String newlyGeneratedVariableType) {
        if (!variableNameToTypeAndGeneratedVariableNames.containsKey(receiverVariable)) {
            variableNameToTypeAndGeneratedVariableNames.put(receiverVariable, new HashMap<>());
        }

        Map<String, Set<String>> allGeneratedVariables = variableNameToTypeAndGeneratedVariableNames.get(receiverVariable);
        if (!allGeneratedVariables.containsKey(newlyGeneratedVariableType)) {
            allGeneratedVariables.put(newlyGeneratedVariableType, new HashSet<>());
        }

        allGeneratedVariables.get(newlyGeneratedVariableType).add(newlyGeneratedVariable);
    }

    public Set<String> getFromMapOfGeneratedVariables(String receiverVariable, String generatedVariableType) {
        if (!variableNameToTypeAndGeneratedVariableNames.containsKey(receiverVariable)) {
            return Collections.emptySet();
        }

        return variableNameToTypeAndGeneratedVariableNames.get(receiverVariable).get(generatedVariableType);
    }

    private void removeFromMapOfGeneratedVariables(String newlyGeneratedVariable, String newlyGeneratedVariableType) {
        String receiverVariable = variableToReceiverName.get(newlyGeneratedVariable);


        Set<String> generatedVariables = variableNameToTypeAndGeneratedVariableNames.get(receiverVariable).get(newlyGeneratedVariableType);
        if (generatedVariables != null) {
            generatedVariables.remove(newlyGeneratedVariable);
        }
        removeFromVariableToReceiverNameTable(newlyGeneratedVariable);
    }

    private void addToInterfacesAvailableCalls(String receiverType, String callName) {
        if (!interfaceToAvailableCalls.containsKey(receiverType)) {
            interfaceToAvailableCalls.put(receiverType, new HashSet<>());
        }

        interfaceToAvailableCalls.get(receiverType).add(callName);
    }

    // ASSIGN PROBABILTIES BY FIRST LOADING ALL METHODS FROM ALL FILES INTO SOME MAP, INITIALIZE PROBABILITIES
    // EG MAP OF STRING TO DOUBLE

    public void generateProgram(int fileNum) {
        this.programNode = new ProgramNode();
        programNode.addNode(new JavaScriptStatement(HEADER));

        for (int i = 0; i < maxCalls; i++) {
            ReceiverTypeCallNameCallType[] methods = callProbabilities.keySet().toArray(new ReceiverTypeCallNameCallType[0]);
            int randIdx = rand.nextInt(methods.length);
            ReceiverTypeCallNameCallType randMethod = methods[randIdx];
            String fileName = callProbabilities.get(randMethod).fileName;

            try {
                this.programNode.addNode(parser.parseAndBuildRandCall(JSON_DIRECTORY_PATH + fileName, randMethod));
            } catch (IOException e) {
                System.err.println("Failed to open JSON file: " + fileName + ". " + e.getMessage());
            }
        }

        programNode.addNode(new JavaScriptStatement(FOOTER));
        printer.printToFile(this.programNode, fileNum);
    }

    public void addToObjectAttributesTable(String variableName, Map<String, List<Parameter>> keyValuePairs) {
        if (keyValuePairs == null) {
            return;
        }

        if (!objectAttributesTable.containsKey(variableName)) {
            objectAttributesTable.put(variableName, new HashMap<>());
        }

        Map<String, List<Parameter>> specificObjectAttributesTable = objectAttributesTable.get(variableName);

        specificObjectAttributesTable.putAll(keyValuePairs);

    }

    public void removeFromObjectAttributesTable(String variableName) {
        objectAttributesTable.remove(variableName);
    }

    public String getObjectAttributes(String variableName, String fieldName) {

        List<Parameter> parameters = objectAttributesTable.get(variableName).get(fieldName);

        if (parameters == null || parameters.isEmpty()) {
            return null;
        }

        return objectAttributesTable.get(variableName).get(fieldName).getFirst().getValue();
    }

    public void setObjectAttribute(String variableName, String fieldName, String value) {
        List<Parameter> parameters = objectAttributesTable.get(variableName).get(fieldName);
        parameters.clear();
        parameters.add(new Parameter(value));
    }

    public void appendObjectAttribute(String variableName, String fieldName, String value) {
        List<Parameter> parameters = objectAttributesTable.get(variableName).get(fieldName);
        parameters.add(new Parameter(value));
    }

    // Removes the parameter with a given value if it exists eg 1 element of an array
    public void removeObjectAttribute(String variableName, String fieldName, String value) {
        List<Parameter> parameters = objectAttributesTable.get(variableName).get(fieldName);
        parameters.remove(new Parameter(value));
    }

    public List<String> getAllObjectAttributes(String variableName, String fieldName) {
        return objectAttributesTable.get(variableName).get(fieldName).stream().map(Parameter::getValue).toList();
    }

    public List<Parameter> getAllObjectAttributesAsParameters(String variableName, String fieldName) {
        return objectAttributesTable.get(variableName).get(fieldName);
    }

    public void addToSymbolTable(String returnedObjectType, String variableName) {
        if (!symbolTable.containsKey(returnedObjectType)) {
            symbolTable.put(returnedObjectType, new ArrayList<>());
        }

        symbolTable.get(returnedObjectType).add(variableName);
        variableToReceiverType.put(variableName, returnedObjectType);

        // Limit number of devices that can be generated
        if (symbolTable.get("GPUDevice") != null && symbolTable.get("GPUDevice").size() == MAX_DEVICES) {
            callProbabilities.remove(new ReceiverTypeCallNameCallType("GPUAdapter", "requestDevice", true));
            interfaceToAvailableCalls.get("GPUAdapter").remove("requestDevice");
        }

    }

    public String getVariableType(String variableName) {
        return variableToReceiverType.get(variableName);
    }

    public void removeFromSymbolTable(String returnedObjectType, String variableName) {
        symbolTable.get(returnedObjectType).remove(variableName);
//        removeFromObjectAttributesTable(variableName);

        if (symbolTable.get(returnedObjectType).isEmpty()) {
            symbolTable.remove(returnedObjectType);
//            variableToReceiverType.remove(variableName);
//            removeFromMapOfGeneratedVariables(variableName, returnedObjectType);
        }
    }

    public String getRandomReceiver(String receiverType, String callName) {

        return getRandomReceiver(receiverType, callName, null, null, null, null);


    }

    public String getRandomReceiver(String receiverType, String callName, Map<String, List<String>> requirements, List<String> sameObjects, String receiverName, ParameterNode parameterNode) {
        // Maybe getRandomReceiver calls this one method, passing null for requirements
        // Then this one passes requirements into generateCall
        List<String> variablesThatMeetReqs = new ArrayList<>();
        Map<String, String> sameObjectReqs = findAllVariablesThatMeetReqs(receiverType, callName, requirements, sameObjects, variablesThatMeetReqs, receiverName, parameterNode);

        if (!symbolTable.containsKey(receiverType) || variablesThatMeetReqs.isEmpty()) {
            // pass in same objects here
            return parseCallInfoFromReceiverTypeAndGenerateCall(receiverType, requirements, sameObjectReqs);
        }

        int randIdx = rand.nextInt(variablesThatMeetReqs.size());

        return variablesThatMeetReqs.get(randIdx);

    }

    private Map<String, String> findAllVariablesThatMeetReqs(String receiverType, String callName, Map<String, List<String>> requirements, List<String> sameObjects, List<String> variablesThatMeetReqs, String receiverName, ParameterNode parameterNode) {
        List<String> allVariables = symbolTable.get(receiverType);

        if (allVariables == null) {
            return null;
        }

        Map<String, String> sameObjectsReqs = null;
        if (requirements != null || sameObjects != null) {
            // Filter out those that don't meet the requirement,
            // And then need to generate one with the requirement
            addVariablesThatMeetReqsToList(receiverType, allVariables, variablesThatMeetReqs, requirements, parameterNode);
            sameObjectsReqs = ensureSameObjectRequirementsMet(variablesThatMeetReqs, sameObjects, receiverName);
        } else {
            variablesThatMeetReqs.addAll(allVariables);
        }

        // Remove variables if call is unavailable to them
        List<String> unavailableVariables = new ArrayList<>();
        for (String variableThatMeetsReqs : variablesThatMeetReqs) {
            if (callUnavailability.containsKey(variableThatMeetsReqs) && callUnavailability.get(variableThatMeetsReqs).contains(receiverType + "." + callName)) {
                unavailableVariables.add(variableThatMeetsReqs);
            }
        }

        variablesThatMeetReqs.removeAll(unavailableVariables);

        return sameObjectsReqs;

    }

    private Map<String, String> ensureSameObjectRequirementsMet(List<String> variablesThatMeetReqs, List<String> sameObjects, String receiverName) {
        if (sameObjects == null) {
            // this fails when cant find a variable but still ned same object reqs to be genrated
            return null;
        }
        Map<String, String> sameObjectsReqs = new HashMap<>();

        if (variablesThatMeetReqs.isEmpty()) {
            for (String sameObjectRequirement : sameObjects) {
                String baseReceiver = findBaseReceiver(receiverName, sameObjectRequirement);
                sameObjectsReqs.put(sameObjectRequirement, baseReceiver);
            }
            return sameObjectsReqs;
        }



        List<String> toRemove = new ArrayList<>();
        for (String variableName : variablesThatMeetReqs) {
            for (String objectType : sameObjects) {
                String baseCallReceiver = findBaseReceiver(receiverName, objectType);
                sameObjectsReqs.put(objectType, baseCallReceiver);

                if (!findBaseReceiver(variableName, objectType).equals(baseCallReceiver)) {
                    toRemove.add(variableName);
                }

            }
        }

        variablesThatMeetReqs.removeAll(toRemove);
        return sameObjectsReqs;
    }

    private String findBaseReceiver(String variableName, String objectType) {
        String currentVariable = variableName;

        while (variableToReceiverName.containsKey(currentVariable) && !variableToReceiverType.get(currentVariable).equals(objectType)) {
            currentVariable = variableToReceiverName.get(currentVariable);
        }

        return currentVariable;
    }

    private void addVariablesThatMeetReqsToList(String paramType, List<String> allVariables, List<String> variablesThatMeetReqs, Map<String, List<String>> requirements, ParameterNode parameterNode) {
        if (requirements == null) {
            return;
        }

        for (String variableName : allVariables) {
            boolean meetsAllRequirements = true;

            // Only works for 1 level deep ie 1 dot
            for (Map.Entry<String, List<String>> requirement : requirements.entrySet()) {
                String variableToCheck = variableName;
                String[] split = requirement.getKey().split("\\.", 2);
                String attributeNameToCheck = split[1];
                System.out.println("attribute name to check " + attributeNameToCheck);
                System.out.println(requirement.getKey());
                System.out.println(requirement.getValue());
                System.out.println("full requirements " + requirements);

                List<String> attributeValuesToCheck = parseAttributeValue(requirement.getValue(), parameterNode);

                if (!requirement.getKey().startsWith(paramType)) {
                    variableToCheck = variableToReceiverName.get(variableName);
                }

                List<String> attributes = this.getAllObjectAttributes(variableToCheck, attributeNameToCheck);

                if (!new HashSet<>(attributes).containsAll(attributeValuesToCheck)) {
                    meetsAllRequirements = false;
                }
            }

            if (meetsAllRequirements) {
                variablesThatMeetReqs.add(variableName);
            }
        }

    }

    private List<String> parseAttributeValue(List<String> valuesList, ParameterNode parameterNode) {
        String firstValue = valuesList.getFirst();
        // This implementation assumes 1 single value, not multiple
        if (firstValue.startsWith("parent") || firstValue.startsWith("this")) {
            translateInnerRequirements(valuesList, parameterNode, firstValue);
        }

        return valuesList;
    }

    private void translateInnerRequirements(List<String> valuesList, ParameterNode parameterNode, String firstValue) {
        String[] splitAttribute = firstValue.split("\\.", 2);
        ParameterListNode parentList = parameterNode.getParentList();
        // Go through parnet List

        String actualParameterValue = "";

        // This splits eg colorAttachment.view.GPUTexture.size.width into colorAttachment.view & GPUTexture.size.width
        String[] secondarySplit = splitAttribute[1].split("(?=\\.[A-Z])");

        // Remove trailing dot
        String attributeToCheck = secondarySplit[0];
        System.out.println("attribute to check " + attributeToCheck);

        if (firstValue.startsWith("parent")) {

            actualParameterValue = parentList.getParameter(attributeToCheck);

            // hacky temporary fix
        } else if (firstValue.startsWith("this")) {
            ParameterNode rootNode = parameterNode.getRootParameterNode();
            actualParameterValue = rootNode.findNestedParameterNode(attributeToCheck).getParameter().getValue();
        }

        // Find the actual attribute value from objectAttributesTable
        if (secondarySplit.length > 1) {
            // Variable Name has been stored in actualParameterValue

            String variableName = actualParameterValue;

            // Since is a capital letter, means must find its parent
            String parentVariableName = getParentVariable(variableName);


            // Remove leading dot and parent type from the attribute name
            String[] tertiarySplit = secondarySplit[1].substring(1).split("\\.", 2);
            System.out.println(secondarySplit[0]);
            System.out.println(secondarySplit[1]);
            System.out.println("tertiary split: " + tertiarySplit[0] + " " + tertiarySplit[1]);

            if (tertiarySplit[0].equals("Inner")) {
                // Fetch teh variable name first, then fetch its parameters
                parentList = parameterNode.getParentList();
                System.out.println("parameter to get " + secondarySplit[0]);
                System.out.println(parentList.allParameters);
                String innerVariableName = parentList.getParameter(secondarySplit[0]);
                actualParameterValue = this.getObjectAttributes(innerVariableName, tertiarySplit[1]);

            } else {
                actualParameterValue = this.getObjectAttributes(parentVariableName, tertiarySplit[1]);
            }
        }


        valuesList.clear();
        valuesList.add(actualParameterValue);

        // modify valuesList
    }

    private String parseCallInfoFromReceiverTypeAndGenerateCall(String receiverType, Map<String, List<String>> requirements, Map<String, String> sameObjectsReqs) {
        FileNameReceiverTypeCallNameCallType initInfo = receiverInits.get(receiverType);

        String initMethodName = initInfo.callName;
        String initReceiverType = initInfo.receiverType;
        boolean initIsMethod = initInfo.methodCall;
        // need a loop. Go to receiverInit that matches sameobjectReqs. Then back track, pass in new sameobject reqs for the level above and so forth
        if (sameObjectsReqs != null && !sameObjectsReqs.isEmpty()) {
            while (!sameObjectsReqs.containsKey(initInfo.receiverType)) {
                String newVariableRequirement = parseCallInfoFromReceiverTypeAndGenerateCall(initInfo.receiverType, requirements, sameObjectsReqs);
                sameObjectsReqs.clear();
                sameObjectsReqs.put(initInfo.receiverType, newVariableRequirement);
            }
        }

        // PArse requirements to filter out those that are relevant


        return generateCall(new ReceiverTypeCallNameCallType(initReceiverType, initMethodName, initIsMethod), requirements, sameObjectsReqs, null);
    }

    public String generateCall(ReceiverTypeCallNameCallType receiverTypeCallNameCallType, Map<String, List<String>> requirements, Map<String, String> sameObjectsReqs, String specificReceiver) {
//        if (callState.contains(receiverNameCallNameCallType)) {
//            return;
//        }

        String receiverName = receiverTypeCallNameCallType.receiverName;
        String callName = receiverTypeCallNameCallType.callName;
        boolean isMethod = receiverTypeCallNameCallType.isMethod;
        String fileName = callProbabilities.get(receiverTypeCallNameCallType).fileName;

        ASTNode receiver = null;

        try {
            receiver = parser.parseAndBuildCall(JSON_DIRECTORY_PATH + fileName, callName, receiverName, isMethod, requirements, sameObjectsReqs, specificReceiver);
        } catch (IOException e) {
            System.err.println("Failed to open JSON file: " + fileName + ". " + e.getMessage());
        }

        this.programNode.addNode(receiver);

        if (receiver instanceof AssignmentNode) {
            return ((AssignmentNode) receiver).getVarName();
        } else {
            return null;
        }
    }

    public ASTNode generateDeclaration(JsonNode methodJsonNode, CallNode rootASTNode) {
        String varName = ParamGenerator.generateRandVarName();
        String returnType = methodJsonNode.get("returnType").asText();
        boolean isAsync = methodJsonNode.has("async");

        // Create the ASTNode
        ASTNode newRootNode = new AssignmentNode("const", isAsync, varName);
        newRootNode.addNode(rootASTNode);

        this.addToSymbolTable(returnType, varName);
        this.addToVariableToReceiverNameTable(varName, rootASTNode.getReceiver());
        this.addToObjectAttributesTable(varName, rootASTNode.getParameters());
        addToMapOfGeneratedVariables(rootASTNode.getReceiver(), varName, returnType);

        // Add to device tracker. What's the best way to search? maybe coyuld add as an object attribute
        // or could add as receiver attribute. Then recursive search

        return newRootNode;
    }

    private void addToVariableToReceiverNameTable(String varName, String receiver) {
        this.variableToReceiverName.put(varName, receiver);
    }

    private void removeFromVariableToReceiverNameTable(String varName) {
        this.variableToReceiverName.remove(varName);
    }

    public String determineReceiver(String receiverType, String callName, boolean hasRequirements, Map<String, List<String>> requirements, Map<String, String> sameObjectsReqs) {
        if (hasRequirements) {
            String requiredReceiver = null;
            if (sameObjectsReqs != null) {
                requiredReceiver = sameObjectsReqs.get(receiverType);
            }

            if (requiredReceiver == null) {
                Map<String, List<String>> finalisedRequirements = null;
                if (requirements != null) {
                    finalisedRequirements = new HashMap<>();
                    for (Map.Entry<String, List<String>> entry : requirements.entrySet()) {
                        if (entry.getKey().startsWith(receiverType)) {
                            finalisedRequirements.put(entry.getKey(), entry.getValue());
                        }
                    }
                }

                return getRandomReceiver(receiverType, callName, finalisedRequirements, null, null, null);
            }

            return requiredReceiver;
        }
        return receiverType;
    }

//    public void addToCallState(ReceiverNameCallNameCallType receiverNameCallNameCallType) {
//        callState.add(receiverNameCallNameCallType);
//    }
//
//    public void removeFromCallState(ReceiverNameCallNameCallType receiverNameCallNameCallType) {
//        callState.remove(receiverNameCallNameCallType);
//    }

    public String generateTopLevelStatement(String type) {
        ASTNode astNodeToPrepend = null;
        AssignmentNode assignmentNode = null;
        String varName = "";
        String[] splitNames = new String[0];
        if (type.contains(".")) {
            splitNames = type.split("\\.");
            type = splitNames[0];
        }

        switch (type) {
            case "typedArray":
                assignmentNode = new AssignmentNode("const", false);
                TypedArray typedArray = new TypedArray();
                assignmentNode.addNode(typedArray);
                varName = assignmentNode.getVarName();
                astNodeToPrepend = assignmentNode;
                break;
            case "shader":
                // Go to shaders folder, pick between compute or graphics, noting down which
                String chosenBaseShaderType;
                String shaderSubType = splitNames[1];
                switch (shaderSubType) {
                    case "compute":
                        chosenBaseShaderType = "compute";
                        break;
                    default:
                        chosenBaseShaderType = "graphics";
                }

                File shadersDirectory = new File("." + SHADERS_PATH + chosenBaseShaderType);
                File[] files = shadersDirectory.listFiles();
                assert files != null;
                String chosenFileName = files[rand.nextInt(files.length)].getName();

                String fullPath = "../WebGlitch" + SHADERS_PATH + chosenBaseShaderType + "/" + chosenFileName;

                if (chosenBaseShaderType.equals("graphics")) {
                    fullPath += "/" + shaderSubType + ".wgsl";
                }

                assignmentNode = new AssignmentNode("const", false);
                Require requireStatement = new Require(fullPath, true);
                assignmentNode.addNode(requireStatement);
                String importName = assignmentNode.getVarName();
                astNodeToPrepend = assignmentNode;

                varName += shaderSubType + "." + importName;

                // Later on, add available objects eg for improting JS objects
                this.addToShaderProperties(importName, chosenBaseShaderType, fullPath);
                break;
            default:
                System.out.println("reached here somehow");
        }

        this.programNode.addNodeToFront(astNodeToPrepend);

        return varName;
    }

    private void addToShaderProperties(String importName, String chosenShaderType, String fullPath) {
        if (!shaderNameToProperties.containsKey(importName)) {
            shaderNameToProperties.put(importName, new HashMap<>());
        }

        Map<String, String> propertiesMap = shaderNameToProperties.get(importName);
        propertiesMap.put("type", chosenShaderType);
        propertiesMap.put("path", fullPath);
    }

    public void setCallAvailability(String variableName, Set<String> callName, boolean isAvailable) {
        if (isAvailable) {
            removeFromCallUnavailability(variableName, callName);
            return;
        }

        addToCallUnavailability(variableName, callName);
    }

    public void addToCallUnavailability(String variableName, Set<String> callName) {

        if (!callUnavailability.containsKey(variableName)) {
            callUnavailability.put(variableName, new HashSet<>());
        }

        callUnavailability.get(variableName).addAll(callName);
    }

    public void removeFromCallUnavailability(String variableName, Set<String> callName) {
        if (callUnavailability.containsKey(variableName)) {
            callUnavailability.get(variableName).removeAll(callName);
        }
    }

    public void setCallState(String receiver, String callName, boolean isMethod) {
        if (!isMethod) {
            return;
        }

        if (!callState.containsKey(receiver)) {
            callState.put(receiver, new HashSet<>());
        }
        callState.get(receiver).add(callName);

        //        generator.addToCallState(new Generator.ReceiverNameCallNameCallType(currentReceiverType, callName, isMethod));
//        if (callJsonNode.has("resets")) {
//            JsonNode resetMethodsJsonNode = callJsonNode.get("resets");
//            for (JsonNode resetMethod : resetMethodsJsonNode) {
//                generator.removeFromCallState(new Generator.ReceiverNameCallNameCallType(resetMethod.get("receiverType").asText(), resetMethod.get("name").asText(), true));
//            }
//        }
    }

    // This one for when top level (ie no params). right now only supports setting it on yourself
    public void parseAndSetCallAvailability(String receiver, JsonNode conditionsNode) {
        List<String> callsToChangeAvailabilityOf = new ArrayList<>();
        if (!conditionsNode.has("setAvailable") && !conditionsNode.has("setUnavailable")) {
            return;
        }

        boolean setAvailable = conditionsNode.has("setAvailable");
        JsonNode availabilityNode = setAvailable ? conditionsNode.get("setAvailable") : conditionsNode.get("setUnavailable");

        if (availabilityNode.has("this")) {
            Parser.extractNodeAsList(availabilityNode.get("this"), callsToChangeAvailabilityOf);
            setCallAvailability(callsToChangeAvailabilityOf, receiver, setAvailable);
        }

        if (availabilityNode.has("children")) {
            JsonNode childrenNode = availabilityNode.get("children");
            childrenNode.fieldNames().forEachRemaining(fieldName -> {
                JsonNode childNodeCalls = childrenNode.get(fieldName);
                Parser.extractNodeAsList(childNodeCalls, callsToChangeAvailabilityOf);

                Set<String> generatedChildren = getFromMapOfGeneratedVariables(receiver, fieldName);
                if (generatedChildren != null) {
                    for (String generatedChild : generatedChildren) {
                        setCallAvailability(callsToChangeAvailabilityOf, generatedChild, setAvailable);
                    }
                }
            });
        }



    }

    public void parseAndSetCallAvailability(JsonNode conditionsNode, ParameterListNode parentList) {
        if (conditionsNode.has("setUnavailable")) {
            setCallAvailability(conditionsNode.get("setUnavailable"), false, parentList);
        }

        if (conditionsNode.has("setAvailable")) {
            setCallAvailability(conditionsNode.get("setAvailable"), true, parentList);
        }
    }

    private void setCallAvailability(List<String> callsToChangeAvailabilityOf, String receiver, boolean isAvailable) {


        // Check if it contains the value 'all':
        if (callsToChangeAvailabilityOf.getFirst().equals("all")) {
            callsToChangeAvailabilityOf.clear();
            String receiverType = variableToReceiverType.get(receiver);
            Set<String> allCalls = this.interfaceToAvailableCalls.get(receiverType);
            allCalls = allCalls.stream().map(callName -> receiverType + "." +callName).collect(Collectors.toSet());
            callsToChangeAvailabilityOf.addAll(allCalls);
        }

        this.setCallAvailability(receiver, new HashSet<>(callsToChangeAvailabilityOf), isAvailable);
    }

    private void setCallAvailability(JsonNode availabilityNode, boolean isAvailable, ParameterListNode parentList) {

        Map<String, Set<String>> allCalls = new HashMap<>();


        availabilityNode.fieldNames().forEachRemaining(fieldName -> {
            List<String> affectedCalls = Parser.getListFromJson(availabilityNode.get(fieldName).toString());
            String variableName = parentList.getParameter(fieldName);
            allCalls.put(variableName, new HashSet<>(affectedCalls));
        });

        for (Map.Entry<String, Set<String>> entry : allCalls.entrySet()) {
            this.setCallAvailability(entry.getKey(), entry.getValue(), isAvailable);
        }

    }

    public Set<String> getFromCallState(String receiverName) {
        return callState.get(receiverName);
    }

    public record FileNameCallProbPair(String fileName, Double callProbability) {
    }

    public record FileNameReceiverTypeCallNameCallType(String fileName, String receiverType, String callName, boolean methodCall, String returnType) {
    }

    public record ReceiverTypeCallNameCallType(String receiverName, String callName, boolean isMethod) {
    }

}
