package generator;


import java.util.Random;

public class RandomUtils {
    private final Long seed;
    private final Random random;

    public RandomUtils() {
        this(new Random().nextLong());
    }

    public RandomUtils(Long specifiedSeed) {
        seed = specifiedSeed;
        random = new Random(seed);
    }

    public Random getRandom() {
        return random;
    }

    public Long getSeed() {
        return seed;
    }


}
