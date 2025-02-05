




#!/bin/bash

# Check if the script is run as root

USERID=$(id -u)

failure (){
  echo -e "${/e[31m .."Error occured at line no : $1 , error command :$2 ${/e0m"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

if [ $USERID -eq 0 ]; then
  # Run the command if the user is root
  echo "Installing MySQL..."
  
else
  # Throw an error if not run as root
  echo "Error: This script must be run as root!"
  exit 1
fi

dnf install mysqlff -y
