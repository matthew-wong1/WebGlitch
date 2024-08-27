package ast;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import generator.Generator;
import generator.NumericConstraints;
import generator.RandomUtils;
import generator.WebGlitch;

import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

public class ParameterNode extends ASTNode {

    private final String WEBGLITCH_PATH = WebGlitch.getPath();
    private final String TYPES_PATH = WEBGLITCH_PATH + "/rsrcs/webgpu/types/types.json";
    private final String ENUMS_PATH = WEBGLITCH_PATH + "/rsrcs/webgpu/types/enums/";
    private final String SHADER_ENTRY_POINT = "main";
    private final String fieldName;
    private final RandomUtils randomUtils;

    private final boolean isRoot;
    private final boolean isJsonFormat;
    private final boolean isArray;
    private final ParameterNode rootParameterNode;
    private final boolean isJsonArray;
    private int numSubParams = 0;
    private boolean isString;
    private boolean isBitwiseFlags;
    private final boolean skipValidityChecks;
    private final boolean skipValidityChecksEnabledGlobally;


    private final Generator generator;
    private final ParameterListNode parentList;

    private final Map<String, ParameterNode> parameterNodeMap = new LinkedHashMap<>();
    private final List<Parameter> parameters = new ArrayList<>();
    private final List<String> individualParameterRequirements;
    private final Map<String, List<String>> nestedParameterRequirements = new LinkedHashMap<>();

    public ParameterNode(String fieldName, JsonNode details, boolean isJsonFormat, boolean isRoot, Generator generator, ParameterListNode parentList, Map<String, List<String>> parameterRequirements) throws SkipParameterException {
        this(fieldName, details, isJsonFormat, isRoot, null, generator, parentList, parameterRequirements);
    }

    public ParameterNode(String fieldName, JsonNode details, boolean isJsonFormat, boolean isRoot, ParameterNode parentParameterNode, Generator generator, ParameterListNode parentList, Map<String, List<String>> parameterRequirements) throws SkipParameterException {
        this.isJsonFormat = isJsonFormat;
        this.generator = generator;
        this.parentList = parentList;
        this.fieldName = fieldName;
        this.isRoot = isRoot;
        this.isArray = details.has("array");
        this.isJsonArray = details.has("arrayType");
        this.individualParameterRequirements = parseParameterRequirements(parameterRequirements);
        this.randomUtils = generator.randomUtils;
        this.skipValidityChecks = randomUtils.randomChanceIsSuccessful(generator.getWebGlitchOptions().getSkipValidityCheckChance());
        this.skipValidityChecksEnabledGlobally = generator.getWebGlitchOptions().getSkipValidityCheckChance() > 0;

//        System.out.println("generating " + fieldName + " for call " + getParentList().getCallName() + " using receiver " + parentList.getReceiver());

        checkImplementationSpecificCalls(details);

        if (this.isRoot) {
            this.rootParameterNode = this;
        } else {
            this.rootParameterNode = parentParameterNode.getRootParameterNode();
        }

        if (parentParameterNode != null) {
            parentParameterNode.parameterNodeMap.put(fieldName, this);
        }
        // STILL HAVE PROBEM OF GETTING TO THE ROOT PARMATERNODE

        // Only generate parameters if is a method call (don't generate for attributes)
        if (details.has("type")) {

            String paramType = details.get("type").asText();
            this.isString = paramType.equals("string");
            generateParam(fieldName, details, paramType);
        }
    }

    private List<String> parseParameterRequirements(Map<String, List<String>> parameterRequirements) {
        if (parameterRequirements == null || parameterRequirements.isEmpty()) {
            return null;
        }
        Map<String, String> customParamMapping = Map.of("mapped", "mappedAtCreation");
        for (Map.Entry<String, List<String>> entry : parameterRequirements.entrySet()) {
            String currentKeyName = entry.getKey();
            if (customParamMapping.containsKey(currentKeyName) && customParamMapping.get(currentKeyName).equals(this.fieldName)) {
                return entry.getValue();
            }

            if (currentKeyName.startsWith(this.fieldName)) {
                if (currentKeyName.contains(".")) {
                    String[] split = currentKeyName.split("\\.", 2);
                    String newKeyName = split[1];
                    this.nestedParameterRequirements.put(newKeyName, entry.getValue());
                } else if (currentKeyName.equals(this.fieldName)){
                    return entry.getValue();
                }
            }
        }

        return null;

    }

    private void checkImplementationSpecificCalls(JsonNode details) throws SkipParameterException {
        boolean wgpuCompatible = generator.getWgpuCompatible();

        if (wgpuCompatible && details.has("dawnOnly")) {
            throw new SkipParameterException("Platform incompatible parameters are skipped");
        }
    }

    public ParameterNode getRootParameterNode() {
        return rootParameterNode;
    }

    private void generateParam(String fieldName, JsonNode details, String paramType) throws SkipParameterException {

        JsonNode additionalConditionsNode = null;

        if (details.has("enum")) {
            generateEnumVal(details, paramType);
        } else if (this.individualParameterRequirements != null && !this.individualParameterRequirements.isEmpty() && !skipValidityChecks) {
            // Also if are multiple choices and since it's not an enum, pick one of them at random
            String parameterValue = individualParameterRequirements.get(randomUtils.nextInt(0, individualParameterRequirements.size()));

            // can't be a label otherwise generates qutoes twice
            if (paramType.equals("string") && !fieldName.equals("label")) {
                parameterValue = encodeAsString(parameterValue);
            }

            this.parameters.add(new Parameter(parameterValue));
        } else if (isString) {
            this.parameters.add(new Parameter(generator.generateRandVarName(parentList.getCallNode().getReturnType())));
        } else if (paramType.equals("uint") || paramType.equals("int") || paramType.equals("rgba") || paramType.equals("double")) {
            generateNumber(details, paramType);
        } else if (paramType.equals("markerLabel")) {
            this.parameters.add(new Parameter("\"Debug marker\""));
        } else if (paramType.equals("boolean")) {
            generateBoolean(details);
        } else if (paramType.equals("typedArray")) {
            generateTypedArray(details);
        } else if (paramType.equals("shaderEntryPoint")) {
            this.parameters.add(new Parameter(encodeAsString(SHADER_ENTRY_POINT)));
        } else if (paramType.equals("gpuLayout")) {
            this.parameters.add(new Parameter(encodeAsString("auto")));
        } else if (paramType.equals("shader")) {
            this.parameters.add(new Parameter(this.chooseRandomShader()));
        } else if (paramType.equals("bufferSlot") || paramType.equals("bindGroupIndex")) {
            this.parameters.add(new Parameter("0"));
        } else if (paramType.equals("bindGroupLayout")) {
            generateBindGroupLayout(details);
        } else if (this.isArray && details.has("arrayType")) {
            generateArrayOfJsonObjects(paramType, details.get("arrayType").asText(), details);
        } else if (Character.isUpperCase(paramType.charAt(0))) { // Requires a WebGPU object
            additionalConditionsNode = findAndSetWebGPUInterface(paramType, details);
        } else { // Requires WebGPU Type
            generateParamAsJson(paramType);
        }

        // Parse post-generation conditions
        parsePostGenerationConditions(details.get("conditions"));

        // how does this work for triply nested?
        // Maybe the parent adds it and continually does .getFieldName
        if(!this.isRoot) {
            return;
        }

        if (!parameters.isEmpty()) {
            parentList.addParameters(fieldName, parameters);
        } else {
            addAllSubParamsToParent();
        }
        // USE THIS ONCE FIX JSON
        // String fullFieldName = this.fieldName + "." + nestedFieldName;
//        if (!isNested) { fix this later when fix json structure

//        }

        // Set call availabiltiy
        // Set unavailabillity
        if (additionalConditionsNode != null) {
            generator.parseAndSetCallAvailabilityIfNoParameters(additionalConditionsNode, parentList);
        }

    }

