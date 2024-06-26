package ast;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public abstract class ASTNode {
    protected final List<ASTNode> subnodes = new LinkedList<>();
    protected ASTNode parent = null;

    public void addNode(ASTNode node) {
        subnodes.add(node);
        node.parent = this;
    }

    public void addNodeToFront(ASTNode node) {
        subnodes.addFirst(node);
        node.parent = this;
    }

    public boolean hasNoSubNodes() {
        return subnodes.isEmpty();
    }

    public List<ASTNode> getAllSubnodes() {
        return Collections.unmodifiableList(subnodes);
    }

    public abstract String toString();
}
