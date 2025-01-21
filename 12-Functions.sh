#!/bin/bash


ID=$(id -u )

if [ $ID -eq 0 ]

VALIDATE() {
    echo "exit status : $1"
    echo " what are you doing : $2"
}

dnf install mysql -y
VALIDATE $? "Install mysql"
dnf install git -y
VALIDATE $?  "Install git"


fi