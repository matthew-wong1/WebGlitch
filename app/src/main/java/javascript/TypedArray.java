package javascript;

import ast.ASTNode;

import java.util.*;
import java.util.stream.Collectors;

public class TypedArray extends ASTNode {
    private final Random rand = new Random();
    private final List<String> TYPES = Arrays.asList("Int8", "Float32");
    private final String type;
    private final List<Number> values = new ArrayList<>();
    private final int MAX_SIZE = 500;
    private final int MIN_SIZE = 1;
    private final int RANGE = 10000;

    public TypedArray() {
        this.type = TYPES.get(rand.nextInt(TYPES.size()));

        int numValues = rand.nextInt(MAX_SIZE - MIN_SIZE) + MIN_SIZE;

        for (int i = 0; i < numValues; i++) {
            values.add(rand.nextInt(RANGE * 2 + 1) - RANGE);
        }
    }

    @Override
    public String toString() {
        return "new " + type + "Array" + values.stream().map(Objects::toString).collect(Collectors.joining(",", "([", "])"));
    }
}
