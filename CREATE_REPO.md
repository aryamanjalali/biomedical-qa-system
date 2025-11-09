# Quick Steps to Create Repository on GitHub

## Option 1: Using GitHub Web Interface (Easiest)

1. **Go to**: https://github.com/new
2. **Repository name**: `biomedical-qa-system`
3. **Description**: `Biomedical Question Answering System using BM25 + bge-base + SentenceTransformer`
4. **Visibility**: Public
5. **DO NOT** check "Add a README file" (we already have one)
6. **Click**: "Create repository"

Then run:
```bash
cd /Users/aryaman/Desktop/Biomedical-QA-System
git push -u origin main
```

## Option 2: Using GitHub CLI (if installed)

```bash
gh auth login
gh repo create biomedical-qa-system --public --source=. --remote=origin --push
```

---

**Note**: Once the repository is created, the portfolio link will automatically work!

