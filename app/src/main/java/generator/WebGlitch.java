package generator;

import org.apache.commons.cli.*;

import static java.lang.Integer.parseInt;

public class WebGlitch {

    private static final String DEFAULT_MAX_CALLS = "1000";

    public static void main(String[] args) {
        Options options = new Options();
        Option numFiles = new Option("n", "num-files", true, "Number of files to generate");
        Option maxLines = new Option("l", "max-lines", true, "Maximum number of lines per file");
        Option allowOptional = new Option("o", "allow-optional", false, "Allow optional parameters");
        Option swarm = new Option("s", "swarm", false, "Enable swarm testing");
        Option useConfig = new Option("c", "use-config", false, "Use config file for probabilities");

        numFiles.setType(Integer.class);
        numFiles.setRequired(true);

        maxLines.setType(Integer.class);
        maxLines.setRequired(false);

        allowOptional.setType(Boolean.class);
        allowOptional.setRequired(false);

        options.addOption(numFiles);
        options.addOption(maxLines);
        options.addOption(allowOptional);

        CommandLineParser parser = new DefaultParser();
        CommandLine cmd = null;

        try {
            cmd = parser.parse(options, args);
        } catch (ParseException e) {
            System.out.println(e.getMessage());
            HelpFormatter formatter = new HelpFormatter();
            formatter.printHelp("webglitch", options);
            System.exit(1);
        }

        int numPrograms = parseInt(cmd.getOptionValue("n"));
        int maxCalls = parseInt(cmd.getOptionValue("l", DEFAULT_MAX_CALLS));
        boolean allowOptionalParams = cmd.hasOption("o");

        Generator generator = new Generator(maxCalls, allowOptionalParams);


        for (int i = 0; i < numPrograms; i++) {
            generator.generateProgram(i);
        }
    }
}
