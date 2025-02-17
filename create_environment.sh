#!/bin/bash

# Ask for the user's name
echo "Please enter your name:"
read userName

# Create the main directory
mainDir="submission_reminder_$userName"
mkdir -p "$mainDir"

# Create subdirectories
mkdir -p "$mainDir/app"
mkdir -p "$mainDir/modules"
mkdir -p "$mainDir/assets"
mkdir -p "$mainDir/config"

# Create and populate files
# submissions.txt
cat <<EOL > "$mainDir/assets/submissions.txt"
Student ID,Assignment,Status,Deadline
001,Math Homework,Submitted,2023-10-01
002,Science Project,Pending,2023-10-05
003,History Essay,Submitted,2023-10-03
004,Geography Quiz,Pending,2023-10-07
005,English Report,Submitted,2023-10-02
EOL

# config.env
cat <<EOL > "$mainDir/config/config.env"
# Configuration settings for the reminder app
REMINDER_TIME="09:00"
NOTIFICATION_EMAIL="admin@example.com"
EOL

# reminder.sh
cat <<EOL > "$mainDir/app/reminder.sh"
#!/bin/bash
# Script to remind students about upcoming deadlines
echo "Reminder: Check your submissions!"
EOL

# functions.sh
cat <<EOL > "$mainDir/modules/functions.sh"
#!/bin/bash
# Functions for the reminder app
send_reminder() {
    echo "Sending reminder to students..."
}
EOL

# startup.sh
cat <<EOL > "$mainDir/startup.sh"
#!/bin/bash
# Script to start the reminder app
echo "Starting submission reminder app..."
./app/reminder.sh
EOL

# Make scripts executable
chmod +x "$mainDir/app/reminder.sh"
chmod +x "$mainDir/modules/functions.sh"
chmod +x "$mainDir/startup.sh"

echo "Environment setup complete in $mainDir"
