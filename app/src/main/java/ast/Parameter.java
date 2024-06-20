package ast;

public class Parameter {
    private final String fieldName;
    private final String parameterFieldName;
    private String value;


    Parameter(String value, String fieldName) {
        this.value = value;
        this.fieldName = fieldName;
        this.parameterFieldName = "";
    }

    Parameter(Parameter anotherParameter, String parentFieldName) {
        this.fieldName = anotherParameter.fieldName;
        this.value = anotherParameter.value;
        this.parameterFieldName = parentFieldName;
    }

    public String getValue() {
        return value;
    }

    public String getFieldName() {
        return fieldName;
    }

    public String getParentFieldName() {
        return parameterFieldName;
    }

    public void setValue(String value) {
        this.value = value;
    }


}
