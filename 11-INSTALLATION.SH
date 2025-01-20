#!/bin/bash


ID=$(id -u )

if [ $ID -ne 0 ]

then 
     echo " Install the mysql"

     dnf install mysql -y

     exit 1

else

    echo " Please run as root user"

fi

