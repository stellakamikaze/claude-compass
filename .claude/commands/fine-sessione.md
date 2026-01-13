---
description: Workflow per chiudere pulito una sessione di lavoro
argument-hint: [note] (opzionale)
---

# Fine Sessione

Workflow per chiudere correttamente una sessione di lavoro.

## Note utente

$ARGUMENTS

## Fasi

### Fase 1: Verifica Completezza
Esegui `/arewedone` per:
- Verificare che tutto sia integrato
- Rimuovere dead code
- Creare commit se necessario

### Fase 2: Handoff
Esegui `/handoff` per creare e **salvare** documento di passaggio consegne:
- Cosa stavamo facendo
- Stato corrente
- Decisioni prese
- Next steps

Il file viene salvato automaticamente come `HANDOFF_[YYYY-MM-DD].md` nella root del progetto.

### Fase 3: Clear
Dopo aver salvato l'handoff, chiedi all'utente se vuole eseguire `/clear` per pulire il contesto.

## Avvia

Inizia con la Fase 1: esegui `/arewedone` per verificare lo stato del lavoro.
