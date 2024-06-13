package generator;

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

        Integer divisibility = numericConstraints.getDivisibility();
        if (divisibility != null) {
            return rand.nextLong(minValue / divisibility, maxValue / divisibility) * divisibility;
        }

        if (paramType.equals("double") || paramType.equals("rgba")) {
            return rand.nextDouble(minValue, maxValue);
        }

        return rand.nextLong(minValue, maxValue);
    }
}
