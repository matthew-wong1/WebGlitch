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
        Options options = new Options();
        Option maxCalls = new Option("l", "max-calls", true, "Maximum number of WebGPU API calls per file");
        Option allowOptional = new Option("a", "allow-optional", false, "Allow optional parameters");
        Option swarm = new Option("sw", "swarm", false, "Enable swarm testing");
        Option seed = new Option("s", "seed", true, "Seed for RNG");
        Option filePath = new Option("o", "output", true, "Output path");
        Option mainOnly = new Option("m", "mainOnly", false, "Generate only the main function");
        Option wgpuCompatible = new Option("w", "wgpu", false, "Ensures generated programs are wgpu compatible.");


        maxCalls.setType(Integer.class);
        maxCalls.setRequired(false);

        allowOptional.setType(Boolean.class);
        allowOptional.setRequired(false);

        seed.setType(Long.class);
        seed.setRequired(false);

        filePath.setType(String.class);
        filePath.setRequired(true);

        mainOnly.setType(Boolean.class);
        mainOnly.setRequired(false);

        wgpuCompatible.setRequired(false);
        wgpuCompatible.setType(Boolean.class);

        options.addOption(maxCalls);
        options.addOption(allowOptional);
        options.addOption(seed);
        options.addOption(filePath);
        options.addOption(mainOnly);
        options.addOption(wgpuCompatible);

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

        int maxCallsToGenerate = parseInt(cmd.getOptionValue("l", DEFAULT_MAX_CALLS));
        boolean allowOptionalParams = cmd.hasOption("a");
        boolean generateMainFunctionOnly = cmd.hasOption("m");
        Long specificSeed = null;
        if (cmd.hasOption("s")) {
            specificSeed = Long.parseLong(cmd.getOptionValue("s"));
        }
        boolean wgpuCompatibilityMode = cmd.hasOption("w");

        String filePathToUse = cmd.getOptionValue("o");

        Generator generator = new Generator(maxCallsToGenerate, allowOptionalParams, wgpuCompatibilityMode, specificSeed, generateMainFunctionOnly);

        generator.generateProgram(filePathToUse);
    }

    public static String getPath() {
        return System.getProperty("user.dir").replace("\\", "/");
    }
}
