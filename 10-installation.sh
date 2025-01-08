




#!/bin/bash

# Check if the script is run as root
if [ $(id -u) -eq 0 ]; then
  # Run the command if the user is root
  echo "Installing MySQL..."
  dnf install mysql -y
else
  # Throw an error if not run as root
  echo "Error: This script must be run as root!"
  exit 1
fi
