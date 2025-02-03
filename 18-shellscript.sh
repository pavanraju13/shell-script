#!/bin/bash

top

if [ $? -eq 0 ]
then 
echo "alert on cpu : $1"
else
echo "under utilization : $2"
fi


