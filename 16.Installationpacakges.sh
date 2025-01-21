#!/bin/bash

ID=$(id -u)


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