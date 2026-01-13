---
name: running-docker
description: Manages Docker containers on macOS using Colima. Handles docker compose, container logs, and troubleshooting. Triggers when working with Docker, containers, or compose files.
---

# Docker Development (Colima)

## Quick Start

```bash
# Start Docker environment
colima start --cpu 4 --memory 6 --disk 80

# Verify
docker info | head -5
```

## Common Operations

```bash
# Build and start
docker compose up -d --build

# Logs
docker compose logs -f [service]

# Stop
docker compose down

# Execute in container
docker exec -it <container> /bin/sh
```

## Host Access from Container

```yaml
services:
  app:
    environment:
      - SERVICE_URL=http://host.docker.internal:PORT
    extra_hosts:
      - "host.docker.internal:host-gateway"
```

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Cannot connect to Docker | `colima start` |
| Out of disk space | `docker system prune -a` |
| Slow performance | Increase Colima resources |
