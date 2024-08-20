#!/bin/bash

WEBGLITCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
WEBGLITCH_JAR_PATH="$SCRIPT_DIR/app/build/libs/app.jar"
java -jar "$WEBGLITCH_JAR" "$@"
