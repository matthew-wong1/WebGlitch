#!/bin/bash

# Set constants
WEBGLITCH_PATH="/Users/matthew/Documents/msc/final_proj/WebGlitch/app/build/libs/app.jar"
RUNNER_PATH="/Users/matthew/Documents/msc/final_proj/WebGlitchRunner/run.sh"
OUTPUT_DIR="/Users/matthew/Documents/msc/final_proj/WebGlitchFiles/files"

# Function to handle interrupt signal
cleanup() {
    echo "Stopping generation and execution..."
    exit 1
}

# Set trap for SIGINT
trap cleanup INT

# Loop to run Java command repeatedly
while true; do
    OUTPUT_FILE="${OUTPUT_DIR}/${i}.js"
    # Execute the java command
    java -jar "$WEBGLITCH_PATH" -o "$OUTPUT_FILE" -m -w
    echo "Running and logging the file $OUTPUT_FILE"
    bash "$RUNNER_PATH" "$OUTPUT_FILE"

    # Increment the counter
    ((i++))

    # Remove or modify the line below to control loop exit
    # [[ "$i" -gt "$NUM_FILES" ]] && break
done
