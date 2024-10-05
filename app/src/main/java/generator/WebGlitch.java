package generator;

import org.apache.commons.cli.*;

import java.util.HashMap;
import java.util.Map;

import static java.lang.Integer.parseInt;

public class WebGlitch {

    private static final String DEFAULT_MAX_CALLS = "500";
    private static final String SHADERS_WITHIN_WEBGLITCH_SUB_PATH = "/rsrcs/html/";
    private static final String SHADERS_SUB_PATH = "shaders/";

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
        boolean firefoxCompatibilityMode = cmd.hasOption("f");
        boolean ctsCompatiblityMode = cmd.hasOption("c");

        Map<String, Boolean> compatibilityModes = new HashMap<>();
        compatibilityModes.put("wgpu", wgpuCompatibilityMode);
        compatibilityModes.put("firefox", firefoxCompatibilityMode);

        String filePathToUse = cmd.getOptionValue("o");

        Generator generator = new Generator(maxCallsToGenerate, compatibilityModes, ctsCompatiblityMode, specificSeed, generateMainFunctionOnly);

        generator.generateProgram(filePathToUse);
        // Uncomment this for metrics about the programs you generated
//        printCallDistributionMetrics(maxCallsToGenerate, compatibilityModes, ctsCompatiblityMode, specificSeed, generateMainFunctionOnly, filePathToUse);

    }

    private static void printCallDistributionMetrics(int maxCallsToGenerate, Map<String, Boolean> compatibilityModes, boolean ctsCompatiblityMode, Long specificSeed, boolean generateMainFunctionOnly, String filePathToUse) {
        Map<String, Integer> cumulativeCallDistribution = new HashMap<>();
        for (int i = 0; i < 1000; i++) {
            System.out.println("Generating program " + i);
            Generator generator = new Generator(maxCallsToGenerate, compatibilityModes, ctsCompatiblityMode, specificSeed, generateMainFunctionOnly);
            Map<String, Integer> callDistribution = generator.generateProgram(filePathToUse);
            callDistribution.forEach((k, v) -> cumulativeCallDistribution.merge(k, v, Integer::sum));
        }
        System.out.println(cumulativeCallDistribution);
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
        Option firefoxCompatible = new Option("f", "firefox", false, "Ensures generated programs are firefox compatible.");
        Option ctsCompatible = new Option("c", "cts", false, "Ensures generated programs are CTS compatible.");

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

        firefoxCompatible.setRequired(false);
        firefoxCompatible.setType(Boolean.class);

        ctsCompatible.setRequired(false);
        ctsCompatible.setType(Boolean.class);

        options.addOption(ctsCompatible);
        options.addOption(maxCalls);
        options.addOption(seed);
        options.addOption(filePath);
        options.addOption(mainOnly);
        options.addOption(wgpuCompatible);
        options.addOption(firefoxCompatible);
        return options;
    }

    public static String getPath() {
        return System.getProperty("user.dir").replace("\\", "/");
    }

    public static String getShadersFullPath() { return getPath() + SHADERS_WITHIN_WEBGLITCH_SUB_PATH + getShadersSubPath(); }

    public static String getShadersPrefixPath() { return getPath() + SHADERS_WITHIN_WEBGLITCH_SUB_PATH; }

    public static String getShadersSubPath() { return SHADERS_SUB_PATH; }
}
