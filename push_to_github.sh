#!/bin/bash

# Script to push Biomedical QA System to GitHub
# Make sure you've created the repository on GitHub first!

echo "🚀 Pushing Biomedical QA System to GitHub..."

# Check if remote exists
if git remote get-url origin > /dev/null 2>&1; then
    echo "Remote 'origin' already exists. Updating..."
    git remote set-url origin https://github.com/aryamanjalali/biomedical-qa-system.git
else
    echo "Adding remote 'origin'..."
    git remote add origin https://github.com/aryamanjalali/biomedical-qa-system.git
fi

# Ensure we're on main branch
git branch -M main

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo "✅ Successfully pushed to GitHub!"
    echo "Repository: https://github.com/aryamanjalali/biomedical-qa-system"
else
    echo "❌ Push failed. Make sure:"
    echo "1. Repository exists at https://github.com/aryamanjalali/biomedical-qa-system"
    echo "2. You're authenticated with GitHub"
    echo "3. You have write access to the repository"
fi

