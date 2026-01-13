---
description: Log an error to improve agentic coding skills. Interviews you about what went wrong.
---

# Log Error

You are helping log an error that just occurred. The goal is to identify what the USER did wrong in prompting, context management, or harness configuration.

## Core Philosophy

Errors in agentic coding trace to:
- **Bad Prompt**: Ambiguous, missing constraints, too verbose
- **Context Rot**: Didn't /clear, conversation too long
- **Bad Harnessing**: Wrong agent type, missing guardrails

## Your Task

1. **Review the conversation** to identify what went wrong

2. **Ask 5-8 pointed questions** focused on USER behavior:
   - "What were the 3 most important requirements in your prompt?"
   - "Did you specify what NOT to do, or only what to do?"
   - "When did you last /clear? How full was context?"
   - "What constraints were in your head but not in the prompt?"
   - "Was this reference material or explicit requirements?"

3. **Trace the triggering prompt** - Get the EXACT prompt that led to failure

4. **After getting answers**, create log entry:

```markdown
# Error: [Short Name]
**Date:** [Date]
**Project:** [Context]

## What Happened
[2-3 sentences]

## User Error Category
- [ ] Ambiguous instruction
- [ ] Missing constraints
- [ ] Too verbose
- [ ] Context rot
- [ ] Wrong context
- [ ] Subagent context loss
- [ ] Didn't ask clarifying questions

## Triggering Prompt
```
[Exact prompt - verbatim]
```

## What Should Have Been Said
```
[Better prompt]
```

## Prevention
1. [Specific action]
2. [Another action]

## One-Line Lesson
[Actionable takeaway]
```

5. **Save to** `~/Documents/ClaudeCode/logs/errors/error-YYYY-MM-DD-NNN.md`

## Important

- Be CRITICAL - the user wants to learn
- Focus 80% on user error, 20% on model behavior
- Sanitized logs are useless - be specific and honest
