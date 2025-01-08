#!bin/bash


#!/bin/bash

# First number
NUMBER1=$1

if [ $NUMBER1 -gt 20 ]; then
  echo "The given number $NUMBER1 is greater than 20"
else
  echo "The given number $NUMBER1 is less than or equal to 20"
fi

# Second number
NUMBER2=$2

if [ $NUMBER2 -lt 20 ]; then
  echo "The given number $NUMBER2 is less than 20"
else
  echo "The given number $NUMBER2 is greater than or equal to 20"
fi

# Print all variables
echo "All variables passed: $@"

# Print the count of variables
echo "Count of variables passed: $#"


