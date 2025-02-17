#!/bin/bash

# startup.sh
# Script to start the submission reminder application

# Navigate to the app directory
cd "."

# Check if the reminder.sh script exists and is executable
if [ -x "./app/reminder.sh" ]; then
    echo "Starting the submission reminder application..."
    ./app/reminder.sh
else
    echo "Error: reminder.sh script not found or not executable."
    exit 1
fi

# Additional logic can be added here if needed
# For example, loading configurations or initializing modules

echo "Application started successfully."
