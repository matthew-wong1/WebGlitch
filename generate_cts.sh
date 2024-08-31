#!/bin/bash

WEBGLITCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
OUTPUT_DIR="/Users/matthew/Documents/msc/final_proj/cts/src/webgpu/api/operation/webglitch/"
i=1
MAX_FILES=1000

# Function to handle interrupt signal
cleanup() {
    echo "Stopping generation..."
    exit 1
}

# Set trap for SIGINT
trap cleanup INT

while [ $i -le $MAX_FILES ]; do
    OUTPUT_FILE="${OUTPUT_DIR}/${i}.spec.ts"
    bash "$WEBGLITCH_DIR/webglitch.sh" -o "$OUTPUT_FILE" -c
    ((i++))
done