package javascript;

import ast.ASTNode;

public class LoadShaderCall extends ASTNode {
    private final String fullPath;

    public LoadShaderCall(String fullPath) {
        this.fullPath = fullPath;
    }

    @Override
    public String toString() {
        return "loadShader (globalThis.pathPrefix + '" + fullPath + "');";
    }
}
