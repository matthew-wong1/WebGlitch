package ast;

import com.fasterxml.jackson.databind.JsonNode;
import generator.Generator;

import java.util.stream.Collectors;

public class MethodCallNode extends ASTNode {

    private final String callName;

    public MethodCallNode(String receiver, String methodName, boolean jsonParams, boolean isArray, JsonNode paramsJsonNode, Generator generator) {
        this.callName = receiver + "." + methodName;
        ParameterListNode parameterListNode = new ParameterListNode(paramsJsonNode, jsonParams, isArray, generator);
        parameterListNode.generateParams();
        this.addNode(parameterListNode);
    }

    @Override
    public String toString() {
        return this.callName + "(" + subnodes.getFirst().toString() + ");";
    }


}