    private void generateTypedArray(JsonNode details) {
        JsonNode conditionsNode = details.has("conditions") ? details.get("conditions") : null;

        Map<String, String> requirements = new LinkedHashMap<>();
        if (conditionsNode != null && !skipValidityChecks) {
            parseTypedArrayRequirements(conditionsNode, requirements);
        }
        String arrayVariableName = generator.generateTopLevelStatement("typedArray", null, null, requirements);
        this.parameters.add(new Parameter(arrayVariableName));
    }

    // Assumes conditionsNode is not null
    private void parseTypedArrayRequirements(JsonNode conditionsNode, Map<String, String> requirements) {
        if (conditionsNode.has("fitsInBuffer")) {
            String gpuBufferName = parentList.getParameter("buffer");
            long bufferSize = Long.parseLong(generator.getObjectAttributes(gpuBufferName, "size"));
            long bufferOffset = Long.parseLong(parentList.getParameter("bufferOffset"));
            long maxBytes;

            if (bufferSize != bufferOffset) {
                maxBytes = bufferSize - bufferOffset;
            } else {
                maxBytes = 4;
                parentList.setParamValue("bufferOffset", String.valueOf(bufferOffset - maxBytes));
            }

            requirements.put("maxBytes", String.valueOf(maxBytes));
        }
    }

    private void parsePostGenerationConditions(JsonNode conditions) {
        if (conditions == null || skipValidityChecks) {
            return;
        }

        // Set a compatible bindgroup
        if (conditions.has("bindGroupCompatible")) {
            String computePassEncoderName = parentList.getReceiver();
            Set<String> computePassEncoderCallState = generator.getFromCallState(computePassEncoderName);
            if (computePassEncoderCallState == null || !computePassEncoderCallState.contains("setBindGroup")) {
                return;
            }

            Map<String, String> sameObjectReqs = new HashMap<>();
            String device = generator.findBaseReceiver(parentList.getReceiver(), "GPUDevice");
            sameObjectReqs.put("GPUDevice", device);
            generator.generateCall(new Generator.ReceiverTypeCallNameCallType("GPUComputePassEncoder", "setBindGroup", true), null, sameObjectReqs, computePassEncoderName);
        }
    }

    private void generateArrayOfJsonObjects(String paramType, String arrayType, JsonNode details) {
        JsonNode conditionsNode = details.has("conditions") ? details.get("conditions") : null;

        switch (arrayType) {
            case "bindGroupEntry":
                generateArrayOfBindGroupEntries(paramType, conditionsNode);
                break;
            default:
                System.err.println("reacheed unreachable area with arrayType " + arrayType );
        }

    }

    private void generateArrayOfBindGroupEntries(String paramType, JsonNode conditionsNode) {
        if (conditionsNode == null || !conditionsNode.has("computeShaderCompatible") || skipValidityChecks) {
            return;
        }

        Map<String, List<String>> bufferRequirements = new LinkedHashMap<>();

        String label = parentList.getParameter("label");
        String[] split = label.split("\\.", 2);
        String computePipelineName = split[0];

        String computeShaderModule;
        String computeShader;
        String shaderFolderPath;

        try {
            computeShaderModule = generator.getObjectAttributes(computePipelineName, "compute.module");
            computeShader = generator.getObjectAttributes(computeShaderModule, "code");
            shaderFolderPath = generator.getShaderProperties(computeShader, "path");
        } catch (NullPointerException e) {
            return;
        }



        ObjectMapper mapper = new ObjectMapper();
        JsonNode shaderRequirementsNode = null;

        try {
            shaderRequirementsNode = mapper.readTree(new File(shaderFolderPath + "requirements.json"));
        } catch (IOException e) {
            return;
        }

        // Parse shaderRequirementsNode for inputBuffer
        List<String> inputBufferValues = new ArrayList<>();

        // Try catch for invalid parameters where graphics shader used instead of compute shader
        try {
            Parser.extractNodeAsList(shaderRequirementsNode.get("inputBuffer"), inputBufferValues);
        } catch (NullPointerException e) {
            return;
        }

        // Generate the input array as a top level statement
        String inputValuesVariableName = generator.generateTopLevelStatement("typedArray", "Uint8", inputBufferValues, null);

        // Set the size as bufferName.byteLength() - see if this is possible when generating a parameter\
        String inputBufferSize = String.valueOf(inputBufferValues.size());

        // Set requirements for input buffer
        // Input Usage: UNIFORM
        bufferRequirements.put("GPUBuffer.mappedAtCreation", List.of("false"));
        bufferRequirements.put("GPUBuffer.size", List.of(inputBufferSize));
        bufferRequirements.put("GPUBuffer.usage", List.of("GPUBufferUsage.UNIFORM", "GPUBufferUsage.COPY_DST"));

        Map<String, String> sameObjectRequirements = new LinkedHashMap<>();
        sameObjectRequirements.put("GPUDevice", generator.findBaseReceiver(parentList.getReceiver(), "GPUDevice"));

        // ESSETNIALLY MAKE THE BUFFER
        String inputBufferName = generator.getRandomReceiver("GPUBuffer", "getMappedRange", bufferRequirements, List.of("GPUDevice"), parentList.getReceiver(), this, null, null);

        nestedParameterRequirements.put("binding", List.of("0"));
        nestedParameterRequirements.put("resource.buffer", List.of(inputBufferName));
        nestedParameterRequirements.put("resource.size", List.of(inputBufferSize));

        // Generate parameter for input buffer
        generateParamAsJson(paramType);
        nestedParameterRequirements.clear();

        // Set requirements for storage buffer
        // storage usage: storage, COPY_SRC
        String storageBufferSize = shaderRequirementsNode.get("storageBufferSize").asText();
        bufferRequirements.put("GPUBuffer.size", List.of(storageBufferSize));
        bufferRequirements.put("GPUBuffer.usage", List.of("GPUBufferUsage.STORAGE", "GPUBufferUsage.COPY_SRC"));

//        String storageBufferName = generator.determineReceiver("GPUBuffer", "getMappedRange", true, bufferRequirements, sameObjectRequirements);
        String storageBufferName = generator.getRandomReceiver("GPUBuffer", "getMappedRange", bufferRequirements, List.of("GPUDevice"), parentList.getReceiver(), this, null, null);
        nestedParameterRequirements.put("binding", List.of("1"));
        nestedParameterRequirements.put("resource.size", List.of(storageBufferSize));
        nestedParameterRequirements.put("resource.buffer", List.of(storageBufferName));

        // Generate parameter for storage buffer
        generateParamAsJson(paramType);

        // Make a writeBuffer call, copying input data into the buffer that was generated
        Map<String, List<String>> writeBufferRequirements = new LinkedHashMap<>();
        writeBufferRequirements.put("buffer", List.of(inputBufferName));
        writeBufferRequirements.put("bufferOffset", List.of("0"));
        writeBufferRequirements.put("data", List.of(inputValuesVariableName));

        Map<String, String> sameObjectReqs = new LinkedHashMap<>();
        String sameGPUDevice = generator.findBaseReceiver(inputBufferName, "GPUDevice");
        sameObjectReqs.put("GPUDevice", sameGPUDevice);
        // THE PROBLEM HERE IS THAT WRITE BUFFER IS FROM THE SAME GPUDEVICE. BUT GPUQUEUE ISN'T.
        String gpuQueueName = generator.getRandomReceiver("GPUQueue", "writeBuffer", null, List.of("GPUDevice"), parentList.getReceiver(), this, null, null);
        generator.generateCall(new Generator.ReceiverTypeCallNameCallType("GPUQueue", "writeBuffer", true), writeBufferRequirements, sameObjectReqs, gpuQueueName);
    }

