package ast;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import generator.Generator;

import java.io.File;
import java.io.IOException;
import java.util.*;

public class Parser {

    private final Generator generator;

    public Parser(Generator generator) {
        this.generator = generator;
    }

    public ASTNode parseAndBuildRandCall(String filePath, Generator.ReceiverTypeCallNameCallType callDetails) throws IOException {

        return parseAndBuildCall(filePath, callDetails.callName(), callDetails.receiverType(), callDetails.isMethod(), null, null, null);

    }




    public ASTNode parseAndBuildCall(String filePath, String callName, String currentReceiverType, boolean isMethod, Map<String, List<String>> requirements, Map<String, String> sameObjectsReqs, String specificReceiver) throws IOException {
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



        String returnType = callJsonNode.get("returnType").asText();
        String parentReceiverType = rootJsonNode.get("receiverType").asText();
        String receiver;
        if (specificReceiver == null) {
            // Check attributres required for receiver
            if (callJsonNode.has("conditions")) {
                JsonNode conditionsNode = callJsonNode.get("conditions");

                if (conditionsNode.has("withAttributes")) {
                    Map<String, List<String>> receiverRequirements = generator.parseAttributeRequirements(conditionsNode);
                    if (requirements == null) {
                        requirements = new LinkedHashMap<>();
                    }
                    requirements.putAll(receiverRequirements);
                }
            }
            receiver = generator.determineReceiver(parentReceiverType, callName, rootJsonNode.has("requirements"), requirements, sameObjectsReqs);

            if (!generator.getRandomUtils().randomChanceIsSuccessful(generator.getWebGlitchOptions().getSkipValidityCheckChance())) {
                parseReceiverMethodRequirements(receiver, callJsonNode);
            }
        } else {
            receiver = specificReceiver;
        }

        // First generate any prerequisite methodCalls
        if (callJsonNode.has("prerequisiteMethods") && !generator.getRandomUtils().randomChanceIsSuccessful(generator.getWebGlitchOptions().getSkipValidityCheckChance())) {
            JsonNode prerequisiteMethodsJsonNode = callJsonNode.get("prerequisiteMethods");
            for (JsonNode prerequisiteMethod : prerequisiteMethodsJsonNode) {

                generator.generateCall(new Generator.ReceiverTypeCallNameCallType(prerequisiteMethod.get("receiverType").asText(), prerequisiteMethod.get("name").asText(), true), null, sameObjectsReqs, receiver);
            }
        }


        boolean jsonParams = callJsonNode.path("paramType").asText("csv").equals("object");
        boolean isArray = callJsonNode.has("array");
        boolean isAsync = callJsonNode.has("async");
        JsonNode paramsJsonNode = callJsonNode.path("properties");
        CallNode callNode = new CallNode(receiver, returnType, callName, jsonParams, isArray, isMethod, isAsync, generator, paramsJsonNode, requirements);
        ASTNode nodeToReturn;
        String variableWhoseAttributesAreAffected;



        if (!returnType.equals("none")) {
            AssignmentNode assignmentNode = generator.generateDeclaration(callJsonNode, callNode);
            variableWhoseAttributesAreAffected = assignmentNode.getVarName();
            nodeToReturn = assignmentNode;
        } else {
            generator.addToObjectAttributesTable(receiver, callNode.getParameters());
            variableWhoseAttributesAreAffected = receiver;
            nodeToReturn = callNode;
        }

        // The call hasn't been added to the parameterNode yet
        if (!generator.getRandomUtils().randomChanceIsSuccessful(generator.getWebGlitchOptions().getSkipValidityCheckChance())) {
            ensureConditionsForReceiverAreMet(receiver, callJsonNode);
        }

        generator.setCallState(receiver, callName, isMethod);

        generator.setAdditionalAttributes(variableWhoseAttributesAreAffected, callJsonNode);

        // Delete object
        if (callJsonNode.has("deletes") && !generator.getRandomUtils().randomChanceIsSuccessful(generator.getWebGlitchOptions().getSkipValidityCheckChance())) {
            deleteRequirements(callJsonNode, parentReceiverType, receiver);

        }

        generator.parseAndSetCallAvailability(receiver, callJsonNode);

        generator.addToProgramNode(nodeToReturn);

        if (callJsonNode.has("postGeneration") && !generator.getRandomUtils().randomChanceIsSuccessful(generator.getWebGlitchOptions().getSkipValidityCheckChance())) {
            parsePostGenerationRequirements(receiver, callJsonNode.get("postGeneration"));
        }

        return nodeToReturn;
    }

    private void parseReceiverMethodRequirements(String receiver, JsonNode callJsonNode) {
        if (!callJsonNode.has("conditions")) {
            return;
        }

        JsonNode conditionsNode = callJsonNode.get("conditions");
        if (conditionsNode.has("availableForGettingMappedRange")) {
            if (generator.getObjectAttributes(receiver, "mapped").equals("false")) {

                generator.generateCall(new Generator.ReceiverTypeCallNameCallType("GPUBuffer", "mapAsync", true), null, null, receiver);
            }
        }
    }

    private void parsePostGenerationRequirements(String receiver, JsonNode postGenerationReqsNode) {
        List<String> postGenerationRequirements = new ArrayList<>();
        extractNodeAsList(postGenerationReqsNode, postGenerationRequirements);
        for (String requirement : postGenerationRequirements) {
            // Skip generation if error occurs due to previous invalid call
            try {
                generator.generatePostGenerationRequirement(receiver, requirement);
            } catch (NullPointerException e) {
            }

        }
    }

