package javascript;

import ast.ASTNode;

import java.util.Set;
import java.util.stream.Collectors;

public class Require extends ASTNode {
    private final String fullPath;
    private final boolean isShader;

    public Require(String fullPath) {
        this.fullPath = fullPath;
        isShader = false;
    }

    public Require(String fullPath, boolean isShader) {
        this.fullPath = fullPath;
        this.isShader = isShader;
    }

    @Override
    public String toString() {
        String toReturn = "";

        if (isShader) {
            toReturn += "loadShader";
        } else {
            toReturn += "require";
        }

        toReturn += "('" + fullPath + "');";
        return toReturn;
    }
}
