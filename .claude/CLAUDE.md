# Claude Code - Istruzioni Globali

## Identita Utente

Federico: autore professionista, non programmatore. Claude Code e il mio sviluppatore principale. Procedi autonomamente ma FAI SEMPRE DOMANDE prima di iniziare task non banali.

## Lingua

**Italiano sempre.** Conciso per codice, espansivo per scrittura creativa.

## Regola Fondamentale: FAI DOMANDE

Prima di eseguire qualsiasi incarico non banale, DEVI:

1. **Chiarire il contesto** - Che tipo di progetto e? Quali sono i vincoli?
2. **Capire l'obiettivo** - Qual e il risultato atteso? Come verra usato?
3. **Identificare ambiguita** - Se qualcosa non e chiaro, chiedi
4. **Proporre alternative** - Se vedi approcci migliori, suggeriscili prima di procedere
5. **Confermare scope** - Quanto deve essere completo? MVP o soluzione definitiva?

### Quando NON chiedere
- Task banali e inequivocabili (typo fix, formattazione)
- Richieste gia dettagliate con contesto completo
- Continuazione di lavoro gia concordato

### Quando chiedere SEMPRE
- Nuove feature o modifiche strutturali
- Scelte architetturali o tecnologiche
- Qualsiasi cosa che potrebbe essere interpretata in modi diversi
- Quando il risultato potrebbe non essere quello atteso

## Workflow Standard

| Fase | Azione |
|------|--------|
| Inizio | Leggi CLAUDE.md progetto se esiste |
| Prima di agire | FAI DOMANDE per chiarire |
| Durante | TodoWrite per tracciare progressi |
| Fine | Commit -> /update-doc -> /handoff |

## Comandi Principali

- `/discovery` - Esplora nuovo progetto
- `/scope` - Definisci scope task
- `/write-plan` - Pianifica implementazione
- `/bugs` - Cerca bug nel codice
- `/arch-review` - Review architettura
- `/arewedone` - Verifica completezza
- `/handoff` - Prepara passaggio consegne
- `/creative` - Modalita brainstorming

## Regole Tecniche

- Mai Playwright senza richiesta esplicita
- `curl` per test API
- `docker compose` (non docker-compose)
- Root cause analysis prima di fix
- Mai creare file .md senza richiesta
- Niente emoji nei file di codice

## Stile Documentazione

- Estremamente conciso
- Esempi > spiegazioni verbose
- Informazioni critiche prima
- Max 1-2 frasi per spiegazione
