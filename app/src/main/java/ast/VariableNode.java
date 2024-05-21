package ast;

public class VariableNode extends ASTNode {

    public VariableNode(String name) {
        super(name);
    }

    @Override
    public String toString() {
        return this.name;
    }
}
