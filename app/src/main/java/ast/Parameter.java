package ast;

public class Parameter {
    private final String fieldName;
    private final ParamFormatting paramFormatting;
    private String value;


    Parameter(String value) {
        this.value = value;
        this.fieldName = "";
        this.paramFormatting = null;
    }

    public Parameter(String value, String fieldName, ParamFormatting paramFormatting) {
        this.value = value;
        this.fieldName = fieldName;
        this.paramFormatting = paramFormatting;
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
