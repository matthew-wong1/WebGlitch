package generator;

import ast.Parser;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class WebGlitchOptions {
    private static final String CONFIG_FILE_NAME = "config.json";
    private final List<String> disabledCalls = new ArrayList<>();
    private final double skipValidityCheckChance;
    private final double percentOfAvailableCallsToGenerate;
    private final double generateNewRequiredObjectChance;
    private final int maxGPUDevices;
    private final boolean letRandomPercentOfCallsBeAvailable;
    private final double printComputePassOutputChance;
    private final double printAllQueuedComputePassOutputsChance;
    private final double generateConstChance;
    private final double generateAwaitChance;

    public WebGlitchOptions(RandomUtils randomUtils) {
        ObjectMapper mapper = new ObjectMapper();
        String filePath = WebGlitch.getPath() + "/" + CONFIG_FILE_NAME;
        JsonNode configNode = null;
        try {
            configNode = mapper.readTree(new File(filePath));
        } catch (IOException e) {
            System.err.println("Unable to open config file: " + e.getMessage());
        }

        Parser.extractNodeAsList(configNode.get("disabledCalls"), disabledCalls);
        this.skipValidityCheckChance = configNode.get("skipValidityCheckChance").asDouble();
        this.letRandomPercentOfCallsBeAvailable = configNode.get("letRandomPercentOfCallsBeAvailable").asBoolean();
        if (letRandomPercentOfCallsBeAvailable) {
            this.percentOfAvailableCallsToGenerate = randomUtils.nextDouble(1.0);
        } else {
            this.percentOfAvailableCallsToGenerate = configNode.get("percentOfAvailableCallsToGenerate").asDouble();
        }
        this.generateNewRequiredObjectChance = configNode.get("generateNewRequiredObjectChance").asDouble();
        this.printComputePassOutputChance = configNode.get("printComputePassOutputChance").asDouble();
        this.printAllQueuedComputePassOutputsChance = configNode.get("printAllQueuedComputePassOutputsChance").asDouble();
        this.maxGPUDevices = configNode.get("maxGPUDevices").asInt();

        this.generateConstChance = configNode.get("generateConstChance").asDouble();
        this.generateAwaitChance = configNode.get("generateAwaitChance").asDouble();

        if (
                isInvalidValidPercentage(skipValidityCheckChance)
                || isInvalidValidPercentage(percentOfAvailableCallsToGenerate)
                || isInvalidValidPercentage(generateNewRequiredObjectChance)
                || isInvalidValidPercentage(printComputePassOutputChance)
                || isInvalidValidPercentage(printAllQueuedComputePassOutputsChance)
        ) {
            System.err.println("Error in config.json: Any percentage must be between 0 and 1 inclusive");
            System.exit(1);
        }

        if (!isValidAmount(maxGPUDevices)) {
            System.err.println("Error in config.json: Max GPU devices cannot be negative");
            System.exit(1);
        }
    }

    private boolean isInvalidValidPercentage(double value) {
        return !(value >= 0) || !(value <= 1.0);
    }

    private boolean isValidAmount(int amount) {
        return amount >= 0;
    }

    public List<String> getDisabledCalls() {
        return disabledCalls;
    }

    public double getSkipValidityCheckChance() {
        return skipValidityCheckChance;
    }

    public double getPercentOfAvailableCallsToGenerate() {
        return percentOfAvailableCallsToGenerate;
    }

    public double getGenerateNewRequiredObjectChance() {
        return generateNewRequiredObjectChance;
    }

    public double getPrintComputePassOutputChance() {
        return printComputePassOutputChance;
    }

    public double getPrintAllQueuedComputePassOutputsChance() { return printAllQueuedComputePassOutputsChance; }

    public double getGenerateConstChance() {
        return generateConstChance;
    }

    public double getGenerateAwaitChance() {
        return generateAwaitChance;
    }

    public boolean getLetRandomPercentOfCallsBeAvailable() {
        return letRandomPercentOfCallsBeAvailable;
    }

    public int getMaxGPUDevices() {
        return maxGPUDevices;
    }
}
