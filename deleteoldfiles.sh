#/!bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

# Define colors
G="\e[32m" # Green for success
R="\e[31m" # Red for failure
B="\e[34m" # Blue for informational
N="\e[0m"  # Reset to default


if [ -d $SOURCE_DIRECTORY ]
then
echo -e "${G} source directory already exists ${N}"
else
echo "$R Please make sure to create $SOURCE_DIRECTORY diectory $N"
fi

FILES=$( find $SOURCE_DIRECTORY -type f -name "*.log" -mtime +14 )

while IFS= read -r line
do
echo "deleting files : $line"
done <<< $FILES

