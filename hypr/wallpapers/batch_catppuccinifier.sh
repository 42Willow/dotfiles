#!/bin/bash

# Get the script filename
script_file="$(basename "$0")"

# Loop through each file in the current folder and run catppuccinifier
for file in *; do
    # Check if the current file is not the script itself
    if [ "$file" != "$script_file" ] && [ -f "$file" ]; then
        echo "Processing file: $file"
        catppuccinifier -i "$file"
    fi
done

echo "Batch catppuccinifier processing complete."
