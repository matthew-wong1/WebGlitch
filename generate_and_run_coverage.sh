#!/bin/bash
OUTPUT_DIR="/Users/matthew/Documents/msc/final_proj/cts_coverage/webglitch_no_swarm"
WEBGLITCH_PATH="/Users/matthew/Documents/msc/final_proj/WebGlitch/app/build/libs/app.jar"
i=1

while true; do
    OUTPUT_FILE="${OUTPUT_DIR}/files/${i}.js"
    OUTPUT_PROF_FILE="${OUTPUT_DIR}/profraw/${i}.profraw"
    java -jar "$WEBGLITCH_PATH" -o "$OUTPUT_FILE"
    echo "Running and logging the file $OUTPUT_FILE"
    LLVM_PROFILE_FILE="$OUTPUT_PROF_FILE" node "$OUTPUT_FILE"
    ((i++))
done