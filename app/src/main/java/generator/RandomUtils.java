package generator;


import java.util.Random;

public class RandomUtils {
    private static Long seed;
    private static Random instance;

    private RandomUtils(){}

    public static void initialize() {
        Random rand = new Random();
        seed = rand.nextLong();
        instance = new Random(seed);
    }

    public static void initialize(Long specifiedSeed) {
        seed = specifiedSeed;
        instance = new Random(seed);
    }

    public static Long getSeed() {
        return seed;
    }

    public static Random getInstance() {
        return instance;
    }
}
