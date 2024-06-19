package ast;

public class Parameter {
    private final String fieldName;
    private String value;


    Parameter(String value, String fieldName) {
        this.value = value;
        this.fieldName = fieldName;
    }

    Parameter(Parameter anotherParameter) {
        this.fieldName = anotherParameter.fieldName;
        this.value = anotherParameter.value;
    }

    public String getValue() {
        return value;
    }

    public String getFieldNameAndValue() {
        return fieldName + ": " + value;
    }

    public void setValue(String value) {
        this.value = value;
    }


}
