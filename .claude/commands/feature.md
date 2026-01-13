---
description: Workflow per sviluppo nuova feature con review integrata
argument-hint: [nome feature] (opzionale)
---

# Nuova Feature

Workflow per sviluppare una nuova feature con review di qualita integrata.

## Context

Feature da sviluppare: **$ARGUMENTS**

## Fasi

### Fase 1: Scope
Esegui `/scope` per definire esattamente cosa costruire:
- Componenti coinvolti
- API changes
- Database changes
- Test necessari

### Fase 2: Implementazione
Implementa la feature seguendo TDD se appropriato:
- Test first
- Codice minimale
- Refactor

### Fase 3: Bug Check
Esegui `/bugs` sul nuovo codice per identificare:
- Errori logici
- Edge case
- Race condition

### Fase 4: Architecture Review
Esegui `/arch-review` per verificare:
- Integrazione con codebase esistente
- Principi SOLID
- Accoppiamento

### Fase 5: Commit
Esegui `/commit` per creare commit con messaggio auto-generato.

## Avvia

Inizia con la Fase 1: esegui `/scope` per definire la feature.
