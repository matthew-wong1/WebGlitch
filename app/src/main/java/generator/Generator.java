package generator;

import ast.*;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import programprinter.PrettyPrinter;

import java.io.File;
import java.io.IOException;
import java.util.*;

public class Generator {
    private static final Random rand = new Random();
    private static final PrettyPrinter printer = new PrettyPrinter();
    private static final String DEFAULT_CONTEXT_NAME = "context";
    // Hash map to keep track of state
    // Key: Type of object eg adapter, device
    // Value: Reference to that objet that currently exists
    private final Map<String, List<String>> symbolTable = new HashMap<>();
    private final Map<String, Map<String, List<Parameter>>> objectAttributesTable = new HashMap<>();
    private final Map<String, FileNameReceiverNameCallNameCallType> receiverInits = new HashMap<>();
    // Maps method call name to File it's located in and Probability (double)
    private final Map<ReceiverNameCallNameCallType, FileNameCallProbPair> callProbabilities = new HashMap<>();
    // Tracks call histories
    private final Set<ReceiverNameCallNameCallType> callState = new HashSet<>();
    private final String JSON_DIRECTORY_PATH = "./rsrcs/webgpu/interfaces/";
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
        Generator generator = new Generator(100, false);
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

    public void addToSymbolTable(String returnedObjectType, String variableName) {
        if (!symbolTable.containsKey(returnedObjectType)) {
            symbolTable.put(returnedObjectType, new ArrayList<>());
        }

        symbolTable.get(returnedObjectType).add(variableName);

    }

    public void removeFromSymbolTable(String returnedObjectType, String variableName) {
        symbolTable.get(returnedObjectType).remove(variableName);
        removeFromObjectAttributesTable(variableName);
        if (symbolTable.get(returnedObjectType).isEmpty()) {
            symbolTable.remove(returnedObjectType);
        }
    }

    public String getRandomReceiver(String receiverType) {
        if (!symbolTable.containsKey(receiverType)) {
            FileNameReceiverNameCallNameCallType initInfo = receiverInits.get(receiverType);
            String initMethodName = initInfo.callName;
            String initReceiverType = initInfo.receiverName;
            boolean initIsMethod = initInfo.methodCall;

            generateCall(new ReceiverNameCallNameCallType(initReceiverType, initMethodName, initIsMethod));
        }

        List<String> variables = symbolTable.get(receiverType);
        int randIdx = rand.nextInt(variables.size());
        return variables.get(randIdx);
    }

    public void generateCall(ReceiverNameCallNameCallType receiverNameCallNameCallType) {
        if (callState.contains(receiverNameCallNameCallType)) {
            return;
        }

        String receiverName = receiverNameCallNameCallType.receiverName;
        String callName = receiverNameCallNameCallType.callName;
        boolean isMethod = receiverNameCallNameCallType.isMethod;
        String fileName = callProbabilities.get(receiverNameCallNameCallType).fileName;

        ASTNode receiver = null;

        try {
            receiver = parser.parseAndBuildCall(JSON_DIRECTORY_PATH + fileName, callName, receiverName, isMethod);
        } catch (IOException e) {
            System.err.println("Failed to open JSON file: " + fileName + ". " + e.getMessage());
        }

        this.programNode.addNode(receiver);
    }

    public String determineReceiver(String receiverType, boolean hasRequirements) {
        if (hasRequirements) {
            return getRandomReceiver(receiverType);
        }
        return receiverType;
    }

    public void addToCallState(ReceiverNameCallNameCallType receiverNameCallNameCallType) {
        callState.add(receiverNameCallNameCallType);
    }

    public void removeFromCallState(ReceiverNameCallNameCallType receiverNameCallNameCallType) {
        callState.remove(receiverNameCallNameCallType);
    }

    public record FileNameCallProbPair(String fileName, Double callProbability) {
    }

    public record FileNameReceiverNameCallNameCallType(String fileName, String receiverName, String callName, boolean methodCall) {
    }

    public record ReceiverNameCallNameCallType(String receiverName, String callName, boolean isMethod) {
    }

}
