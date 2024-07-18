package generator;

import org.apache.commons.cli.*;

import static java.lang.Integer.parseInt;

public class WebGlitch {

    private static final String DEFAULT_MAX_CALLS = "500";
    private static final String DEFAULT_PLATFORM = "dawn";

    public static void main(String[] args) {
        Options options = new Options();
        Option numFiles = new Option("n", "num-files", true, "Number of files to generate");
        Option maxLines = new Option("l", "max-lines", true, "Maximum number of lines per file");
        Option allowOptional = new Option("a", "allow-optional", false, "Allow optional parameters");
        Option swarm = new Option("sw", "swarm", false, "Enable swarm testing");
        Option seed = new Option("s", "seed", true, "Seed for RNG");
        Option fileName = new Option("o", "output", true, "Output file name");

        numFiles.setType(Integer.class);
        numFiles.setRequired(true);

        maxLines.setType(Integer.class);
        maxLines.setRequired(false);

        allowOptional.setType(Boolean.class);
        allowOptional.setRequired(false);

        seed.setType(Long.class);
        seed.setRequired(false);

        fileName.setType(String.class);
        fileName.setRequired(true);

        options.addOption(numFiles);
        options.addOption(maxLines);
        options.addOption(allowOptional);
        options.addOption(seed);
        options.addOption(fileName);

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

        int numPrograms = parseInt(cmd.getOptionValue("n"));
        int maxCalls = parseInt(cmd.getOptionValue("l", DEFAULT_MAX_CALLS));
        boolean allowOptionalParams = cmd.hasOption("a");
        Long specificSeed = null;
        if (cmd.hasOption("s")) {
            specificSeed = Long.parseLong(cmd.getOptionValue("s"));
        }

        String fileNameToUse = cmd.getOptionValue("o");

        Generator generator = new Generator(maxCalls, allowOptionalParams, DEFAULT_PLATFORM, specificSeed);

        generator.generateProgram(fileNameToUse);
    }
}
