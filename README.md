# Cursor Agent Notifier

A macOS utility script that sends notifications when Cursor's AI agent tasks are completed.

## Overview

This Bash script monitors Cursor's activity and notifies you when AI agent tasks complete while you're working in other applications. When clicked, the notification brings Cursor back to the foreground, helping you maintain productivity during long-running AI tasks.

## Features

- Sends clickable macOS notifications that bring Cursor to the foreground
- Avoids notifications when Cursor is already in focus
- Simple setup

## Requirements

- macOS
- [terminal-notifier](https://github.com/julienXX/terminal-notifier) - A command-line tool to send macOS notifications

## Installation

1. Install terminal-notifier:
   ```bash
   brew install terminal-notifier
   ```

2. Download the script (choose a directory to store the script):
   ```bash
   curl -o ~/notify-cursor.sh https://raw.githubusercontent.com/hgbdev/cursor-agent-notifier/main/notify-cursor.sh
   ```

3. Make the script executable:
   ```bash
   chmod +x ~/notify-cursor.sh
   ```

## Usage

### Setting Up With Cursor

Add the new rule globally:

```
Execute the Bash script located at /Users/YOUR_USERNAME/notify-cursor.sh when a task is completed.

Ensure this script is the last one executed for every task.
```

**Important:**
- Replace `/Users/YOUR_USERNAME/notify-cursor.sh` with the absolute path to where you saved the script
- The second line is optional but recommended to ensure notifications for all completed tasks

### Verification

To verify the script works correctly:
1. Ask Cursor to perform a task that takes some time
2. Switch to another application
3. You should receive a notification when Cursor completes the task

## Troubleshooting

- **No notifications**: Ensure terminal-notifier is installed (`which terminal-notifier`)
- **Permission denied**: Check execute permissions on the script (`chmod +x notify-cursor.sh`)
- **Script not found**: Verify the path in your Cursor instructions matches where you saved the script
- **Terminal-notifier not found**: Make sure it's installed and in your PATH

## Windows Users

This tool is currently only implemented for macOS. Windows users interested in similar functionality might want to check out [SnoreToast](https://github.com/KDE/snoretoast), a command-line tool for creating Windows Toast notifications. A Windows version of this utility could potentially be built using SnoreToast and PowerShell.