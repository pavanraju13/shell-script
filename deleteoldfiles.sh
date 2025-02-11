#/!bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

# Define colors
G="\e[32m" # Green for success
R="\e[31m" # Red for failure
B="\e[34m" # Blue for informational
N="\e[0m"  # Reset to default


if [ -d $SOURCE_DIRECTORY ]
then
echo ${G} "source directory already exists ${N}"
else
echo "$R Please make sure to create diectory $N"
fi