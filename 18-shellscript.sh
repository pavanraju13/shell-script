#!/bin/bash

# Set CPU usage threshold (in percentage)
THRESHOLD=80

# Get the current CPU usage (User + System)
CPU_LOAD=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

# Convert float to integer for comparison
CPU_INT=${CPU_LOAD%.*}

# Define recipient email
EMAIL="admin@example.com"

# Check if CPU usage exceeds the threshold
if [ "$CPU_INT" -gt "$THRESHOLD" ]; then
    MESSAGE="ALERT: High CPU usage detected! Current usage: ${CPU_INT}%"
    echo "$MESSAGE"
    
    # Send an email alert
    echo "$MESSAGE" | mail -s "CPU Usage Alert on $(hostname)" "$EMAIL"
else
    echo "CPU usage is normal: ${CPU_INT}%"
fi

