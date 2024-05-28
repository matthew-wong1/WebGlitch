package ast;

import com.fasterxml.jackson.databind.JsonNode;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class ParameterNode extends ASTNode {

  private final String fieldName;
  private final String value;
  private final boolean jsonParams;

  public ParameterNode(String fieldName, JsonNode details, boolean jsonParams) {
    // Parse details
    super("DEPRECATED");
    this.fieldName = fieldName;
    this.jsonParams = jsonParams;

    if (details.has("enum")) {
      List<String> enumValues = new ArrayList<>();
      JsonNode enumNode = details.get("enum");
      enumNode.forEach(
          enumValue -> {
            enumValues.add(enumValue.asText());
          });

      Random rand = new Random();
      int randIdx = rand.nextInt(enumValues.size());
      this.value = enumValues.get(randIdx);
    } else {
      this.value = "";
    }
  }

  @Override
  public String toString() {
    if (jsonParams) {
      return "\"" + fieldName + "\": \"" + this.value + "\"";
    }
    return this.value;
  }
}
