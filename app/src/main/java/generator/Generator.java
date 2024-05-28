package generator;

import ast.ASTNode;
import ast.Parser;
import ast.ProgramNode;
import com.fasterxml.jackson.databind.JsonNode;
import programprinter.PrettyPrinter;

import java.io.File;
import java.io.IOException;
import java.util.*;

public class Generator {

    private static final Random rand = new Random();
    private static final PrettyPrinter printer = new PrettyPrinter();
    // Hash map to keep track of state
    // Key: Type of object eg adapter, device
    // Value: Reference to that objet that currently exists
    private final Map<String, List<String>> symbolTable = new HashMap<>();
    private final String JSON_DIRECTORY_PATH = "./app/webgpu/";
    private final Parser parser = new Parser(this);
    private final int maxCalls;
    private final boolean allowOptParams;

    public Generator(int maxCalls, boolean allowOptParams) {
        this.maxCalls = maxCalls;
        this.allowOptParams = allowOptParams;
    }

    public static void main(String[] args) {
        Generator generator = new Generator(5, false);
        generator.generateProgram(1);
    }

    public void generateProgram(int fileNum) {
        ASTNode root = new ProgramNode();

        // But 1 class could have more methods but equally likely that object is selected
        File jsonDirectory = new File(JSON_DIRECTORY_PATH);
        File[] apiCalls = jsonDirectory.listFiles();

        for (int i = 0; i < maxCalls; i++) {
            assert apiCalls != null;
            int randIdx = rand.nextInt(apiCalls.length);
            String fileName = apiCalls[randIdx].getName();

            try {
                root.addNode(parser.parseAndBuildAST(JSON_DIRECTORY_PATH + fileName));
            } catch (IOException e) {
                System.out.println("Failed to open JSON file: " + fileName + ". " + e.getMessage());
            }
        }

        printer.printToFile(root, fileNum);
    }

    public void addToSymbolTable(String objectType, String variableName) {
        if (!symbolTable.containsKey(objectType)) {
            symbolTable.put(objectType, new ArrayList<>());
        }

        symbolTable.get(objectType).add(variableName);
    }

}
