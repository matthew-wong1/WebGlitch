package ast;

public class ParamFormatting {
    private final boolean isArray;
    private final boolean isString;
    private final boolean isBitwiseFlags;

    public ParamFormatting(boolean isArray, boolean isString, boolean isBitwiseFlags) {
        this.isArray = isArray;
        this.isString = isString;
        this.isBitwiseFlags = isBitwiseFlags;
    }

    public boolean isArray() {
        return isArray;
    }

    public boolean isString() {
        return isString;
    }

    public boolean isBitwiseFlags() {
        return isBitwiseFlags;
    }

}
