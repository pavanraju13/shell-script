
#!/bin/bash

USERID=$(id -u)
if [ $USERID -neq 0]
then 
echo "Required root permissions"
 exit 1
 fi