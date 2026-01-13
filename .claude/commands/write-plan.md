---
description: Creates step-by-step implementation plan from scope - ordered tasks, dependencies, testing strategy
---

# Implementation Plan

You are creating a concrete implementation plan based on a completed scope document. This plan defines the ORDER of implementation with clear, actionable steps.

## Prerequisites

This command should be run AFTER `/scope`. If no scope exists in this conversation, ask the user to run `/scope` first or provide:
- Technical architecture
- MVP features list
- Stack decisions

## Planning Principles

1. **Vertical slices**: Implement feature-by-feature, not layer-by-layer
2. **Test early**: Set up testing infrastructure first
3. **Foundation first**: Auth, DB, basic API before features
4. **Incremental value**: Each step should produce something testable

## Plan Structure

### Phase 0: Project Setup
- [ ] Create project structure
- [ ] Docker Compose configuration
- [ ] Environment variables (.env.example)
- [ ] CLAUDE.md for the project

### Phase 1: Foundation
- [ ] Database setup + migrations
- [ ] Basic API skeleton
- [ ] Authentication flow
- [ ] Frontend scaffold

### Phase 2: Core Features (MVP)
Break each feature into:
- [ ] Backend: model + API endpoint
- [ ] Frontend: component + integration
- [ ] Test: verify it works

### Phase 3: Integration
- [ ] Connect all features
- [ ] End-to-end testing
- [ ] Error handling
- [ ] Polish UI

### Phase 4: Deployment Ready
- [ ] Environment configuration
- [ ] Security review
- [ ] Documentation

## Output Format

```markdown
# Implementation Plan: [Project Name]

## Phase 0: Setup
- [ ] Task 1
- [ ] Task 2

## Phase 1: Foundation
- [ ] Task 1 (depends on: Phase 0)
- [ ] Task 2

## Phase 2: Core Features

### Feature A: [Name]
- [ ] Backend: [specific task]
- [ ] Frontend: [specific task]
- [ ] Test: [how to verify]

### Feature B: [Name]
- [ ] Backend: [specific task]
- [ ] Frontend: [specific task]
- [ ] Test: [how to verify]

## Phase 3: Integration
- [ ] Task 1
- [ ] Task 2

## Testing Strategy
- Unit tests: [approach]
- Integration tests: [approach]
- Manual testing: [key flows]

## Ready to Start
→ Begin with Phase 0, Task 1
```

## Start Now

Review the scope document and create an ordered implementation plan. Each task should be concrete and actionable. If scope wasn't done, ask for the required information first.
