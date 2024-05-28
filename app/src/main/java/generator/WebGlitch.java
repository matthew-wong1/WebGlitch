package generator;

import static java.lang.Integer.parseInt;

public class WebGlitch {

  private static final Generator generator = new Generator();

  public static void main(String[] args) {
    // Number of files to generate. Max num lines. Allow optional params (default=true)

    if (args.length != 2) {
      System.out.println("Usage: ./webglitch <no. files> <max API calls>");
      System.exit(1);
    }

    int numPrograms = parseInt(args[0]);
    int maxCalls = parseInt(args[1]);

    for (int i = 0; i < numPrograms; i++) {
      generator.generateProgram(maxCalls, i);
    }
  }
}
