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
        echo -e "$2.. ${G}...success${N}" | tee -a "$LOG_FILE" # Green for success
    else
        echo -e "$2.. ${R}...failure${N}" | tee -a "$LOG_FILE" # Red for failure
        exit 1
    fi
}


if [ $ID -eq 0 ]
then
  echo "you are root user"

else
 echo "you need root access"

fi

for i in $@

do

echo "package install : $i"
dnf list installed $i | tee -a "$LOG_FILE"

if [ $? -eq 0 ]

then 

echo " $i installed package ..skipping"

else

echo " $i Not Installed ..installation started"
done
fi

dnf install $i 

VALIDATE $? "Install the package" :$i

