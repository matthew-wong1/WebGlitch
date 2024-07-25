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

    public synchronized int nextInt(int bound) {
        return random.nextInt(bound);
    }

    public synchronized int nextInt(int lowerBound, int upperBound) {
        return random.nextInt(lowerBound, upperBound);
    }

    public synchronized long nextLong(long bound) {
        return random.nextLong(bound);
    }

    public synchronized long nextLong(long lowerBound, long upperBound) {
        return random.nextLong(lowerBound, upperBound);
    }

    public synchronized double nextDouble(double bound) {
        return random.nextDouble(bound);
    }

    public synchronized double nextDouble(double lowerBound, double upperBound) {
        return random.nextDouble(lowerBound, upperBound);
    }

    public synchronized boolean nextBoolean() {
        return random.nextBoolean();
    }

    public synchronized Random getRandom() {
        return random;
    }

    public Long getSeed() {
        return seed;
    }


}
