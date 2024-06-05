package ast;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import generator.Generator;
import generator.ParamGenerator;

import java.io.File;
import java.io.IOException;
import java.util.Random;

public class Parser {

  private static final Random rand = new Random();


  private final Generator generator;

  public Parser(Generator generator) {
    this.generator = generator;
  }

  //        public static void main(String[] args) {
  //
  //            try {
  //                parseAndBuildAST("./app/webgpu/gpu.json");
  //            } catch(IOException e) {
  //                System.out.println("Failed to find file: " + e.getMessage());
  //            }
  //        }
  public ASTNode parseAndBuildRandMethod(String filePath) throws IOException {
    
    // Open file
    ObjectMapper mapper = new ObjectMapper();
    JsonNode rootJsonNode = mapper.readTree(new File(filePath));
    JsonNode methodsJsonNode = rootJsonNode.get("methods");

    // Pick a random method from the length of 'methods'
    int randIdx = rand.nextInt(methodsJsonNode.size());
    JsonNode methodJsonNode = methodsJsonNode.get(randIdx);

    String receiverType = rootJsonNode.get("receiverType").asText();
    String receiver = generator.determineReceiver(receiverType, rootJsonNode.has("requirements"));
    
    // Check if receiver exists


    String methodName = methodJsonNode.get("methodName").asText(); // Required field
    boolean jsonParams = methodJsonNode.path("paramType").asText("csv").equals("object");
    JsonNode paramsJsonNode = methodJsonNode.path("properties");
    ASTNode rootASTNode = new MethodCallNode(receiver, methodName, jsonParams, paramsJsonNode, generator);


    // Extra syntax for declarations
    if (methodJsonNode.has("declaration")) {
      rootASTNode = generateDeclaration(methodJsonNode, rootASTNode, methodJsonNode.get("returnType").asText());
    }

    return rootASTNode;
  }

  private ASTNode generateDeclaration(JsonNode methodJsonNode, ASTNode rootASTNode, String returnType) {
    String varName = ParamGenerator.generateRandVarName();
    boolean isAsync = methodJsonNode.has("async");

    // Create the ASTNode 
    ASTNode newRootNode =
        new AssignmentNode("const", isAsync, varName);
    newRootNode.addNode(rootASTNode);

    generator.addToSymbolTable(returnType, varName);

    return newRootNode;
  }

  public ASTNode parseAndBuildMethod(String filePath, String methodName, String currentReceiverType, boolean isDeclaration) throws IOException {
    ObjectMapper mapper = new ObjectMapper();
    JsonNode rootJsonNode = mapper.readTree(new File(filePath));

    JsonNode methodsJsonNode = rootJsonNode.get("methods");

    JsonNode methodJsonNode = null;

    for (JsonNode methodNode : methodsJsonNode) {
      if (methodNode.get("methodName").asText().equals(methodName)) {
        methodJsonNode = methodNode;
      }
    }

    if (methodJsonNode == null) {
      System.out.println("Error, the method " + methodName + " does not exist in path " + filePath);
      System.exit(1);
    }

    String parentReceiverType = rootJsonNode.get("receiverType").asText();

    boolean jsonParams = methodJsonNode.path("paramType").asText("csv").equals("object");
    JsonNode paramsJsonNode = methodJsonNode.path("properties");
    ASTNode rootASTNode = new MethodCallNode(generator.determineReceiver(parentReceiverType, rootJsonNode.has("requirements")), methodName, jsonParams, paramsJsonNode, generator);

    if (isDeclaration) {
      return generateDeclaration(methodJsonNode, rootASTNode, currentReceiverType);
    }

    return rootASTNode;
  }


}
