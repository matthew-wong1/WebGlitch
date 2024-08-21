package ast;

import com.fasterxml.jackson.databind.JsonNode;
import generator.Generator;

import java.util.List;
import java.util.Map;
import generator.RandomUtils;

public class CallNode extends ASTNode {

    private final String fullCallName;
    private final String callName;
    private final boolean isMethod;
    private final String receiver;
    private final String returnType;
    private ParameterListNode parameterListNode = null;
    private final Generator generator;
    private final boolean isAsync;

    public CallNode(String receiver, String returnType, String callName, boolean jsonParams, boolean isArray, boolean isMethod, boolean isAsync, Generator generator, JsonNode paramsJsonNode, Map<String, List<String>> requirements) {
        this.receiver = receiver;
        this.callName = callName;
        this.fullCallName = receiver + "." + callName;
        this.isMethod = isMethod;
        this.generator = generator;
        this.returnType = returnType;
        this.isAsync = isAsync;

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
            String fullCall = "";

            if (isAsync) {
                RandomUtils random = generator.getRandomUtils();
                if (random.randomChanceIsSuccessful(generator.getWebGlitchOptions().getGenerateAwaitChance())) {
                    fullCall += "await ";
                }
            }

            fullCall += this.fullCallName + "(" + subnodes.getFirst().toString() + ");";

            return fullCall;
        }

        return this.fullCallName;
    }

    public String getReturnType() { return returnType; }

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
