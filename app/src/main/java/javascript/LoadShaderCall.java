package javascript;

import ast.ASTNode;

public class LoadShaderCall extends ASTNode {
    private static String RELATIVE_PATH = "globalThis.pathPrefix + '";
    private static String PROJECT_DIR = "'" + System.getProperty("user.dir");
    private final String fullPath;
    private boolean ctsCompatible;

    public LoadShaderCall(String fullPath, boolean ctsCompatible) {
        this.ctsCompatible = ctsCompatible;
        this.fullPath = fullPath;
    }

    @Override
    public String toString() {
        String path_to_use = getPathToUse(ctsCompatible);
        return "await loadShader(" + path_to_use + fullPath + "');";
    }

    public static String getPathToUse(boolean ctsCompatible) {
        if (ctsCompatible) {
            return PROJECT_DIR + "/rsrcs/html/";
        }

        return RELATIVE_PATH;
    }
}
