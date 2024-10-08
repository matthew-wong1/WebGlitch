package programprinter;

import ast.ASTNode;
import generator.WebGlitch;
import generator.WebGlitchOptions;

import java.io.*;
import java.nio.channels.FileChannel;
import java.nio.file.*;
import java.util.ArrayList;
import java.util.List;

public class PrettyPrinter {
    private final String WEBGLITCH_PATH = WebGlitch.getPath();
    private final String LOAD_SHADER_PATH = WEBGLITCH_PATH + "/rsrcs/js/loadShaderHeader.js";
    private final String LOAD_SHADER_CTS_PATH = WEBGLITCH_PATH + "/rsrcs/js/loadShaderHeaderCTS.ts";

    private final String CTS_HEADER_PATH = WEBGLITCH_PATH + "/rsrcs/js/ctsHeader.ts";
    private final String DAWN_HEADER_PATH = WEBGLITCH_PATH + "/rsrcs/js/dawnHeader.js";
    private final String DENO_HEADER_PATH = WEBGLITCH_PATH + "/rsrcs/js/denoHeader.js";

    public void printToFile(ASTNode root, String filePath, long seed, boolean mainOnly, boolean ctsCompatible, WebGlitchOptions webGlitchOptions) {
        String commentedSeed = "// Seed: " + seed + "\n";
        String commentedErrorsEnabled = "// Errors ";
        if (webGlitchOptions.getSkipValidityCheckChance() > 0) {
            commentedErrorsEnabled += "enabled";
        } else {
            commentedErrorsEnabled += "disabled";
        }
        commentedErrorsEnabled += "\n";
        String pathName = filePath;
        // Copy the file
        Path destPath = Path.of(pathName);
        List<StandardOpenOption> openOptions = new ArrayList<>();
        openOptions.add(StandardOpenOption.CREATE);
        openOptions.add(StandardOpenOption.WRITE);
        openOptions.add(StandardOpenOption.TRUNCATE_EXISTING);

        if (!mainOnly) {
            String HEADER_PATH = ctsCompatible ? CTS_HEADER_PATH : DAWN_HEADER_PATH;

            try {
                Files.copy(Path.of(HEADER_PATH), destPath, StandardCopyOption.REPLACE_EXISTING);
                openOptions.add(StandardOpenOption.APPEND);
                openOptions.remove(StandardOpenOption.TRUNCATE_EXISTING);
            } catch (IOException e) {
                System.err.println("Error copying file " + filePath + " to " + destPath);
            }
        }

        try {
            String LOAD_SHADER_HEADER_PATH = ctsCompatible ? LOAD_SHADER_CTS_PATH : LOAD_SHADER_PATH;

            FileChannel requiredHeader = FileChannel.open(Paths.get(LOAD_SHADER_HEADER_PATH), StandardOpenOption.READ);
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
            printWriter.println(commentedSeed + commentedErrorsEnabled + root.toString());
            printWriter.close();

        } catch (FileNotFoundException e) {
            System.err.println("Failed to find file " + filePath + ": " + e.getMessage());
        } catch (IOException e) {
            System.err.println("Failed to append to file " + filePath + ": " + e.getMessage());
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
