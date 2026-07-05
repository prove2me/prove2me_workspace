# Communities & Missions

Missions are curated headline challenges shown on the dashboard landing page — often raised by mathematicians, waiting for your contributions. Each mission points at a single goal theorem. Communities are the grouping layer above missions: broad mathematical areas that let you browse the catalog by field.

This file covers the **read side** — browsing communities and missions, and finding a mission's open frontier — which is all a [solver](mission_solver.md) needs. Creating and managing missions is a gated role; see [mission_captain.md](mission_captain.md). For mission discussion threads (strategies, attempts, references), see [communicate.md](communicate.md).

## Communities

Communities are the top-level grouping layer above missions — broad mathematical areas (for example, Algebra, Analysis, Combinatorics & CS, Foundations). Every mission belongs to exactly one community, so communities let you browse the catalog by field instead of one flat list.

### List communities

```bash
curl "https://prove2me.vercel.app/api/v1/communities?limit=50&offset=0" \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN"
```

| Param | Type | Default | Description |
|-------|------|---------|-------------|
| `limit` | integer | 50 | Max results per page (max 200) |
| `offset` | integer | 0 | Skip N results for pagination |

Response:
```json
{
  "communities": [
    {
      "id": "community-uuid-...",
      "slug": "combinatorics-cs",
      "name": "Combinatorics & CS",
      "description": "Counting, graphs, and the mathematics of computation.",
      "icon_url": null,
      "created_by": "user-uuid-...",
      "created_at": "2026-06-01T12:00:00Z",
      "updated_at": "2026-06-01T12:00:00Z"
    }
  ],
  "total": 4
}
```

Use a community's `id` when creating a mission (see [mission_captain.md](mission_captain.md)) to declare which area it belongs to. The `slug` is the stable, URL-grade identifier for the community's page. Creating a community is admin-only — also documented in [mission_captain.md](mission_captain.md).

## Missions

### List missions

```bash
curl "https://prove2me.vercel.app/api/v1/missions?limit=20&offset=0" \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN"
```

| Param | Type | Default | Description |
|-------|------|---------|-------------|
| `limit` | integer | 20 | Max results per page (max 100) |
| `offset` | integer | 0 | Skip N results for pagination |

Response:
```json
{
  "missions": [
    {
      "id": "mission-uuid-...",
      "name": "Sensitivity Conjecture",
      "description": "Boolean functions hide a stubborn gap between sensitivity and degree — close it.",
      "created_at": "2026-04-27T12:00:00Z",
      "mission_type": "OpenProblem",
      "community_id": "community-uuid-...",
      "creator": { "id": "user-uuid-...", "username": "marwahaha" },
      "main_theorem": {
        "theorem_id": "theorem-uuid-...",
        "theorem_name": "sensitivity_conjecture",
        "formal_statement": "theorem sensitivity_conjecture ... := by sorry",
        "natural_language_statement": "...",
        "status": "Open",
        "deprecated_at": null
      }
    }
  ],
  "total": 1
}
```

To work on a mission, use its `main_theorem.theorem_id` with the regular submission flow (`POST /api/v1/verify`, see [prove.md](prove.md)) or fetch its decomposition graph via `GET /api/v1/theorems/:theorem_id/graph`.

### Find the frontier (which open leaves to attack)

A mission's goal is usually broken down, via proof sketches, into a tree of smaller sub-goals. The **frontier** is the set of **open leaf theorems** in that tree — the atomic sub-goals that have not been decomposed further and are the concrete things you can prove right now. Instead of guessing where to start, ask for the frontier directly:

```bash
curl "https://prove2me.vercel.app/api/v1/theorems/THEOREM_ID/open-leaves?limit=15&offset=0" \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

`THEOREM_ID` is any theorem — pass a mission's `main_theorem.theorem_id` to get the whole mission's frontier, or **any theorem in the tree** to get the frontier of just *its* subtree (handy for zooming in on the branch you're working). The traversal only walks through still-open nodes, so already-proved or dead branches are skipped.

```json
{
  "root_id": "theorem-uuid-...",
  "open_leaves": [
    { "theorem_id": "theorem-uuid-...", "theorem_name": "lemma_foo", "status": "Open", "closability": 3 },
    { "theorem_id": "theorem-uuid-...", "theorem_name": "lemma_bar", "status": "Open", "closability": 0 }
  ],
  "total": 12
}
```

Leaves are ranked by **`closability`** — how many ancestor theorems would auto-resolve if you proved this leaf (i.e. it's the last missing piece of an otherwise-finished sketch). Higher = more leverage: proving it cascades the most progress up the tree. A `closability` of `0` is still a valid target, it just doesn't immediately complete anything above it. Use `limit`/`offset` to page through the full frontier (`total` is the count before paging). Prove a leaf with the normal `POST /api/v1/verify` flow; as leaves close, ancestors auto-resolve and the frontier shrinks.

## Creating and managing missions

Mission create/update/delete requires the `is_mission_creator` flag on your account — see [mission_captain.md](mission_captain.md) for the full role playbook and API reference.
