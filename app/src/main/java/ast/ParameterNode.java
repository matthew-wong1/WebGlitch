package ast;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import generator.Generator;
import generator.NumericConstraints;
import generator.ParamGenerator;

import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

public class ParameterNode extends ASTNode {


    private final String TYPES_PATH = "./rsrcs/webgpu/types/types.json";
    private final String ENUMS_PATH = "./rsrcs/webgpu/types/enums/";
    private final String fieldName;

    private final boolean isRoot;
    private final boolean isJsonFormat;
    private final boolean isArray;
    private boolean isString;
    private boolean isBitwiseFlags;


    private final Generator generator;
    private final Random rand = new Random();
    private final ParameterListNode parentList;

    private final List<Parameter> parameters = new ArrayList<>();

    public ParameterNode(String fieldName, JsonNode details, boolean isJsonFormat, boolean isRoot, Generator generator, ParameterListNode parentList) {
        this.isJsonFormat = isJsonFormat;
        this.generator = generator;
        this.parentList = parentList;
        this.fieldName = fieldName;
        this.isRoot = isRoot;
        this.isArray = details.has("array");

        // Only generate parameters if is a method call (don't generate for attributes)
        if (details.has("type")) {
            System.out.println("generating for param " + fieldName);
            String paramType = details.get("type").asText();
            this.isString = paramType.equals("string");
            generateParam(fieldName, details, paramType);
        }
    }

