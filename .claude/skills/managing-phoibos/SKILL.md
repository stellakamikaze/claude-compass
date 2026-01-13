---
name: managing-phoibos
description: Controls Phoibos news aggregator. Starts/stops services, refreshes AI summaries, checks status. Triggers when working with Phoibos or news aggregation.
---

# Phoibos Management

News aggregator with AI editorial synthesis (Ollama + mistral:7b-instruct).

## Location

```
~/Documents/ClaudeCode/Phoibos
```

## Quick Start

```bash
# 1. Start infrastructure
colima start --cpu 4 --memory 6 --disk 80
brew services start ollama

# 2. Start Phoibos
cd ~/Documents/ClaudeCode/Phoibos && docker compose up -d --build

# 3. Open
open http://localhost:8000
```

## Commands

```bash
# Refresh news
curl -X POST http://localhost:8000/api/admin/refresh

# Status
curl -s http://localhost:8000/api/admin/status

# Logs
docker logs phoibos --tail 50

# Stop
docker compose -f ~/Documents/ClaudeCode/Phoibos/docker-compose.yml down
```

## Architecture

- **Backend**: FastAPI + SQLAlchemy + SQLite
- **Frontend**: Jinja2 + HTMX + TailwindCSS
- **LLM**: Ollama native (GPU Metal)
