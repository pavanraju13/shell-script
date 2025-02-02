#!/bin/bash

Devops="course after the code"

echo "display the before content : $Devops"
echo " display the arguments passed : $@"
echo "display the script name : $0"
echo "display the count of the variables : $#"
./17-otherscript.sh

echo "display the after content : $Devops"