    private void generateBindGroupLayout(JsonNode details) {

        JsonNode conditionsNode = details.has("conditions") ? details.get("conditions") : null;
        List<String> sameObjectRequirements = null;
        if (conditionsNode != null && !skipValidityChecks) {
            sameObjectRequirements = conditionsNode.has("same") ? Parser.getListFromJson(conditionsNode.get("same").toString()) : null;
        }

        String pipelineVariableName = generator.getRandomReceiver("GPUComputePipeline", "getBindGroupLayout", null, sameObjectRequirements, parentList.getReceiver(), this, null, null);


        // Label should be the first paramter to be generated
        if (conditionsNode != null && conditionsNode.has("computeShaderCompatible") && !skipValidityChecks) {
            String label = parentList.getParameter("label");

            if (!label.contains(".")) {
                // Pick a random pipeline variable
                // Set the label
                parentList.setParamValue("label", pipelineVariableName + ".bindGroup");
            } else {
                // If label contains a pipelineName.bindGroup then:
                String[] split = label.split("\\.", 2);
                pipelineVariableName = split[0];
            }
        }

        // Generate the actual parameter
        this.parameters.add(new Parameter(pipelineVariableName + ".getBindGroupLayout(0)"));

    }

    private void generateBoolean(JsonNode details) {
        String generatedValue;

        if (details.has("conditions") && !skipValidityChecks) {
            generatedValue = parseBooleanConditions(details.get("conditions"));
        } else {
            generatedValue = String.valueOf(randomUtils.nextBoolean());
        }

        this.parameters.add(new Parameter(generatedValue));
    }

    private String parseBooleanConditions(JsonNode conditions) {
        if (conditions.has("readCompatible")) {
            String format = this.rootParameterNode.findNestedParameterNode("view").getParameter().getValue();
            if (format.contains("depth") && format.contains("stencil")) {
                return this.rootParameterNode.findNestedParameterNode("depthReadOnly").getParameter().getValue();
            }
        }

        return String.valueOf(randomUtils.nextBoolean());
    }

    private String chooseShaderOfType(String type) {
        // expects type of shader.subtype where subtype is compute, vertex, or fragment
        String shaderImportName = generator.generateTopLevelStatement("shader."  + type);
        String[] splitNames = shaderImportName.split("\\.");

        // Set label as 'compute' or 'graphics' based on folder in which found the shader
        parentList.setParamValue("label", splitNames[0]);

        return splitNames[1];

    }

    private String chooseRandomShader() {
        List<String> SHADER_TYPES = Arrays.asList("vertex", "fragment", "compute");

        // THIS SHOULD BE FINDNESTEDPARAMETER
        String preDeterminedType = parentList.getParameter("label");

        String chosenShaderType;

        if (SHADER_TYPES.contains(preDeterminedType) && !skipValidityChecks) {
            chosenShaderType = preDeterminedType;

        } else {
            chosenShaderType = SHADER_TYPES.get(randomUtils.nextInt(SHADER_TYPES.size()));
        }

        // Add import statement, remembering the shader variable name. Will be in format type.actualName
        return chooseShaderOfType(chosenShaderType);

    }

    private JsonNode findAndSetWebGPUInterface(String paramType, JsonNode details) {
        if (!details.has("conditions") || skipValidityChecks) {
            this.parameters.add(new Parameter(generator.getRandomReceiver(paramType, parentList.getCallName())));
            return null;
        }

        // Need a specific object with certain attributes

        JsonNode conditionsNode = details.get("conditions");
        Map<String, List<String>> requirements = parseInterfaceConditions(conditionsNode);

        List<String> sameObjectRequirements = conditionsNode.has("same") ? Parser.getListFromJson(conditionsNode.get("same").toString()) : null;
        String fieldToFetchCannotBeThisObjectFrom = conditionsNode.has("differentTo") ? conditionsNode.get("differentTo").asText() : null;
        String cannotBeThisObject = null;
        if (fieldToFetchCannotBeThisObjectFrom != null) {
            cannotBeThisObject = parentList.getParameter(fieldToFetchCannotBeThisObjectFrom);
        }


        String webGPUObject = generator.getRandomReceiver(paramType, parentList.getCallName(), requirements, sameObjectRequirements, parentList.getReceiver(), this, cannotBeThisObject, null);
        Parameter newParameter = new Parameter(webGPUObject);

        if (conditionsNode.has("trackedLifetime")) {
            String baseReceiver = parentList.getReceiver();
            if (generator.getVariableType(baseReceiver).equals("GPURenderPassEncoder")) {
                baseReceiver = generator.getParentVariable(baseReceiver);
            }
            generator.addToParentVariablesAndTheirBuffersUsed(baseReceiver, webGPUObject);
        }
        this.parameters.add(newParameter);

        return conditionsNode;

    }

