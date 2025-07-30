#!/bin/bash

# This script initializes and updates accessible submodules only.
# If a submodule fails to update (e.g., due to permission issues), it will be skipped.
# Use --all to fetch full history (all branches and commits) of each submodule.

# Check for --all flag
FULL_CLONE=false
for arg in "$@"; do
    if [[ "$arg" == "--all" ]]; then
        FULL_CLONE=true
    fi
done

# Initialize all submodules (does not clone them yet)
git submodule init

# Get all submodule paths from .gitmodules
submodule_paths=$(git config --file .gitmodules --get-regexp path | awk '{ print $2 }')

echo "Found submodules:"
echo "$submodule_paths"
echo

# Iterate over each submodule and try to update
for path in $submodule_paths; do
    echo "Updating submodule: $path"
    
    if $FULL_CLONE; then
        # Clone full history
        if git submodule update --init "$path"; then
            echo "✅ Successfully updated (full clone): $path"
        else
            echo "⚠️ Failed to update: $path — skipped."
        fi
    else
        # Shallow clone
        if git submodule update --init --depth 1 "$path"; then
            echo "✅ Successfully updated (shallow): $path"
        else
            echo "⚠️ Failed to update: $path — skipped."
        fi
    fi
    echo
done

echo "Finished updating accessible submodules."
