package ast;

import com.fasterxml.jackson.databind.JsonNode;
import generator.Generator;

import java.util.stream.Collectors;

public class ParameterListNode extends ASTNode {
    private final Generator generator;
    private final boolean jsonParams;
    private final JsonNode paramsJsonNode;

    public ParameterListNode(JsonNode paramsJsonNode, boolean jsonParams, Generator generator) {
        this.generator = generator;
        this.jsonParams = jsonParams;
        this.paramsJsonNode = paramsJsonNode;
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

        return parameters;
    }

    public void generateParams() {


        for (JsonNode param : paramsJsonNode) {
            param.fieldNames().forEachRemaining(fieldName -> {
                JsonNode paramDetails = param.get(fieldName);

//                if (paramDetails.has("optional")) {
//
//                }

                this.addNode(new ParameterNode(fieldName, paramDetails, jsonParams, generator));
            });
        }
    }
}
