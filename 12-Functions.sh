#!/bin/bash


ID=$(id -u )



VALIDATE() {
    if [ $1 -ne 0 ]
then
    echo "$2 ..failure"

    exit 1
else
    echo "$2 ..success"
 
 fi
}


if [ $ID -eq 0 ]

then

echo " you are super user"

else

echo "Required sudo access"

fi

dnf install mysql -y
VALIDATE $? "Install mysql"
dnf install git -y
VALIDATE $?  "Install git"


