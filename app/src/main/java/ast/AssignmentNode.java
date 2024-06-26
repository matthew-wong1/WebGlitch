package ast;

import generator.ParamGenerator;

public class AssignmentNode extends ASTNode {

    private static final String operator = "=";

    private static final String asyncDecl = "await";
    private final String prefix;
    private final boolean isAsync;

    private final String varName;

    // Kind means type of declaration eg var, let, const
    public AssignmentNode(String prefix, boolean isAsync, String varName) {
        this.prefix = prefix;
        this.isAsync = isAsync;
        this.varName = varName;
    }

    public AssignmentNode(String prefix, boolean isAsync) {
        this(prefix, isAsync, ParamGenerator.generateRandVarName());
    }

    public String getVarName() {
        return varName;
    }

    @Override
    public String toString() {
        String assignment = prefix + " " + varName + " " + operator + " ";
        if (isAsync) {
            assignment += asyncDecl + " ";
        }

        assignment += subnodes.getFirst().toString();
        return assignment;
    }
}