    private Map<String, List<String>> parseInterfaceConditions(JsonNode conditionsNode) {

        if (conditionsNode.has("withAttributes")) {
            return generator.parseAttributeRequirements(conditionsNode);
        } else if (conditionsNode.has("renderPassCompatible")) {
            Map<String, List<String>> requirements = new LinkedHashMap<>();
            // The receiver is GPUCommandEncoder
            // Look at construction and check colorAttachments.view.format
            List<String> requiredColorAttachmentValues = new ArrayList<>();

            String receiver = parentList.getReceiver();
            String colorAttachmentsView = generator.getObjectAttributes(receiver, "colorAttachments.view");
            String colorAttachmentsFormat = generator.getObjectAttributes(colorAttachmentsView, "format");
            requiredColorAttachmentValues.add(colorAttachmentsFormat);

            // GPURenderPipeline must have fragment.targets.format
            requirements.put("GPURenderPipeline.fragment.targets.format", requiredColorAttachmentValues);

            String colorAttachmentsTexture = generator.getParentVariable(colorAttachmentsView);
            String sampleCount = generator.getObjectAttributes(colorAttachmentsTexture, "sampleCount");

            List<String> requiredSampleCount = new ArrayList<>();
            requiredSampleCount.add(sampleCount);
            requirements.put("GPURenderPipeline.multisample.count", requiredSampleCount);

//            if (sampleCount.equals("1")) {
//                // Disable alphatoCoverage
//                List<String> requiredAlphaCoverage = List.of("false");
//                requirements.put("GPURenderPipeline.multisample.alphaToCoverageEnabled", requiredAlphaCoverage);
//            }

            return requirements;

            // (Also look at depth stencil if it exists)
        } else if (conditionsNode.has("computePipelineCompatible")) {
            Map<String, List<String>> requirements = new LinkedHashMap<>();
            // Check have setPIpeline called already
            String computePassEncoderName = parentList.getReceiver();
            Set<String> computePassEncoderCallState = generator.getFromCallState(computePassEncoderName);

            // If not, pick a random bindGroup (ie return)
            if (computePassEncoderCallState == null) {
                return null;
            }

            if (!computePassEncoderCallState.contains("setPipeline")) {
                return null;
            }


            String computePipelineName = generator.getObjectAttributes(computePassEncoderName, "pipeline");
            List<String> requiredLabel = new ArrayList<>();
            requiredLabel.add(computePipelineName + ".bindGroup");
            requirements.put("GPUBindGroup.label", requiredLabel);
            return requirements;
        }

        return null;
    }


    private void addAllSubParamsToParent() {
        depthFirstTraverseSubnodes(this, this.fieldName);
    }

    private void depthFirstTraverseSubnodes(ParameterNode parameterNode, String currentPath) {

        if (parameterNode.parameters.isEmpty()) {
            for (ASTNode astNode : parameterNode.subnodes) {
                ParameterNode subParameterNode = (ParameterNode) astNode;
                depthFirstTraverseSubnodes(subParameterNode, currentPath + "." + subParameterNode.getFieldName());
            }
        } else {
            parentList.addParameters(currentPath, parameterNode.parameters);
        }
    }

    private String getFieldName() {
        return fieldName;
    }

    public ParameterListNode getParentList() {
        return this.parentList;
    }

    private void generateNumber(JsonNode details, String paramType) {

        NumericConstraints numericConstraints = new NumericConstraints(paramType);

        if (details.has("conditions") && !skipValidityChecks) {

            parseNumericConditions(details.get("conditions"), numericConstraints);
        }

        this.parameters.add(new Parameter(String.valueOf(generator.generateRandNumber(paramType, numericConstraints))));
    }

    private void parseNumericConditions(JsonNode conditions, NumericConstraints numericConstraints) {
        List<String> numericConditions = Arrays.asList("min", "max", "divisible");

        for (String numericCondition : numericConditions) {

            JsonNode valueNode = conditions.get(numericCondition);


            if (valueNode == null) {
                continue;
            }

            final long[] value = new long[1];
            value[0] = Long.MIN_VALUE;

            if (valueNode.has("customValidation")) {

                value[0] = Long.parseLong(generator.generateCustomConstraint(valueNode.get("customValidation").asText(), parentList, this, generator));
            } else if (valueNode.has("constraints")) {
                parseNumericConstraints(valueNode, value);
            } else if (valueNode.has("comparison")) {
                value[0] = parseNumericComparisons(valueNode.get("comparison"));
            } else {
                try {
                    value[0] = Long.parseLong(valueNode.asText());
                } catch (NumberFormatException e) {
                    value[0] = Long.parseLong(parentList.getParameter(valueNode.asText()));
                }

            }

            // Variable has not been set
            if (value[0] == Long.MIN_VALUE) {
                continue;
            }

            switch (numericCondition) {
                case "min":
                    numericConstraints.setMin(value[0]);
                    break;
                case "max":
                    numericConstraints.setMax(value[0]);
                    break;
                case "divisible":
                    numericConstraints.setDivisibility(value[0]);
                    break;
            }
        }
    }

    private void parseNumericConstraints(JsonNode valueNode, long[] value) {
        JsonNode constraintsNode = valueNode.get("constraints");

        constraintsNode.fieldNames().forEachRemaining(fieldName -> {
            String flagValue = parentList.getParameter(fieldName);

            JsonNode constraintNode = constraintsNode.get(fieldName);
            if (constraintNode.has(flagValue)) {
                JsonNode constraintValue = constraintNode.get(flagValue);
                try {
                    value[0] = Long.parseLong(constraintValue.asText());
                } catch(NumberFormatException e) {
                    // Stored as a variable
                    value[0] = Long.parseLong(parentList.getParameter(constraintValue.asText()));
                }

            }

        });
    }

    private long parseNumericComparisons(JsonNode comparisonNode) {

        // If mixture of greater than or less than, then modify to append to ar ecord with the comparison oeprator
        List<Long> limits = new ArrayList<>();
        comparisonNode.fieldNames().forEachRemaining(fieldName -> {
            JsonNode subNode = comparisonNode.get(fieldName);
            limits.add(getIndividualLimit(subNode, fieldName));
        });

        return Collections.min(limits);
    }

