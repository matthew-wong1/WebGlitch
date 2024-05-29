package ast;

import com.fasterxml.jackson.databind.JsonNode;

import java.util.stream.Collectors;

public class MethodCallNode extends ASTNode {

    private final boolean jsonParams;
    private final String callName;

    public MethodCallNode(String receiver, String methodName, boolean jsonParams, JsonNode paramsJsonNode) {
        this.callName = receiver + "." + methodName;
        this.jsonParams = jsonParams;

        this.generateParams(paramsJsonNode, this.jsonParams);
    }

    @Override
    public String toString() {
        String delimiter = ", ";

        String parameters;
        if (jsonParams) {
            parameters =
                    subnodes.stream().map(ASTNode::toString).collect(Collectors.joining(delimiter, "{", "}"));
        } else {
            parameters = subnodes.stream().map(ASTNode::toString).collect(Collectors.joining(delimiter));
        }

        return this.callName + "(" + parameters + ");";
    }

    private void generateParams(JsonNode paramsJsonNode, boolean jsonParams) {
        for (JsonNode param : paramsJsonNode) {
            param
                    .fieldNames()
                    .forEachRemaining(
                            fieldName -> {
                                JsonNode paramDetails = param.get(fieldName);

                                //                    if (paramDetails.has("optional")) {
                                //
                                //                    }

                                this.addNode(new ParameterNode(fieldName, paramDetails, jsonParams));
                            });
        }
    }

}
