package javascript;

import ast.ASTNode;
import generator.RandomUtils;

import java.util.*;
import java.util.stream.Collectors;

public class TypedArray extends ASTNode {
    private final List<String> TYPES = Arrays.asList("Int8", "Float32", "Uint8");
    private final String type;
    private final String dataVariable;
    private final List<Number> values = new ArrayList<>();
    private final int MAX_SIZE = 500;
    private final int MIN_SIZE = 1;
    private final int RANGE = 10000;
    private final RandomUtils randomUtils;

    public TypedArray(String type, String dataVariable, RandomUtils randomUtils) {
        this.type = type;
        this.dataVariable = dataVariable;
        this.randomUtils = randomUtils;
    }

    public TypedArray(long maxBytes, RandomUtils randomUtils) {
        this.dataVariable = null;
        this.randomUtils = randomUtils;
        this.type = TYPES.get(randomUtils.nextInt(TYPES.size()));


        // SIZE OF DATA WHEN CONVERTED TO BYTES IS MULTIPEL OF 4

        int elementSizeInBytes = getElementSizeInBytes() / 8;
        long numValues = generateForSizeThatIsMultipleOf4Bytes(elementSizeInBytes, maxBytes);


        generateRandomValues(randomUtils, numValues);
    }

    private void generateRandomValues(RandomUtils randomUtils, long numValues) {
        for (int i = 0; i < numValues; i++) {
            values.add(randomUtils.nextInt(RANGE * 2 + 1) - RANGE);
        }
    }

    public TypedArray(String type, List<String> valuesToUse, RandomUtils randomUtils) {
        this.dataVariable = null;
        this.type = type;
        this.randomUtils = randomUtils;
//        valuesToUse.forEach(v -> this.values.add(Integer.parseInt(v)));

        generateRandomValues(randomUtils, valuesToUse.size());
    }

    private long generateForSizeThatIsMultipleOf4Bytes(int elementSizeInBytes, long maxBytes) {
        long maxValuesToGenerate = MAX_SIZE;

        if (maxBytes != -1) {
            long absoluteMaximumValuesToGenerate = maxBytes / elementSizeInBytes;
            maxValuesToGenerate = Math.min(maxValuesToGenerate, absoluteMaximumValuesToGenerate);
        }

        long numValues;
        if (maxValuesToGenerate == 1) {
            numValues = 1;
        } else {
            numValues = randomUtils.nextLong(maxValuesToGenerate - MIN_SIZE) + MIN_SIZE;
        }
        long totalBytes = numValues * elementSizeInBytes;

        if (numValues < 0 || numValues > maxValuesToGenerate) {
            return randomUtils.nextLong(MAX_SIZE);
        }

        while (totalBytes % 4 != 0) {
            numValues++;
            totalBytes = numValues * elementSizeInBytes;
        }


        return numValues;
    }

    private int getElementSizeInBytes() {
        int i = this.type.length() - 1;
        while (i >= 0 && Character.isDigit(this.type.charAt(i))) {
            i--;
        }
        return Integer.parseInt(this.type.substring(i + 1));
    }

    @Override
    public String toString() {
        String baseStructure = "new " + type + "Array";
        if (dataVariable != null) {
            return baseStructure + "(" + dataVariable + ")";
        }
        return  baseStructure + values.stream().map(Objects::toString).collect(Collectors.joining(",", "([", "])"));
    }
}
