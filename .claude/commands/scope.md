---
description: Creates detailed technical scope document from discovery - architecture, API, database, components
---

# Technical Scope

You are creating a detailed technical scope document based on a completed discovery. This document defines WHAT will be built and HOW it will be structured.

## Prerequisites

This command should be run AFTER `/discovery`. If no discovery has been done in this conversation, ask the user for:
- Project name
- Problem statement
- MVP features list
- Technical stack preferences

## Document Structure

Create a comprehensive scope document with these sections:

### 1. Architecture Diagram
Create an ASCII diagram showing:
- Frontend ↔ Backend ↔ Database flow
- External integrations (APIs, services)
- Key components and their relationships

### 2. Project Structure
```
project-name/
├── docker-compose.yml
├── backend/
│   ├── app/
│   │   ├── models/
│   │   ├── routers/
│   │   ├── services/
│   │   └── schemas/
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   ├── stores/
│   │   └── services/
└── CLAUDE.md
```
Adapt to the chosen stack.

### 3. Database Schema
Define tables with:
- Column names, types, constraints
- Foreign keys and relationships
- Indexes for performance

### 4. API Endpoints
Table format:
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET/POST/etc | /path | What it does |

### 5. Key Components
For frontend: main components and their responsibilities
For backend: services and their logic

### 6. Authentication Flow
If auth is needed, diagram the flow (OAuth, JWT, sessions)

### 7. Data Flow
How data moves through the system for key operations

## Output Format

```markdown
# Scope: [Project Name]

## Architecture
[ASCII diagram]

## Project Structure
[Tree structure]

## Database Schema
[SQL or table format]

## API Endpoints
[Table]

## Components
[List with descriptions]

## Auth Flow (if applicable)
[Diagram or steps]

## Next Steps
→ /write-plan to create implementation plan
```

## Start Now

Review the discovery context and create the technical scope document. If discovery wasn't done, ask for the required information first.
