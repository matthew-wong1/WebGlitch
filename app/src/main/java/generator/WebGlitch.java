package generator;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.cli.*;

import java.io.File;
import java.io.IOException;

import static java.lang.Integer.parseInt;

public class WebGlitch {

    private static final String DEFAULT_MAX_CALLS = "500";

    public static void main(String[] args) {
        Options options = setupCLIOptions();

        CommandLine cmd = checkCLIOptions(args, options);

        int maxCallsToGenerate = parseInt(cmd.getOptionValue("l", DEFAULT_MAX_CALLS));
        boolean generateMainFunctionOnly = cmd.hasOption("m");
        Long specificSeed = null;
        if (cmd.hasOption("s")) {
            specificSeed = Long.parseLong(cmd.getOptionValue("s"));
        }
        boolean wgpuCompatibilityMode = cmd.hasOption("w");

        String filePathToUse = cmd.getOptionValue("o");

        Generator generator = new Generator(maxCallsToGenerate, wgpuCompatibilityMode, specificSeed, generateMainFunctionOnly);

        generator.generateProgram(filePathToUse);
    }

    private static CommandLine checkCLIOptions(String[] args, Options options) {
        CommandLineParser parser = new DefaultParser();
        CommandLine cmd = null;

        try {
            cmd = parser.parse(options, args);
        } catch (ParseException e) {
            System.err.println(e.getMessage());
            HelpFormatter formatter = new HelpFormatter();
            formatter.printHelp("webglitch", options);
            System.exit(1);
        }
        return cmd;
    }

    private static Options setupCLIOptions() {
        Options options = new Options();
        Option maxCalls = new Option("l", "max-calls", true, "Maximum number of WebGPU API calls per file");
        Option seed = new Option("s", "seed", true, "Seed for RNG");
        Option filePath = new Option("o", "output", true, "Output path");
        Option mainOnly = new Option("m", "mainOnly", false, "Generate only the main function");
        Option wgpuCompatible = new Option("w", "wgpu", false, "Ensures generated programs are wgpu compatible.");

        maxCalls.setType(Integer.class);
        maxCalls.setRequired(false);

        seed.setType(Long.class);
        seed.setRequired(false);

        filePath.setType(String.class);
        filePath.setRequired(true);

        mainOnly.setType(Boolean.class);
        mainOnly.setRequired(false);

        wgpuCompatible.setRequired(false);
        wgpuCompatible.setType(Boolean.class);

        options.addOption(maxCalls);
        options.addOption(seed);
        options.addOption(filePath);
        options.addOption(mainOnly);
        options.addOption(wgpuCompatible);
        return options;
    }

    public static String getPath() {
        return System.getProperty("user.dir").replace("\\", "/");
    }
}
