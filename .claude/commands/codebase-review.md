---
description: Guided codebase review - what to keep, remove, refactor, and how to continue
argument-hint: [path/to/directory] (optional, defaults to current directory)
---

# Codebase Review

Workflow guidato per revisionare una codebase esistente e decidere cosa tenere, rimuovere, refactorare.

## Target

Analizza: **$ARGUMENTS** (o directory corrente se non specificato)

## Processo

Conduci la review in 4 fasi sequenziali. Per ogni fase, presenta i risultati prima di procedere.

### Fase 1: Inventory

Esplora la codebase e crea un inventario:

1. **Struttura** - Directory layout, pattern organizzativi
2. **Stack** - Linguaggi, framework, dipendenze principali
3. **Metriche** - Numero file, LOC approssimative, test coverage (se disponibile)
4. **Entry points** - Main files, API endpoints, routes

Usa gli agenti Explore per questa fase.

### Fase 2: Keep (Cosa Tenere)

Identifica codice solido da mantenere:

- **Pattern validi** - Architetture ben implementate
- **Codice testato** - Funzionalita con buona test coverage
- **Core business logic** - Logica critica ben scritta
- **Integrazioni funzionanti** - API, servizi esterni che funzionano

Per ogni elemento, spiega PERCHE vale la pena tenerlo.

### Fase 3: Remove (Cosa Rimuovere)

Identifica codice da eliminare:

- **Dead code** - Funzioni/classi mai chiamate
- **Dipendenze inutilizzate** - Package in package.json/requirements.txt non usati
- **Feature incomplete** - Codice parzialmente implementato e abbandonato
- **Duplicazioni** - Codice duplicato che puo essere consolidato
- **Legacy deprecated** - Vecchie implementazioni sostituite

Usa l'agente bug-finder per identificare dead code.

### Fase 4: Refactor (Cosa Migliorare)

Identifica debito tecnico prioritario:

- **Violazioni SOLID** - Classi con troppe responsabilita
- **Code smells** - Long methods, deep nesting, magic numbers
- **Accoppiamento** - Dipendenze circolari, tight coupling
- **Sicurezza** - Vulnerabilita note, pattern insicuri
- **Performance** - Bottleneck evidenti

Usa l'agente architecture-reviewer per questa analisi.

### Fase 5: Continue (Come Procedere)

Basandoti sulle fasi precedenti, proponi:

1. **Quick wins** - Refactoring immediati a basso rischio
2. **Priorita media** - Miglioramenti significativi
3. **Lungo termine** - Riscritture o ristrutturazioni maggiori

## Output Finale

```markdown
# Codebase Review: [Nome Progetto]

## Overview
- Stack: [tecnologie]
- Size: [metriche]
- Health: [valutazione 1-5]

## Keep
- [Item 1] - [perche]
- [Item 2] - [perche]

## Remove
- [ ] [Item 1] - [impatto stimato]
- [ ] [Item 2] - [impatto stimato]

## Refactor
| Priorita | Area | Problema | Soluzione |
|----------|------|----------|-----------|
| Alta | ... | ... | ... |
| Media | ... | ... | ... |

## Next Steps
1. [ ] [Azione immediata]
2. [ ] [Azione a breve]
3. [ ] [Azione a lungo termine]

## Comandi Consigliati
- `/bugs [path]` - Per analisi piu approfondita dei bug
- `/arch-review [path]` - Per review architetturale dettagliata
- `/write-plan` - Per pianificare i refactoring
```

## Avvia Analisi

Inizia con la Fase 1: Inventory. Esplora la codebase target e presenta i risultati.
