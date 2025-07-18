#!/bin/bash

# Check argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <target_dir>"
    exit 1
fi

# Target directory (where symlinks will be created)
TARGET_DIR=$1

# Determine the repository root (2 levels above script location)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
REPO_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"

echo "Repository root: $REPO_DIR"
echo "Target directory: $TARGET_DIR"

# Create symbolic links
ln -sfn "$REPO_DIR/factoryIsaac"            "$TARGET_DIR/factoryIsaac"
ln -sfn "$REPO_DIR/tasks/dyna_terrain"        "$TARGET_DIR/trackerLab"
ln -sfn "$REPO_DIR/tasks/trackerLab"        "$TARGET_DIR/trackerLab"
ln -sfn "$REPO_DIR/algs/RoboWorld"          "$TARGET_DIR/RoboWorld"
ln -sfn "$REPO_DIR/algs/rsl_rl"             "$TARGET_DIR/rsl_rl"

# Optional: Uncomment if needed
# ln -sfn /workspace/isaaclab/_lab_bundle/tasks/trackerLab /workspace/isaaclab/source/

echo "Symlinks created successfully."
