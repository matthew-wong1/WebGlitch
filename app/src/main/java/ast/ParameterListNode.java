package ast;

import com.fasterxml.jackson.databind.JsonNode;
import generator.Generator;

import java.util.*;
import java.util.stream.Collectors;

public class ParameterListNode extends ASTNode {
    private final boolean jsonParams;
    private final JsonNode paramsJsonNode;
    private final boolean isArray;
    public final Map<String, List<Parameter>> allParameters = new HashMap<>();
    private final CallNode callNode;
    private final Generator generator;
    private final Map<String, List<String>> requirements;

    public ParameterListNode(CallNode callNode, JsonNode paramsJsonNode, boolean isJsonParams, boolean isArray, Map<String, List<String>> requirements) {
        this.jsonParams = isJsonParams;
        this.paramsJsonNode = paramsJsonNode;
        this.isArray = isArray;
        this.callNode = callNode;
        this.generator = callNode.getGenerator();
        this.requirements = parseRequirements(requirements);
    }

    private Map<String, List<String>> parseRequirements(Map<String, List<String>> requirements) {
        // Filter out requirements by the ones that have a dot. Removing the . from the name.
        // This assumes everything in withAttributes is same nested level
        if (requirements == null || requirements.isEmpty()) {
            return null;
        }

        Map<String, List<String>> finalisedRequirements = new HashMap<>();
        for (Map.Entry<String, List<String>> requirementsEntry : requirements.entrySet()) {
            if (!requirementsEntry.getKey().contains(".")) {
                finalisedRequirements.put(requirementsEntry.getKey(), requirementsEntry.getValue());
                continue;
            }

            String[] split = requirementsEntry.getKey().split("\\.");
            if (split[0].equals(callNode.getReceiverType())) {
                finalisedRequirements.put(split[1], requirementsEntry.getValue());
            }
        }

        return finalisedRequirements;
    }

    @Override
    public String toString() {
        String delimiter = ", ";

        String parameters;
        if (jsonParams) {
            parameters = subnodes.stream().map(ASTNode::toString).collect(Collectors.joining(delimiter, "{", "}"));
        } else {
            parameters = subnodes.stream().map(ASTNode::toString).collect(Collectors.joining(delimiter));
        }

        if (isArray) {
            parameters = "[" + parameters + "]";
        }

        return parameters;
    }

    public void generateParams() {
        for (JsonNode param : paramsJsonNode) {
            param.fieldNames().forEachRemaining(fieldName -> {
                JsonNode paramDetails = param.get(fieldName);

                // Possible bug in future here if eg requirement stored as size.width but parameter called size
                // Setting parameters has only been developed for enums
                // Setting parameters does not currently support changing an earlier one to make it work
                List<String> parameterRequirements = requirements == null ? null : requirements.get(fieldName);

//                if (paramDetails.has("optional")) {
//
//                }
                try {
                    this.addNode(new ParameterNode(fieldName, paramDetails, jsonParams, true, generator, this, parameterRequirements));
                } catch (SkipParameterException e) {
                    List<String> allowedFieldSkips = Arrays.asList("stripIndexFormat");
                    System.out.println("Skipped generation of parameter for field " + fieldName);
                    if(!allowedFieldSkips.contains(fieldName)) {
                        System.err.println("Skipped unskippable parameter");
                        System.exit(1);
                    }
                }

            });
        }

    }

    // Returning NULL because it's being stored on another object. You need to hard code for textureFormatCompatible to go looking from ObjectAttributes on generator
    public String getParameter(String fieldName) {
        List<Parameter> parameter = allParameters.get(fieldName);

        if (parameter == null || parameter.isEmpty()) {
            String fieldToSearchFor = fieldName;

            if (fieldName.startsWith("this")) {
                // 0: 'this', 1: 'parameter name', 2: attributeName
                String[] splitFieldNames = fieldName.split("\\.", 3);
                String variableName = this.getParameter(splitFieldNames[1]);

                return generator.getObjectAttributes(variableName, splitFieldNames[2]);
            } else if (Character.isUpperCase(fieldName.charAt(0))) {
                String[] splitFieldName = fieldName.split("\\.", 2);
                fieldToSearchFor = splitFieldName[1];
            }

            return generator.getObjectAttributes(callNode.getReceiver(), fieldToSearchFor);

        }

        return parameter.getFirst().getValue();
    }

    public void printAllParametersAsStrings() {
        allParameters.forEach((fieldName, parameters) -> {
            System.out.print(fieldName + ": ");
            parameters.forEach(p -> System.out.println(p.getValue()));
        });
    }
    public List<String> getAllParameters(String fieldName) {
        List<Parameter> parameters = allParameters.get(fieldName);
        if (parameters == null || parameters.isEmpty()) {
            String fieldToSearchFor = fieldName;

            if (Character.isUpperCase(fieldName.charAt(0))) {
                String[] splitFieldName = fieldName.split("\\.", 2);
                fieldToSearchFor = splitFieldName[1];
            }

            return generator.getAllObjectAttributes(callNode.getReceiver(), fieldToSearchFor);

        }

        return parameters.stream().map(Parameter::getValue).collect(Collectors.toList());
    }

    public void addParameters(String fieldName, List<Parameter> parametersList) {

        allParameters.put(fieldName, parametersList);
    }

    public Map<String, List<Parameter>> getAllParametersAsMap() {
        return allParameters;
    }

    public CallNode getCallNode() {
        return callNode;
    }

    public String getReceiver() {
        return callNode.getReceiver();
    }

    // Clears all currently set values for the given fieldName, replacing it with 1 value
    public void setParamValue(String fieldName, String value) {
        List<Parameter> parameters = findAllParameters(fieldName);
        parameters.clear();
        parameters.add(new Parameter(value));
    }

    private List<Parameter> findAllParameters(String fieldName) {
        List<Parameter> parameters = allParameters.get(fieldName);

        if (parameters == null || parameters.isEmpty()) {
            String fieldToSearchFor = fieldName;

            if (Character.isUpperCase(fieldName.charAt(0))) {
                String[] splitFieldName = fieldName.split("\\.", 2);
                fieldToSearchFor = splitFieldName[1];
            }

            parameters = generator.getAllObjectAttributesAsParameters(callNode.getReceiver(), fieldToSearchFor);
        }

        return parameters;
    }

    public void appendParamValue(String fieldName, String value) {
        List<Parameter> parameters = findAllParameters(fieldName);
        parameters.add(new Parameter(value));
    }

    // Removes the parameter with a given value if it exists eg 1 element of an array
    public void removeParamValue(String fieldName, String value) {
        List<Parameter> parameters = findAllParameters(fieldName);
        parameters.remove(new Parameter(value));
    }

    public String getCallName() {
        return callNode.getCallName();
    }

}
