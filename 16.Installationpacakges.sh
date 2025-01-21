#!/bin/bash

ID=$(id -u)
G="\e[31m"
R="\e[32m"
N="\e[0m"
TIMESTAMP=$( date +%F-%H-%M-%S )
SCRIPT_NAME=$(basename $0 | cut "." -f1 )
LOGFILE=/tmp/${SCRIPT_NAME}-${TIMESTAMP}.log

if [ $ID -eq 0]
then
  echo "you are root user"

else
 echo "you need root access"

fi

for i in $@

do

echo "package install : $1"

done