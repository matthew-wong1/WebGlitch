package generator;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.cli.*;

import java.io.File;
import java.io.IOException;

import static java.lang.Integer.parseInt;

public class WebGlitch {

    private static final String DEFAULT_MAX_CALLS = "500";
    private static final String DEFAULT_PLATFORM = "dawn";

    public static void main(String[] args) {
        Options options = new Options();
        Option maxLines = new Option("l", "max-lines", true, "Maximum number of lines per file");
        Option allowOptional = new Option("a", "allow-optional", false, "Allow optional parameters");
        Option swarm = new Option("sw", "swarm", false, "Enable swarm testing");
        Option seed = new Option("s", "seed", true, "Seed for RNG");
        Option filePath = new Option("o", "output", true, "Output path");
        Option mainOnly = new Option("m", "mainOnly", false, "Generate only the main function");

        maxLines.setType(Integer.class);
        maxLines.setRequired(false);

        allowOptional.setType(Boolean.class);
        allowOptional.setRequired(false);

        seed.setType(Long.class);
        seed.setRequired(false);

        filePath.setType(String.class);
        filePath.setRequired(true);

        mainOnly.setType(Boolean.class);
        mainOnly.setRequired(false);

        options.addOption(maxLines);
        options.addOption(allowOptional);
        options.addOption(seed);
        options.addOption(filePath);
        options.addOption(mainOnly);

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

        int maxCalls = parseInt(cmd.getOptionValue("l", DEFAULT_MAX_CALLS));
        boolean allowOptionalParams = cmd.hasOption("a");
        boolean generateMainFunctionOnly = cmd.hasOption("m");
        Long specificSeed = null;
        if (cmd.hasOption("s")) {
            specificSeed = Long.parseLong(cmd.getOptionValue("s"));
        }

        String filePathToUse = cmd.getOptionValue("o");

        Generator generator = new Generator(maxCalls, allowOptionalParams, DEFAULT_PLATFORM, specificSeed, generateMainFunctionOnly);

        generator.generateProgram(filePathToUse);
    }

    public static String getPath() {
        return System.getProperty("user.dir").replace("\\", "/");
    }
}
