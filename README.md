# Claude Code Dashboard

Dashboard HTML interattiva per visualizzare e navigare i comandi di Claude Code. Si apre automaticamente all'avvio di ogni sessione.

## Funzionalita

- **Categorie organizzate**: Workflow, Planning, Quality, Session, Tools
- **Filtri per tipo**: Built-in, Utente, Plugin, Workflow
- **Accordion espandibili**: click per vedere dettagli di ogni comando
- **Legenda badge**: spiega la provenienza di ogni comando
- **Design dark mode**: tema scuro professionale

## Installazione

### Windows

1. Copia `dashboard.html` in `%USERPROFILE%\.claude\`
2. Aggiungi questo hook a `%USERPROFILE%\.claude\settings.json`:

```json
{
  "hooks": {
    "SessionStart": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "start \"\" \"%USERPROFILE%\\.claude\\dashboard.html\" 2>nul || exit /b 0"
          }
        ]
      }
    ]
  }
}
```

### macOS / Linux

1. Copia `dashboard.html` in `~/.claude/`
2. Aggiungi questo hook a `~/.claude/settings.json`:

```json
{
  "hooks": {
    "SessionStart": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "open ~/.claude/dashboard.html 2>/dev/null || true"
          }
        ]
      }
    ]
  }
}
```

**Nota per Linux**: sostituisci `open` con `xdg-open`:
```json
"command": "xdg-open ~/.claude/dashboard.html 2>/dev/null || true"
```

## Personalizzazione

### Aggiungere un comando

Aggiungi un `.cmd-item` nella categoria appropriata:

```html
<div class="cmd-item" data-source="user">
    <div class="cmd-header" onclick="toggleCmd(this)">
        <div class="cmd-left">
            <span class="cmd-name">/mio-comando</span>
            <span class="cmd-brief">Breve descrizione</span>
        </div>
        <div class="cmd-badges">
            <span class="badge user">utente</span>
            <span class="cmd-arrow">&#9662;</span>
        </div>
    </div>
    <div class="cmd-content">
        <p>Descrizione dettagliata del comando.</p>
        <div class="cmd-example">/mio-comando argomento</div>
    </div>
</div>
```

### Tipi di badge (data-source)

| Valore | Colore | Significato |
|--------|--------|-------------|
| `builtin` | Blu | Comandi nativi di Claude Code |
| `user` | Verde | Comandi in `~/.claude/commands/` |
| `plugin` | Viola | Comandi da plugin |
| `workflow` | Rosa | Comandi che orchestrano altri comandi |

### Aggiungere una categoria

```html
<div class="category mia-categoria">
    <div class="category-header">
        <div class="category-icon">M</div>
        <div>
            <div class="category-title">Mia Categoria</div>
            <div class="category-subtitle">Descrizione</div>
        </div>
    </div>
    <div class="category-body">
        <!-- comandi qui -->
    </div>
</div>
```

Aggiungi il colore in CSS:
```css
.category.mia-categoria .category-icon {
    background: rgba(255, 100, 100, 0.15);
    color: #ff6464;
}
```

### Modificare i colori del tema

Tutte le variabili colore sono in `:root` nel CSS:

```css
:root {
    --bg-0: #09090b;      /* Background principale */
    --accent-cyan: #22d3ee; /* Nomi comandi */
    /* ... */
}
```

## Struttura file

```
claude-code-dashboard/
  dashboard.html     # Dashboard principale
  README.md          # Questa documentazione
  PROMPT_TEMPLATE.md # Template per generare dashboard personalizzate
```

## Comandi inclusi

### Workflow (orchestrano altri comandi)
- `/progetto` - Nuovo progetto completo
- `/feature` - Sviluppo feature con review
- `/review-completa` - Review multi-agente
- `/codebase-review` - Revisione codebase esistente
- `/fine-sessione` - Chiusura sessione pulita
- `/debug` - Debug rapido

### Planning
- `/discovery` - Raccolta requisiti
- `/scope` - Definizione scope tecnico
- `/write-plan` - Piano implementazione

### Quality
- `/bugs` - Bug hunting
- `/arch-review` - Review architettura
- `/perf-check` - Analisi performance
- `/arewedone` - Verifica completezza
- `/ui-review` - Review UI/UX

### Session
- `/handoff` - Passaggio consegne
- `/update-doc` - Aggiorna documentazione
- `/creative` - Modalita creativa
- `/code` - Modalita codice
- `/log-error` - Registra errore
- `/log-success` - Registra successo

### Tools
- `/commit` - Commit intelligente (plugin)
- `/worktree` - Crea git worktree
- `/help`, `/clear`, `/compact` - Built-in
- `/review-pr` - Review PR (plugin)

## Differenze Windows vs Mac/Linux

| Operazione | Windows | Mac/Linux |
|------------|---------|-----------|
| Path home | `%USERPROFILE%` | `~` o `$HOME` |
| Apri file | `start ""` | `open` (Mac) / `xdg-open` (Linux) |
| Redirect stderr | `2>nul` | `2>/dev/null` |
| Fallback errore | `\|\| exit /b 0` | `\|\| true` |
| Python 3 | `py -3` | `python3` |

## License

MIT
