package ast;

import com.fasterxml.jackson.databind.JsonNode;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ParameterListNode extends ASTNode {
    private final ParameterListNode parent;
    private final boolean jsonParams;
    private final JsonNode paramsJsonNode;
    private final boolean isArray;
    private final HashMap<String, List<Parameter>> flags = new HashMap<>();
    private final CallNode callNode;

    public ParameterListNode(CallNode callNode, JsonNode paramsJsonNode, boolean isJsonParams, boolean isArray, ParameterListNode parent) {
        this.jsonParams = isJsonParams;
        this.paramsJsonNode = paramsJsonNode;
        this.isArray = isArray;
        this.parent = parent;
        this.callNode = callNode;
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
                this.addNode(new ParameterNode(fieldName, paramDetails, jsonParams, callNode.getGenerator(), this));
            });
        }

    }

    public String getFlag(String fieldName) {
        List<Parameter> flag = flags.get(fieldName);
        if (flag == null && parent != null) {
            return parent.getFlag(fieldName);
        }

        return flag.getFirst().getValue();
    }

    public void addParameters(String fieldName, List<Parameter> parametersList) {

        if (parent != null) {
            parent.addParameters(fieldName, parametersList);
        } else {
            flags.put(fieldName, parametersList);
        }
    }

    public List<String> getAllFlagsAsList(String fieldName) {
        List<Parameter> flag = flags.get(fieldName);
        return flag.stream().map(Parameter::getValue).collect(Collectors.toList());
    }

    public Map<String, List<Parameter>> getAllFlagsAsMap() {
        return flags;
    }

    public CallNode getCallNode() {
        return callNode;
    }

    public String getReceiver() {
        return callNode.getReceiver();
    }

    public void setFlag(String aspect, String all) {

    }
}
