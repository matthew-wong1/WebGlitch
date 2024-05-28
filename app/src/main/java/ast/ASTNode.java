package ast;

import java.util.ArrayList;
import java.util.List;

public abstract class ASTNode {
  protected final List<ASTNode> subnodes = new ArrayList<>();

  public void addNode(ASTNode node) {
    subnodes.add(node);
  }

  public abstract String toString();
}
