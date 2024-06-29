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

public class Generator {
    private static final Random rand = new Random();
    private static final PrettyPrinter printer = new PrettyPrinter();
    private static final String DEFAULT_CONTEXT_NAME = "context";
    private final String HEADER = "\nasync function main() {";
    private final String FOOTER = "\n}main().catch(console.error);";
    private final String SHADERS_PATH = "/rsrcs/shaders/";
    private final String JSON_DIRECTORY_PATH = "./rsrcs/webgpu/interfaces/";

    // Hash map to keep track of state
    // Key: Type of object eg adapter, device
    // Value: Reference to that objet that currently exists
    private final Map<String, List<String>> symbolTable = new HashMap<>();
    public final Map<String, Map<String, List<Parameter>>> objectAttributesTable = new HashMap<>();
    private final Map<String, String> variableToReceiverType = new HashMap<>();
    private final Map<String, String> variableToReceiverName = new HashMap<>();
    private final Map<String, Set<String>> callUnavailability = new HashMap<>();
    private final HashMap<String, Map<String, String>> shaderNameToProperties = new HashMap<>();

    private final Map<String, FileNameReceiverNameCallNameCallType> receiverInits = new HashMap<>();
    // Maps method call name to File it's located in and Probability (double)
    private final Map<ReceiverNameCallNameCallType, FileNameCallProbPair> callProbabilities = new HashMap<>();
    // Tracks call histories
    private final Set<ReceiverNameCallNameCallType> callState = new HashSet<>();

    private final Parser parser = new Parser(this);
    private final int maxCalls;
    private final boolean allowOptParams;
    private ASTNode programNode;

    public Generator(int maxCalls, boolean allowOptParams) {
        this.maxCalls = maxCalls;
        this.allowOptParams = allowOptParams;

        try {
            this.initializeReceiverInitsAndCallProbs();
        } catch (IOException e) {
            System.err.println("Error initializing call probabilities and receiver init methods: " + e.getMessage());
        }

        symbolTable.put("RenderingContext", new ArrayList<>(List.of(DEFAULT_CONTEXT_NAME)));
    }

    public static void main(String[] args) {
        Generator generator = new Generator(1000, false);
        generator.generateProgram(1);
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
            receiverInits.put(returnType, new FileNameReceiverNameCallNameCallType(fileName, receiverType, callName, isMethod));
        }

