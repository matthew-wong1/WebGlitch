package ast;

import com.fasterxml.jackson.databind.JsonNode;
import generator.Generator;

import java.util.List;
import java.util.Map;

public class CallNode extends ASTNode {

    private final String fullCallName;
    private final String callName;
    private final boolean isMethod;
    private final String receiver;
    private ParameterListNode parameterListNode = null;
    private final Generator generator;

    public CallNode(String receiver, String callName, boolean jsonParams, boolean isArray, boolean isMethod, Generator generator, JsonNode paramsJsonNode, Map<String, List<String>> requirements) {
        this.receiver = receiver;
        this.callName = callName;
        this.fullCallName = receiver + "." + callName;
        this.isMethod = isMethod;
        this.generator = generator;

        if (isMethod) {
            this.parameterListNode = new ParameterListNode(this, paramsJsonNode, jsonParams, isArray, requirements);
            parameterListNode.generateParams();
            this.addNode(parameterListNode);
        }


    }

    public Map<String, List<Parameter>> getParameters() {
        if (parameterListNode != null) {
            return parameterListNode.getAllParametersAsMap();
        }

        return null;
    }

    @Override
    public String toString() {

        if (isMethod) {
            return this.fullCallName + "(" + subnodes.getFirst().toString() + ");";
        }

        return this.fullCallName;
    }

    public Generator getGenerator() {
        return generator;
    }

    public String getReceiver() {
        return receiver;
    }

    public String getCallName() {
        return this.callName;
    }
}
