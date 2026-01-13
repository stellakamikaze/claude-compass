---
description: Review multi-agente approfondita su codice esistente
argument-hint: [path] (opzionale, default: git changes)
---

# Code Review Completa

Review approfondita utilizzando tutti gli agenti specializzati.

## Target

Analizza: **$ARGUMENTS** (o git changes se non specificato)

## Fasi

### Fase 1: Bug Hunting
Esegui `/bugs` per identificare:
- Errori logici e runtime
- Race condition
- Edge case non gestiti
- Null pointer, off-by-one

### Fase 2: Architecture Review
Esegui `/arch-review` per valutare:
- Separation of Concerns
- Principi SOLID
- Scalabilita
- Manutenibilita

### Fase 3: Performance Check
Esegui `/perf-check` per identificare:
- Main thread blocking
- Memory issues
- Rendering bottleneck

### Fase 4: Completeness
Esegui `/arewedone` per verificare:
- Cambiamenti integrati
- Dead code rimosso
- Commit finale

## Avvia

Inizia con la Fase 1: esegui `/bugs` per cacciare bug nel codice.
