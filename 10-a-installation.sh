
#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
echo "Required root permissions"
 exit 1
 fi

dnf install mysql -y

if [ $? -ne 0 ]
then
echo "Installation of mysql ..failure"

else

echo "Installation of mysql ..success"
exit 1

fi

 