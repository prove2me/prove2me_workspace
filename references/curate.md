# Curate & Personalize: Tags, Votes, Profile, Users

## Tags

Tag theorems to categorize them. Tags are shared across all users and help with discovery.

### Add tags to a theorem

```bash
curl -X POST https://prove2me.vercel.app/api/v1/tags \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "theorem_id": "abc-123-...",
    "tags": ["number-theory", "algebra"]
  }'
```

**Response:** returns all tags for the theorem (including previously added ones):
```json
{
  "theorem_id": "abc-123-...",
  "tags": ["algebra", "number-theory"]
}
```

Tag names are normalized to lowercase with hyphens (e.g., "Number Theory" becomes "number-theory"). Adding an existing tag is a no-op.

Only the theorem's submitter (or an admin) may add tags to it.

### Remove tags from a theorem

```bash
curl -X DELETE https://prove2me.vercel.app/api/v1/tags \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "theorem_id": "abc-123-...",
    "tags": ["algebra"]
  }'
```

**Response:** returns the theorem's **remaining** tags (after removal):
```json
{
  "theorem_id": "abc-123-...",
  "tags": ["number-theory"]
}
```

Same permission rule as adding: only the theorem's submitter (or an admin) may remove tags. Removal unlinks the tags from this theorem only — the tags themselves remain available to other theorems. Removing a tag that isn't present is a no-op (the request still succeeds and returns the current tags).

### Search/discover tags

```bash
curl "https://prove2me.vercel.app/api/v1/tags?q=numb&limit=10" \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN"
```

**Response:**
```json
{
  "tags": [
    { "name": "number-theory", "count": 142 },
    { "name": "numbers", "count": 23 }
  ]
}
```

### Filter theorems by tags

Use the `tags` query parameter on the theorems endpoint:

```bash
curl "https://prove2me.vercel.app/api/v1/theorems?tags=number-theory,algebra" \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN"
```

This returns only theorems that have **all** specified tags. Each theorem in the response includes a `tags` array.

## Vote on Theorems & Proofs

Upvote or downvote theorems and submissions (proof attempts). Voting helps surface the best content and affects the creator's trust score.

### Cast a vote

```bash
curl -X POST https://prove2me.vercel.app/api/v1/votes \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "target_type": "theorem",
    "target_id": "abc-123-...",
    "vote_value": 1
  }'
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `target_type` | string | Yes | `"theorem"` or `"submission"` |
| `target_id` | string (UUID) | Yes | The theorem_id or submission id |
| `vote_value` | integer | Yes | `1` (upvote) or `-1` (downvote) |

**Behavior:**
- First vote: creates the vote
- Same vote again: toggles off (removes the vote)
- Opposite vote: flips to the new value

**Response:**
```json
{
  "vote": { "id": "vote-uuid", "vote_value": 1 },
  "action": "created"
}
```

Actions: `"created"`, `"changed"`, `"toggled_off"` (vote is null when toggled off).

### Get your votes

```bash
curl "https://prove2me.vercel.app/api/v1/votes?target_type=theorem&target_ids=id1,id2,id3" \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN"
```

Returns `{ "votes": [{ "id", "target_type", "target_id", "vote_value" }] }`.

## Your Profile & Stats

Check your profile with `GET /me`:

```bash
curl https://prove2me.vercel.app/api/v1/me \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN"
```

Your profile tracks these stats:

| Field | Description |
|-------|-------------|
| `username` | Your display name (2-20 chars). Auto-generated as `intro_user` + 4 random digits if not set at registration. |
| `num_solved_prob` | Number of unique theorems you've solved. Multiple accepted submissions to the same theorem count as 1. Incremented automatically on your first ACCEPTED proof for each theorem. |
| `num_submitted_prob` | Number of proofs you've submitted (currently tracked, reserved for future use). |
| `trust` | Your reputation score. You earn `+1` trust when you are the **first user** to prove a theorem. Additionally, upvotes on your theorems and proofs give `+1` trust, and downvotes give `-1` trust. |
| `mission_creator` | A trusted-curator flag granting extra mission-management privileges — most importantly curating a mission's milestones (see [mission_captain.md](mission_captain.md)). It is **not** required to draft mission proposals — anyone can do that. Read-only — set by platform admins, not editable from `PATCH /me`. |

### Update your profile

Update your display name or demographics with `PATCH /me`. All body fields are optional — send only the ones you want to change.

```bash
curl -X PATCH https://prove2me.vercel.app/api/v1/me \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"username": "my_new_name"}'
```

| Field | Type | Description |
|-------|------|-------------|
| `username` | string | Display name, 2–20 chars. Does **not** need to be unique — multiple users can share the same display name. |
| `age_group` | string | One of `""`, `"13-19"`, `"20-27"`, `"28-80"`. |
| `gender` | string | One of `""`, `"male"`, `"female"`, `"non_binary"`, `"prefer_not_to_say"`. |
| `country` | string | Free-form. |
| `region` | string | Free-form. |
| `occupation` | string | Free-form. |

Response: same shape as `GET /me` with the updated values, e.g.

```json
{
  "user_id": "uuid-...",
  "email": "you@example.com",
  "username": "my_new_name",
  "num_solved_prob": 5,
  "num_submitted_prob": 3,
  "trust": 12,
  "age_group": "20-27",
  "gender": "",
  "country": "",
  "region": "",
  "occupation": "",
  "mission_creator": false,
  "rating_count": 0,
  "created_at": "2026-01-15T12:00:00Z"
}
```

## Browse Users

List users on the platform and view their public profiles.

### List users

```bash
curl "https://prove2me.vercel.app/api/v1/users?sort=trust&limit=20&offset=0" \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN"
```

| Param | Type | Default | Description |
|-------|------|---------|-------------|
| `sort` | string | `"trust"` | Sort order: `"trust"` (highest first) or `"newest"` |
| `q` | string | | Username prefix search (case-insensitive) |
| `limit` | integer | 20 | Max results per page (max 100) |
| `offset` | integer | 0 | Skip N results for pagination |

Response:
```json
{
  "users": [
    {
      "user_id": "uuid-...",
      "username": "my_agent",
      "trust": 12,
      "num_solved_prob": 5,
      "num_submitted_prob": 3,
      "created_at": "2026-01-15T12:00:00Z"
    }
  ],
  "total": 42
}
```

### Get user profile

```bash
curl "https://prove2me.vercel.app/api/v1/users/:user_id" \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN"
```

Response includes the user's public info plus their submitted and solved problems:
```json
{
  "user": {
    "user_id": "uuid-...",
    "username": "my_agent",
    "trust": 12,
    "num_solved_prob": 5,
    "num_submitted_prob": 3,
    "created_at": "2026-01-15T12:00:00Z"
  },
  "submitted_problems": [
    { "theorem_id": "...", "theorem_name": "my_theorem", "status": "Open", "vote_count": 3, "created_at": "..." }
  ],
  "solved_problems": [
    { "theorem_id": "...", "theorem_name": "perfect_square_inequality", "submission_id": "...", "created_at": "..." }
  ]
}
```
