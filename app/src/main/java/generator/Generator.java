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
    private final Map<String, FileNameReceiverNameMethodName> receiverInits = new HashMap<>();
    // Maps method call name to File it's located in and Probability (double)
    private final Map<ReceiverNameMethodNamePair, FileNameCallProbPair> callProbabilities = new HashMap<>();
    // Tracks call histories
    private final Set<ReceiverNameMethodNamePair> callState = new HashSet<>();
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
            JsonNode methodsJsonNode = rootJsonNode.get("methods");
            String receiverType = rootJsonNode.get("receiverType").asText();

            for (JsonNode methodJsonNode : methodsJsonNode) {

                String returnType = methodJsonNode.get("returnType").asText();
                String methodName = methodJsonNode.get("methodName").asText();
                String fileName = apiInterface.getName();
                // Only works once have all the files because your return type is going to be another file name
//                if (interfaceNames.contains(methodName)) {
//                    System.out.println(methodName);
//                }

                if (!returnType.equals("string") && !returnType.equals("none")) {
                    receiverInits.put(returnType, new FileNameReceiverNameMethodName(fileName, receiverType, methodName));

                }

                // READ FROM CONFIG FILE HERE
                System.out.println(receiverType + " " + methodName + " from " + fileName);
                callProbabilities.put(new ReceiverNameMethodNamePair(receiverType, methodName), new FileNameCallProbPair(fileName, 0.0));

            }

        }

    }

    // ASSIGN PROBABILTIES BY FIRST LOADING ALL METHODS FROM ALL FILES INTO SOME MAP, INITIALIZE PROBABILITIES
    // EG MAP OF STRING TO DOUBLE

    public void generateProgram(int fileNum) {
        this.programNode = new ProgramNode();

        for (int i = 0; i < maxCalls; i++) {
            ReceiverNameMethodNamePair[] methods = callProbabilities.keySet().toArray(new ReceiverNameMethodNamePair[0]);
            int randIdx = rand.nextInt(methods.length);
            ReceiverNameMethodNamePair randMethod = methods[randIdx];
            String fileName = callProbabilities.get(randMethod).fileName;

            try {
                this.programNode.addNode(parser.parseAndBuildRandMethod(JSON_DIRECTORY_PATH + fileName));
            } catch (IOException e) {
                System.out.println("Failed to open JSON file: " + fileName + ". " + e.getMessage());
            }
        }

        printer.printToFile(this.programNode, fileNum);
    }

    public void addToSymbolTable(String returnedObjectType, String variableName) {
        if (!symbolTable.containsKey(returnedObjectType)) {
            symbolTable.put(returnedObjectType, new ArrayList<>());
        }
        System.out.println("added " + variableName);

        symbolTable.get(returnedObjectType).add(variableName);
    }

    public void removeFromSymbolTable(String returnedObjectType, String variableName) {
        symbolTable.get(returnedObjectType).remove(variableName);

        if (symbolTable.get(returnedObjectType).isEmpty()) {
            symbolTable.remove(returnedObjectType);
        }
    }

    public String getRandomReceiver(String receiverType) {
        if (!symbolTable.containsKey(receiverType)) {
            FileNameReceiverNameMethodName initInfo = receiverInits.get(receiverType);
            String initMethodName = initInfo.methodName;
            String initReceiverType = initInfo.receiverName;
            System.out.println("GENERATING REQUIREMENT" + initReceiverType + initMethodName);
            generateCall(new ReceiverNameMethodNamePair(initReceiverType, initMethodName));
        }

        List<String> variables = symbolTable.get(receiverType);
        int randIdx = rand.nextInt(variables.size());
        return variables.get(randIdx);
    }

    public void generateCall(ReceiverNameMethodNamePair receiverNameMethodNamePair) {
        if (callState.contains(receiverNameMethodNamePair)) {
            return;
        }

        String receiverName = receiverNameMethodNamePair.receiverName;
        String methodName = receiverNameMethodNamePair.methodName;
        System.out.println(receiverName + "." + methodName);
        String fileName = callProbabilities.get(receiverNameMethodNamePair).fileName;

        ASTNode receiver = null;

        try {
            receiver = parser.parseAndBuildMethod(JSON_DIRECTORY_PATH + fileName, methodName, receiverName);
        } catch (IOException e) {
            System.out.println("Failed to open JSON file: " + fileName + ". " + e.getMessage());
        }

        this.programNode.addNode(receiver);
    }

    public String determineReceiver(String receiverType, boolean hasRequirements) {
        if (hasRequirements) {
            return getRandomReceiver(receiverType);
        }
        return receiverType;
    }

    public void addToCallState(ReceiverNameMethodNamePair receiverNameMethodNamePair) {
        callState.add(receiverNameMethodNamePair);
    }

    public void removeFromCallState(ReceiverNameMethodNamePair receiverNameMethodNamePair) {
        callState.remove(receiverNameMethodNamePair);
    }

    public record FileNameCallProbPair(String fileName, Double callProbability) {
    }

    public record FileNameReceiverNameMethodName(String fileName, String receiverName, String methodName) {
    }

    public record ReceiverNameMethodNamePair(String receiverName, String methodName) {
    }

}
