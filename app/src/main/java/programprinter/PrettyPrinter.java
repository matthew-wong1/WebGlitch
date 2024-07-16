package programprinter;

import ast.ASTNode;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class PrettyPrinter {
    private final String OUT_DIRECTORY_PATH = "./output/";
    private final String SKELETON_SRC_PATH = "./rsrcs/js/nodeSkeleton.js";

    public void printToFile(ASTNode root, Integer fileNum, long seed) {
        String commentedSeed = "// Seed: " + seed + "\n";
        String pathName = OUT_DIRECTORY_PATH + fileNum.toString() + ".js";
        // Copy the file
        Path destPath = Path.of(pathName);

        try {
            Files.copy(Path.of(SKELETON_SRC_PATH), destPath, StandardCopyOption.REPLACE_EXISTING);
        } catch (IOException e) {
            System.err.println("Error copying file " + fileNum.toString() + " to " + destPath);
        }

        try {
            // Open the file
            File outFile = destPath.toFile();

            // Set to append mode
            FileWriter fileWriter = new FileWriter(outFile, true);
            PrintWriter printWriter = new PrintWriter(fileWriter);
            printWriter.println(commentedSeed + root.toString());
            printWriter.close();

        } catch (FileNotFoundException e) {
            System.err.println("Failed to find file " + fileNum.toString() + ": " + e.getMessage());
        } catch (IOException e) {
            System.err.println("Failed to append to file " + fileNum.toString() + ": " + e.getMessage());
        }

        try {
            this.formatJavaScript(pathName.replace('/', File.separatorChar));

        } catch (IOException | InterruptedException e) {
            System.err.println("Error formatting JavaScript");
            e.printStackTrace();
        }
    }

    public void formatJavaScript(String filePath) throws IOException, InterruptedException {
        ProcessBuilder builder = new ProcessBuilder();
        String command = "npx js-beautify -r " + filePath;

        if (System.getProperty("os.name").toLowerCase().contains("win")) {
            builder.command("cmd", "/c", command);
        } else {
            builder.command("bash", "-c", command);
        }

        Process process = builder.start();

        int exitCode = process.waitFor();
        if (exitCode != 0) {
            System.err.println("Error formatting JavaScript to " + filePath + ": " + exitCode);
        }
    }
}
