package webglitch.ast;

public class ProgramNode extends ASTNode {

    public ProgramNode(String name) {
        super("root");
    }

    @Override
    public String toString() {
        StringBuilder program = new StringBuilder();

        for (ASTNode subnode : subnodes) {
            program.append(subnode.toString()).append("\n");
        }

        return program.toString();
    }
}
