#!/bin/bash


ID=$(id -u )



VALIDATE() {
    echo "exit status : $1"
    echo " what are you doing : $2"
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


