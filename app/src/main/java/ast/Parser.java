package ast;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.util.Random;

public class Parser {

        private static final Random rand = new Random();

        public static void main(String[] args) {

            try {
                parseAndBuildAST("./app/webgpu/gpu.json");
            } catch(IOException e) {
                System.out.println("Failed to find file: " + e.getMessage());
            }
        }
        public static ASTNode parseAndBuildAST(String filePath) throws IOException {
            ObjectMapper mapper = new ObjectMapper();
            JsonNode rootJsonNode = mapper.readTree(new File(filePath));
            JsonNode methodsJsonNode = rootJsonNode.get("methods");

            // Pick a random method from the length of 'methods'
            int randIdx = rand.nextInt(methodsJsonNode.size());
            JsonNode methodJsonNode = methodsJsonNode.get(randIdx);

            // construct method call first as root AST node. CHANGE THIS LATER
            String receiver = rootJsonNode.get("name").asText();
            String methodName = methodJsonNode.get("methodName").asText();
            boolean jsonParams = methodJsonNode.get("type").asText().equals("object");
            ASTNode rootASTNode = new MethodCallNode(receiver, methodName, jsonParams);

            JsonNode paramsJsonNode = methodJsonNode.get("properties");


            // Add all params to method
            for (JsonNode param : paramsJsonNode) {
                ASTNode finalRootASTNode = rootASTNode;
                param.fieldNames().forEachRemaining(fieldName -> {
                    JsonNode paramDetails = param.get(fieldName);

//                    if (paramDetails.has("optional")) {
//
//                    }

                    finalRootASTNode.addNode(new ParameterNode(fieldName, paramDetails, jsonParams));
                });
            }


            // Need to update this to check which object types are available
            // and then use that as root node
            if (methodJsonNode.has("declaration")) {
              ASTNode newRootNode = new AssignmentNode("const", methodJsonNode.get("async").asBoolean());
              newRootNode.addNode(rootASTNode);
              rootASTNode = newRootNode;
            }

            return rootASTNode;
        }

}
