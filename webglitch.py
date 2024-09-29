import os
import subprocess
import sys
import signal
import argparse

RUNNER_PATH = "/Users/matthew/Documents/msc/final_proj/WebGlitchRunner/run.py"
OUTPUT_DIR = "/Users/matthew/Documents/msc/final_proj/WebGlitchFiles/files"
i = 1 


# Function to handle interrupt signal (SIGINT)
def cleanup(signal_received, frame):
    print("Stopping generation and execution...")
    sys.exit(0)

# Register the cleanup function for SIGINT (Ctrl+C)
signal.signal(signal.SIGINT, cleanup)

# Get the current directory where this Python script is located
webglitch_dir = os.path.dirname(os.path.realpath(__file__))

# Define the path to the WebGlitch JAR file
webglitch_jar_path = os.path.join(webglitch_dir, 'app', 'build', 'libs', 'app.jar')

# Check if the JAR file exists
if not os.path.exists(webglitch_jar_path):
    print(f"Error: WebGlitch JAR file not found at {webglitch_jar_path}")
    sys.exit(1)

# Argument parsing
parser = argparse.ArgumentParser(description="Run WebGlitch Java program")
parser.add_argument('--run', action='store_true', help="Run in a loop, generating and executing files.")
parser.add_argument('--cts', action='store_true', help="Ensure generated programs are CTS compatible.")
args = parser.parse_args()

def run_loop(platform):
    global i
    while True:
        output_file = os.path.join(OUTPUT_DIR, f"{i}.js")
        
        # Run webglitch.sh
        run_webglitch(["-o", output_file, "-m", "-w"])
        
        # Run the WebGlitchRunner script
        runner_command = [sys.executable, RUNNER_PATH, "-o", output_file, "-b", platform]
        print(f"Running and logging the file {output_file}")
        subprocess.run(runner_command, stderr=subprocess.DEVNULL)
        
        i += 1

def run_webglitch(args_to_use):
    try:
        subprocess.run(['java', '-jar', webglitch_jar_path] + args_to_use, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error running Java command: {e}")
        sys.exit(e.returncode)

def gen_cts(num_files):
    global i

    while i <= num_files:
        output_file = os.path.join(OUTPUT_DIR, f"{i}.spec.ts")
        run_webglitch(["-o", output_file, "-c"])
        i += 1 


if args.run:
    run_loop(args.run)
elif args.cts:
    gen_cts(args.cts)
else:
    run_webglitch(sys.argv[1:])


