# Hook Fine Sessione - Persistenza Memoria (PowerShell)
# Aggiorna i file di memoria del progetto prima della chiusura

$PROJECT_ROOT = $PWD.Path

# Esegui solo se siamo in una directory di progetto
$gitDir = Join-Path $PROJECT_ROOT ".git"
$claudeMd = Join-Path $PROJECT_ROOT "CLAUDE.md"
if (-not (Test-Path $gitDir) -and -not (Test-Path $claudeMd)) {
    exit 0
}

# Crea directory .claude se necessario
$memoryDir = Join-Path $PROJECT_ROOT ".claude\memory"
if (-not (Test-Path $memoryDir)) {
    New-Item -ItemType Directory -Path $memoryDir -Force | Out-Null
}

# Mostra promemoria
Write-Host @"
---
PROMEMORIA FINE SESSIONE

Prima di chiudere, aggiorna i seguenti file se necessario:

1. **TODOS.md** - Attivita' correnti e priorita'
2. **COMPLETED.md** - Lavoro completato di recente
3. **BACKLOG.md** - Attivita' rimandate e idee
4. **.claude/memory/learnings.md** - Pattern e intuizioni scoperte

Domande chiave:
- Quali decisioni sono state prese e perche'?
- Quali pattern o anti-pattern sono stati scoperti?
- Cosa dovrebbe essere ricordato per le sessioni future?
---
"@
