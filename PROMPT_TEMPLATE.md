# Template Prompt - Genera Dashboard Personalizzata

Usa questo prompt con Claude per generare una dashboard personalizzata basata sulla tua configurazione Claude Code.

---

## Prompt da copiare

```
Analizza la mia configurazione Claude Code e genera una dashboard HTML personalizzata.

## Informazioni da fornire

1. **Comandi utente** (~/.claude/commands/):
[Lista i tuoi file .md nella cartella commands]

2. **Plugin installati** (~/.claude/plugins/installed_plugins.json):
[Incolla il contenuto del file o lista i plugin]

3. **Hook attivi** (~/.claude/settings.json):
[Incolla la sezione "hooks" del tuo settings.json]

4. **CLAUDE.md globale** (~/.claude/CLAUDE.md):
[Incolla le sezioni rilevanti, specialmente workflow e comandi personalizzati]

## Output richiesto

Genera un file dashboard.html con:
- Tutti i miei comandi organizzati per categoria
- Badge corretti (user/plugin/builtin/workflow)
- Descrizioni estratte dai file .md dei comandi
- Hook attivi mostrati nel footer
- Conteggi aggiornati nei filtri

## Formato comando

Per ogni comando includi:
- Nome: /nome-comando
- Tipo: user | plugin | builtin | workflow
- Categoria: Planning | Quality | Session | Tools | Workflow
- Breve: max 30 caratteri
- Dettaglio: cosa fa, fasi se workflow
- Esempio: uso tipico
```

---

## Esempio di risposta

Fornendo questo input:

```
Comandi utente:
- discovery.md
- scope.md
- bugs.md

Plugin:
- commit-commands
- playwright

Hook:
- SessionStart: apre dashboard
- Stop: salva handoff
```

Claude generera una dashboard con:
- 3 comandi utente (discovery, scope, bugs)
- Comandi del plugin commit-commands (/commit, /commit-push-pr)
- Footer: "Hook attivi: dashboard auto-open, handoff auto-save"

---

## Estrazione automatica

Su Mac/Linux, puoi estrarre automaticamente le info:

```bash
# Lista comandi utente
ls -1 ~/.claude/commands/*.md 2>/dev/null | xargs -I {} basename {} .md

# Plugin installati
cat ~/.claude/plugins/installed_plugins.json | jq -r '.plugins | keys[]'

# Hook configurati
cat ~/.claude/settings.json | jq '.hooks | keys[]'
```

Su Windows (PowerShell):

```powershell
# Lista comandi utente
Get-ChildItem "$env:USERPROFILE\.claude\commands\*.md" | Select-Object -ExpandProperty BaseName

# Plugin installati
Get-Content "$env:USERPROFILE\.claude\plugins\installed_plugins.json" | ConvertFrom-Json | Select-Object -ExpandProperty plugins | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name

# Hook configurati (richiede parsing manuale del JSON)
Get-Content "$env:USERPROFILE\.claude\settings.json"
```

---

## Categorie suggerite

| Categoria | Comandi tipici |
|-----------|----------------|
| **Workflow** | Comandi che orchestrano altri comandi in sequenza |
| **Planning** | discovery, scope, write-plan |
| **Quality** | bugs, arch-review, perf-check, arewedone |
| **Session** | handoff, creative, code, log-error/success |
| **Tools** | commit, worktree, help, clear |

---

## Note

- I comandi **workflow** sono quelli che chiamano altri comandi / in sequenza
- I comandi **builtin** sono: help, clear, compact, init, doctor, config
- I comandi **plugin** vengono dai plugin in ~/.claude/plugins/
- I comandi **user** sono i .md in ~/.claude/commands/
