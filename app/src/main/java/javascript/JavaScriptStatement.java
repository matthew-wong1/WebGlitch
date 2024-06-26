package javascript;

import ast.ASTNode;

public class JavaScriptStatement extends ASTNode {

    private final String statement;

    public JavaScriptStatement(String statement) {
        this.statement = statement;
    }

    @Override
    public String toString() {
        return statement;
    }
}
