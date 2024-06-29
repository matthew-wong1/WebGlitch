package javascript;

import ast.ASTNode;

import java.util.Set;
import java.util.stream.Collectors;

public class Import extends ASTNode {
    private final String fullPath;
    private final String importName;
    private final Set<String> namesToImportAs;

    public Import(String fullPath, String importName) {
        this.fullPath = fullPath;
        this.importName = importName;
        this.namesToImportAs = null;
    }

    public Import(String fullPath, Set<String> namesToImportAs) {
        this.fullPath = fullPath;
        this.namesToImportAs = namesToImportAs;
        this.importName = namesToImportAs.stream().collect(Collectors.joining(",", "{", "}"));
    }

    @Override
    public String toString() {
        return "import " + importName + " from '" + fullPath + "';";
    }
}
