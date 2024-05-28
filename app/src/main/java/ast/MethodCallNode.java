package ast;

import java.util.stream.Collectors;

public class MethodCallNode extends ASTNode {

  private final boolean jsonParams;
  private final String callName;

  public MethodCallNode(String receiver, String methodName, boolean jsonParams) {
    this.callName = receiver + "." + methodName;
    this.jsonParams = jsonParams;
  }

  @Override
  public String toString() {
    String delimiter = ", ";

    String parameters;
    if (jsonParams) {
      parameters =
          subnodes.stream().map(ASTNode::toString).collect(Collectors.joining(delimiter, "{", "}"));
    } else {
      parameters = subnodes.stream().map(ASTNode::toString).collect(Collectors.joining(delimiter));
    }

    return this.callName + "(" + parameters + ");";
  }
}
