#!/bin/bash

# Set constants
WEBGLITCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
RUNNER_PATH="/Users/matthew/Documents/msc/final_proj/WebGlitchRunner/run.sh"
OUTPUT_DIR="/Users/matthew/Documents/msc/final_proj/WebGlitchFiles/files"
i=1

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
    bash "$WEBGLITCH_DIR/webglitch.sh" -o "$OUTPUT_FILE" -m -w "$@"
    echo "Running and logging the file $OUTPUT_FILE"
    bash "$RUNNER_PATH" -o "$OUTPUT_FILE" -b all 2>/dev/null
    ((i++))

done
