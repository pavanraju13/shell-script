
#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0]
then 
echo "Required root permissions"
 exit 1
 fi