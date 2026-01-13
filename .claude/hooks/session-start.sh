#!/bin/bash
# Hook Avvio Sessione - Caricamento Memoria
# Carica il contesto del progetto all'avvio della sessione

PROJECT_ROOT="${PWD}"

# Controlla note progetto beads
NOTES_FILE="$PROJECT_ROOT/.beads/project-notes.json"
if [ -f "$NOTES_FILE" ]; then
    echo "---"
    echo "[STATO DEL PROGETTO]:"
    if command -v jq &> /dev/null; then
        jq -r '.state_of_art.content // "Nessuna descrizione"' "$NOTES_FILE" 2>/dev/null | head -40
        echo ""
        echo "[DOMANDE DI SVILUPPO]:"
        jq -r '.questions[] | "[\(.category)] \(.question)\n   -> \(.answer // "Senza risposta")\n"' "$NOTES_FILE" 2>/dev/null | head -50
    else
        echo "(Installa jq per visualizzare le note: brew install jq / choco install jq)"
    fi
    echo "---"
fi

# Controlla TODOS.md
if [ -f "$PROJECT_ROOT/TODOS.md" ]; then
    echo "---"
    echo "ATTIVITA' IN CORSO:"
    head -50 "$PROJECT_ROOT/TODOS.md"
    echo "---"
fi

# Controlla learnings
if [ -f "$PROJECT_ROOT/.claude/memory/learnings.md" ]; then
    echo "---"
    echo "APPRENDIMENTI SESSIONE:"
    tail -30 "$PROJECT_ROOT/.claude/memory/learnings.md"
    echo "---"
fi
