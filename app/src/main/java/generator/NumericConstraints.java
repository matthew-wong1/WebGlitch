package generator;

import com.fasterxml.jackson.databind.JsonNode;

public class NumericConstraints {


    private final long MAX_SAFE_ULONG_CPP = 4294967295L;
    private final long MIN_SAFE_SIGNED_LONG_CPP = -2147483648;
    private final long MAX_SAFE_SIGNED_LONG_CPP = 2147483647;
    private final long MAX_RGBA = 1;
    private final long MIN_RGBA = 0;

    private long max;
    private long min;
    private Long divisibility;

    public NumericConstraints(String type) {
        switch (type) {
            case "uint":
                this.max = MAX_SAFE_ULONG_CPP;
                this.min = 0;
                break;
            case "int":
                this.max = MAX_SAFE_SIGNED_LONG_CPP;
                this.min = MIN_SAFE_SIGNED_LONG_CPP;
                break;
            case "rgba":
                this.max = MAX_RGBA;
                this.min = MIN_RGBA;
                break;
        }

        divisibility = null;
    }

    public long getMax() {
        return max;
    }

    public long getMin() {
        return min;
    }

    public void setMax(long max) {
        this.max = max;
    }

    public void setMin(long min) {
        this.min = min;
    }

    public void setDivisibility(Long divisibility) {
        this.divisibility = divisibility;
    }

    public Long getDivisibility() {
        return divisibility;
    }
}