    private Long getIndividualLimit(JsonNode subNode, String fieldToCompareTo) {
        long valueToCompareTo = Long.parseLong(parentList.getParameter(fieldToCompareTo));
        long parameterTotal = 0;

        if (subNode.has("otherParams")) {
            List<String> otherFieldNames = Parser.getListFromJson(subNode.get("otherParams").toString());
            String parametersOperator = subNode.get("operator").asText();
            switch(parametersOperator) {
                case "+":
                    for (String otherFieldName : otherFieldNames) {
                        parameterTotal += Long.parseLong(parentList.getParameter(otherFieldName));
                    }
                    break;
            }
        }


        String comparisonOperator = subNode.get("comparisonOperator").asText();
        long finalLimit;
        switch (comparisonOperator) {
            case "<":
                // if <, then -1 because max value is inclusve
                valueToCompareTo -= 1;
            case "<=":
                finalLimit = valueToCompareTo - parameterTotal;
                break;
            default: // ">="
                finalLimit = valueToCompareTo + parameterTotal;
        }

        if (finalLimit < 0) {
            return valueToCompareTo;
        }

        return finalLimit;
    }

    private void generateParamAsJson(String paramType) {
        this.numSubParams = 0;
        ObjectMapper mapper = new ObjectMapper();

        JsonNode details = null;

        try {
            details = mapper.readTree(new File(TYPES_PATH)).get(paramType);
        } catch (IOException e) {
            System.err.println(e.getMessage());
        }

        for (JsonNode param : details) {

            param.fieldNames().forEachRemaining(nestedFieldName -> {
                JsonNode paramDetails = param.get(nestedFieldName);

                try {
                    ParameterNode nestedParameterNode = new ParameterNode(nestedFieldName, paramDetails, true, false, this, generator, parentList, nestedParameterRequirements);
                    this.addNode(nestedParameterNode);
                    this.numSubParams += 1;
                } catch (SkipParameterException e) {
                    // make your new exception. throw a custom exception. let other excpetions fails
//                    System.out.println("Skipped generation of paramter for field " + nestedFieldName);
                }

            });
        }

    }

    private void generateEnumVal(JsonNode details, String paramType) throws SkipParameterException {
        JsonNode mutexNode = details.get("mutex");
        JsonNode conditions = null;


        if (details.has("conditions")) {
            conditions = details.get("conditions");
        }

        if (details.has("inFile")) {
            // FETCH ENUM FILE
            details = parseJsonFromFile(paramType);

            paramType = details.get("type").asText();
            this.isString = paramType.equals("string");
        }

        if (paramType.equals("bitwiseFlag")) {
            this.isBitwiseFlags = true;
        }

        List<String> enumValues = new ArrayList<>();
        JsonNode enumNode = details.get("enum");
        if (!enumNode.isBoolean()) {
            Parser.extractNodeAsList(enumNode, enumValues);
        }

        List<String> allEnumValues = new ArrayList<>(enumValues);

        List<String> mandatoryEnums = parseEnumConditions(conditions, enumValues);
        Collections.shuffle(allEnumValues, randomUtils.getRandom());
        Collections.shuffle(enumValues, randomUtils.getRandom());

        List<String> valuesToChooseFrom;
        if (enumValues.isEmpty() && skipValidityChecksEnabledGlobally) {
            valuesToChooseFrom = allEnumValues;
        } else {
            valuesToChooseFrom = enumValues;
        }

        List<String> chosenEnumValues = new ArrayList<>();

        if (this.isBitwiseFlags) {
            // Random int between 1 and end of list
            chosenEnumValues = pickEnumValuesAsBitwiseFlags(valuesToChooseFrom, mutexNode, mandatoryEnums);
        } else if (isArray) {
            chosenEnumValues = pickEnumValuesAsArray(valuesToChooseFrom, mandatoryEnums);
        } else if (mandatoryEnums.isEmpty()) {
            chosenEnumValues = pickARandomEnumValue(valuesToChooseFrom, mandatoryEnums);
        } else { // pick one randomly from the mandatory enums
            // If values to choose from doesn't contain any values from mandatory enums
            if (!(skipValidityChecksEnabledGlobally && Collections.disjoint(valuesToChooseFrom, mandatoryEnums))) {
                valuesToChooseFrom.removeIf(value -> !mandatoryEnums.contains(value));
            }
            chosenEnumValues.add(valuesToChooseFrom.getFirst());
        }

        // Add mandatory enums uniquely
        addParametersFromList(chosenEnumValues);
    }

    private void addParametersFromList(List<String> chosenEnumValues) {
        for (String enumValue : chosenEnumValues) {
            parameters.add(new Parameter(enumValue));
        }
    }

    private JsonNode parseJsonFromFile(String paramType) {
        ObjectMapper mapper = new ObjectMapper();
        JsonNode node = null;

        try {
            node = mapper.readTree(new File(ENUMS_PATH + paramType + ".json"));
        } catch (IOException e) {
            System.err.println(e.getMessage());
        }
        return node;
    }


    private List<String> pickARandomEnumValue(List<String> enumValues, List<String> mandatoryEnums) {
        if (mandatoryEnums != null && !mandatoryEnums.isEmpty()) {
            return mandatoryEnums;
        }

        // ITS ALREADY BEEN SHUFFLED!
        int enumValuesSize = enumValues.size();
        List<String> chosenFlag = new ArrayList<>();

        if (enumValuesSize == 1) {
            chosenFlag.add(enumValues.getFirst());
        } else {
            int randIdx = randomUtils.nextInt(enumValuesSize);
            chosenFlag.add(enumValues.get(randIdx));
        }

        return chosenFlag;
    }

    private List<String> pickEnumValuesAsArray(List<String> enumValues, List<String> mandatoryEnums) {
        int randIdx;
        if (enumValues.size() == 1) {
            randIdx = 1;
        } else {
            randIdx = randomUtils.nextInt(enumValues.size() - 1) + 1;
        }


        return chooseFinalFlags(enumValues, mandatoryEnums, randIdx);

    }

    private List<String> chooseFinalFlags(List<String> enumValues, List<String> mandatoryEnums, int randIdx) {
        List<String> chosenFlags = new ArrayList<>(mandatoryEnums);
        List<String> randomlyChosenFlags = enumValues.subList(0, randIdx);

        for (String randomlyChosenFlag : randomlyChosenFlags) {
            if (!chosenFlags.contains(randomlyChosenFlag)) {
                chosenFlags.add(randomlyChosenFlag);
            }
        }


        return chosenFlags;
    }

