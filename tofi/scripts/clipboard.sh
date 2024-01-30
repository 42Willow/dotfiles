#!/bin/bash

# Get the clipboard history and select an item with tofi
selection=$(cliphist list | tofi --prompt-text "copy: ")

# Check if tofi returned anything
if [ -z "$selection" ]; then
    echo "No selection made."
    exit 1
fi

# Decode the selection
decoded=$(echo "$selection" | cliphist decode)

# Check if cliphist decode returned an error
if [ $? -ne 0 ]; then
    echo "Error: Failed to decode clipboard history."
    exit 1
fi

# Copy the decoded selection to the clipboard
echo "$decoded" | wl-copy

# Send a notification with the copied content
dunstify "󰅎 Copied to clipboard: $(wl-paste)"