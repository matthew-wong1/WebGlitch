package webglitch.ast;

import org.apache.commons.text.RandomStringGenerator;

public class AssignmentNode extends ASTNode {

    private static final String operator = "=";

    private static final String asyncDecl = "await";
    private final String kind;
    private final boolean isAsync;

    private final String varName;

    private static final int MIN_VAR_LENGTH = 5;
    private static final int MAX_VAR_LENGTH = 20;
    private static final char[][] ALLOWED_CHARS = {{'a','z'},{'A','Z'}};

    // Kind means type of declaration eg var, let, const
    public AssignmentNode(String kind, boolean isAsync) {
        super(operator);
        this.kind = kind;
        this.isAsync = isAsync;
        this.varName = new RandomStringGenerator.Builder().withinRange(ALLOWED_CHARS).get().generate(MIN_VAR_LENGTH, MAX_VAR_LENGTH);
    }

    @Override
    public String toString() {
        String assignment = kind + " " + varName + " " + operator + " ";
        if (isAsync) {
            assignment += asyncDecl + " ";
        }

        assignment += subnodes.getFirst().toString();
        return assignment;
    }
}
