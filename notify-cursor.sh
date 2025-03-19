#!/bin/bash

# Author: Julian Huynh

# Check if terminal-notifier is installed
if ! command -v terminal-notifier &> /dev/null; then
    echo "Error: terminal-notifier is not installed. Install it with 'brew install terminal-notifier'."
    exit 1
fi

# Get the name of the frontmost application
FRONTMOST_APP=$(osascript -e 'tell application "System Events" to get name of first process whose frontmost is true' 2>/dev/null)

# Check if the frontmost app is "Cursor"
if [ "$FRONTMOST_APP" = "Cursor" ]; then
    echo "Cursor is already the frontmost app. No notification sent."
    exit 0
fi

# Get the bundle ID of the Cursor app, with error handling
BUNDLE_ID=$(osascript -e 'id of app "Cursor"' 2>/dev/null)
if [ -z "$BUNDLE_ID" ]; then
    echo "Error: Could not retrieve bundle ID for 'Cursor'. Is the app installed correctly?"
    exit 1
fi

# Send the notification with improved title and message
terminal-notifier -title "Cursor Agent Task Completed" -message "Click to open Cursor" -activate "$BUNDLE_ID"

# Optional: Check if the app opened (rudimentary check)
sleep 2
if ! ps aux | grep -i "[C]ursor" | grep -v "notify_cursor" > /dev/null; then
    echo "Warning: Cursor app might not have opened. Verify the bundle ID: $BUNDLE_ID"
fi
