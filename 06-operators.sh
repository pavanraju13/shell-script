#!/bin/bash

NO1=$1
NO2=$2

SUM=$((NO1 + NO2))

echo "Sum of $NO1 and $NO2 is : $SUM"

echo " all varaiables :$@"

echo "Number of varaiables passed : $#"

echo "script name : $0"

echo "present working directory : $PWD"

echo "Home directory : $HOME"

echo "To know about the current user : $USER"

echo " To know about the hostname : $HOSTNAME"

echo " To know about the process ID of excution of this script : $$"

sleep 60 &

echo " To know about the background process ID : $!"