        // READ FROM CONFIG FILE HERE
        callProbabilities.put(new ReceiverNameCallNameCallType(receiverType, callName, isMethod), new FileNameCallProbPair(fileName, 0.0));
    }

    // ASSIGN PROBABILTIES BY FIRST LOADING ALL METHODS FROM ALL FILES INTO SOME MAP, INITIALIZE PROBABILITIES
    // EG MAP OF STRING TO DOUBLE

    public void generateProgram(int fileNum) {
        this.programNode = new ProgramNode();
        programNode.addNode(new JavaScriptStatement(HEADER));

        for (int i = 0; i < maxCalls; i++) {
            ReceiverNameCallNameCallType[] methods = callProbabilities.keySet().toArray(new ReceiverNameCallNameCallType[0]);
            int randIdx = rand.nextInt(methods.length);
            ReceiverNameCallNameCallType randMethod = methods[randIdx];
            String fileName = callProbabilities.get(randMethod).fileName;

            try {
                this.programNode.addNode(parser.parseAndBuildRandCall(JSON_DIRECTORY_PATH + fileName));
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

    }

    public void removeFromSymbolTable(String returnedObjectType, String variableName) {
        symbolTable.get(returnedObjectType).remove(variableName);
        removeFromObjectAttributesTable(variableName);
        if (symbolTable.get(returnedObjectType).isEmpty()) {
            symbolTable.remove(returnedObjectType);
            variableToReceiverType.remove(variableName);
            variableToReceiverName.remove(variableName);
        }
    }

    public String getRandomReceiver(String receiverType, String callName) {

        return getRandomReceiver(receiverType, callName, null, null, null);


    }

    public String getRandomReceiver(String receiverType, String callName, Map<String, List<String>> requirements, List<String> sameObjects, String receiverName) {
        // Maybe getRandomReceiver calls this one method, passing null for requirements
        // Then this one passes requirements into generateCall
        List<String> variablesThatMeetReqs = new ArrayList<>();

        Map<String, String> sameObjectReqs = findAllVariablesThatMeetReqs(receiverType, callName, requirements, sameObjects, variablesThatMeetReqs, receiverName);

        if (!symbolTable.containsKey(receiverType) || variablesThatMeetReqs.isEmpty()) {
            // pass in same objects here
            parseCallInfoFromReceiverTypeAndGenerateCall(receiverType, requirements, sameObjectReqs);
            return getRandomReceiver(receiverType, callName, requirements, sameObjects, receiverName);
        }

        int randIdx = rand.nextInt(variablesThatMeetReqs.size());
        return variablesThatMeetReqs.get(randIdx);

    }

    private Map<String, String> findAllVariablesThatMeetReqs(String receiverType, String callName, Map<String, List<String>> requirements, List<String> sameObjects, List<String> variablesThatMeetReqs, String receiverName) {
        List<String> allVariables = symbolTable.get(receiverType);
        if (allVariables == null) {
            return null;
        }

        Map<String, String> sameObjectsReqs = null;
        if (requirements != null || sameObjects != null) {
            // Filter out those that don't meet the requirement,
            // And then need to generate one with the requirement
            addVariablesThatMeetReqsToList(allVariables, variablesThatMeetReqs, requirements);
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
        if (variablesThatMeetReqs.isEmpty() || sameObjects == null) {
            return null;
        }

        Map<String, String> sameObjectsReqs = new HashMap<>();

        List<String> toRemove = new ArrayList<>();
        for (String variableName : variablesThatMeetReqs) {
            for (String objectType : sameObjects) {
                String baseCallReceiver = findBaseReceiver(receiverName, objectType);
                sameObjectsReqs.put(objectType, baseCallReceiver);

                if(!findBaseReceiver(variableName, objectType).equals(baseCallReceiver)) {
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

    private void addVariablesThatMeetReqsToList(List<String> allVariables, List<String> variablesThatMeetReqs, Map<String, List<String>> requirements) {
        if (requirements == null) {
            return;
        }

        for (String variableName : allVariables) {
            for (Map.Entry<String, List<String>> requirement : requirements.entrySet()) {
                List<String> attributes = this.getAllObjectAttributes(variableName, requirement.getKey());
                if (new HashSet<>(attributes).containsAll(requirement.getValue())) {
                    variablesThatMeetReqs.add(variableName);
                }
            }
        }

    }

    private void parseCallInfoFromReceiverTypeAndGenerateCall(String receiverType, Map<String, List<String>> requirements, Map<String, String> sameObjectsReqs) {
        FileNameReceiverNameCallNameCallType initInfo = receiverInits.get(receiverType);
        String initMethodName = initInfo.callName;
        String initReceiverType = initInfo.receiverName;
        boolean initIsMethod = initInfo.methodCall;

        generateCall(new ReceiverNameCallNameCallType(initReceiverType, initMethodName, initIsMethod), requirements, sameObjectsReqs);
    }

    public void generateCall(ReceiverNameCallNameCallType receiverNameCallNameCallType, Map<String, List<String>> requirements, Map<String, String> sameObjectsReqs) {
        if (callState.contains(receiverNameCallNameCallType)) {
            return;
        }

        String receiverName = receiverNameCallNameCallType.receiverName;
        String callName = receiverNameCallNameCallType.callName;
        boolean isMethod = receiverNameCallNameCallType.isMethod;
        String fileName = callProbabilities.get(receiverNameCallNameCallType).fileName;

        ASTNode receiver = null;

        try {
            receiver = parser.parseAndBuildCall(JSON_DIRECTORY_PATH + fileName, callName, receiverName, isMethod, requirements, sameObjectsReqs);
        } catch (IOException e) {
            System.err.println("Failed to open JSON file: " + fileName + ". " + e.getMessage());
        }

        this.programNode.addNode(receiver);
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

    public String determineReceiver(String receiverType, String callName, boolean hasRequirements, Map<String, String> sameObjectsReqs) {
        if (hasRequirements) {
            String requiredReceiver = null;
            if (sameObjectsReqs != null) {
                requiredReceiver = sameObjectsReqs.get(receiverType);
            }

            if (requiredReceiver == null) {
                return getRandomReceiver(receiverType, callName);
            }

            return requiredReceiver;
        }
        return receiverType;
    }

    public void addToCallState(ReceiverNameCallNameCallType receiverNameCallNameCallType) {
        callState.add(receiverNameCallNameCallType);
    }

    public void removeFromCallState(ReceiverNameCallNameCallType receiverNameCallNameCallType) {
        callState.remove(receiverNameCallNameCallType);
    }

    public String generateTopLevelStatement(String type) {
        ASTNode astNodeToPrepend = null;
        AssignmentNode assignmentNode = null;
        String varName = "";

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
                List<String> SHADER_TYPES = Arrays.asList("graphics", "compute");
                List<String> GRAPHIC_SHADER_TYPES = Arrays.asList("vertex", "fragment");

                String chosenShaderType = SHADER_TYPES.get(rand.nextInt(SHADER_TYPES.size()));
                File shadersDirectory = new File("." + SHADERS_PATH + chosenShaderType);
                File[] files = shadersDirectory.listFiles();
                assert files != null;
                String chosenFileName = files[rand.nextInt(files.length)].getName();

                String fullPath = "../WebGlitch" + SHADERS_PATH + chosenShaderType + "/" + chosenFileName;

                if (chosenShaderType.equals("graphics")) {
                    chosenShaderType = GRAPHIC_SHADER_TYPES.get(rand.nextInt(GRAPHIC_SHADER_TYPES.size()));
                    fullPath += "/" + chosenShaderType + ".wgsl";
                }

                assignmentNode = new AssignmentNode("const", false);
                Require requireStatement = new Require(fullPath, true);
                assignmentNode.addNode(requireStatement);
                String importName = assignmentNode.getVarName();
                astNodeToPrepend = assignmentNode;

                varName += chosenShaderType + "." + importName;

                // Later on, add available objects eg for improting JS objects
                this.addToShaderProperties(importName, chosenShaderType, fullPath);
                break;
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

    public record FileNameCallProbPair(String fileName, Double callProbability) {
    }

    public record FileNameReceiverNameCallNameCallType(String fileName, String receiverName, String callName, boolean methodCall) {
    }

    public record ReceiverNameCallNameCallType(String receiverName, String callName, boolean isMethod) {
    }

}
