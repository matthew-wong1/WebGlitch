package generator;

import org.apache.commons.text.RandomStringGenerator;

import java.util.Random;

public class ParamGenerator {
    private static final int MIN_VAR_LENGTH = 5;
    private static final int MAX_VAR_LENGTH = 20;
    private static final char[][] ALLOWED_CHARS = {{'a', 'z'}, {'A', 'Z'}};
    private static final Random rand = new Random();

    public static String generateRandVarName() {
        return new RandomStringGenerator.Builder()
                        .withinRange(ALLOWED_CHARS)
                        .get()
                        .generate(MIN_VAR_LENGTH, MAX_VAR_LENGTH);
    }

    public static Number generateRandNumber(String paramType, int minValue, int maxValue) {
        switch(paramType) {
            case "rgba":
                maxValue = 255;
            case "uint":
                return rand.nextInt(maxValue);
            case "int":
                return rand.nextInt(minValue, maxValue);
            default: // double
                return rand.nextDouble(minValue, maxValue);
        }
    }
}
