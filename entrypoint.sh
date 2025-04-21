#!/bin/bash
# Load nvm
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

# Print node version for sanity check
node -v

# Run the given command (or bash if none)
if [ $# -eq 0 ]; then
    exec bash
else
    exec "$@"
fi
