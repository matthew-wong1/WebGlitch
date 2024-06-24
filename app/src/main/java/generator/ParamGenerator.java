package generator;

import ast.ParameterListNode;
import org.apache.commons.text.RandomStringGenerator;

import java.util.Random;

public class ParamGenerator {
    private static final int MIN_VAR_LENGTH = 5;
    private static final int MAX_VAR_LENGTH = 20;
    private static final char[][] ALLOWED_CHARS = {{'a', 'z'}, {'A', 'Z'}};


    private static final Random rand = new Random();

    public static String generateRandVarName() {
        return new RandomStringGenerator.Builder().withinRange(ALLOWED_CHARS).get().generate(MIN_VAR_LENGTH, MAX_VAR_LENGTH);
    }

    public static Number generateRandNumber(String paramType, NumericConstraints numericConstraints) {
        long maxValue = numericConstraints.getMax();
        long minValue = numericConstraints.getMin();
        System.out.println("MIN: " + minValue + " " + maxValue);

        Long divisibility = numericConstraints.getDivisibility();
        if (divisibility != null) {
            return rand.nextLong(minValue / divisibility, maxValue / divisibility) * divisibility;
        }

        if (paramType.equals("double") || paramType.equals("rgba")) {
            return rand.nextDouble(minValue, maxValue);
        }

        if (maxValue == minValue) {
            return maxValue;
        }


        return rand.nextLong(minValue, maxValue);
    }


    public static String generateCustomConstraint(String customValidation, ParameterListNode parent) {
        switch (customValidation) {
            case "mipLevelCount":
                String MULTI_SAMPLING_FLAG = "4";
                String MAX_MIP_COUNT_IF_MULTI_SAMPLING = "1";

                boolean multiSampling = parent.getParameter("sampleCount").equals(MULTI_SAMPLING_FLAG);

                if (multiSampling) {
                    return MAX_MIP_COUNT_IF_MULTI_SAMPLING;
                }

                String dimension = parent.getParameter("dimension");

                // Needs to find from itself first, then go looking for Global Attributes table
                int width = Integer.parseInt(parent.getParameter("size.width"));
                int height = Integer.parseInt(parent.getParameter("size.height"));
                int depthOrArrayLayer = Integer.parseInt(parent.getParameter("size.depthOrArrayLayers"));

                // Formula from documentation
                int maxDimensionValue;

                switch (dimension) {
                    case "1d":
                        maxDimensionValue = 1;
                        break;
                    case "2d":
                        maxDimensionValue = Math.max(width, height);
                        break;
                    default: // 3d
                        maxDimensionValue = Math.max(Math.max(width, height), depthOrArrayLayer);
                        break;
                }

                int max = (int) (Math.floor(Math.log(maxDimensionValue) / Math.log(2)) + 1);
//                int max = (int) (Math.floor(Math.log(Math.min(width, height)) / Math.log(2)) + 1);
                return String.valueOf(max);
        }

        return null;
    }
}
