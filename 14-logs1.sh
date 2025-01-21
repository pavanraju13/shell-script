#!/bin/bash

ID=$(id -u) # Get the current user ID
TIME_STAMP=$(date +%F-%H-%M-%S) # Create a timestamp in the format YYYY-MM-DD-HH-MM-SS
SCRIPT_NAME=$(basename "$0" | cut -d "." -f1) # Extract script name without the extension
LOG_FILE="/tmp/${SCRIPT_NAME}-${TIME_STAMP}.log" # Define the log file path

# Function to validate command execution
VALIDATE() {
    if [ $1 -eq 0 ]; then
        echo -e "$2 \e[32m...success\e[0m" | tee -a "$LOG_FILE" # Green for success
    else
        echo -e "$2 \e[31m...failure\e[0m" | tee -a "$LOG_FILE" # Red for failure
        exit 1
    fi
}

# Ensure the script is run as root
if [ $ID -ne 0 ]; then
    echo "You must run this script as root or using sudo." | tee -a "$LOG_FILE"
    exit 1
fi

# Install MySQL and validate
dnf install mysql -y &>>"$LOG_FILE"
VALIDATE $? "Install MySQL"

# Install Git and validate
dnf install git -y &>>"$LOG_FILE"
VALIDATE $? "Install Git"
