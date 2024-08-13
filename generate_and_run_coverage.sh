OUTPUT_DIR="/Users/matthew/Documents/msc/final_proj/WebGlitch/output"
WEBGLITCH_PATH="/Users/matthew/Documents/msc/final_proj/WebGlitch/app/build/libs/app.jar"
export LLVM_PROFILE_FILE="/Users/matthew/Documents/msc/final_proj/cts_coverage/webglitch_no_swarm.profraw"

while true; do
    OUTPUT_FILE="${OUTPUT_DIR}/tmp_coverage.js"
    java -jar "$WEBGLITCH_PATH" -o "$OUTPUT_FILE"
    echo "Running and logging the file $OUTPUT_FILE"
    node "$OUTPUT_FILE"
done