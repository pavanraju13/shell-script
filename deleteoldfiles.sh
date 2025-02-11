#!/bin/bash

SOURCE_DIRECTORY="/tmp/app-logs"

set -e  # Exit immediately if a command fails

# Define colors
G="\e[32m" # Green for success
R="\e[31m" # Red for failure
B="\e[34m" # Blue for informational
N="\e[0m"  # Reset to default

# Check if directory exists
if [ -d "$SOURCE_DIRECTORY" ]; then
    echo -e "${G}Source directory already exists${N}"
else
    echo -e "${R}Error: Please create the directory $SOURCE_DIRECTORY first.${N}"
    exit 1  # Exit script if directory doesn't exist
fi

# Find and delete log files older than 14 days
find "$SOURCE_DIRECTORY" -type f -name "*.log" -mtime +14 | while IFS= read -r line
do
    echo -e "${B}Deleting file:${N} $line"
    rm -rf "$line"
done

echo -e "${G}Log cleanup completed successfully.${N}"
