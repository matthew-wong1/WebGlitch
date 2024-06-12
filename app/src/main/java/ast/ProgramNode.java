package ast;

public class ProgramNode extends ASTNode {

    @Override
    public String toString() {
        StringBuilder program = new StringBuilder();

        for (ASTNode subnode : subnodes) {
            program.append(subnode.toString()).append("\n");
        }

        return program.toString();
    }
}
