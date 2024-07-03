package ast;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
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

        return parseAndBuildCall(filePath, callName, receiverType, option.equals("methods"), null, null);

    }




    public ASTNode parseAndBuildCall(String filePath, String callName, String currentReceiverType, boolean isMethod, Map<String, List<String>> requirements, Map<String, String> sameObjectsReqs) throws IOException {
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

                generator.generateCall(new Generator.ReceiverNameCallNameCallType(prerequisiteMethod.get("receiverType").asText(), prerequisiteMethod.get("name").asText(), true), null, sameObjectsReqs);
            }
        }

        String returnType = callJsonNode.get("returnType").asText();
        String parentReceiverType = rootJsonNode.get("receiverType").asText();
        String receiver = generator.determineReceiver(parentReceiverType, callName, rootJsonNode.has("requirements"), sameObjectsReqs);

        // Ensure prequisite conditions for receiver are met:
        ensureConditionsForReceiverAreMet(receiver, callJsonNode);

        boolean jsonParams = callJsonNode.path("paramType").asText("csv").equals("object");
        boolean isArray = callJsonNode.has("array");
        JsonNode paramsJsonNode = callJsonNode.path("properties");
        CallNode rootASTNode = new CallNode(receiver, callName, jsonParams, isArray, isMethod, generator, paramsJsonNode, requirements);
        ASTNode nodeToReturn;

        if (!returnType.equals("none")) {
            // THIS WONT WORK
            nodeToReturn = generator.generateDeclaration(callJsonNode, rootASTNode);
        } else {
            generator.addToObjectAttributesTable(receiver, rootASTNode.getParameters());
            nodeToReturn = rootASTNode;
        }

        generator.setCallState(receiver, callName, isMethod);


        // Delete object
        if (callJsonNode.has("deletes")) {
            generator.removeFromSymbolTable(parentReceiverType, receiver);
        }

        parseAndSetUnavailability(callJsonNode);


        return nodeToReturn;
    }

    private void parseAndSetUnavailability(JsonNode callJsonNode) {
        if (!callJsonNode.has("setUnavailable")) {
            return;
        }

        JsonNode unavailabilityNode = callJsonNode.get("setUnavailability");
        // need to entirely move set unavailabilty to generator. Then add special parsing for "this" and "all"
    }

    private void ensureConditionsForReceiverAreMet(String receiverName, JsonNode callJsonNode) {
        if (!callJsonNode.has("conditions")) {
            return;
        }

        JsonNode conditionsNode = callJsonNode.get("conditions");

        if (conditionsNode.has("renderPassEncodingFinished")) {
            // WIP
            return;
        }

        if (conditionsNode.has("commandEncodingFinished")) {
            // Check child ComputePassEncoder or GPURenderPassEncoder not been end()
            // all child GPUComputePassencoder or GPURenderPassEncoders have all had end() called on it
            // 1) Get all variables for GPUComputePassEncoder and GPURenderPassEncoder
            List<String> TYPES_TO_CHECK = Arrays.asList("GPUComputePassEncoder", "GPURenderPassEncoder");
            Set<String> allChildPassEncoders = new HashSet<>();

            for (String type : TYPES_TO_CHECK) {
                allChildPassEncoders.addAll(generator.getFromMapOfGeneratedVariables(receiverName, type));
            }

            // 2) Check their callState - what methods have been called on them (ie add this tracking)
            for (String childPassEncoder : allChildPassEncoders) {
                Set<String> callHistory = generator.getFromCallState(childPassEncoder);

                // 3) if callState does not include GPUComputePassEncoder.end or GPURenderPassEncoder.end, generate that call
                if (!callHistory.contains("end")) {
                    generator.generateCall(new Generator.ReceiverNameCallNameCallType(childPassEncoder, "end", true), null, null);
                }
            }


        }
    }

    public static List<String> getListFromJson(String jsonList) {
        ObjectMapper mapper = new ObjectMapper();
        List<String> listValues;
        try {
            listValues = mapper.readValue(jsonList, new TypeReference<ArrayList<String>>(){});
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
        return listValues;
    }
}
