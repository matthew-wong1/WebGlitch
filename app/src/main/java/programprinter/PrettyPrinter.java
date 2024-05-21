package programprinter;

import ast.ASTNode;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;

public class PrettyPrinter {
    private final String OUT_DIRECTORY_PATH = "./output/";
    public void printToFile(ASTNode root, Integer fileNum) {

        File outFile = new File(OUT_DIRECTORY_PATH + fileNum.toString() + ".js");

        try {
            if (outFile.createNewFile()) {
                PrintWriter out = new PrintWriter(outFile);
                out.println(root.toString());
                out.close();
            }

        } catch (FileNotFoundException e) {
            System.out.println("Failed to find file " + fileNum.toString() + ": " + e.getMessage());
        } catch (IOException e) {
            System.out.println("Failed to create file " + fileNum.toString() + ": " + e.getMessage());
        }


        // String program = format(root.toString());
    }

    private void format(String path) {

    }
}
