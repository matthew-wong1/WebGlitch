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
    private final double invalidParameterChance;
    private final double percentOfAvailableCallsToGenerate;
    private final double generateNewRequiredObjectChance;
    private final int maxGPUDevices;

    public WebGlitchOptions() {
        ObjectMapper mapper = new ObjectMapper();
        String filePath = WebGlitch.getPath() + "/" + CONFIG_FILE_NAME;
        JsonNode configNode = null;
        try {
            configNode = mapper.readTree(new File(filePath));
        } catch (IOException e) {
            System.err.println("Unable to open config file: " + e.getMessage());
        }

        Parser.extractNodeAsList(configNode.get("disabledCalls"), disabledCalls);
        this.invalidParameterChance = configNode.get("invalidParameterChance").asDouble();
        this.percentOfAvailableCallsToGenerate = configNode.get("percentOfAvailableCallsToGenerate").asDouble();
        this.maxGPUDevices = configNode.get("maxGPUDevices").asInt();
        this.generateNewRequiredObjectChance = configNode.get("generateNewRequiredObjectChance").asDouble();

    }

    public List<String> getDisabledCalls() {
        return disabledCalls;
    }

    public double getInvalidParameterChance() {
        return invalidParameterChance;
    }

    public double getPercentOfAvailableCallsToGenerate() {
        return percentOfAvailableCallsToGenerate;
    }

    public double getGenerateNewRequiredObjectChance() {
        return generateNewRequiredObjectChance;
    }

    public int getMaxGPUDevices() {
        return maxGPUDevices;
    }
}
