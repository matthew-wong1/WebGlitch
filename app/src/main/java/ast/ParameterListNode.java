package ast;

import com.fasterxml.jackson.databind.JsonNode;
import generator.Generator;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

public class ParameterListNode extends ASTNode {
    private final Generator generator;
    private final ParameterListNode parent;
    private final boolean jsonParams;
    private final JsonNode paramsJsonNode;
    private final boolean isArray;
    private final HashMap<String, String> flags = new HashMap<>();

    public ParameterListNode(JsonNode paramsJsonNode, boolean isJsonParams, boolean isArray, Generator generator, ParameterListNode parent) {
        this.generator = generator;
        this.jsonParams = isJsonParams;
        this.paramsJsonNode = paramsJsonNode;
        this.isArray = isArray;
        this.parent = parent;
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
        String flag = flags.get(fieldName);
        if (flag == null && parent != null) {
            return parent.getFlag(fieldName);
        }

        return flag;
    }

    public void addFlag(String fieldName, String flag) {

        if (flag.startsWith("\"")) {
            flag = flag.substring(1, flag.length() - 1);
        }

        if (parent != null) {
            parent.addFlag(fieldName, flag);
        } else {
            flags.put(fieldName, flag);
        }
    }

    public Map<String, String> getAllFlags() {
        return flags;
    }
}
