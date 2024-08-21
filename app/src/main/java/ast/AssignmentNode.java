package ast;


import generator.RandomUtils;
import generator.WebGlitchOptions;

public class AssignmentNode extends ASTNode {

    private static final String operator = "=";
    private final String prefix;
    private final String varName;

    // Kind means type of declaration eg var, let, const
    public AssignmentNode(String prefix, String varName, RandomUtils randomUtils, WebGlitchOptions webGlitchOptions) {

        if (randomUtils.randomChanceIsSuccessful(webGlitchOptions.getGenerateConstChance())) {
            this.prefix = prefix;
        } else {
            this.prefix = "";
        }

        this.varName = varName;
    }

    public String getVarName() {
        return varName;
    }

    @Override
    public String toString() {
        String assignment = prefix + " " + varName + " " + operator + " ";
        assignment += subnodes.getFirst().toString();
        return assignment;
    }
}
