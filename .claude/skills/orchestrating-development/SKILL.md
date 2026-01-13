---
name: orchestrating-development
description: Routes development tasks to appropriate skills. Detects request type (feature, bug, verify) and triggers corresponding workflow. Manages session lifecycle with beads tracking.
---

# Development Orchestration

## Request Routing

| Keywords | Action |
|----------|--------|
| add, implement, create, build | `brainstorming` → `writing-plans` → TDD |
| fix, bug, debug, broken | `systematic-debugging` → TDD verify |
| verify, check, done? | `verification-before-completion` |
| complex/multi-file | `/write-plan` → `subagent-driven-development` |

## Session Flow

**Start:** `bd ready`
**During:** TDD (red→green→refactor), verify before claiming done
**End:** `/handoff` → `bd sync && git push`

## Quick Reference

| Situation | Command |
|-----------|---------|
| New project | `/discovery` → `/scope` |
| New feature | `/brainstorm` → `/write-plan` |
| Bug | `systematic-debugging` |
| Before merge | `requesting-code-review` |
| Error occurred | `/log-error` |
| Success pattern | `/log-success` |
| Heavy context | `/handoff` → `/clear` |
