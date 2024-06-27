package ast;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import generator.Generator;
import generator.ParamGenerator;

import java.io.File;
import java.io.IOException;
import java.util.*;

public class Parser {

    private static final Random rand = new Random();


    private final Generator generator;

    public Parser(Generator generator) {
        this.generator = generator;
    }

    //        public static void main(String[] args) {
    //
    //            try {
    //                parseAndBuildAST("./app/webgpu/gpu.json");
    //            } catch(IOException e) {
    //                System.err.println("Failed to find file: " + e.getMessage());
    //            }
    //        }
    public ASTNode parseAndBuildRandCall(String filePath) throws IOException {

        // Open file
        ObjectMapper mapper = new ObjectMapper();
        JsonNode rootJsonNode = mapper.readTree(new File(filePath));

        List<String> options = new ArrayList<>(Arrays.asList("methods", "attributes"));
        JsonNode callsJsonNode;
        String option;

        if (!rootJsonNode.has("attributes")) {
            option = options.getFirst();
        } else if (!rootJsonNode.has("methods")) {
            option = options.getLast();
        } else {
            option = options.get(rand.nextInt(options.size()));
        }

        callsJsonNode = rootJsonNode.get(option);
        // Pick a random method from the length of 'methods'
        int randIdx = rand.nextInt(callsJsonNode.size());
        JsonNode methodJsonNode = callsJsonNode.get(randIdx);

        String receiverType = rootJsonNode.get("receiverType").asText();
        String callName = methodJsonNode.get("name").asText(); // Required field

        return parseAndBuildCall(filePath, callName, receiverType, option.equals("methods"), null);

    }




    public ASTNode parseAndBuildCall(String filePath, String callName, String currentReceiverType, boolean isMethod, Map<String, List<String>> requirements) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        JsonNode rootJsonNode = mapper.readTree(new File(filePath));

        String callType = isMethod ? "methods" : "attributes";

        JsonNode callsJsonNode = rootJsonNode.get(callType);

        JsonNode callJsonNode = null;

        for (JsonNode methodNode : callsJsonNode) {
            if (methodNode.get("name").asText().equals(callName)) {
                callJsonNode = methodNode;
            }
        }

        if (callJsonNode == null) {
            System.err.println("Error, the call " + callName + " does not exist in path " + filePath);
            System.exit(1);
        }

        // First generate any prerequisite methodCalls
        if (callJsonNode.has("prerequisiteMethods")) {
            JsonNode prerequisiteMethodsJsonNode = callJsonNode.get("prerequisiteMethods");
            for (JsonNode prerequisiteMethod : prerequisiteMethodsJsonNode) {

                generator.generateCall(new Generator.ReceiverNameCallNameCallType(prerequisiteMethod.get("receiverType").asText(), prerequisiteMethod.get("name").asText(), true), null);
            }
        }

        String returnType = callJsonNode.get("returnType").asText();
        String parentReceiverType = rootJsonNode.get("receiverType").asText();
        String receiver = generator.determineReceiver(parentReceiverType, rootJsonNode.has("requirements"));

        boolean jsonParams = callJsonNode.path("paramType").asText("csv").equals("object");
        boolean isArray = callJsonNode.has("array");
        JsonNode paramsJsonNode = callJsonNode.path("properties");
        CallNode rootASTNode = new CallNode(receiver, callName, jsonParams, isArray, isMethod, generator, paramsJsonNode, requirements);

        if (!returnType.equals("none")) {
            return generator.generateDeclaration(callJsonNode, rootASTNode);
        } else {
            generator.addToObjectAttributesTable(receiver, rootASTNode.getParameters());
        }

        generator.addToCallState(new Generator.ReceiverNameCallNameCallType(currentReceiverType, callName, isMethod));
        if (callJsonNode.has("resets")) {
            JsonNode resetMethodsJsonNode = callJsonNode.get("resets");
            for (JsonNode resetMethod : resetMethodsJsonNode) {
                generator.removeFromCallState(new Generator.ReceiverNameCallNameCallType(resetMethod.get("receiverType").asText(), resetMethod.get("name").asText(), true));
            }
        }

        // Delete object
        if (callJsonNode.has("deletes")) {
            generator.removeFromSymbolTable(parentReceiverType, receiver);
        }

        return rootASTNode;
    }


}
