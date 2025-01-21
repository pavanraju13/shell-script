#!/bin/bash

ID=$(id -u) # Get the current user ID
TIME_STAMP=$(date +%F-%H-%M-%S) # Create a timestamp in the format YYYY-MM-DD-HH-MM-SS
SCRIPT_NAME=$(basename "$0" | cut -d "." -f1) # Extract script name without the extension
LOG_FILE="/tmp/${SCRIPT_NAME}-${TIME_STAMP}.log" # Define the log file path

echo "Script started executing at timestamp: $TIME_STAMP"

# Define colors
G="\e[32m" # Green for success
R="\e[31m" # Red for failure
B="\e[34m" # Blue for informational
N="\e[0m"  # Reset to default

# Function to validate command execution
VALIDATE() {
    if [ $1 -eq 0 ]; then
        echo -e "$2.. ${G}success${N}" | tee -a "$LOG_FILE" # Green for success
    else
        echo -e "$2.. ${R}failure${N}" | tee -a "$LOG_FILE" # Red for failure
        exit 1
    fi
}

# Ensure the script is run as root
if [ $ID -ne 0 ]; then
    echo -e "${R}You need root access to run this script.${N}" | tee -a "$LOG_FILE"
    exit 1
fi

# Process each package passed as an argument
for i in "$@"; do
    echo -e "${B}Checking if package '$i' is already installed...${N}" | tee -a "$LOG_FILE"
    
    # Check if the package is already installed
    dnf list installed "$i" &>>"$LOG_FILE"
    
    if [ $? -eq 0 ]; then
        echo -e "${G}Package '$i' is already installed. Skipping installation.${N}" | tee -a "$LOG_FILE"
    else
        echo -e "${R}Package '$i' is not installed. Starting installation...${N}" | tee -a "$LOG_FILE"
        
        fi
        done

          dnf install $i -y &>>$LOG_FILE
    VALIDATE $? " Install package $i"
    