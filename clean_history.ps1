# Script to completely rewrite git history removing API keys
# This will create a new orphan branch with only the current state

Write-Host "Step 1: Fetching latest from remote..."
git fetch origin

Write-Host "Step 2: Checking out main and pulling latest..."
git checkout main
git pull origin main

Write-Host "Step 3: Creating new orphan branch..."
git checkout --orphan temp-main

Write-Host "Step 4: Adding all files..."
git add -A

Write-Host "Step 5: Creating initial commit..."
git commit -m "Initial commit - clean history (API key removed)"

Write-Host "Step 6: Deleting old main branch..."
git branch -D main

Write-Host "Step 7: Renaming temp branch to main..."
git branch -m main

Write-Host "Step 8: Force pushing to remote (this will overwrite history)..."
Write-Host "WARNING: This will permanently delete all commit history on the remote!"
$confirm = Read-Host "Type 'yes' to continue"
if ($confirm -eq 'yes') {
    git push -f origin main
    Write-Host "Done! History has been cleaned."
} else {
    Write-Host "Cancelled. Local branch is ready but not pushed."
}
