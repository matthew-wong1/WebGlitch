package ast;

import com.fasterxml.jackson.databind.JsonNode;
import generator.Generator;

import java.util.Map;

public class CallNode extends ASTNode {

    private final String callName;
    private final boolean isMethod;
    private ParameterListNode parameterListNode = null;

    public CallNode(String receiver, String callName, boolean jsonParams, boolean isArray, boolean isMethod, Generator generator, JsonNode paramsJsonNode) {
        this.callName = receiver + "." + callName;
        this.isMethod = isMethod;

        if (isMethod) {
            this.parameterListNode = new ParameterListNode(paramsJsonNode, jsonParams, isArray, generator, null);
            parameterListNode.generateParams();
            this.addNode(parameterListNode);
        }


    }

    public Map<String, String> getParameters() {
        if (parameterListNode != null) {
            return parameterListNode.getAllFlags();
        }

        return null;
    }

    @Override
    public String toString() {

        if (isMethod) {
            return this.callName + "(" + subnodes.getFirst().toString() + ");";
        }

        return this.callName;
    }

}
