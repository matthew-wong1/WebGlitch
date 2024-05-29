package generator;

import org.apache.commons.text.RandomStringGenerator;

public class ParamGenerator {
    private static final int MIN_VAR_LENGTH = 5;
    private static final int MAX_VAR_LENGTH = 20;
    private static final char[][] ALLOWED_CHARS = {{'a', 'z'}, {'A', 'Z'}};
    public static String generateRandVarName() {
        return new RandomStringGenerator.Builder()
                        .withinRange(ALLOWED_CHARS)
                        .get()
                        .generate(MIN_VAR_LENGTH, MAX_VAR_LENGTH);
    }
}
