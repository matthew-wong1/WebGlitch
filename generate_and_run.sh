#!/bin/bash

# Set constants
WEBGLITCH_PATH="/Users/matthew/Documents/msc/final_proj/WebGlitch/app/build/libs/app.jar"
RUNNER_PATH="/Users/matthew/Documents/msc/final_proj/WebGlitchRunner/run.sh"
OUTPUT_DIR="/Users/matthew/Documents/msc/final_proj/WebGlitchFiles/files"
NUM_FILES=100
i=1

# Function to handle interrupt signal
cleanup() {
    echo "Stopping generation and execution..."
    exit 1
}

# Set trap for SIGINT
trap cleanup INT

# Create output directory if it does not exist
# mkdir -p "$OUTPUT_DIR"

# Run the Java command NUM_FILES times
# Uncomment below if you want to run the loop NUM_FILES times
# for ((i=1; i<=NUM_FILES; i++)); do
#     java -jar "$WEBGLITCH_PATH" -o "${OUTPUT_DIR}/${i}.js" -m
#     echo "$WEBGLITCH_PATH -o ${OUTPUT_DIR}/${i}.js"
#     echo "Generated file ${i}.js"
# done

# Loop to run Java command repeatedly
while true; do
    OUTPUT_FILE="${OUTPUT_DIR}/${i}.js"
    # Execute the java command
    java -jar "$WEBGLITCH_PATH" -o "$OUTPUT_FILE" -m
    echo "Running and logging the file"
    bash "$RUNNER_PATH" "$OUTPUT_FILE"

    # Increment the counter
    ((i++))

    # Remove or modify the line below to control loop exit
    # [[ "$i" -gt "$NUM_FILES" ]] && break
done
