package ast;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import generator.Generator;
import org.apache.commons.text.RandomStringGenerator;

import java.io.File;
import java.io.IOException;
import java.util.Random;

public class Parser {

        private static final Random rand = new Random();
        private static final int MIN_VAR_LENGTH = 5;
        private static final int MAX_VAR_LENGTH = 20;
        private static final char[][] ALLOWED_CHARS = {{'a','z'},{'A','Z'}};
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
        public ASTNode parseAndBuildAST(String filePath) throws IOException {
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
                String varName = new RandomStringGenerator.Builder().withinRange(ALLOWED_CHARS).get().generate(MIN_VAR_LENGTH, MAX_VAR_LENGTH);
              ASTNode newRootNode = new AssignmentNode("const", methodJsonNode.get("async").asBoolean(), varName);
              newRootNode.addNode(rootASTNode);
              rootASTNode = newRootNode;

                generator.addToSymbolTable(rootJsonNode.get("objectType").asText(), varName);
            }

            return rootASTNode;
        }

}
