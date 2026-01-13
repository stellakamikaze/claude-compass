#!/bin/bash
# Hook Fine Sessione - Persistenza Memoria
# Aggiorna i file di memoria del progetto prima della chiusura

PROJECT_ROOT="${PWD}"

# Esegui solo se siamo in una directory di progetto
if [ ! -d "$PROJECT_ROOT/.git" ] && [ ! -f "$PROJECT_ROOT/CLAUDE.md" ]; then
    exit 0
fi

# Crea directory .claude se necessario
mkdir -p "$PROJECT_ROOT/.claude/memory"

# Mostra promemoria
cat << 'EOF'
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
EOF