    private void deleteRequirements(JsonNode callJsonNode, String parentReceiverType, String variableName) {
        String whatToDelete = callJsonNode.get("deletes").asText();

        if (whatToDelete.equals("true")) {
            generator.removeFromSymbolTable(parentReceiverType, variableName);
            return;
        }

        // fetch the attribute
        String objectToDelete = generator.getObjectAttributes(variableName, whatToDelete);
        String objectType = generator.getVariableType(objectToDelete);
        generator.removeFromSymbolTable(objectType, objectToDelete);


    }

    private void ensureConditionsForReceiverAreMet(String receiverName, JsonNode callJsonNode) {
        if (!callJsonNode.has("conditions")) {
            return;
        }

        JsonNode conditionsNode = callJsonNode.get("conditions");

        if (conditionsNode.has("commandEncodingFinished")) {
            ensureCommandEncodingFinished(receiverName);
        }

        if (conditionsNode.has("noActiveDebugGroups")) {
            ensureNoActiveDebugGroups(receiverName);
        }

        if (conditionsNode.has("renderPipelineAvailable")) {
            ensureRenderPipelineAvailable(receiverName);
        }

        if (conditionsNode.has("buffersAvailable")) {
            ensureBuffersAvailable(receiverName);
        }

        if (conditionsNode.has("debugGroupAvailable")) {
            ensureDebugGroupAvailable(receiverName);
        }

        if (conditionsNode.has("renderPassEncodingFinished") || conditionsNode.has("computePassEncodingFinished")) {
            // WIP
            return;
        }
    }

    private void ensureNoActiveDebugGroups(String receiverName) {
        int remainingDebugGroups = outstandingDebugGroups(receiverName);
        if (remainingDebugGroups == 0) {
            return;
        }

        for (int i = remainingDebugGroups; i > 0; i--) {
            String receiverType = generator.getVariableType(receiverName);
            generator.generateCall(new Generator.ReceiverTypeCallNameCallType(receiverType, "popDebugGroup", true), null, null, receiverName);
        }
    }

    private void ensureDebugGroupAvailable(String receiverName) {

        int remainingDebugGroups = outstandingDebugGroups(receiverName);

        if (remainingDebugGroups == 0) {
            String receiverType = generator.getVariableType(receiverName);
            generator.generateCall(new Generator.ReceiverTypeCallNameCallType(receiverType, "pushDebugGroup", true), null, null, receiverName);
        }
    }

    private int outstandingDebugGroups(String receiverName) {
        List<String> callHistory = generator.getFromCallState(receiverName);
        if (callHistory == null) {
            return 0;
        }

        int pushDebugGroupCount = 0;
        int popDebugGroupCount = 0;

        for (String call : callHistory) {
            if (call.equals("pushDebugGroup")) {
                pushDebugGroupCount++;
            }
            if (call.equals("popDebugGroup")) {
                popDebugGroupCount++;
            }
        }

        return pushDebugGroupCount - popDebugGroupCount;
    }

    private void ensureBuffersAvailable(String queueName) {
        String commandBuffer = generator.getObjectAttributes(queueName, "commandBuffers");
        String commandEncoder = generator.getParentVariable(commandBuffer);
        Set<String> allBuffersUsed = new HashSet<>();

        // Check all buffers from the command encoder
        allBuffersUsed.addAll(generator.getBuffersUsedFromParentVariable(commandEncoder));

        for (String buffer : allBuffersUsed) {
            if (generator.getObjectAttributes(buffer, "mapped").equals("true")) {
                generator.generateCall(new Generator.ReceiverTypeCallNameCallType("GPUBuffer", "unmap", true), null, null, buffer);
            }
        }

        generator.removeFromParentVariablesAndTheirBuffersUsed(queueName);
        generator.removeFromParentVariablesAndTheirBuffersUsed(commandBuffer);
    }

    private void ensureRenderPipelineAvailable(String receiverName) {
        // To do .draw, need to have .setPipeline
        List<String> callHistory = generator.getFromCallState(receiverName);
        if (callHistory != null && callHistory.contains("setPipeline")) {
            return;
        }

        generator.generateCall(new Generator.ReceiverTypeCallNameCallType("GPURenderPassEncoder", "setPipeline", true), null, null, receiverName);

    }

    private void ensureCommandEncodingFinished(String receiverName) {
        // Check child ComputePassEncoder or GPURenderPassEncoder not been end()
        // all child GPUComputePassencoder or GPURenderPassEncoders have all had end() called on it
        // 1) Get all variables for GPUComputePassEncoder and GPURenderPassEncoder
        List<String> TYPES_TO_CHECK = Arrays.asList("GPUComputePassEncoder", "GPURenderPassEncoder");
        Set<String> allChildPassEncoders = new HashSet<>();

        for (String type : TYPES_TO_CHECK) {
            Set<String> setToAdd = generator.getFromMapOfGeneratedVariables(receiverName, type);
            if (setToAdd == null) {
                continue;
            }
            allChildPassEncoders.addAll(setToAdd);
        }

        // 2) Check their callState - what methods have been called on them (ie add this tracking)
        for (String childPassEncoder : allChildPassEncoders) {
            List<String> callHistory = generator.getFromCallState(childPassEncoder);

            // 3) if callState does not include GPUComputePassEncoder.end or GPURenderPassEncoder.end, generate that call
            if (callHistory == null || !callHistory.contains("end")) {
                String receiverType = generator.getVariableType(childPassEncoder);
                generator.generateCall(new Generator.ReceiverTypeCallNameCallType(receiverType, "end", true), null, null, childPassEncoder);
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

    public static void extractNodeAsList(JsonNode enumNode, List<String> enumValues) {
        enumValues.clear();
        if (enumNode == null) {
            return;
        }

        enumNode.forEach(
                enumValue -> {
                    enumValues.add(enumValue.asText());
                });
    }
}
