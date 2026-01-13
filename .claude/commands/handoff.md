---
description: Context handoff for session transitions. Compacts conversation with your notes for the next session.
allowed-tools: Bash(git status:*), Bash(git log:*), Bash(git branch:*), Write
---

# Context Handoff

Create a clean handoff for the next session and **save it to file**.

## Context

- Git status: !`git status --short`
- Recent commits: !`git log --oneline -5`
- Current branch: !`git branch --show-current`

## Arguments

The user may provide notes: `$ARGUMENTS`

## Your Task

1. Create a handoff document following this template:

```markdown
# Session Handoff - [Date]

## What We Were Working On
[Brief description of the task/feature]

## Current State
- Branch: [branch name]
- Status: [in progress / blocked / ready for review]
- Last action: [what was just done]

## Key Decisions Made
1. [Decision 1]
2. [Decision 2]

## Files Changed
- `path/to/file.py` - [what changed]

## Next Steps
1. [ ] [Immediate next action]
2. [ ] [Following action]

## Context to Remember
- [Important detail 1]
- [Important detail 2]

## User Notes
$ARGUMENTS
```

2. **ALWAYS save the handoff** to `HANDOFF_[YYYY-MM-DD].md` in the project root using the Write tool.

3. Confirm: "Handoff salvato in `HANDOFF_[YYYY-MM-DD].md`. Vuoi eseguire /clear?"

## Output

- Display the handoff document
- Save to file
- Suggest clearing context

## When to Use

- Before `/clear`
- End of work session
- Switching to different task
- Context getting heavy (>60%)