    private List<String> pickEnumValuesAsBitwiseFlags(List<String> enumValues, JsonNode mutexNode, List<String> mandatoryEnums) {
        int range = enumValues.size() - 1;
        int randIdx;
        if (range == 0) {
            randIdx = 1;
        } else {
            randIdx = randomUtils.nextInt(range) + 1;
        }


        List<String> chosenFlags = chooseFinalFlags(enumValues, mandatoryEnums, randIdx);

        // Maybe could prepend mandatory since alway subList from 0?
        List<String> toRemove = new ArrayList<>();

        // Post pass to remove mutually exclusive values
        if (mutexNode != null) {

            for (JsonNode mutex : mutexNode) {
                ObjectMapper mapper = new ObjectMapper();
                String mutexFlag = mutex.get("name").asText();

                if (chosenFlags.getFirst().equals(mutexFlag)) {
                    List<String> allowedFlags = mapper.convertValue(mutex.get("allowed"), new TypeReference<>() {
                    });
                    allowedFlags.add(mutexFlag);
                    for (String flag : chosenFlags) {
                        if (!allowedFlags.contains(flag)) {
                            toRemove.add(flag);
                        }
                    }
                } else {
                    toRemove.add(mutexFlag);
                }
            }



        }

        chosenFlags.removeAll(toRemove);


        return chosenFlags;

    }

    private List<String> parseEnumConditions(JsonNode conditions, List<String> enumValues) throws SkipParameterException {
        List<String> mandatoryEnums = new ArrayList<>();


        if (individualParameterRequirements != null) {
            mandatoryEnums.addAll(individualParameterRequirements);
        }



        if (conditions == null) {
            return mandatoryEnums;
        }

        // Is an issue because your allEnumVAlues is empty because the values are in constraints because enum was boolean
        // check through all examples of enum boolean but not inFile
        if (conditions.has("constraints")) {
            parseConstraints(conditions, enumValues);
        }

        if (skipValidityChecks) {
            return new ArrayList<>();
        }

        if (conditions.has("textureCompatible")) {
            ensureTextureCompatible(conditions, enumValues);

        }

        if (conditions.has("textureDimensionAndSampleCompatible")) {
            ensureTextureDimensionAndSampleCompatible(enumValues);
        }


        if (conditions.has("textureFormatCompatible")) {
            ensureTextureFormatCompatible(enumValues);
        }

        if (conditions.has("textureAspectCompatible")) {
            ensureTextureAspectCompatible(enumValues, conditions.has("textureViewFormatsCompatible"));
        }

        if (conditions.has("textureUsageCompatible")) {
            ensureTextureUsageCompatible(conditions, enumValues);
        }

        if(conditions.has("multiSamplingCompatible")) {
            ensureMultiSamplingCompatible(enumValues, mandatoryEnums);
        }

        if (conditions.has("cubeCompatible")) {
            ensureCubeCompatibility(enumValues);
        }

        if (conditions.has("blendOperationCompatible")) {

            ensureBlendOperationCompatible(enumValues);
        }

        if (conditions.has("blendFormatCompatible")) {
            // Format must be blendable
            ensureBlendFormatCompatible(enumValues);
        }

        if (conditions.has("colorRenderable")) {
            ensureColorRenderable(enumValues);
        }

        if (conditions.has("readCompatible")) {
            ensureReadCompatible(conditions.get("readCompatible").asText());
        }

        if (conditions.has("uniformStorageCompatible")) {
            ensureUniformStorageCompatible(mandatoryEnums, enumValues);
        }

        if (conditions.has("bufferCompatibleMapping")) {
            ensureBufferCompatibleMapping(enumValues);
        }

        return mandatoryEnums;
    }

    private void ensureBufferCompatibleMapping(List<String> enumValues) {
        String buffer = parentList.getReceiver();
        List<String> bufferUsageValues = generator.getAllObjectAttributes(buffer, "usage");

        if (bufferUsageValues.contains("GPUBufferUsage.MAP_READ")) {
            enumValues.removeIf(value -> value.equals("GPUMapMode.WRITE"));
        } else {
            enumValues.removeIf(value -> value.equals("GPUMapMode.READ"));
        }
    }

    private void ensureUniformStorageCompatible(List<String> mandatoryEnums, List<String> enumValues) {
        if (mandatoryEnums == null || mandatoryEnums.isEmpty()) {
            return;
        }

        if (mandatoryEnums.contains("GPUBufferUsage.UNIFORM")) {
            enumValues.remove("GPUBufferUsage.STORAGE");
        } else if (mandatoryEnums.contains("GPUBufferUsage.STORAGE")) {
            enumValues.remove("GPUBufferUsage.UNIFORM");
        }
    }


    private void ensureReadCompatible(String formatName) {
        String PARAMETER_SUFFIX = "ReadOnly";
        String readOnlyParameter = formatName + PARAMETER_SUFFIX;


        String viewName = this.rootParameterNode.findNestedParameterNode("view").getParameter().getValue();
        String format = generator.getObjectAttributes(viewName, "format");

        String readOnlyValue = this.rootParameterNode.findNestedParameterNode(readOnlyParameter).getParameter().getValue();

        if (!format.contains(formatName) || readOnlyValue.equals("true")) {
            throw new SkipParameterException("Not providing load or store operations when readOnly is true");

        }
    }

    private void ensureColorRenderable(List<String> enumValues) {
        JsonNode texturesEnumNode = parseJsonFromFile("gpuTextureFormat");
        List<String> renderIncompatible = new ArrayList<>();
        List<String> depthOrStencil = new ArrayList<>();

        Parser.extractNodeAsList(texturesEnumNode.get("renderAttachmentIncompatible"), renderIncompatible);
        Parser.extractNodeAsList(texturesEnumNode.get("depthOrStencil"), depthOrStencil);

        enumValues.removeAll(renderIncompatible);
        enumValues.removeAll(depthOrStencil);
    }

    private void ensureBlendFormatCompatible(List<String> enumValues) {

        // SKip blend compatibiltiy checking if field was left blank
        if (this.rootParameterNode.findNestedParameterNode("targets.blend") == null) {
            return;
        }

        JsonNode texturesEnumNode = parseJsonFromFile("gpuTextureFormat");
        List<String> incompatibleBlendFormats = new ArrayList<>();
        Parser.extractNodeAsList(texturesEnumNode.get("blendIncompatible"), incompatibleBlendFormats);
        enumValues.removeAll(incompatibleBlendFormats);
    }

    // If fragment is the top level one, then it expects it in the format nested.nestednested.nestednestednested
    // needs to be called on root parameter node
    public ParameterNode findNestedParameterNode(String fieldName) {

        if (fieldName.contains(".")) {
            String[] split = fieldName.split("\\.", 2);
            ParameterNode nestedParameterNode = this.parameterNodeMap.get(split[0]);

            if (nestedParameterNode != null) {
                return nestedParameterNode.findNestedParameterNode(split[1]);
            }

            return null;
        }

        return this.parameterNodeMap.get(fieldName);
    }

