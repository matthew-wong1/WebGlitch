package ast;

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
        List<String> numericConditions = Arrays.asList("min", "max", "divisible");

        for (String numericCondition : numericConditions) {

            JsonNode valueNode = conditions.get(numericCondition);

            if (valueNode == null) {
                continue;
            }

            long value;

            if (conditions.has("constraints")) {

                String flagValue = parent.getFlag(valueNode.get("name").asText());
                value = valueNode.get(flagValue).asLong();
            } else {
                value = valueNode.asLong();
                System.out.println("default " + value);
            }

            switch (numericCondition) {
                case "min":
                    numericConstraints.setMin(value);
                    break;
                case "max":
                    if (value == 0) {
                        System.out.println("MAX IS 0 ");
                    }
                    numericConstraints.setMax(value);
                    break;
                case "divisible":
                    numericConstraints.setDivisibility(value);
                    break;
            }
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
        ParameterListNode parameterListNode = new ParameterListNode(details, true, isArray, generator, parent);
        parameterListNode.generateParams();
        this.value = parameterListNode.toString();
    }

    private void generateEnumVal(JsonNode details, String paramType) {
        boolean isArray = details.has("array");
        JsonNode mutexNode = details.get("mutex");
        JsonNode conditions = null;
        if (details.has("conditions")) {
            conditions = details.get("conditions");
        }

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

        parseEnumConditions(conditions, enumValues);

        Collections.shuffle(enumValues);

        if (paramType.equals("bitwiseFlag")) {
            // Random int between 1 and end of list
            generateBitwiseFlag(enumValues, mutexNode);
        } else if (isArray) {
            int randIdx;
            if (enumValues.size() == 1) {
                randIdx = 1;
            } else {
                randIdx = rand.nextInt(enumValues.size() - 1) + 1;
            }

            List<String> chosenFlags = enumValues.subList(0, randIdx);
            this.value = chosenFlags.stream().map(s -> "\"" + s + "\"").collect(Collectors.joining(", ", "[", "]"));
        } else {
            int randIdx = rand.nextInt(enumValues.size());
            String chosenFlag = enumValues.get(randIdx);
            this.value = paramType.equals("string") ? encodeAsString(chosenFlag) : chosenFlag;
        }
    }

    private void generateBitwiseFlag(List<String> enumValues, JsonNode mutexNode) {
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
        this.value = String.join(" | ", chosenFlags);
    }

    private void parseEnumConditions(JsonNode conditions, List<String> enumValues) {
        if (conditions == null) {
            return;
        }

        if (conditions.has("textureCompatible")) {

            String compatibleTexture = findCompatibleTexture(parent.getFlag(conditions.get("textureCompatible").asText()));
            enumValues.removeIf(flag -> !(flag.startsWith(compatibleTexture)));

        }
    }

    private String findCompatibleTexture(String compatibleTexture) {
        String SUFFIX = "-srgb";

        if (compatibleTexture.endsWith(SUFFIX)) {
            compatibleTexture = compatibleTexture.substring(0, compatibleTexture.length() - SUFFIX.length());
        }
        System.out.println("THE COMPATIBLE TEXTURE: " + compatibleTexture);
        return compatibleTexture;
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
