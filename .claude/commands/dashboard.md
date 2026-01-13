# Dashboard Update

Aggiorna Claude Compass rilevando automaticamente comandi, skill, agenti e plugin.

## Workflow

1. **Rileva** la configurazione utente in `~/.claude/`:
   - `commands/` - Comandi utente
   - `skills/` - Skill personalizzate
   - `agents/` - Agenti specializzati
   - `plugins/` - Plugin installati

2. **Genera** HTML aggiornato basato su `PROMPT_TEMPLATE.md`

3. **Copia** in `~/.claude/index.html` per uso locale

4. **Aggiorna** il repo se eseguito dalla cartella claude-compass

## Esecuzione

```
/dashboard
```

## Istruzioni per Claude

Quando l'utente esegue `/dashboard`:

1. Usa l'agente Explore per analizzare `~/.claude/`:
   - Lista tutti i file `.md` in `commands/`
   - Lista tutti i file `.md` in `skills/`
   - Lista tutti i file in `agents/`
   - Identifica plugin da `settings.json`

2. Per ogni comando/skill trovato, estrai:
   - Nome (dal filename senza estensione)
   - Descrizione (prima riga del file o commento)
   - Tipo (user/plugin/builtin)

3. Leggi `PROMPT_TEMPLATE.md` dal repo claude-compass

4. Genera il nuovo `index.html` seguendo il template

5. Copia il file:
   - Sempre in `~/.claude/index.html`
   - Se in repo claude-compass, anche in `./index.html`

6. Conferma all'utente cosa e stato aggiornato
