package generator;

import ast.*;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import javascript.Require;
import javascript.JavaScriptStatement;
import javascript.TypedArray;
import org.checkerframework.checker.units.qual.A;
import programprinter.PrettyPrinter;

import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

public class Generator {
    public final RandomUtils randomUtils;
    private final PrettyPrinter printer = new PrettyPrinter();
    private final String DEFAULT_CONTEXT_NAME = "context";
    private final String HEADER_DEFAULT = "\nasync function main() {";
    private final String FOOTER_DEFAULT = "\n}main().then(() => {\n" +
            "}).catch(error => {\n" +
            "    console.log(error);\n" +
            "});";
    private final String HEADER_CTS = "\nasync function main(gpu: GPU) {";
    private final String FOOTER_CTS = "\n}";
    private final String HEADER;
    private final String FOOTER;
    private final String WEBGLITCH_PATH = WebGlitch.getPath();
    private final String SHADERS_PATH = WEBGLITCH_PATH + "/rsrcs/shaders/";
    private final String JSON_DIRECTORY_PATH = WEBGLITCH_PATH + "/rsrcs/webgpu/interfaces/";
    private final WebGlitchOptions webGlitchOptions;
    private final boolean mainOnly;
    private int numTypedArrays = 0;
    private final boolean ctsCompatible;
    private int numComputePassResultBuffers = 0;


    // Hash map to keep track of state
    // Key: Type of object eg adapter, device
    // Value: Reference to that objet that currently exists
    private final Map<String, List<String>> symbolTable = new LinkedHashMap<>();
    public final Map<String, Map<String, List<Parameter>>> objectAttributesTable = new LinkedHashMap<>();
    private final Map<String, String> variableToReceiverType = new LinkedHashMap<>();
    private final Map<String, String> variableToReceiverName = new LinkedHashMap<>();
    private final Map<String, Set<String>> callUnavailability = new LinkedHashMap<>();
    private final Map<String, Set<String>> interfaceToAvailableCalls = new LinkedHashMap<>();
    private final Map<String, String> availableCallsToInterface = new LinkedHashMap<>();
    private final Map<String, Set<String>> parentVariableToBuffersUsed = new LinkedHashMap<>();

    // Maps parent CommandEncoder to the name of the outBuffer and the corresponding pipeline
    private final Map<String, Map<String, String>> toPrintCommandEncoderAndItsPipeline = new LinkedHashMap<>();
    public final Map<String, Map<String, String>> shaderNameToProperties = new LinkedHashMap<>();
    private final Map<String, Map<String, Set<String>>> variableNameToTypeAndGeneratedVariableNames = new LinkedHashMap<>();

    // Stores counts of different webgpu interfaces for variable names and labels
    private final Map<String, Integer> interfaceCounts = new LinkedHashMap<>();

    private final Map<String, FileNameReceiverTypeCallNameCallType> receiverInits = new LinkedHashMap<>();
    // Maps method call name to File it's located in and Probability (double)
    private final Map<ReceiverTypeCallNameCallType, FileNameCallProbPair> callProbabilities = new LinkedHashMap<>();
    // Tracks call histories
//    private final Set<ReceiverNameCallNameCallType> callState = new HashSet<>();
    private final Map<String, Set<String>> callState = new LinkedHashMap<>();

    private final Parser parser = new Parser(this);
    private final int maxCalls;
    private final boolean wgpuCompatible;
    private ASTNode programNode;

    public Generator(int maxCalls, boolean wgpuCompatible, boolean ctsCompatible, Long seed, boolean mainOnly) {
        this.maxCalls = maxCalls;
        this.wgpuCompatible = wgpuCompatible;
        this.mainOnly = mainOnly;
        this.ctsCompatible = ctsCompatible;

        if (seed != null) {
            this.randomUtils = new RandomUtils(seed);
        } else {
            this.randomUtils = new RandomUtils();
        }

        this.webGlitchOptions = new WebGlitchOptions(randomUtils);

        HEADER = ctsCompatible ? HEADER_CTS : HEADER_DEFAULT;
        FOOTER = ctsCompatible ? FOOTER_CTS : FOOTER_DEFAULT;

        try {
            this.initializeReceiverInitsAndCallProbs();
        } catch (IOException e) {
            System.err.println("Error initializing call probabilities and receiver init methods: " + e.getMessage());
        }

        symbolTable.put("RenderingContext", new ArrayList<>(List.of(DEFAULT_CONTEXT_NAME)));
        System.out.println("Generating file using seed: " + randomUtils.getSeed());
    }

