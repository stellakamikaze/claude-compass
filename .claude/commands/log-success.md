---
description: Log a success to capture what worked well. Understanding WHY things work is as important as why they fail.
---

# Log Success

You are helping log a success that occurred during agentic coding. Capture what went RIGHT.

## Your Task

1. **Review the recent conversation** to understand what went notably well:
   - What task was accomplished smoothly
   - Unusually fast completion
   - First-try successes
   - Elegant solutions
   - Minimal intervention needed

2. **Ask 4-6 clarifying questions** to extract WHY it worked:
   - "What about the prompt setup made it work so smoothly?"
   - "Did the context in CLAUDE.md help?"
   - "Was the solution cleaner than what you initially had in mind?"
   - "Could you do this again? Should this become standard practice?"

3. **Trace the triggering prompt** - Get the EXACT prompt that led to success

4. **After getting answers**, create log entry:

```markdown
# Success: [Short Name]
**Date:** [Date]
**Project:** [Context]

## What Happened
[2-3 sentences - what went right]

## Success Factors
- [ ] Clear, specific prompt
- [ ] Right amount of context
- [ ] Good use of skills/commands
- [ ] Effective planning phase
- [ ] TDD approach
- [ ] Parallel subagents

## Triggering Prompt
```
[Exact prompt - verbatim]
```

## Why It Worked
[Specific analysis]

## Make It Repeatable
1. [Pattern to adopt]
2. [Add to CLAUDE.md?]

## One-Line Lesson
[What to do more of]
```

5. **Save to** `~/Documents/ClaudeCode/logs/successes/success-YYYY-MM-DD-NNN.md`

## Important

- Capture specific details, not generic "it worked"
- Focus on reproducibility
- Consider adding patterns to CLAUDE.md
