---
name: managing-git
description: Handles git commits, branches, and pull requests using GitHub CLI. Triggers when committing code, creating PRs, or working with GitHub.
---

# Git Workflow

## Commit

```bash
git status
git add .
git commit -m "$(cat <<'EOF'
type: short description

Detailed explanation.

Co-Authored-By: Claude <noreply@anthropic.com>
EOF
)"
```

Types: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`

## Branch

```bash
git checkout -b feature/name
git branch -d old-branch        # delete local
git push origin --delete branch # delete remote
```

## Pull Request (gh)

```bash
git push -u origin feature/name

gh pr create --title "Title" --body "$(cat <<'EOF'
## Summary
- Changes

## Test Plan
- [ ] Tests
EOF
)"
```

## Review

```bash
gh pr list
gh pr view 123
gh pr checkout 123
gh pr merge 123 --squash --delete-branch
```

## Safety Rules

1. Never force push to main
2. Never commit secrets
3. Always pull before push
4. Use branches for features
