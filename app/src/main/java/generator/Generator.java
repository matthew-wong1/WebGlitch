package generator;

import ast.ASTNode;
import ast.Parser;
import ast.ProgramNode;
import com.fasterxml.jackson.databind.JsonNode;
import programprinter.PrettyPrinter;

import java.io.File;
import java.io.IOException;
import java.util.Random;

public class Generator {

    // Hash map to keep track of state
    // Key: Type of object eg adapter, device
    // Value: Reference to that objet that currently exists
    private final String JSON_DIRECTORY_PATH = "./app/webgpu/";
    private static final Random rand = new Random();
    private static final PrettyPrinter printer = new PrettyPrinter();
    public static void main(String[] args) {
        Generator generator = new Generator();
        generator.generateProgram(5, 1);
    }

    public void generateProgram(int maxCalls, int fileNum) {
        ASTNode root = new ProgramNode("root");

        // But 1 class could have more methods but equally likely that object is selected
        File jsonDirectory = new File(JSON_DIRECTORY_PATH);
        File[] apiCalls = jsonDirectory.listFiles();

        for (int i = 0; i < maxCalls; i++) {
            assert apiCalls != null;
            int randIdx = rand.nextInt(apiCalls.length);
            String fileName = apiCalls[randIdx].getName();

            try {
                root.addNode(Parser.parseAndBuildAST(JSON_DIRECTORY_PATH + fileName));
            } catch (IOException e) {
                System.out.println("Failed to open JSON file: " + fileName + ". " + e.getMessage());
            }
        }

        printer.printToFile(root, fileNum);
    }

}
