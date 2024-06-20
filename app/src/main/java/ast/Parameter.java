package ast;

public class Parameter {
    private final String fieldName;
    private String value;


    Parameter(String value, String fieldName) {
        this.value = value;
        this.fieldName = fieldName;
    }

    public String getValue() {
        return value;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setValue(String value) {
        this.value = value;
    }


}
