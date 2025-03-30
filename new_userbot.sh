#!/bin/bash

echo "Enter new project name:" 
read PROJECT_NAME

mkdir -p "$PROJECT_NAME"

rsync -a --exclude '.venv' --exclude '.gitignore' --exclude '.git' --exclude 'LICENSE' --exclude 'README.md' "$HOME/files/userbot/" "$PROJECT_NAME/"

cd "$PROJECT_NAME" || { echo "Failed to enter directory $PROJECT_NAME"; exit 1; }

/usr/bin/python3 -m venv .venv && source ./.venv/bin/activate && pip install -r requirements.txt

echo "New project ready to use $(pwd)"
