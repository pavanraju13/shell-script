#!/bin/bash

COURSE="Devops from current script"

echo "Before calling other script: $COURSE"
echo " display the arguments passed : $#"
echo "process ID of the current shell script : $$"

./17-othersript.sh

echo "display the script name : $0"
echo "display the count of the variables : $@"
echo "process ID of the other script : $$"

