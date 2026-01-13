---
description: Workflow rapido per trovare e fixare bug
argument-hint: [file o path] (opzionale)
---

# Debug Rapido

Workflow per trovare e fixare bug velocemente.

## Target

Analizza: **$ARGUMENTS** (o git changes se non specificato)

## Fasi

### Fase 1: Analisi Bug
Esegui `/bugs $ARGUMENTS` per identificare:
- Errori logici
- Edge case
- Race condition
- Memory leak

### Fase 2: Fix
Correggi i bug identificati uno alla volta.

### Fase 3: Verifica
Esegui di nuovo `/bugs` per confermare che i fix siano corretti e non abbiano introdotto nuovi problemi.

### Fase 4: Commit
Esegui `/commit` per creare commit con prefisso `fix:`.

## Avvia

Inizia con la Fase 1: esegui `/bugs` per analizzare il codice target.
