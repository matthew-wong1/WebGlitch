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
        if (bound <= 0) {
            return -1 * random.nextInt(-1 * bound);
        }
        return random.nextInt(bound);
    }

    public synchronized int nextInt(int lowerBound, int upperBound) {
        if (lowerBound > upperBound) {
            return random.nextInt(upperBound, lowerBound);
        }

        return random.nextInt(lowerBound, upperBound);
    }

    public synchronized long nextLong(long bound) {
        if (bound <= 0) {
            return -1 * random.nextLong(-1 * bound);
        }
        return random.nextLong(bound);
    }

    public synchronized long nextLong(long lowerBound, long upperBound) {
        if (lowerBound > upperBound) {
            return random.nextLong(upperBound, lowerBound);
        }

        return random.nextLong(lowerBound, upperBound);
    }

    public synchronized double nextDouble(double bound) {
        if (bound <= 0) {
            return -1 * random.nextDouble(-1 * bound);
        }
        return random.nextDouble(bound);
    }

    public synchronized double nextDouble(double lowerBound, double upperBound) {
        if (lowerBound > upperBound) {
            return random.nextDouble(upperBound, lowerBound);
        }
        return random.nextDouble(lowerBound, upperBound);
    }

    public synchronized boolean nextBoolean() {
        return random.nextBoolean();
    }

    public synchronized Random getRandom() {
        return random;
    }

    public synchronized boolean randomChanceIsSuccessful(double probability) {
        return random.nextDouble() < probability;
    }

    public Long getSeed() {
        return seed;
    }


}
