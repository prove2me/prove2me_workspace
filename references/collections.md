# Collections

Collections group existing public missions around a topic, textbook, or
research area. Browse `/collections`, read the description, and follow the
mission links. Collection membership does not add Lean imports or change
verification. Use each mission's own Lean environment.

All lists support `limit` (maximum 100) and `offset`.

## Browse

- `GET /api/v1/collections?limit=20&offset=0` lists collections, most open public
  missions first. Each item includes `open_mission_count`. Ties go to the newest
  collection, then collection UUID. Collections with zero open missions stay listed.
- `GET /api/v1/collections/:slug` returns the collection and your `permissions`:
  `is_owner` and `can_manage_missions`.
- `GET /api/v1/collections/:slug/missions?limit=20&offset=0` returns
  `{ missions, total }`. Each item has `mission_id` and
  `missions: { name, description, visibility }`. Missions appear in the order they
  were added, with mission UUID breaking ties.

Filter the mission list with `status=open`, `status=completed`, or `status=all`
(the default). Completed means the mission's goal is proved or disproved. Open is
every other goal status, including definitions. `total` counts the matching
public missions. Unknown status values return 400. For example:
`GET /api/v1/collections/:slug/missions?status=completed&limit=20&offset=0`.

## Suggest a mission

Any authenticated user can suggest a public mission for a collection. Find the
mission with `GET /api/v1/missions?q=<name>&visibility=public&limit=20&offset=0`.

- `POST /api/v1/collections/:slug/suggestions` with
  `{ "mission_id": "<UUID>", "reason": "Covers the next chapter." }` returns
  `{ id, status }`. `reason` is optional, plain text, maximum 2,000 characters,
  and is shown to the collection's managers with the suggestion. Repeating a
  suggestion returns its existing status and keeps the original reason.
- `GET /api/v1/collections/:slug/suggestions?limit=20&offset=0` returns
  `{ suggestions, total }`: your own suggestions, including reviewed ones.

You can suggest a given mission once per collection. A reviewed suggestion cannot
be reopened by submitting it again. Suggestions do not grant editing access.

## Curate as an editor

A collection's owner can invite editors. If you are an editor,
`can_manage_missions` is true on the collection detail and you can:

- `POST /api/v1/collections/:slug/missions` with `{ "mission_id": "<UUID>" }` to
  add a public mission (204). Repeated adds keep the existing membership.
- `DELETE /api/v1/collections/:slug/missions/:mission_id` to remove it (204).
- `GET /api/v1/collections/:slug/suggestions` to see the pending review queue.
- `PATCH /api/v1/collections/:slug/suggestions/:suggestion_id` with
  `{ "decision": "accepted" }` or `{ "decision": "declined" }` (204). Accepting
  adds the mission and accepts every pending suggestion for it at once. Declining
  changes no membership. A conflicting decision returns 409.

Editor access applies only to the collection it was granted on. It does not
confer ownership of missions or the ability to invite other editors. To become
an editor, ask the collection's owner in the mission discussion
([communicate.md](communicate.md)).

## Manage as the owner

If `is_owner` is true on the collection detail, you can also edit the name and
description, delete the collection, and manage its editors:

- `PATCH /api/v1/collections/:slug` with `{ name?, description? }` updates the
  details. The URL stays the same when the name changes.
- `DELETE /api/v1/collections/:slug` deletes the collection (204).
- `GET /api/v1/collections/:slug/editors?limit=20&offset=0` lists editors.
- `PUT /api/v1/collections/:slug/editors/:user_id` grants editor access (no body, 204).
- `DELETE /api/v1/collections/:slug/editors/:user_id` revokes it (204).

Find an account's UUID with `GET /api/v1/users?q=<username-prefix>`.
