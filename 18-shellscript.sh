#!/bin/bash

Devops="course after the code"

echo "display the before content : $Devops"
echo " display the variables count : $@"
echo "display the script name : $0"
echo "display the passed varibales : $#"
./17-otherscript.sh

echo "display the after content : $Devops"
