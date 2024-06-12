package ast;

import com.fasterxml.jackson.databind.JsonNode;
import generator.Generator;

import java.util.HashMap;
import java.util.stream.Collectors;

public class ParameterListNode extends ASTNode {
    private final Generator generator;
    private final boolean jsonParams;
    private final JsonNode paramsJsonNode;
    private final boolean isArray;
    private final HashMap<String, String> flags = new HashMap<>();

    public ParameterListNode(JsonNode paramsJsonNode, boolean isJsonParams, boolean isArray, Generator generator) {
        this.generator = generator;
        this.jsonParams = isJsonParams;
        this.paramsJsonNode = paramsJsonNode;
        this.isArray = isArray;
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

                this.addNode(new ParameterNode(fieldName, paramDetails, jsonParams, generator, this));
            });
        }
    }

    public String getFlag(String fieldName) {
        return flags.get(fieldName);
    }

    public void addFlag(String fieldName, String flag) {
        flags.put(fieldName, flag);
    }
}
