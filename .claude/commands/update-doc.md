# Update Project Google Doc

Aggiorna il Google Doc di progetto con il progress della sessione.

## Configurazione

```
Doc ID: 1jraxO9VfHwXHvl-RrOMCpuvmh3vGiCzfArLqFserekM
URL: https://docs.google.com/document/d/1jraxO9VfHwXHvl-RrOMCpuvmh3vGiCzfArLqFserekM/edit
Service Account: claude-docs-updater@sigonella.iam.gserviceaccount.com
Config: ~/.config/gdocs-config.json
Script: ~/.config/gdocs-update.py
Venv: ~/.config/gdocs-venv
```

## Progetti (Tab)

| Progetto | Tab ID | Path |
|----------|--------|------|
| sigonella | t.0 | ~/Documents/ClaudeCode/sigonella |
| speculum | t.6vspprsxbq5n | ~/Documents/ClaudeCode/speculum |
| contaspiccioli | t.mpdgi5hkh2u8 | ~/Documents/ClaudeCode/contaspiccioli |

## Formattazione

- **Titolo**: Inter Bold Uppercase 24pt
- **Sezioni principali**: Inter Bold 16pt (STATO DEL PROGETTO, DOMANDE)
- **Sottosezioni**: Inter Bold 13pt
- **Corpo**: Inter Regular 11pt
- **Bullet points**: per tutte le liste
- **Separatore**: ━━━━━ (linea continua)

## Struttura Documento

Ogni tab ha:

1. **TITOLO** + sottotitolo + tagline
2. **STATO DEL PROGETTO**
   - Cos'è [progetto]
   - Stack Tecnologico (bullet)
   - Funzionalità Implementate (bullet)
3. **DOMANDE PER LO SVILUPPO**
   - Sezioni tematiche
   - Ogni sezione ha bullet point con domande

## Come Usare

### Aggiornamento rapido (solo timestamp)
```bash
source ~/.config/gdocs-venv/bin/activate
python3 ~/.config/gdocs-update.py sigonella "Testo del progress"
```

### Riscrittura completa
Usa lo script Python inline con tutto il contenuto (vedi sessione precedente).

### Lista progetti
```bash
python3 ~/.config/gdocs-update.py --list
```

## Quando Usare

- Fine sessione di lavoro su un progetto
- Dopo aver completato feature significative
- Quando cambia lo stato del progetto
- Su richiesta esplicita dell'utente

## File Correlati

- `~/.config/gdocs-config.json` — Configurazione completa
- `~/.config/gdocs-credentials.json` — Credenziali Service Account
- `~/.config/gdocs-update.py` — Script di aggiornamento
- `~/.config/gdocs-venv/` — Virtual environment Python
