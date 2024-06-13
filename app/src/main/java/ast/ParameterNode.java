package ast;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import generator.Generator;
import generator.NumericConstraints;
import generator.ParamGenerator;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class ParameterNode extends ASTNode {

    private final String fieldName;
    private final boolean jsonParams;
    private final Generator generator;
    private final Random rand = new Random();
    private final String TYPES_PATH = "./rsrcs/webgpu/types/types.json";
    private final String ENUMS_PATH = "./rsrcs/webgpu/types/enums/";
    private final ParameterListNode parent;
    private String value;

    public ParameterNode(String fieldName, JsonNode details, boolean jsonParams, Generator generator, ParameterListNode parent) {
        // Parse details
        this.fieldName = fieldName;
        this.jsonParams = jsonParams;
        this.generator = generator;
        this.parent = parent;

        // Check if need to pass in webGPU object. Go through sequence where create one
        generateParams(details);

    }

    private void generateParams(JsonNode details) {
        if (!details.has("type")) {
            return;
        }

        String paramType = details.get("type").asText();

        boolean isEnum = details.has("enum");

        if (isEnum) {
            generateEnumVal(details, paramType);
        } else if (paramType.equals("string")) {
            this.value = encodeAsString(ParamGenerator.generateRandVarName());
        } else if (paramType.equals("uint") || paramType.equals("int") || paramType.equals("rgba") || paramType.equals("double")) {
            generateNumber(details, paramType);
        } else if (paramType.equals("boolean")) {
            this.value = String.valueOf(rand.nextBoolean());
        } else if (Character.isUpperCase(paramType.charAt(0))) { // Requires a WebGPU object
            this.value = generator.getRandomReceiver(paramType);
        } else { // Requires WebGPU Type

            generateParamAsJson(paramType, details.has("array"));
        }

        parent.addFlag(fieldName, value);
    }

    private void generateNumber(JsonNode details, String paramType) {

        NumericConstraints numericConstraints = new NumericConstraints(paramType);

        if (details.has("conditions")) {
            parseNumericConditions(details.get("conditions"), numericConstraints);
        }


        this.value = String.valueOf(ParamGenerator.generateRandNumber(paramType, numericConstraints));
    }

    private void parseNumericConditions(JsonNode conditions, NumericConstraints numericConstraints) {
        if (conditions.has("min")) {
            numericConstraints.setMin(conditions.get("min").asLong());
        }

        if (conditions.has("max")) {
            numericConstraints.setMax(conditions.get("max").asLong());
        }

        if (conditions.has("divisible")) {
            numericConstraints.setDivisibility(conditions.get("divisible)").asInt());
        }
    }

    private void generateParamAsJson(String paramType, boolean isArray) {
        ObjectMapper mapper = new ObjectMapper();

        JsonNode details = null;
        try {
            details = mapper.readTree(new File(TYPES_PATH)).get(paramType);
        } catch (IOException e) {
            System.err.println(e.getMessage());
        }
        ParameterListNode parameterListNode = new ParameterListNode(details, true, isArray, generator);
        parameterListNode.generateParams();
        this.value = parameterListNode.toString();
    }

    private void generateEnumVal(JsonNode details, String paramType) {
        boolean isArray = details.has("array");

        if (details.get("enum").isBoolean()) {
            // FETCH ENUM FILE
            ObjectMapper mapper = new ObjectMapper();

            try {
                details = mapper.readTree(new File(ENUMS_PATH + paramType + ".json"));
            } catch (IOException e) {
                System.err.println(e.getMessage());
            }

            paramType = details.get("type").asText();
        }

        List<String> enumValues = new ArrayList<>();
        JsonNode enumNode = details.get("enum");
        enumNode.forEach(
                enumValue -> {
                    enumValues.add(enumValue.asText());
                });

        if (details.has("conditions")) {
            parseEnumConditions(details.get("conditions"), enumValues);
        }

        Collections.shuffle(enumValues);

        if (paramType.equals("bitwiseFlag")) {
            // Random int between 1 and end of list
            int randIdx = rand.nextInt(enumValues.size() - 1) + 1;

            List<String> chosenFlags = enumValues.subList(0, randIdx);
            this.value = String.join(" | ", chosenFlags);
        } else if (isArray) {
            int randIdx = rand.nextInt(enumValues.size() - 1) + 1;
            List<String> chosenFlags = enumValues.subList(0, randIdx);
            this.value = chosenFlags.stream().map(s -> "\"" + s + "\"").collect(Collectors.joining(", ", "[", "]"));
        } else {
            int randIdx = rand.nextInt(enumValues.size());
            String chosenFlag = enumValues.get(randIdx);
            this.value = paramType.equals("string") ? encodeAsString(chosenFlag) : chosenFlag;
        }
    }

    private void parseEnumConditions(JsonNode conditions, List<String> enumValues) {
        if (conditions.has("textureCompatible")) {
            String SUFFIX = "-srgb";
            String compatibleTexture = parent.getFlag(conditions.get("textureCompatible").asText());
            enumValues.removeIf(flag -> !(flag.equals(compatibleTexture)) || flag.equals(compatibleTexture + SUFFIX));
        }
    }

    @Override
    public String toString() {
        if (jsonParams) {
            return fieldName + ": " + this.value;
        }
        return this.value;
    }

    private String encodeAsString(String value) {
        return "\"" + value + "\"";
    }
}