    public static void main(String[] args) {
        Generator generator = new Generator(500,  false, false, null, false);
        generator.generateProgram("./output/1.js");
    }

    public String getParentVariable(String childVariable) {
        return variableToReceiverName.get(childVariable);
    }

    public boolean getWgpuCompatible() {
        return wgpuCompatible;
    }

    public RandomUtils getRandomUtils() {
        return randomUtils;
    }

    public WebGlitchOptions getWebGlitchOptions() { return webGlitchOptions; }

    public boolean getCtsCompatible() { return this.ctsCompatible; }

    private void initializeReceiverInitsAndCallProbs() throws IOException {
        File jsonDirectory = new File(JSON_DIRECTORY_PATH);
        File[] apiInterfaces = jsonDirectory.listFiles();
        assert apiInterfaces != null;
        Arrays.sort(apiInterfaces, Comparator.comparing(File::getName));


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
            variableNameToTypeAndGeneratedVariableNames.put(receiverVariable, new LinkedHashMap<>());
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

    // Returns true if proceed with what you want, false otherwise
    public boolean decideBasedOnChance(double percent) {
        return randomUtils.nextDouble(1.0) < percent;
    }

    public void addToParentVariablesAndTheirBuffersUsed(String parentVariable, String bufferVariable) {
        if (!parentVariableToBuffersUsed.containsKey(parentVariable)) {
            parentVariableToBuffersUsed.put(parentVariable, new HashSet<>());
        }
        parentVariableToBuffersUsed.get(parentVariable).add(bufferVariable);
    }

    public void removeFromParentVariablesAndTheirBuffersUsed(String parentVariable) {
        parentVariableToBuffersUsed.remove(parentVariable);
    }

    public Set<String> getBuffersUsedFromParentVariable(String parentVariable) {
        Set<String> buffersUsed = parentVariableToBuffersUsed.get(parentVariable);

        if (buffersUsed == null) {
            return Collections.emptySet();
        }

        return buffersUsed;
    }

    public void addToProgramNode(ASTNode node) {
        programNode.addNode(node);
    }

    public void generateProgram(String fileNameToUse) {
        this.programNode = new ProgramNode();



        programNode.addNode(new JavaScriptStatement(HEADER));
        ReceiverTypeCallNameCallType[] methods = callProbabilities.keySet().toArray(new ReceiverTypeCallNameCallType[0]);
        double percentOfAvailableCalls = webGlitchOptions.getPercentOfAvailableCallsToGenerate();
        int numAvailableCalls = (int) Math.floor(percentOfAvailableCalls * methods.length);
        List<ReceiverTypeCallNameCallType> methodsAsList = Arrays.asList(methods);
        Collections.shuffle(methodsAsList, randomUtils.getRandom());
        List<ReceiverTypeCallNameCallType> selectedMethods = methodsAsList.subList(0, numAvailableCalls);

        for (int i = 0; i < maxCalls; i++) {

            int randIdx = randomUtils.nextInt(selectedMethods.size());
            ReceiverTypeCallNameCallType randMethod = selectedMethods.get(randIdx);
            String fileName = callProbabilities.get(randMethod).fileName;

            try {
                parser.parseAndBuildRandCall(JSON_DIRECTORY_PATH + fileName, randMethod);
            } catch (IOException e) {
                System.err.println("Failed to open JSON file: " + fileName + ". " + e.getMessage());
            }
        }

        programNode.addNode(new JavaScriptStatement(FOOTER));
        printer.printToFile(this.programNode, fileNameToUse, randomUtils.getSeed(), this.mainOnly, this.ctsCompatible, webGlitchOptions);
    }

    public void addToObjectAttributesTable(String variableName, Map<String, List<Parameter>> keyValuePairs) {
        if (keyValuePairs == null) {
            return;
        }

        if (!objectAttributesTable.containsKey(variableName)) {
            objectAttributesTable.put(variableName, new LinkedHashMap<>());
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

    // TODO: Make the fieldName if it doesn't exist
    public void setObjectAttribute(String variableName, String fieldName, String value) {
        List<Parameter> parameters = objectAttributesTable.get(variableName).get(fieldName);
        parameters.clear();
        parameters.add(new Parameter(value));
    }

    public void setMultipleObjectAttributes(String variableName, String fieldName, List<String> values) {
        Map<String, List<Parameter>> mapOfParameters = objectAttributesTable.get(variableName);
        if (!mapOfParameters.containsKey(fieldName)) {
            mapOfParameters.put(fieldName, new ArrayList<>());
        }

        List<Parameter> parameterList = mapOfParameters.get(fieldName);
        parameterList.clear();
        for (String value : values) {
            parameterList.add(new Parameter(value));
        }
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
        if (symbolTable.get("GPUDevice") != null && symbolTable.get("GPUDevice").size() == webGlitchOptions.getMaxGPUDevices()) {
            ReceiverTypeCallNameCallType receiverTypeCallNameCallType = new ReceiverTypeCallNameCallType("GPUAdapter", "requestDevice", true);
            String fileName = callProbabilities.get(receiverTypeCallNameCallType).fileName;
            callProbabilities.put(receiverTypeCallNameCallType, new FileNameCallProbPair(fileName, 0.0));
            interfaceToAvailableCalls.get("GPUAdapter").remove("requestDevice");
        }

        int interfaceCount = getInterfaceCount(returnedObjectType);
        interfaceCounts.put(returnedObjectType, interfaceCount + 1);


    }

    public Integer getInterfaceCount(String interfaceType) {
        return interfaceCounts.getOrDefault(interfaceType, 0);
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

        return getRandomReceiver(receiverType, callName, null, null, null, null, null, null);


    }

    public String getRandomReceiver(String receiverType, String callName, Map<String, List<String>> requirements, List<String> sameObjects, String receiverName, ParameterNode parameterNode, String cannotBeThisObject, Boolean forceGenerateNewObject) {
        // null on forceGenerateNewObject means undecided
        // True or false means it has already been rolled
        if (forceGenerateNewObject == null) {
            forceGenerateNewObject = randomUtils.randomChanceIsSuccessful(webGlitchOptions.getGenerateNewRequiredObjectChance());
        }

        // Maybe getRandomReceiver calls this one method, passing null for requirements
        // Then this one passes requirements into generateCall
        List<String> variablesThatMeetReqs = new ArrayList<>();
        Map<String, String> sameObjectReqs = findAllVariablesThatMeetReqs(receiverType, callName, requirements, sameObjects, variablesThatMeetReqs, receiverName, parameterNode);

        if (cannotBeThisObject != null) {
            variablesThatMeetReqs.remove(cannotBeThisObject);
        }

        if (!symbolTable.containsKey(receiverType) || variablesThatMeetReqs.isEmpty() || forceGenerateNewObject) {
            // pass in same objects here
            return parseCallInfoFromReceiverTypeAndGenerateCall(receiverType, requirements, sameObjectReqs);
        }

        int randIdx = randomUtils.nextInt(variablesThatMeetReqs.size());

        return variablesThatMeetReqs.get(randIdx);

    }

    private Map<String, String> findAllVariablesThatMeetReqs(String receiverType, String callName, Map<String, List<String>> requirements, List<String> sameObjects, List<String> variablesThatMeetReqs, String receiverName, ParameterNode parameterNode) {
        List<String> allVariables = symbolTable.get(receiverType);

        if (allVariables == null) {
            if (receiverName == null) {
                return null;
            }
            Map<String, String> requiredSameObjects = new HashMap<>();
            requiredSameObjects.put("GPUDevice", findBaseReceiver(receiverName, "GPUDevice"));
            return requiredSameObjects;
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
        Map<String, String> sameObjectsReqs = new LinkedHashMap<>();

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

    public String findBaseReceiver(String variableName, String objectType) {
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
                String paramTypeToCheck = split[0];
                String attributeNameToCheck = split[1];

                List<String> attributeValuesToCheck = parseAttributeValue(requirement.getValue(), parameterNode);

                if (!paramTypeToCheck.startsWith(paramType)) {
                    variableToCheck = variableToReceiverName.get(variableName);
                }

                if (!this.getVariableType(variableToCheck).equals(paramTypeToCheck)) {
                    continue;
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

            if (tertiarySplit[0].equals("Inner")) {
                // Fetch teh variable name first, then fetch its parameters
                parentList = parameterNode.getParentList();
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

        String receiverType = receiverTypeCallNameCallType.receiverType;
        String callName = receiverTypeCallNameCallType.callName;
        boolean isMethod = receiverTypeCallNameCallType.isMethod;
        String fileName = callProbabilities.get(receiverTypeCallNameCallType).fileName;

        ASTNode receiver = null;

        try {
            receiver = parser.parseAndBuildCall(JSON_DIRECTORY_PATH + fileName, callName, receiverType, isMethod, requirements, sameObjectsReqs, specificReceiver);
        } catch (IOException e) {
            System.err.println("Failed to open JSON file: " + fileName + ". " + e.getMessage());
        }

        if (receiver instanceof AssignmentNode) {
            return ((AssignmentNode) receiver).getVarName();
        } else {
            return null;
        }
    }

    public AssignmentNode generateDeclaration(JsonNode methodJsonNode, CallNode rootASTNode) {

        String returnType = methodJsonNode.get("returnType").asText();
        String varName = generateRandVarName(returnType);

        // Create the ASTNode
        AssignmentNode newRootNode = new AssignmentNode("const", varName, randomUtils, webGlitchOptions);
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
            boolean forceGenerateNewObject = randomUtils.randomChanceIsSuccessful(webGlitchOptions.getGenerateNewRequiredObjectChance());
            boolean skipReceiverChecks = randomUtils.randomChanceIsSuccessful(webGlitchOptions.getInvalidParameterChance());

            if (sameObjectsReqs != null && !skipReceiverChecks) {
                requiredReceiver = sameObjectsReqs.get(receiverType);
            }

            if (requiredReceiver == null || forceGenerateNewObject) {
                Map<String, List<String>> finalisedRequirements = null;
                if (requirements != null && !skipReceiverChecks) {
                    finalisedRequirements = new LinkedHashMap<>();
                    for (Map.Entry<String, List<String>> entry : requirements.entrySet()) {
                        if (entry.getKey().startsWith(receiverType)) {
                            finalisedRequirements.put(entry.getKey(), entry.getValue());
                        }
                    }
                }

                return getRandomReceiver(receiverType, callName, finalisedRequirements, null, null, null, null, forceGenerateNewObject);
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
        return generateTopLevelStatement(type, null,null, null);
    }

    public String generateTopLevelStatement(String type, String subType, List<String> values, Map<String, String> requirements) {
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
                assignmentNode = new AssignmentNode("const", "typedArray" + numTypedArrays, randomUtils, webGlitchOptions);
                TypedArray typedArray = null;

                if (values == null) {
                    int maxBytes = -1;
                    if (requirements != null && requirements.containsKey("maxBytes")) {
                        maxBytes = Integer.parseInt(requirements.get("maxBytes"));
                    }
                    typedArray = new TypedArray(maxBytes, randomUtils);
                } else {
                    typedArray = new TypedArray(subType, values, randomUtils);
                }
                numTypedArrays++;
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
                File shadersDirectory = new File(SHADERS_PATH + chosenBaseShaderType);
                File[] files = shadersDirectory.listFiles();
                assert files != null;
                String chosenFolderName = files[randomUtils.nextInt(files.length)].getName();


                String folderPath = SHADERS_PATH + chosenBaseShaderType + "/" + chosenFolderName + "/";
                String fullPath = folderPath + shaderSubType + ".wgsl";

                assignmentNode = new AssignmentNode("const",  "shader" + shaderNameToProperties.size(), randomUtils, webGlitchOptions);
                Require requireStatement = new Require(fullPath, true);
                assignmentNode.addNode(requireStatement);
                String importName = assignmentNode.getVarName();
                astNodeToPrepend = assignmentNode;

                varName += shaderSubType + "." + importName;

                // Later on, add available objects eg for improting JS objects
                this.addToShaderProperties(importName, chosenBaseShaderType, folderPath);
                break;
        }

        this.programNode.addNodeToFront(astNodeToPrepend);

        return varName;
    }

    private void addToShaderProperties(String importName, String chosenShaderType, String folderPath) {
        if (!shaderNameToProperties.containsKey(importName)) {
            shaderNameToProperties.put(importName, new LinkedHashMap<>());
        }

        Map<String, String> propertiesMap = shaderNameToProperties.get(importName);
        propertiesMap.put("type", chosenShaderType);
        propertiesMap.put("path", folderPath);
    }

    // Path stored as the folder path, with a trailing '/'
    public String getShaderProperties(String shaderName, String fieldName) {
        return shaderNameToProperties.get(shaderName).get(fieldName);
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

        if (conditionsNode.has("setAvailable")) {
            JsonNode availabilityNode = conditionsNode.get("setAvailable");
            parseCallAvailabilityInfo(receiver, availabilityNode, callsToChangeAvailabilityOf, true);
        }

        if (conditionsNode.has("setUnavailable")) {
            JsonNode availabilityNode = conditionsNode.get("setUnavailable");
            parseCallAvailabilityInfo(receiver, availabilityNode, callsToChangeAvailabilityOf, false);
        }
    }

    private void parseCallAvailabilityInfo(String receiver, JsonNode availabilityNode, List<String> callsToChangeAvailabilityOf, boolean setAvailable) {
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

        if (availabilityNode.has("parents")) {
            JsonNode parentsNode = availabilityNode.get("parents");
            parentsNode.fieldNames().forEachRemaining(fieldName -> {
                JsonNode parentNodeCalls = parentsNode.get(fieldName);
                Parser.extractNodeAsList(parentNodeCalls, callsToChangeAvailabilityOf);

                String parent = getParentVariable(receiver);
                setCallAvailability(callsToChangeAvailabilityOf, parent, setAvailable);
            });
        }
    }

    public void parseAndSetCallAvailabilityIfNoParameters(JsonNode conditionsNode, ParameterListNode parentList) {
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

        Map<String, Set<String>> allCalls = new LinkedHashMap<>();


        availabilityNode.fieldNames().forEachRemaining(fieldName -> {
            List<String> affectedCalls = Parser.getListFromJson(availabilityNode.get(fieldName).toString());
            String variableName = parentList.getParameter(fieldName);
            allCalls.put(variableName, new HashSet<>(affectedCalls));
        });

        for (Map.Entry<String, Set<String>> entry : allCalls.entrySet()) {
            this.setCallAvailability(entry.getKey(), entry.getValue(), isAvailable);
        }

    }

    public String generateRandVarName(String receiverType) {
        return receiverType + getInterfaceCount(receiverType);
    }

    public Number generateRandNumber(String paramType, NumericConstraints numericConstraints) {
        long maxValue = numericConstraints.getMax();

        long minValue = numericConstraints.getMin();

        Long divisibility = numericConstraints.getDivisibility();

        if (maxValue == minValue) {
            return maxValue;
        }

        // Because Json specification provides it as an inclusvie range
        maxValue += 1;
        if (divisibility != null) {
            long ceilMax = (maxValue + divisibility - 1) / divisibility;
            return randomUtils.nextLong(minValue / divisibility, ceilMax) * divisibility;
        }


        if (paramType.equals("double")) {
            return randomUtils.nextDouble(minValue, maxValue);
        }

        if (paramType.equals("rgba")) {
            return randomUtils.nextDouble(0.0, 1.0);
        }

        return randomUtils.nextLong(minValue, maxValue);
    }


    public String generateCustomConstraint(String customValidation, ParameterListNode parent, ParameterNode parameterNode, Generator generator) {
        switch (customValidation) {
            case "mipLevelCount":
                return calculateMipLevelCount(parent);
            case "depthSlice": {
                return calculateDepthSlice(parameterNode, generator);
            }
            case "fitsInBuffer": {
                return calculateMaxBufferSize(parameterNode);
            }
        }

        return null;
    }

    private String calculateMaxBufferSize(ParameterNode parameterNode) {
        // Source's GPUBuffer.size >= sourceOffset + size
        ParameterListNode parentList = parameterNode.getParentList();
        // Destination's GPUBuffer.size >= destinationOffset + size
        String sourceGPUBuffer = parentList.getParameter("source");
        String destGPUBuffer = parentList.getParameter("destination");

        int sourceSize = Integer.parseInt(getObjectAttributes(sourceGPUBuffer, "size"));
        int destSize = Integer.parseInt(getObjectAttributes(destGPUBuffer, "size"));

        int sourceOffset = Integer.parseInt(parentList.getParameter("sourceOffset"));
        int destOffset = Integer.parseInt(parentList.getParameter("destinationOffset"));

        int maxSizeForSource = sourceSize - sourceOffset;
        int maxSizeForDest = destSize - destOffset;
        int overallMaxSize = Math.min(maxSizeForSource, maxSizeForDest);

        return String.valueOf(overallMaxSize);
    }

    private String calculateDepthSlice(ParameterNode parameterNode, Generator generator) {
        String textureViewVariableName = parameterNode.getRootParameterNode().findNestedParameterNode("view").getParameter().getValue();

        String viewDimensionValue = generator.getObjectAttributes(textureViewVariableName, "dimension");

        if (!viewDimensionValue.equals("3d")) {
            throw new SkipParameterException("Skipping depth slice because dimension is not 3d");
        }

        String textureViewParentName = generator.getParentVariable(textureViewVariableName);
        int parentDepthOrArrayLayersValue = Integer.parseInt(generator.getObjectAttributes(textureViewParentName, "size.depthOrArrayLayers"));
        int baseMipLevelValue = Integer.parseInt(generator.getObjectAttributes(textureViewVariableName, "baseMipLevel"));

        int maxValue = (int) Math.max(parentDepthOrArrayLayersValue / Math.pow(2, baseMipLevelValue), 1);

        // -1 since max value is inclusvie
        return String.valueOf(maxValue - 1);
    }

    private String calculateMipLevelCount(ParameterListNode parent) {
        String MULTI_SAMPLING_FLAG = "4";
        String MAX_MIP_COUNT_IF_MULTI_SAMPLING = "1";

        boolean multiSampling = parent.getParameter("sampleCount").equals(MULTI_SAMPLING_FLAG);

        if (multiSampling) {
            return MAX_MIP_COUNT_IF_MULTI_SAMPLING;
        }

        String dimension = parent.getParameter("dimension");

        // Needs to find from itself first, then go looking for Global Attributes table
        int width = Integer.parseInt(parent.getParameter("size.width"));
        int height = Integer.parseInt(parent.getParameter("size.height"));
        int depthOrArrayLayer = Integer.parseInt(parent.getParameter("size.depthOrArrayLayers"));

        // Formula from documentation
        int maxDimensionValue;

        switch (dimension) {
            case "1d":
                maxDimensionValue = 1;
                break;
            case "2d":
                maxDimensionValue = Math.max(width, height);
                break;
            default: // 3d
                maxDimensionValue = Math.max(Math.max(width, height), depthOrArrayLayer);
                break;
        }

        int max = (int) (Math.floor(Math.log(maxDimensionValue) / Math.log(2)) + 1);
//                int max = (int) (Math.floor(Math.log(Math.min(width, height)) / Math.log(2)) + 1);
        return String.valueOf(max);
    }

    public Set<String> getFromCallState(String receiverName) {
        return callState.get(receiverName);
    }

    // Looks at what the post generation requirement is and executes corresponding function
    public void generatePostGenerationRequirement(String receiver, String requirement) {
        switch (requirement) {
            case "copyComputePassOutput":
                generateCopyComputePassOutputCalls(receiver);
                return;
            case "printOutput":
                generatePrintOutputCalls(receiver);
                return;
        }
    }

    private void generateCopyComputePassOutputCalls(String computePassEncoderName) {
        // Here the receiver is the computePassEncoder
        if (!randomUtils.randomChanceIsSuccessful(webGlitchOptions.getPrintComputePassOutputChance())) {
            return;
        }

        Set<String> callHistory = getFromCallState(computePassEncoderName);
        if (callHistory == null) {
            return;
        }

        // All these prerequisites mustve been set already - want to minimize numebr of calls that are generated as a requirement
        if (!callHistory.contains("setPipeline") || !callHistory.contains("setBindGroup") || !callHistory.contains("dispatchWorkgroups")) {
            return;
        }

        String commandEncoder = getParentVariable(computePassEncoderName);

        // Generate the copyBufferToBuffer call
        // YOU NEED TO SPECIFY THE BUFFERS!
        String bindGroup = getObjectAttributes(computePassEncoderName, "bindGroup");

        // Test that this works
        String storageBuffer = getObjectAttributes(bindGroup, "entries.resource.buffer");
        String size = getObjectAttributes(storageBuffer, "size");

        Map<String, List<String>> copyBufferRequirements = new LinkedHashMap<>();
        copyBufferRequirements.put("source", List.of(storageBuffer));
        copyBufferRequirements.put("sourceOffset", List.of("0"));

        // Generate outBufferToReadFrom
        Map<String, List<String>> outBufferRequirements = new LinkedHashMap<>();
        outBufferRequirements.put("size", List.of(size));
        outBufferRequirements.put("usage", List.of("GPUBufferUsage.MAP_READ", "GPUBufferUsage.COPY_DST"));
        outBufferRequirements.put("mappedAtCreation", List.of("false"));
        String outBuffer = generateCall(new Generator.ReceiverTypeCallNameCallType("GPUDevice", "createBuffer", true), outBufferRequirements, null, getParentVariable(commandEncoder));

        copyBufferRequirements.put("destination", List.of(outBuffer));
        copyBufferRequirements.put("destinationOffset", List.of("0"));
        copyBufferRequirements.put("size", List.of(size));
        generateCall(new Generator.ReceiverTypeCallNameCallType("GPUCommandEncoder", "copyBufferToBuffer", true), copyBufferRequirements, null, commandEncoder);

        String pipeline = getObjectAttributes(computePassEncoderName, "pipeline");
        Map<String, String> outBufferToPipeline = new LinkedHashMap<>();
        outBufferToPipeline.put(outBuffer, pipeline);
        toPrintCommandEncoderAndItsPipeline.put(computePassEncoderName, outBufferToPipeline);

    }

    // The receiver here is the GPUQueue
    private void generatePrintOutputCalls(String gpuQueueName) {
        // Check that you are allowed to print it
        // This is okay because you check what commandBuffer it is submitting
        String commandBuffer = getObjectAttributes(gpuQueueName, "commandBuffers");
        String commandEncoder = getParentVariable(commandBuffer);

//        if (!toPrintCommandEncoderAndItsPipeline.containsKey(commandBuffer)) {
//            return;
//        }

        List<String> computePassesToRemove = new ArrayList<>();

        // loop over all computePassencoders that need printing
        for (String computePassEncoder : toPrintCommandEncoderAndItsPipeline.keySet()) {

            if (!getParentVariable(computePassEncoder).equals(commandEncoder)) {
                continue;
            }
            Map<String, String> outBufferToPipeline = toPrintCommandEncoderAndItsPipeline.get(computePassEncoder);
            String outBuffer = outBufferToPipeline.keySet().iterator().next();
            String pipeline = outBufferToPipeline.get(outBuffer);
            computePassesToRemove.add(computePassEncoder);

            // Generate: await outBuffer.mapAsync(GPUMapMode.READ);
            Map<String, List<String>> mapAsyncRequirements = new LinkedHashMap<>();
            mapAsyncRequirements.put("mode", List.of("GPUMapMode.READ"));
            generateCall(new ReceiverTypeCallNameCallType("GPUBuffer","mapAsync", true), mapAsyncRequirements, null, outBuffer);

            // Generate: const copyArray = outBuffer.getMappedRange();
            String copyArray = generateCall(new ReceiverTypeCallNameCallType("GPUBuffer", "getMappedRange", true), null, null, outBuffer);

            // Generate: const outData = copyArray.slice(0);
            AssignmentNode outArrayAssignment = new AssignmentNode("const", "ComputePassResultBuffer" + numComputePassResultBuffers, randomUtils, webGlitchOptions);
            String outArrayVariableName = outArrayAssignment.getVarName();
            addToSymbolTable("Array", outArrayVariableName);
            JavaScriptStatement spliceStatement = new JavaScriptStatement(copyArray + ".slice(0)");
            outArrayAssignment.addNode(spliceStatement);
            programNode.addNode(outArrayAssignment);

            // Generate: const result = new Uint8Array(outData);
            String typedArrayName = "typedArray" + numTypedArrays;
            AssignmentNode typedArrayAssignment = new AssignmentNode("const",typedArrayName, randomUtils, webGlitchOptions);
            TypedArray typedArray = new TypedArray("Uint8", outArrayVariableName, randomUtils);
            numTypedArrays++;
            numComputePassResultBuffers++;
            typedArrayAssignment.addNode(typedArray);
            programNode.addNode(typedArrayAssignment);

            // Generate console.log("result", result); + something with an identifying label
            JavaScriptStatement printStatement = new JavaScriptStatement("console.log(\"" + pipeline + " has output:\", ..." + typedArrayName +");");
            programNode.addNode(printStatement);
        }

        for (String computePassEncoder : computePassesToRemove) {
            toPrintCommandEncoderAndItsPipeline.remove(computePassEncoder);
        }
    }

    // Currently doesn't support setting attributes of another GPUInterfaceType
    public void setAdditionalAttributes(String variable, JsonNode callJsonNode) {
        if (!callJsonNode.has("setAttributes")) {
            return;
        }

        JsonNode setAttributesNode = callJsonNode.get("setAttributes");
        setAttributesNode.fieldNames().forEachRemaining(fieldName -> {
            String[] split = fieldName.split("\\.", 2);
            String typeOfVariableToModify = split[0];
            String attributeName = split[1];
            List<String> attributeValues = new ArrayList<>();
            Parser.extractNodeAsList(setAttributesNode.get(fieldName), attributeValues);
            if (attributeValues.getFirst().startsWith("this")) {
                String[] splitAttributeValues = attributeValues.getFirst().split("\\.", 2);
                String actualAttributeValue = getObjectAttributes(variable, splitAttributeValues[1]);
                attributeValues.clear();
                attributeValues.add(actualAttributeValue);
            }

            if (typeOfVariableToModify.equals("this") || typeOfVariableToModify.equals("returnVariable")) {
                setMultipleObjectAttributes(variable, attributeName, attributeValues);
            }
        });
    }

    public Map<String, List<String>> parseAttributeRequirements(JsonNode conditionsNode) {
        Map<String, List<String>> requirements = new LinkedHashMap<>();
        JsonNode requiredAttributesNode = conditionsNode.get("withAttributes");

        requiredAttributesNode.fieldNames().forEachRemaining(fieldName -> {
            List<String> values = Parser.getListFromJson(requiredAttributesNode.get(fieldName).toString());
            requirements.put(fieldName, values);
        });

        // Recombine requirements
        if (!getWgpuCompatible() && conditionsNode.has("dawnOnlyAttributes")) {
            JsonNode dawnOnlyAttributesNode = conditionsNode.get("dawnOnlyAttributes");
            dawnOnlyAttributesNode.fieldNames().forEachRemaining(fieldName -> {
                List<String> values = Parser.getListFromJson(dawnOnlyAttributesNode.get(fieldName).toString());
                requirements.get(fieldName).addAll(values);
            });
        }

        return requirements;
    }

    public record FileNameCallProbPair(String fileName, Double callProbability) {
    }

    public record FileNameReceiverTypeCallNameCallType(String fileName, String receiverType, String callName, boolean methodCall, String returnType) {
    }

    public record ReceiverTypeCallNameCallType(String receiverType, String callName, boolean isMethod) {
    }

}
