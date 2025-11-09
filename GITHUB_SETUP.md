# GitHub Setup Instructions

## Step 1: Create Repository on GitHub

1. Go to https://github.com/new
2. Repository name: `biomedical-qa-system` (or your preferred name)
3. Description: "Biomedical Question Answering System using BM25 + bge-base + SentenceTransformer"
4. Set to **Public** (or Private if you prefer)
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click "Create repository"

## Step 2: Push to GitHub

After creating the repository, run these commands:

```bash
cd /Users/aryaman/Desktop/Biomedical-QA-System

# Add all files
git add .

# Commit
git commit -m "Initial commit: Biomedical QA System with BM25 and SentenceTransformer"

# Add remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/aryamanjalali/biomedical-qa-system.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Update Portfolio Link

Once the repository is live, I'll update your portfolio website to link to:
`https://github.com/aryamanjalali/biomedical-qa-system`

## Notes

- Make sure you're authenticated with GitHub (use GitHub CLI or have credentials set up)
- If you get authentication errors, you may need to use a personal access token
- The repository URL will be: `https://github.com/aryamanjalali/biomedical-qa-system`

