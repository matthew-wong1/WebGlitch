package ast;

import com.fasterxml.jackson.databind.JsonNode;
import generator.Generator;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ParameterListNode extends ASTNode {
    private final boolean jsonParams;
    private final JsonNode paramsJsonNode;
    private final boolean isArray;
    public final HashMap<String, List<Parameter>> allParameters = new HashMap<>();
    private final CallNode callNode;
    private final Generator generator;

    public ParameterListNode(CallNode callNode, JsonNode paramsJsonNode, boolean isJsonParams, boolean isArray) {
        this.jsonParams = isJsonParams;
        this.paramsJsonNode = paramsJsonNode;
        this.isArray = isArray;
        this.callNode = callNode;
        this.generator = callNode.getGenerator();
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

//                if (paramDetails.has("optional")) {
//
//                }
                this.addNode(new ParameterNode(fieldName, paramDetails, jsonParams, true, generator, this));
            });
        }
    }

    // Returning NULL because it's being stored on another object. You need to hard code for textureFormatCompatible to go looking from ObjectAttributes on generator
    public String getParameter(String fieldName) {

        List<Parameter> parameter = allParameters.get(fieldName);

        if (parameter == null || parameter.isEmpty()) {

            if (fieldName.startsWith("this")) {
                // 0: 'this', 1: 'parameter name', 2: attributeName
                String[] splitFieldNames = fieldName.split("\\.", 3);

                String variableName = this.getParameter(splitFieldNames[1]);
                return generator.getObjectAttributes(variableName, splitFieldNames[2]);
            } else if (Character.isUpperCase(fieldName.charAt(0))) {
                String[] splitFieldName = fieldName.split("\\.", 2);
                return generator.getObjectAttributes(callNode.getReceiver(), splitFieldName[1]);
            }

            return generator.getObjectAttributes(callNode.getReceiver(), fieldName);

        }

        return parameter.getFirst().getValue();
    }

    public List<String> getAllParameters(String fieldName) {
        List<Parameter> parameters = allParameters.get(fieldName);
        if (parameters == null || parameters.isEmpty()) {
            if (Character.isUpperCase(fieldName.charAt(0))) {
                String[] splitFieldName = fieldName.split("\\.", 2);
                return generator.getAllObjectAttributes(callNode.getReceiver(), splitFieldName[1]);
            }

            return generator.getAllObjectAttributes(callNode.getReceiver(), fieldName);

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
        List<Parameter> parameters = allParameters.get(fieldName);
        parameters.clear();
        parameters.add(new Parameter(value));
    }

    public void appendParamValue(String fieldName, String value) {
        List<Parameter> parameters = allParameters.get(fieldName);
        parameters.add(new Parameter(value));
    }

    // Removes the parameter with a given value if it exists eg 1 element of an array
    public void removeParamValue(String fieldName, String value) {
        List<Parameter> parameters = allParameters.get(fieldName);
        parameters.remove(new Parameter(value));
    }
}
