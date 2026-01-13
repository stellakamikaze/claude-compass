# Claude Compass

Orientati nel mondo di Claude Code.

Una guida interattiva ai comandi e workflow di Claude Code, pensata per chi usa il tool senza essere uno sviluppatore.

## Cos'e

Claude Compass e una **single-page HTML** che mostra:

- **Comandi** organizzati per categoria (Planning, Quality, Session, Tools)
- **Workflow** che orchestrano piu comandi in sequenza
- **Filtri** per trovare rapidamente quello che cerchi
- **Esempi** di utilizzo per ogni comando

## Come usare

### 1. Scarica

Copia `index.html` nella tua cartella Claude Code:

**Windows:**
```powershell
copy index.html %USERPROFILE%\.claude\
```

**macOS / Linux:**
```bash
cp index.html ~/.claude/
```

### 2. Apri automaticamente (opzionale)

Aggiungi questo hook a `settings.json` per aprire Compass all'avvio:

**Windows** (`%USERPROFILE%\.claude\settings.json`):
```json
{
  "hooks": {
    "SessionStart": [{
      "matcher": "",
      "hooks": [{
        "type": "command",
        "command": "start \"\" \"%USERPROFILE%\\.claude\\index.html\" 2>nul || exit /b 0"
      }]
    }]
  }
}
```

**macOS** (`~/.claude/settings.json`):
```json
{
  "hooks": {
    "SessionStart": [{
      "matcher": "",
      "hooks": [{
        "type": "command",
        "command": "open ~/.claude/index.html 2>/dev/null || true"
      }]
    }]
  }
}
```

**Linux**: sostituisci `open` con `xdg-open`.

### 3. Esplora

Naviga i comandi per categoria o usa i filtri:

| Filtro | Cosa mostra |
|--------|-------------|
| **Tutti** | Tutti i comandi disponibili |
| **Workflow** | Comandi che orchestrano altri comandi |
| **Utente** | Comandi in `~/.claude/commands/` |
| **Built-in** | Comandi nativi di Claude Code |
| **Plugin** | Comandi da plugin esterni |

### 4. Prova

Copia il comando che ti interessa e incollalo nel terminale Claude Code.

### 5. Adatta

Personalizza Compass aggiungendo i tuoi comandi. Vedi `PROMPT_TEMPLATE.md` per il formato.

## Comandi inclusi

### Workflow (orchestrano altri comandi)

| Comando | Descrizione |
|---------|-------------|
| `/progetto` | Dall'idea al primo commit |
| `/feature` | Sviluppo feature con review |
| `/review-completa` | Review multi-agente |
| `/codebase-review` | Analisi codebase esistente |
| `/fine-sessione` | Chiusura sessione pulita |
| `/debug` | Trova e fixa bug rapido |

### Planning

| Comando | Descrizione |
|---------|-------------|
| `/discovery` | Raccolta requisiti strutturata |
| `/scope` | Definizione scope tecnico |
| `/write-plan` | Piano implementazione |

### Quality

| Comando | Descrizione |
|---------|-------------|
| `/bugs` | Bug hunting |
| `/arch-review` | Review architettura |
| `/perf-check` | Analisi performance |
| `/arewedone` | Verifica completezza |
| `/ui-review` | Review UI/UX |

### Session

| Comando | Descrizione |
|---------|-------------|
| `/handoff` | Passaggio consegne |
| `/creative` | Modalita brainstorming |
| `/code` | Modalita sviluppo |

### Tools

| Comando | Descrizione |
|---------|-------------|
| `/commit` | Commit intelligente |
| `/worktree` | Crea git worktree |
| `/help` | Aiuto Claude Code |

## File

```
claude-compass/
  index.html          # Compass (landing + dashboard)
  README.md           # Questa guida
  PROMPT_TEMPLATE.md  # Template per generare Compass custom
  LICENSE             # MIT
```

## Aggiornare Compass

Se hai la skill `/dashboard` installata:

```
/dashboard
```

Questo rileva automaticamente i tuoi comandi e aggiorna `index.html`.

## Differenze Windows vs Mac/Linux

| Operazione | Windows | Mac/Linux |
|------------|---------|-----------|
| Path home | `%USERPROFILE%` | `~` o `$HOME` |
| Apri file | `start ""` | `open` (Mac) / `xdg-open` (Linux) |

## License

MIT
