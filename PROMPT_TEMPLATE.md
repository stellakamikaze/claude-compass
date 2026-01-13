# Template - Genera Claude Compass Personalizzato

Usa questo prompt con Claude per generare un Compass personalizzato basato sulla tua configurazione.

---

## Prompt da copiare

```
Genera un Claude Compass (index.html) personalizzato per la mia configurazione.

## Design System

Usa il design Minimalist Monochrome:
- Colori: solo #000000 (nero) e #FFFFFF (bianco)
- Font: Playfair Display (titoli), Source Serif 4 (body), JetBrains Mono (codice)
- Border-radius: 0px ovunque
- Transizioni: max 100ms
- Texture: noise + linee sottili

## Mia configurazione

### Comandi utente (~/.claude/commands/):
[Lista i tuoi file .md]

### Plugin installati:
[Lista plugin]

### Hook attivi:
[Lista hook]

## Output

Genera index.html completo con:
1. Landing page (hero, what, how, cta)
2. Dashboard comandi organizzati per categoria
3. Filtri funzionanti
4. Accordion per dettagli
```

---

## Struttura HTML Comando

```html
<div class="cmd" data-source="TIPO">
    <div class="cmd__header" tabindex="0" role="button" aria-expanded="false" onclick="toggleCmd(this)">
        <div class="cmd__left">
            <span class="cmd__name">/nome-comando</span>
            <span class="cmd__brief">Breve descrizione</span>
        </div>
        <div class="cmd__right">
            <span class="badge badge--TIPO">TIPO</span>
            <span class="cmd__arrow">&#9662;</span>
        </div>
    </div>
    <div class="cmd__content">
        <p>Descrizione dettagliata.</p>
        <div class="cmd__example">/nome-comando argomento</div>
    </div>
</div>
```

### Tipi (data-source e badge)

| Tipo | Classe badge | Descrizione |
|------|--------------|-------------|
| `workflow` | `badge--workflow` | Orchestrano altri comandi |
| `user` | `badge--user` | In ~/.claude/commands/ |
| `builtin` | `badge--builtin` | Nativi Claude Code |
| `plugin` | `badge--plugin` | Da plugin esterni |

---

## Struttura Categoria

```html
<div class="category">
    <div class="category__header">
        <div class="category__icon">X</div>
        <div class="category__info">
            <h3 class="category__title">Nome Categoria</h3>
            <p class="category__subtitle">Descrizione</p>
        </div>
    </div>
    <div class="category__body">
        <!-- comandi qui -->
    </div>
</div>
```

---

## CSS Variables (Design System)

```css
:root {
    --background: #FFFFFF;
    --foreground: #000000;
    --muted: #F5F5F5;
    --muted-foreground: #525252;
    --border: #000000;
    --border-light: #E5E5E5;
    --font-display: "Playfair Display", Georgia, serif;
    --font-body: "Source Serif 4", Georgia, serif;
    --font-mono: "JetBrains Mono", monospace;
}
```

---

## Categorie standard

| Icona | Categoria | Comandi tipici |
|-------|-----------|----------------|
| W | Workflow | progetto, feature, review-completa |
| P | Planning | discovery, scope, write-plan |
| Q | Quality | bugs, arch-review, perf-check |
| S | Session | handoff, creative, code |
| T | Tools | commit, worktree, help |

---

## Estrazione automatica

**Mac/Linux:**
```bash
ls -1 ~/.claude/commands/*.md 2>/dev/null | xargs -I {} basename {} .md
```

**Windows:**
```powershell
Get-ChildItem "$env:USERPROFILE\.claude\commands\*.md" | Select-Object -ExpandProperty BaseName
```

---

## Note

- Comandi **builtin**: help, clear, compact, init, doctor, config
- I workflow chiamano altri comandi in sequenza
- Mantieni accessibilita: tabindex, aria-expanded, focus-visible
