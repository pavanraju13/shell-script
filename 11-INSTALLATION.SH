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

Sankranthi=("GAME CHANGER" "Daaku Maharaj" "Sankranthiki vastunam")

echo "First movie average: ${Sankranthi[0]}"
echo "Second movie above average: ${Sankranthi[1]}"
echo "Third movie Hit: ${Sankranthi[2]}"

echo "Number of movies in Sankranthi array: ${#Sankranthi[@]}"
echo "To print all the movies: ${Sankranthi[@]}"




