package javascript;

import ast.ASTNode;

import java.util.Set;
import java.util.stream.Collectors;

public class Require extends ASTNode {
    private final String fullPath;

    public Require(String fullPath) {
        this.fullPath = fullPath;
    }

    @Override
    public String toString() {
        return "require('" + fullPath + "');";
    }
}
