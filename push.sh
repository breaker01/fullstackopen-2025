#!/bin/bash

# Check if commit message is provided
if [ -z "$1" ]; then
  echo "❌ Error: No commit message provided."
  echo "Usage: ./gitpush.sh \"Your commit message\""
  exit 1
fi

# Show status before staging
echo "📄 Git status before commit:"
git status

# Stage all changes (new, modified, and deleted files)
git add -A

# Commit with message
git commit -m "$1"

# Push to the current branch
git push

echo "✅ Changes pushed with commit message: \"$1\""
