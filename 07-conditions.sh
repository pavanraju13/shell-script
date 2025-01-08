#!bin/bash


NUMBER=$1

if [NUMBER -gt 20]
then
 echo " print given $NUMBER greater then 20"

 else
 echo "print given $NUMBER less than 20"

 fi

 Number=$2

 if [NUMBER -lt 20]
 then
 echo "print given $NUMBER less than 20"

 else
 echo "print given $NUMBER greater then 20"

 fi

 echo "Print all the varaiables : $@"

 echo "Print count of variables : $#"

