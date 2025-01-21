#1/bin/bash

ID=$(id -u)
TIME_STAMP=$date+%F-%H-%M-%S
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
log_file=\tmp\$SCRIPT_NAME-$TIME_STAMP.log

VALIDATE(){


if [ $1 -eq 0 ]

then 
     echo "$2 ..success"
    
else
     echo "$2....failure"

     exit 1

fi
}


     dnf install mysql -y &>>$log_file
     VALIDATE $? "install mysql"

     dnf install git -y &>>$log_file

     VALIDATE $? "install git"