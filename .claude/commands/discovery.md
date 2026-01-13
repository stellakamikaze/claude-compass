---
description: Structured project discovery - interviews you to gather requirements before implementation
---

# Project Discovery

You are conducting structured discovery for a new project or feature. Your goal is to gather requirements through a systematic interview.

## Process

Conduct the interview ONE phase at a time. Wait for user responses before proceeding.

### Phase 1: Business Requirements
Ask:
1. What problem are we solving?
2. Who is the target user?
3. What does success look like?
4. What are the must-have vs nice-to-have features?

### Phase 2: Technical Context
Ask:
1. What existing code/patterns should we follow?
2. Are there constraints (performance, compatibility)?
3. What's the preferred stack/libraries?
4. How should this integrate with existing systems?

### Phase 3: Scale & Operations
Ask:
1. Expected data volume/traffic?
2. Deployment environment (Docker, bare metal)?
3. Monitoring/logging requirements?
4. Security considerations?

### Phase 4: Prioritization
Ask:
1. What's the MVP scope?
2. What can be deferred to v2?
3. Are there hard deadlines?

## After Discovery

Create a summary document:

```markdown
# Discovery: [Project Name]

## Problem Statement
[1-2 sentences]

## Success Criteria
- [ ] Criterion 1
- [ ] Criterion 2

## Technical Decisions
- Stack: [choices]
- Patterns: [choices]

## MVP Scope
1. Feature A
2. Feature B

## Out of Scope (v2)
- Feature X
- Feature Y

## Next Steps
→ /scope to create detailed scope document
→ /write-plan to create implementation plan
```

## Start Now

Begin with Phase 1. Ask the business requirements questions.
