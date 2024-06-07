package ast;

import com.fasterxml.jackson.databind.JsonNode;
import generator.Generator;
import generator.ParamGenerator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class ParameterNode extends ASTNode {

  private final String fieldName;
  private String value;
  private final boolean jsonParams;
  private final Generator generator;
  private final Random rand = new Random();

  public ParameterNode(String fieldName, JsonNode details, boolean jsonParams, Generator generator) {
    // Parse details
    this.fieldName = fieldName;
    this.jsonParams = jsonParams;
    this.generator = generator;

    // Check if need to pass in webGPU object. Go through sequence where create one
    generateParams(details);

  }

  private void generateParams(JsonNode details) {
    if (!details.has("type")) {
      return;
    }

    String paramType = details.get("type").asText();

    if (details.has("enum")) {
      List<String> enumValues = new ArrayList<>();
      JsonNode enumNode = details.get("enum");
      enumNode.forEach(
              enumValue -> {
                enumValues.add(enumValue.asText());
              });

      if (paramType.equals("bitwiseFlag")) {
        // Random int between 1 and end of list
        int randIdx = rand.nextInt(enumValues.size() - 1) + 1;

        Collections.shuffle(enumValues);
        List<String> chosenFlags = enumValues.subList(0, randIdx);
        this.value = String.join(" | ", chosenFlags);
      } else {
        int randIdx = rand.nextInt(enumValues.size());
        this.value = "\"" + enumValues.get(randIdx) + "\"";
      }

    } else if (paramType.equals("string")) {
      this.value = "\"" + ParamGenerator.generateRandVarName() + "\"";
    } else if (paramType.equals("uint")) {
      this.value = String.valueOf(rand.nextInt(Integer.MAX_VALUE));
    } else if (paramType.equals("boolean")) {
      this.value = String.valueOf(rand.nextBoolean());
    } else { // Requires a WebGPU object
      this.value = generator.getRandomReceiver(paramType);
    }


  }

  @Override
  public String toString() {
    if (jsonParams) {
      return fieldName + ": " + this.value;
    }
    return this.value;
  }
}
