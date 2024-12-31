package ast;

import java.util.Objects;

public class Parameter {
    private String value;


    public Parameter(String value) {
        this.value = value;
    }

    public String getValue() {
        // Remove double quotes if String
        if (value.startsWith("\"") && value.endsWith("\"")) {
            return value.substring(1, value.length() - 1);
        }

        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public String toString() {
        return value;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        Parameter parameter = (Parameter) o;
        return Objects.equals(this.value, parameter.value);
    }

}
