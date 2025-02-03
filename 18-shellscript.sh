#!/bin/bash

# Set CPU usage threshold (in percentage)
THRESHOLD= 216947

# Get the current CPU usage (User + System)
MEM_LOAD=$(free -m | awk '/^Mem:/ {print $7}')

# Convert float to integer for comparison
MEM_INT=${MEM_LOAD%.*}

# Define recipient email
EMAIL="admin@example.com"

# Check if CPU usage exceeds the threshold
if [ "$MEM_INT" -gt "$THRESHOLD" ]; then
    MESSAGE="ALERT: High memory usage detected! Current usage: ${MEM_INT}%"
    echo "$MESSAGE"
    
    # Send an email alert
    echo "$MESSAGE" | mail -s "CPU Usage Alert on $(hostname)" "$EMAIL"
else
    echo "CPU usage is normal: ${MEM_INT}%"
fi

