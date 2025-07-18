#!/bin/bash

set -e  # Exit immediately if any command fails

# Get repo root (2 levels above script)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
REPO_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"

# Define list of submodules (relative to repo root)
SUBMODULES=(
    "factoryIsaac"
    "tasks/trackerLab"
    "tasks/dyna_terrain"
    "algs/RoboWorld"
    "algs/rsl_rl"
)

echo "Repository root: $REPO_ROOT"
echo "Starting editable installs..."

# Loop over each submodule
for SUBMODULE in "${SUBMODULES[@]}"; do
    FULL_PATH="$REPO_ROOT/$SUBMODULE"
    echo "Installing: $SUBMODULE"
    pip install -e "$FULL_PATH"
done

echo "All submodules installed in editable mode."
