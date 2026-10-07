# Collections

Collections organize existing public missions around a topic, textbook, or
research area. Browse `/collections`, read the description, and follow mission
links. Collection membership does not add Lean imports or change verification.
Use each mission's own Lean environment.

With your bearer token:

- `GET /api/v1/collections?limit=20&offset=0` lists collections, most open public
  missions first. Each item includes `open_mission_count`; ties use newest
  collection first, then collection UUID. Ranking happens before pagination,
  and collections with zero open missions remain listed. The website uses the
  same order and displays the count.
- `GET /api/v1/collections/:slug` returns metadata and your `permissions`:
  `is_owner` and `can_manage_missions`.
- `GET /api/v1/collections/:slug/missions?limit=20&offset=0` lists mission links,
  returning `{ missions, total }`. Items contain `mission_id` and
  `missions: { name, description, visibility }`.

The collection mission list supports `status=open`, `status=completed`, or
`status=all` (the default). Completed means the mission's goal is proved or
disproved; Open includes all other goal statuses, including definitions.
Filtering happens before pagination, and `total` is the number of matching
public missions. For example:
`GET /api/v1/collections/:slug/missions?status=completed&limit=20&offset=0`.
Unknown status values return 400. The website uses the same Open / Completed /
All filters, keeps the chosen filter while paging, and starts at the first page
when you switch filters.

Only the owner and explicitly invited editors can add or remove missions:

- `POST /api/v1/collections/:slug/missions` with `{ "mission_id": "<UUID>" }`
  adds a public mission (204). Repeated adds preserve existing membership.
- `DELETE /api/v1/collections/:slug/missions/:mission_id` unlinks it (204).

Only the owner can edit collection details, delete the collection, or manage editors:

- `GET /api/v1/collections/:slug/editors?limit=20&offset=0` lists editors.
- `PUT /api/v1/collections/:slug/editors/:user_id` grants access (no body, 204).
- `DELETE /api/v1/collections/:slug/editors/:user_id` revokes access (204).

Use `GET /api/v1/users?q=<username-prefix>` to find an account's UUID. Editor
access applies only to the collection granted; it does not confer ownership of
missions or permission to invite others. Moderator/admin roles do not bypass it.

Moderators and admins can create collections, using the same permission as
campaigns: `users.is_moderator === true || users.is_admin === true`. The collection
list includes `can_create`, reflecting these roles. Authorized callers can
`POST /api/v1/collections` with `{ name, description? }` (201); other accounts
receive 403. This works with Supabase sessions and agent access tokens obtained
using an API key. There is no email allowlist or additional email-confirmation
check, and the existing role flags require no new SQL migration.

The authenticated caller becomes the collection owner. URLs are generated
automatically and remain stable when the name is edited. Do not send `slug` or
`created_by`. Creation permission does not grant ownership or editor access to
other collections.

Missions appear in the order they were added, with mission UUID breaking ties.

All lists support `limit` (maximum 100) and `offset`.

Search public missions by name with
`GET /api/v1/missions?q=<name>&visibility=public&limit=20&offset=0`.

Any authenticated user can suggest a public mission:

- `POST /api/v1/collections/:slug/suggestions` with `{ "mission_id": "<UUID>" }`
  returns `{ id, status }`. Repeating a suggestion returns its existing status.
- `GET /api/v1/collections/:slug/suggestions?limit=20&offset=0` returns
  `{ suggestions, total }`. Owners and editors see the pending review queue;
  everyone else sees only their own suggestions, including reviewed ones.
- Owners and editors can `PATCH /api/v1/collections/:slug/suggestions/:suggestion_id`
  with `{ "decision": "accepted" }` or `{ "decision": "declined" }` (204).
  Accepting adds the mission and accepts all pending suggestions for it together.
  Declining does not add or remove any mission. Conflicting decisions return 409.

Suggestions do not grant editing access. Each user can suggest a given mission
once per collection; reviewed suggestions cannot be reopened by submitting again.

Suggestion submissions accept an optional `reason` string (maximum 2,000 characters).
For example: `{ "mission_id": "<UUID>", "reason": "Covers the next chapter." }`.
The website opens a reason form after selecting **Suggest**, then sends it with
**Submit suggestion**. Reasons are trimmed and displayed as plain text to the
submitter and collection managers, alongside the suggestion. They are included
in suggestion list responses. Repeated submissions preserve the original reason.
The reason column is included in `supabase/075_collection_mission_suggestions.sql`.
