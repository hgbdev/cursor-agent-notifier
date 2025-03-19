# Cursor Agent Notifier

A macOS utility script that sends notifications when Cursor's AI agent tasks are completed.

## Overview

This Bash script detects when Cursor is not the foreground application and sends a notification that, when clicked, will bring Cursor to the front. Useful for long-running AI agent tasks when you've switched to another application.

## Requirements

- macOS
- [terminal-notifier](https://github.com/julienXX/terminal-notifier) - A command-line tool to send macOS notifications

## Installation

1. Install terminal-notifier:
```bash
brew install terminal-notifier
```

2. Download the script:
```bash
curl -o notify-cursor.sh https://raw.githubusercontent.com/hgbdev/cursor-agent-notifier/main/notify-cursor.sh
```

3. Make the script executable:
```bash
chmod +x notify-cursor.sh
```

## Usage

Run the script when you want to be notified:

```bash
./notify-cursor.sh
```

For the best experience, you might want to:
- Create an alias in your shell configuration
- Set up a keyboard shortcut
- Integrate it with your workflow tools

## Features

- Checks if Cursor is already in focus (avoids sending unnecessary notifications)
- Sends clickable notifications that activate the Cursor app
- Validates that terminal-notifier is installed
- Basic error handling for common issues

## Author

Julian Huynh 