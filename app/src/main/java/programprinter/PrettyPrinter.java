package programprinter;

import ast.ASTNode;

import java.io.*;
import java.nio.channels.FileChannel;
import java.nio.file.*;
import java.util.ArrayList;
import java.util.List;

public class PrettyPrinter {
    private final String OUT_DIRECTORY_PATH = "./output/";
    private final String REQUIRED_HEADER_PATH = "./rsrcs/js/requiredHeader.js";
    private final String DAWN_HEADER_PATH = "./rsrcs/js/dawnHeader.js";
    private final String DENO_HEADER_PATH = "./rsrcs/js/denoHeader.js";


    public void printToFile(ASTNode root, String fileName, long seed, boolean mainOnly) {
        String commentedSeed = "// Seed: " + seed + "\n";
        String pathName = OUT_DIRECTORY_PATH + fileName + ".js";
        // Copy the file
        Path destPath = Path.of(pathName);
        List<StandardOpenOption> openOptions = new ArrayList<>();
        openOptions.add(StandardOpenOption.CREATE);
        openOptions.add(StandardOpenOption.WRITE);

        if (!mainOnly) {
            try {
                Files.copy(Path.of(DAWN_HEADER_PATH), destPath, StandardCopyOption.REPLACE_EXISTING);
                openOptions.add(StandardOpenOption.APPEND);
            } catch (IOException e) {
                System.err.println("Error copying file " + fileName + " to " + destPath);
            }
        }

        try {
            FileChannel requiredHeader = FileChannel.open(Paths.get(REQUIRED_HEADER_PATH), StandardOpenOption.READ);
            FileChannel destFile = FileChannel.open(Paths.get(pathName), openOptions.toArray(new StandardOpenOption[0]));
            destFile.transferFrom(requiredHeader, destFile.size(), requiredHeader.size());
        } catch (IOException e) {
            System.err.println("Error copying headers: " + e.getMessage());
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
            System.err.println("Failed to find file " + fileName + ": " + e.getMessage());
        } catch (IOException e) {
            System.err.println("Failed to append to file " + fileName + ": " + e.getMessage());
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