    private void ensureBlendOperationCompatible(List<String> enumValues) {
        // When BlendOperation is Max or Min, blend ource must be One
        // BlendOperation is an optional paramter so posisble doesn't exist
        ParameterNode blendNode = rootParameterNode.findNestedParameterNode("targets.blend");
        if (blendNode == null) {
            return;
        }

        ParameterNode alphaNode = blendNode.findNestedParameterNode("alpha.operation");
        ParameterNode colorNode = blendNode.findNestedParameterNode("color.operation");
        ParameterNode finalValueNode = colorNode == null ? alphaNode : colorNode;

        String operationValue = finalValueNode.toString();
        if (operationValue.contains("max") || operationValue.contains("min")) {
            enumValues.removeIf(value -> !value.equals("one"));
        }

    }

    private void ensureCubeCompatibility(List<String> enumValues) {
        List<String> CUBE_TEXTURES = Arrays.asList("cube", "cube-array");

        String width = parentList.getParameter("GPUTexture.size.width");
        String height = parentList.getParameter("GPUTexture.size.height");
        long arrayLayerCount = Long.parseLong(parentList.getParameter("GPUTexture.size.depthOrArrayLayers"));


        if (!width.equals(height) || arrayLayerCount < 6) {
            enumValues.removeIf(CUBE_TEXTURES::contains);
        }

    }

    private void ensureMultiSamplingCompatible(List<String> enumValues, List<String> mandatoryEnums) {
        if (!parentList.getParameter("sampleCount").equals("4")) {
            return;
        }

        enumValues.removeIf(usage -> usage.contains("STORAGE_BINDING"));
        if (!mandatoryEnums.contains("GPUTextureUsage.RENDER_ATTACHMENT")) {
            mandatoryEnums.add("GPUTextureUsage.RENDER_ATTACHMENT");
        }

    }

    private void ensureTextureDimensionAndSampleCompatible(List<String> enumValues) {
        String dimension = parentList.getParameter("dimension");
        List<String> incompatibleTextures = new ArrayList<>();
        JsonNode texturesEnumNode = parseJsonFromFile("gpuTextureFormat");

        // Format cannot be euqal to compressed format or depth-or-stencil format
        // Compressed format includes all the optional ones and the compressed formats enum
        if (!dimension.equals("2d")) {

            List<String> incompatibleBaseTextures = new ArrayList<>();
            Parser.extractNodeAsList(texturesEnumNode.get("enum"), incompatibleBaseTextures);
            incompatibleBaseTextures.removeIf(texture -> !(texture.startsWith("stencil") || texture.startsWith("depth")));

            List<String> compressedTextures = new ArrayList<>();
            Parser.extractNodeAsList(texturesEnumNode.get("compressedFormats"), compressedTextures);

            JsonNode optionalTextures = texturesEnumNode.get("features");
            List<String> optionalTexturesList = new ArrayList<>();
            optionalTextures.fieldNames().forEachRemaining(fieldName -> {
                List<String> formats = new ArrayList<>();
                Parser.extractNodeAsList(optionalTextures.get(fieldName), formats);
                optionalTexturesList.addAll(formats);
            });


            incompatibleTextures.addAll(incompatibleBaseTextures);
            incompatibleTextures.addAll(compressedTextures);
            incompatibleTextures.addAll(optionalTexturesList);
        }

        // Depth/Stencil formats can only be for a dimension of 2D


        // Ensure all textures are multisampling compatible
        if (parentList.getParameter("sampleCount").equals("4")) {
            List<String> multiSamplingIncompatibleTextures = new ArrayList<>();
            JsonNode multiSamplingIncompatibleTexturesNode = texturesEnumNode.get("multiSamplingIncompatible");

            Parser.extractNodeAsList(multiSamplingIncompatibleTexturesNode, multiSamplingIncompatibleTextures);
            incompatibleTextures.addAll(multiSamplingIncompatibleTextures);

        }

        enumValues.removeAll(incompatibleTextures);

    }

    private void ensureTextureCompatible(JsonNode conditions, List<String> enumValues) {
        Map<String, String> exceptions = new LinkedHashMap<>();
        exceptions.put("depth24plus-stencil8", "depth24plus");
        exceptions.put("depth24plus", "depth24plus-stencil8");

        String compatibleTexture = findCompatibleTexture(parentList.getParameter(conditions.get("textureCompatible").asText()));
        enumValues.removeIf(flag -> !(flag.startsWith(compatibleTexture)) || (exceptions.containsKey(compatibleTexture) && exceptions.get(compatibleTexture).equals(flag)));
    }

    private void ensureTextureAspectCompatible(List<String> enumValues, boolean hasViewFormatsCompatible) {


        if (hasViewFormatsCompatible) {

            List<String> compatibleTextures = new ArrayList<>();
            compatibleTextures.add(parentList.getParameter("GPUTexture.format"));
            compatibleTextures.addAll(parentList.getAllParameters("GPUTexture.viewFormats"));
            enumValues.retainAll(compatibleTextures);
            return;
        }

        String currentTexture = generator.getObjectAttributes(parentList.getReceiver(), "format");
        if ((currentTexture.contains("depth") && currentTexture.contains("stencil")) ||
        (!currentTexture.contains("depth") && !currentTexture.contains("stencil"))) {
            enumValues.removeIf(value -> value.startsWith("depth") || value.startsWith("stencil"));
        } else if (currentTexture.contains("depth")) {
            enumValues.removeIf(value -> value.startsWith("stencil"));
        } else if (currentTexture.contains("stencil")) {
            enumValues.removeIf(value -> value.startsWith("depth"));
        }

        // WORK IN PROGRESS IMPLEMENTATION
//        String currentAspect = parentList.getParameter("aspect");
//        if (currentAspect.equals("non-stencil-or-depth")) {
//            enumValues.removeIf(flag -> ((flag.startsWith("stencil")) || (flag.startsWith("depth"))));
//            parentList.setParamValue("aspect", "all");
//            return;
//        }
//
//        if (!currentAspect.equals("all")) {
//            enumValues.removeIf(flag -> !((flag.startsWith("stencil")) || (flag.startsWith("depth"))));
//        }
    }

