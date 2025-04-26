# Backend (Node.js/Express + PostgreSQL)

## Features
- User accounts & authentication (coming soon)
- Quest/task management (CRUD, demo in-memory)
- Loot, XP, gold, and RPG economy endpoints
- Mystery box event system (random rewards)
- Inventory API
- AI quest suggestion endpoint (stretch goal)

## Quickstart
1. `cd backend`
2. `npm install`
3. `npm run dev`

### API Endpoints
- `GET /api/quests` — List quests
- `POST /api/quests/:id/complete` — Complete quest (with mystery box chance)
- `GET /api/inventory` — Get inventory
- `POST /api/mystery` — Open a mystery box

---

See main README for project overview.