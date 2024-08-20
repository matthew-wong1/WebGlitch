#!/bin/bash

WEBGLITCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
echo $WEBGLITCH_DIR
WEBGLITCH_JAR_PATH="$WEBGLITCH_DIR/app/build/libs/app.jar"
java -jar "$WEBGLITCH_JAR_PATH" "$@"
