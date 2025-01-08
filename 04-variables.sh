#!/bin/bash

# Prompt for username
echo  "Please enter the username: "
read username

# Prompt for password (hidden input)
echo  "Please enter the password: "
read -s password
echo # Print a blank line for formatting

# Display the input
echo "Username is: $username"
echo "Password is: $password"
