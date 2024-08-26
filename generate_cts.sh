#!/bin/bash

WEBGLITCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
OUTPUT_DIR="/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/webglitch"
i=1
MAX_FILES=1000

while [ $i -le $MAX_FILES ]; do
    OUTPUT_FILE="${OUTPUT_DIR}/${i}.spec.js"
    bash "$WEBGLITCH_DIR/webglitch.sh" -o "$OUTPUT_FILE" -c
    ((i++))
done