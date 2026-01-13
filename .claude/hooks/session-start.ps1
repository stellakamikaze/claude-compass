# Hook Avvio Sessione - Caricamento Memoria (PowerShell)
# Carica il contesto del progetto all'avvio della sessione

$PROJECT_ROOT = $PWD.Path

# Controlla note progetto beads
$NOTES_FILE = Join-Path $PROJECT_ROOT ".beads\project-notes.json"
if (Test-Path $NOTES_FILE) {
    Write-Host "---"
    Write-Host "[STATO DEL PROGETTO]:"
    try {
        $notes = Get-Content $NOTES_FILE -Encoding UTF8 | ConvertFrom-Json
        if ($notes.state_of_art.content) {
            Write-Host $notes.state_of_art.content
        }
        Write-Host ""
        Write-Host "[DOMANDE DI SVILUPPO]:"
        if ($notes.questions) {
            foreach ($q in $notes.questions) {
                Write-Host "[$($q.category)] $($q.question)"
                Write-Host "   -> $($q.answer ?? 'Senza risposta')"
            }
        }
    } catch {
        Write-Host "(Errore nel parsing del JSON)"
    }
    Write-Host "---"
}

# Controlla TODOS.md
$TODOS_FILE = Join-Path $PROJECT_ROOT "TODOS.md"
if (Test-Path $TODOS_FILE) {
    Write-Host "---"
    Write-Host "ATTIVITA' IN CORSO:"
    Get-Content $TODOS_FILE -Encoding UTF8 | Select-Object -First 50
    Write-Host "---"
}

# Controlla learnings
$LEARNINGS_FILE = Join-Path $PROJECT_ROOT ".claude\memory\learnings.md"
if (Test-Path $LEARNINGS_FILE) {
    Write-Host "---"
    Write-Host "APPRENDIMENTI SESSIONE:"
    Get-Content $LEARNINGS_FILE -Encoding UTF8 | Select-Object -Last 30
    Write-Host "---"
}
