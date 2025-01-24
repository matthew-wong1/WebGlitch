import os

webglitch_dir = os.path.dirname(os.path.realpath(__file__))
SHADERS_PATH = os.path.join(webglitch_dir, "rsrcs", "html", "shaders")
HTML_DIR = os.path.join(webglitch_dir, "rsrcs", "js")
OUTPUT_SHADERS_FILE = os.path.join(HTML_DIR, "in_line_shaders.js")
OUTPUT_HEADER_FILE = os.path.join(HTML_DIR, "clFuzzHeader.js")
CL_FUZZ_LOAD_SHADER_FILE = os.path.join(HTML_DIR, "loadShaderHeaderClFuzz.js")

def generate_in_line_shaders(shaders_path, output_file):
    with open(output_file, "w") as out_file:
        for dirpath, dirnames, filenames in os.walk(shaders_path):
            for filename in filenames:
                if filename.endswith(".wgsl"):
                    # Get the relative path
                    relative_path = os.path.relpath(
                        os.path.join(dirpath, filename), os.path.join(webglitch_dir, "rsrcs", "html")
                    )

                    # Create the variable name by removing slashes and dots
                    variable_name = relative_path.replace("/", "").replace("\\", "").replace(".", "")

                    # Read the content of the .wgsl file
                    with open(os.path.join(dirpath, filename), "r") as wgsl_file:
                        file_content = wgsl_file.read()

                    # Write the variable definition to the output file
                    out_file.write(f"{variable_name} = `\n{file_content}\n`\n\n")

def concatenate_files(in_line_shaders_path, load_shader_path, output_file):
    with open(output_file, "w") as out_file:
        with open(in_line_shaders_path, "r") as in_line_shaders_path:
            out_file.write(in_line_shaders_path.read())

        with open(load_shader_path, "r") as load_shader_path:
            out_file.write(load_shader_path.read())

generate_in_line_shaders(SHADERS_PATH, OUTPUT_SHADERS_FILE)
concatenate_files(OUTPUT_SHADERS_FILE, CL_FUZZ_LOAD_SHADER_FILE, OUTPUT_HEADER_FILE)