    private void ensureTextureFormatCompatible(List<String> enumValues) {
        String currentTexture = parentList.getParameter("format");

        JsonNode texturesNode = parseJsonFromFile("gpuTextureFormat");
        List<String> incompatibleTexturesForStorage = new ArrayList<>();
        Parser.extractNodeAsList(texturesNode.get("storageBindingIncompatible"), incompatibleTexturesForStorage);

        List<String> incompatibleTexturesForRender = new ArrayList<>();
        Parser.extractNodeAsList(texturesNode.get("renderAttachmentIncompatible"), incompatibleTexturesForRender);


        if (currentTexture == null) {
            currentTexture = generator.getObjectAttributes(parentList.getReceiver(), "format");
        }

        if (currentTexture == null) {
            currentTexture = generator.getObjectAttributes("context", "format");
        }

        if (incompatibleTexturesForStorage.contains(currentTexture)) {
            enumValues.removeIf(flag -> flag.equals("GPUTextureUsage.STORAGE_BINDING"));
        }

        if (incompatibleTexturesForRender.contains(currentTexture)) {
            enumValues.removeIf(flag -> flag.equals("GPUTextureUsage.RENDER_ATTACHMENT"));
        }

        if (this.isBitwiseFlags) {
            return;
        }

        // This check not for bitwise flags
//        if (currentTexture.startsWith("stencil") || currentTexture.startsWith("depth")) { // Remove aspect enums
//            enumValues.remove("all");
        if (currentTexture.startsWith("stencil")) {
            enumValues.removeIf(flag -> !flag.contains("stencil"));
        } else if (currentTexture.startsWith("depth")) { // depth only so remove all the stencil ones
            enumValues.removeIf(flag -> !flag.contains("depth"));
        } else {
            enumValues.removeIf(flag -> flag.startsWith("stencil") || flag.startsWith("depth"));
        }
//        } else {
//
//        }
    }

    private void ensureTextureUsageCompatible(JsonNode conditions, List<String> enumValues) {
        String currentDimension = parentList.getParameter(conditions.get("textureUsageCompatible").asText());

        if (currentDimension.equals("1d")) {
            enumValues.removeIf(flag -> flag.equals("GPUTextureUsage.RENDER_ATTACHMENT"));
        }

        // WGPU COMPATIBILITY
        if (generator.getWgpuCompatible() && currentDimension.equals("3d")) {
            enumValues.removeIf(flag -> flag.equals("GPUTextureUsage.RENDER_ATTACHMENT"));
        }
    }

    private void parseConstraints(JsonNode conditions, List<String> enumValues) throws SkipParameterException {
        JsonNode newEnumNode = conditions.get("enum");
        // LOOP THROUGH ALL ENUM SPECIFIED, THEN MAKE THE INTERSECTION BETWEEN THE 2 VALUES

        List<List<String>> constraintsList = new ArrayList<>();
        JsonNode finalNewEnumNode = newEnumNode;

        newEnumNode.fieldNames().forEachRemaining(fieldName -> {
            String constraintValue;
            if (fieldName.startsWith("inner" )) {
                String[] split = fieldName.split("\\.", 2);
                constraintValue = this.getRootParameterNode().findNestedParameterNode(split[1]).getParameter().getValue();
            } else {
                constraintValue = parentList.getParameter(fieldName);
            }
            JsonNode constraintNode = finalNewEnumNode.get(fieldName);
            JsonNode constraintValuesNode = constraintNode.get(constraintValue);
            List<String> values = new ArrayList<>();

            Parser.extractNodeAsList(constraintValuesNode, values);

            if (!values.isEmpty()) {
                constraintsList.add(values);
            }

        });

        // ie do not generate this parameter (keep it optional)
        if (constraintsList.isEmpty()) {
            throw new SkipParameterException("Optional parameter must be skipped");
        }

        Set<String> resultantSet = new HashSet<>(constraintsList.getFirst());
        for (List<String> constraint : constraintsList) {
            resultantSet.retainAll(constraint);
        }

        ArrayList<String> resultantSetAsList = new ArrayList<>(resultantSet);

        enumValues.addAll(resultantSetAsList);

    }

    private String findCompatibleTexture(String compatibleTexture) {
        String SUFFIX = "-srgb";

        if (compatibleTexture.endsWith(SUFFIX)) {
            compatibleTexture = compatibleTexture.substring(0, compatibleTexture.length() - SUFFIX.length());
        }
        return compatibleTexture;
    }

    @Override
    public String toString() {
        StringBuilder valueToPrint;

        if (!this.hasNoSubNodes()) {
            if (isJsonArray) {
                List<String> unformattedValuesToPrint = subnodes.stream().map(ASTNode::toString).toList();
                valueToPrint = formatValuesAsJsonArray(unformattedValuesToPrint);


            } else {
                valueToPrint = new StringBuilder(subnodes.stream().map(ASTNode::toString).collect(Collectors.joining(",", "{", "}")));
            }

            if (isArray) {
                valueToPrint = new StringBuilder("[" + valueToPrint + "]");
            }
        } else {
            List<String> parameterValues = this.parameters.stream().map(Parameter::toString).toList();
            valueToPrint = new StringBuilder(formatParam(parameterValues, new ParamFormatting(isArray, isString, isBitwiseFlags)));
        }

        if (isJsonFormat) {
            return fieldName + ": " + valueToPrint;
        }

        return valueToPrint.toString();


    }

    private StringBuilder formatValuesAsJsonArray(List<String> unformattedValuesToPrint) {
        StringBuilder valueToPrint = new StringBuilder();


        for (int i = 0, count = 0; i < unformattedValuesToPrint.size(); i++) {
            if (count == 0) {
                valueToPrint.append("{");
            }

            valueToPrint.append(unformattedValuesToPrint.get(i));



            if (count == (this.numSubParams-1)) {
                valueToPrint.append("}");
                count = 0;
            } else {
                count++;
            }

            if (i < unformattedValuesToPrint.size() - 1) {
                valueToPrint.append(",");
            }
        }

        return valueToPrint;
    }

    private String formatParam(List<String> parameterValues, ParamFormatting paramFormatting) {
        String valueToPrint;
        if (paramFormatting.isArray()) {
            valueToPrint = parameterValues.stream().map(s -> paramFormatting.isString() ? "\"" + s + "\"" : s).collect(Collectors.joining(", ", "[", "]"));
        } else if (paramFormatting.isBitwiseFlags()) {
            valueToPrint = String.join(" | ", parameterValues);
        } else if (paramFormatting.isString()) {
            valueToPrint = encodeAsString(parameterValues.getFirst());
        } else {
            // REMOVE LATER WHEN FIX PARAMETER NAMING
            if (parameterValues.isEmpty()) {
                return "";
            }

            valueToPrint = parameterValues.getFirst();
        }
        return valueToPrint;
    }

    private String encodeAsString(String value) {
        return "\"" + value + "\"";
    }

    public List<Parameter> getParameters() {
        return parameters;
    }

    public Parameter getParameter() {
        return parameters.getFirst();
    }
}
