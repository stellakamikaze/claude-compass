---
name: detecting-task-mode
description: Detects whether task is code-focused or creative writing. Routes to appropriate mode with different behaviors. Triggers on all requests to determine optimal approach.
---

# Task Mode Detection

## Mode Indicators

### Code Mode (DEFAULT)
**Triggers:** Files mentioned, technical terms, programming languages, debugging, implementation

**Keywords:** implement, fix, debug, refactor, test, build, deploy, API, database, function, class, component, endpoint, error, bug, feature

**Behavior:**
- Use TDD when appropriate
- Plan before implementing
- Verify with actual commands
- Modular, clean code
- File headers on new files

### Creative Mode
**Triggers:** Writing, content, prose, brainstorming ideas (not code), storytelling

**Keywords:** write (non-code context), scrivi, articolo, blog, storia, racconto, email, messaggio, testo, contenuto, creative, brainstorm ideas

**Behavior:**
- Fluid, conversational tone
- No rigid structure unless requested
- Iterate based on feedback
- Focus on voice and style
- No TDD/planning overhead

## Auto-Detection Logic

```
IF request mentions files OR code terms OR technical stack:
  → CODE MODE
ELIF request is about writing prose/content/creative text:
  → CREATIVE MODE
ELSE:
  → CODE MODE (default, most common)
```

## Override Commands

- `/creative` - Force creative mode for current task
- `/code` - Force code mode (rarely needed, it's default)

## Mode Differences

| Aspect | Code Mode | Creative Mode |
|--------|-----------|---------------|
| Planning | Required for features | Optional |
| TDD | Yes | No |
| Verification | Run commands | Read and iterate |
| Tone | Technical, precise | Fluid, expressive |
| Structure | Modular, organized | Natural flow |
