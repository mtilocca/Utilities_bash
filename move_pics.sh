#!/bin/bash

# Define the destination directory for Screenshots
destination="./Screenshots"

# Check if the Screenshots directory exists, if not, create it
if [ ! -d "$destination" ]; then
    mkdir "$destination"
fi

# Find and move all files containing "Screenshot" in the name
find . -type f -name "*Screenshot*" -exec mv {} "$destination" \;
