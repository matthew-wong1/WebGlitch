package ast;

import org.apache.commons.text.RandomStringGenerator;

public class AssignmentNode extends ASTNode {

  private static final String operator = "=";

  private static final String asyncDecl = "await";
  private final String kind;
  private final boolean isAsync;

  private final String varName;

  // Kind means type of declaration eg var, let, const
  public AssignmentNode(String kind, boolean isAsync, String varName) {
    super(operator);
    this.kind = kind;
    this.isAsync = isAsync;
    this.varName = varName;
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
