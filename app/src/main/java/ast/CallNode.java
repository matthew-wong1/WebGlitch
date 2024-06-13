package ast;

import com.fasterxml.jackson.databind.JsonNode;
import generator.Generator;

public class CallNode extends ASTNode {

    private final String callName;
    private final boolean isMethod;

    public CallNode(String receiver, String callName, boolean jsonParams, boolean isArray, boolean isMethod, Generator generator, JsonNode paramsJsonNode) {
        this.callName = receiver + "." + callName;
        this.isMethod = isMethod;

        if (isMethod) {
            ParameterListNode parameterListNode = new ParameterListNode(paramsJsonNode, jsonParams, isArray, generator);
            parameterListNode.generateParams();
            this.addNode(parameterListNode);
        }
    }

    @Override
    public String toString() {

        if (isMethod) {
            return this.callName + "(" + subnodes.getFirst().toString() + ");";
        }

        return this.callName;
    }


}