    private void generateParam(String fieldName, JsonNode details, String paramType) {

        if (details.has("enum")) {
            generateEnumVal(details, paramType);
        } else if (isString) {
            this.parameters.add(new Parameter(ParamGenerator.generateRandVarName()));
        } else if (paramType.equals("uint") || paramType.equals("int") || paramType.equals("rgba") || paramType.equals("double")) {
            generateNumber(details, paramType);
        } else if (paramType.equals("boolean")) {
            this.parameters.add(new Parameter(String.valueOf(rand.nextBoolean())));
        } else if (Character.isUpperCase(paramType.charAt(0))) { // Requires a WebGPU object
            this.parameters.add(new Parameter(generator.getRandomReceiver(paramType)));
        } else { // Requires WebGPU Type
            generateParamAsJson(paramType);
        }

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

    private void generateNumber(JsonNode details, String paramType) {

        NumericConstraints numericConstraints = new NumericConstraints(paramType);

        if (details.has("conditions")) {

            parseNumericConditions(details.get("conditions"), numericConstraints);
        }

        this.parameters.add(new Parameter(String.valueOf(ParamGenerator.generateRandNumber(paramType, numericConstraints))));
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

                value[0] = Long.parseLong(ParamGenerator.generateCustomConstraint(valueNode.get("customValidation").asText(), parentList));
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

        List<String> otherFieldNames = getListFromJson(comparisonNode.get("otherParams").toString());
        List<String> otherConstraints = new ArrayList<>();
        if (comparisonNode.has("otherConstraints")) {
            otherConstraints = getListFromJson(comparisonNode.get("otherConstraints").toString());
        }


        long parameterTotal = 0;
        String fieldToCompareTo = comparisonNode.get("comparedTo").asText();
        long valueToCompareTo = Long.parseLong(parentList.getParameter(fieldToCompareTo));

        if (!otherConstraints.isEmpty()) {
            for (String otherConstraintName : otherConstraints) {
                long constraintValue = Long.parseLong(parentList.getParameter(otherConstraintName));
                valueToCompareTo = Math.min(valueToCompareTo, constraintValue);
            }
        }

        String parametersOperator = comparisonNode.get("operator").asText();
        switch(parametersOperator) {
            case "+":
                for (String otherFieldName : otherFieldNames) {
                     parameterTotal += Long.parseLong(parentList.getParameter(otherFieldName));
                }
                break;
        }

        String comparisonOperator = comparisonNode.get("comparisonOperator").asText();
        switch (comparisonOperator) {
            case "<=":
                System.out.println("value to compare to: " + valueToCompareTo + " , parametertotal: " + parameterTotal);
                return valueToCompareTo - parameterTotal;
            default: // ">="
                return valueToCompareTo + parameterTotal;
        }
    }

    private List<String> getListFromJson(String jsonList) {
        ObjectMapper mapper = new ObjectMapper();
        List<String> otherFieldNames;
        try {
            otherFieldNames = mapper.readValue(jsonList, new TypeReference<ArrayList<String>>(){});
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
        return otherFieldNames;
    }

    private void generateParamAsJson(String paramType) {

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

//                if (paramDetails.has("optional")) {
//
//                }

                ParameterNode nestedParameterNode = new ParameterNode(nestedFieldName, paramDetails, true, false, generator, parentList);
                this.addNode(nestedParameterNode);


            });
        }

    }

    private void generateEnumVal(JsonNode details, String paramType) {
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

        List<String> enumValues = new ArrayList<>();
        JsonNode enumNode = details.get("enum");
        if (!enumNode.isBoolean()) {
            extractNodeAsList(enumNode, enumValues);
        }

        parseEnumConditions(conditions, enumValues);

        Collections.shuffle(enumValues);
        List<String> chosenEnumValues;

        if (paramType.equals("bitwiseFlag")) {
            // Random int between 1 and end of list
            this.isBitwiseFlags = true;
            chosenEnumValues = pickEnumValuesAsBitwiseFlags(enumValues, mutexNode);
        } else if (isArray) {
            chosenEnumValues = pickEnumValuesAsArray(enumValues);
        } else {
            chosenEnumValues = pickARandomEnumValue(enumValues);
        }

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

    private void extractNodeAsList(JsonNode enumNode, List<String> enumValues) {
        enumValues.clear();
        enumNode.forEach(
                enumValue -> {
                    enumValues.add(enumValue.asText());
                });
    }

    private List<String> pickARandomEnumValue(List<String> enumValues) {
        int enumValuesSize = enumValues.size();
        List<String> chosenFlag = new ArrayList<>();

        if (enumValuesSize == 1) {
            chosenFlag.add(enumValues.getFirst());
        } else {
            int randIdx = rand.nextInt(enumValuesSize);
            chosenFlag.add(enumValues.get(randIdx));
        }

        return chosenFlag;
    }

    private List<String> pickEnumValuesAsArray(List<String> enumValues) {
        int randIdx;
        if (enumValues.size() == 1) {
            randIdx = 1;
        } else {
            randIdx = rand.nextInt(enumValues.size() - 1) + 1;
        }

        return enumValues.subList(0, randIdx);

    }

    private List<String> pickEnumValuesAsBitwiseFlags(List<String> enumValues, JsonNode mutexNode) {

        int randIdx = rand.nextInt(enumValues.size() - 1) + 1;

        List<String> chosenFlags = enumValues.subList(0, randIdx);
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

    private void parseEnumConditions(JsonNode conditions, List<String> enumValues) {

        if (conditions == null) {
            return;
        }

        if (conditions.has("textureCompatible")) {
            ensureTextureCompatible(conditions, enumValues);

        }

        if (conditions.has("textureDimensionCompatible")) {
            ensureTextureDimensionCompatible(enumValues);
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

        if (conditions.has("constraints")) {
            parseConstraints(conditions, enumValues);
        }
    }

    private void ensureTextureDimensionCompatible(List<String> enumValues) {
        String dimension = parentList.getParameter("dimension");

        // Format cannot be euqal to compressed format or depth-or-stencil format
        // Compressed format includes all the optional ones and the compressed formats enum
        if (dimension.equals("2d")) {
            return;
        }

        JsonNode texturesEnumNode = parseJsonFromFile("gpuTextureFormat");
        List<String> defaultTextures = new ArrayList<>();
        extractNodeAsList(texturesEnumNode.get("type"), defaultTextures);
        defaultTextures.removeIf(texture -> !(texture.startsWith("stencil") || texture.startsWith("depth")));

        List<String> compressedTextures = new ArrayList<>();
        extractNodeAsList(texturesEnumNode.get("compressedFormats"), compressedTextures);

        JsonNode optionalTextures = texturesEnumNode.get("features");
        List<String> optionalTexturesList = new ArrayList<>();
        optionalTextures.fieldNames().forEachRemaining(fieldName -> {
            List<String> formats = new ArrayList<>();
            extractNodeAsList(optionalTextures.get(fieldName), formats);
            optionalTexturesList.addAll(formats);
        });

        List<String> incompatibleTextures = new ArrayList<>();
        incompatibleTextures.addAll(defaultTextures);
        incompatibleTextures.addAll(compressedTextures);
        incompatibleTextures.addAll(optionalTexturesList);

        enumValues.removeAll(incompatibleTextures);

    }

    private void ensureTextureCompatible(JsonNode conditions, List<String> enumValues) {
        String compatibleTexture = findCompatibleTexture(parentList.getParameter(conditions.get("textureCompatible").asText()));
        enumValues.removeIf(flag -> !(flag.startsWith(compatibleTexture)));
    }

    private void ensureTextureAspectCompatible(List<String> enumValues, boolean hasViewFormatsCompatible) {
        String currentAspect = parentList.getParameter("aspect");

        // WORK IN PROGRESS IMPLEMENTATION
        if (currentAspect.equals("non-stencil-or-depth")) {
            enumValues.removeIf(flag -> ((flag.startsWith("stencil")) || (flag.startsWith("depth"))));
            parentList.setParamValue("aspect", "all");
            return;
        }

        if (!currentAspect.equals("all")) {
            enumValues.removeIf(flag -> !((flag.startsWith("stencil")) || (flag.startsWith("depth"))));
        } else {
            enumValues.removeIf(flag -> flag.startsWith("stencil") || flag.startsWith("depth"));
        }

        if (hasViewFormatsCompatible) {
            List<String> compatibleTextures = new ArrayList<>();
            compatibleTextures.add(parentList.getParameter("GPUTexture.format"));
            compatibleTextures.addAll(parentList.getAllParameters("GPUTexture.viewFormats"));
            enumValues.retainAll(compatibleTextures);

        }
    }

    private void ensureTextureFormatCompatible(List<String> enumValues) {
        String currentTexture = parentList.getParameter("format");

        JsonNode texturesNode = parseJsonFromFile("gpuTextureFormat");
        List<String> incompatibleTexturesForStorage = new ArrayList<>();
        extractNodeAsList(texturesNode.get("storageBindingIncompatible"), incompatibleTexturesForStorage);

        List<String> incompatibleTexturesForRender = new ArrayList<>();
        extractNodeAsList(texturesNode.get("renderAttachmentIncompatible"), incompatibleTexturesForRender);

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

        if (currentTexture.startsWith("stencil") || currentTexture.startsWith("depth")) { // Remove aspect enums
            enumValues.remove("all");
        } else {
            enumValues.removeIf(flag -> flag.startsWith("stencil") || flag.startsWith("depth"));
        }
    }

    private void ensureTextureUsageCompatible(JsonNode conditions, List<String> enumValues) {
        String currentDimension = parentList.getParameter(conditions.get("textureUsageCompatible").asText());

        if (currentDimension.equals("1d")) {
            enumValues.removeIf(flag -> flag.equals("GPUTextureUsage.RENDER_ATTACHMENT"));
        }
    }

    private void parseConstraints(JsonNode conditions, List<String> enumValues) {
        JsonNode newEnumNode = conditions.get("enum");
        // LOOP THROUGH ALL ENUM SPECIFIED, THEN MAKE THE INTERSECTION BETWEEN THE 2 VALUES

        List<List<String>> constraintsList = new ArrayList<>();
        JsonNode finalNewEnumNode = newEnumNode;
        newEnumNode.fieldNames().forEachRemaining(fieldName -> {
            String constraintValue = parentList.getParameter(fieldName);
            JsonNode constraintNode = finalNewEnumNode.get(fieldName);
            JsonNode constraintValuesNode = constraintNode.get(constraintValue);
            List<String> values = new ArrayList<>();
            extractNodeAsList(constraintValuesNode, values);
            constraintsList.add(values);
        });

        Set<String> resultantSet = new HashSet<>(constraintsList.getFirst());
        for (List<String> constraint : constraintsList) {
            resultantSet.retainAll(constraint);
        }

        ArrayList<String> resultantSetAsList = new ArrayList<>(resultantSet);
        System.out.println("Resultant set: " + resultantSetAsList);
        enumValues.addAll(resultantSetAsList);


//        String value = parentList.getParameter(newEnumNode.get("name").asText());
//        newEnumNode = newEnumNode.get(value);
//        extractNodeAsList(newEnumNode, enumValues);
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
        String valueToPrint;

        if (!this.hasNoSubNodes()) {
            valueToPrint = subnodes.stream().map(ASTNode::toString).collect(Collectors.joining(",", "{", "}"));
            if (isArray) {
                valueToPrint = "[" + valueToPrint + "]";
            }
        } else {
            List<String> parameterValues = this.parameters.stream().map(Parameter::getValue).toList();
            valueToPrint = formatParam(parameterValues, new ParamFormatting(isArray, isString, isBitwiseFlags));
        }

        if (isJsonFormat) {
            return fieldName + ": " + valueToPrint;
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

    private record ParamsAndFormattingPair(List<Parameter> parameters, ParamFormatting paramFormatting) {}

}
