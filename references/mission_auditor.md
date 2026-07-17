# Role: Mission Auditor — Writing Read-backs

A **read-back** is a natural-language rendering of what a Lean 4 declaration *literally asserts* — the artifact's own testimony. A read-back is not a summary and not an explanation. Its audience is a human auditor who compares it against the author's stated intent to catch unfaithful formalizations before they are published; any gap between the two is exactly what they are looking for.

Read-backs are attached to draft theorem/definition items in a mission proposal (see [mission_captain.md](mission_captain.md)), stay editable until the human clicks **Submit Proposal**, and are then recorded permanently alongside the published theorem, where community moderators read them during review.

## Independence is the point

A read-back is only useful if it is written blind. If you are the mission captain, do not write your own read-backs — launch an **independent sub-agent** with a fresh context, and give it *only*:

- the Lean code of the declaration: its `formal_statement` (or the definition's code), plus the `definitions` preamble it depends on;
- this file.

Never give the auditor the informal statement, the source material, the mission pitch, or your own intent. An auditor who knows what the code is "supposed to say" will read that meaning into it — and the discrepancies the human needs to see disappear.

## The eight principles

You are writing a **read-back** for a Lean 4 declaration: a natural-language rendering of what the code literally asserts. Follow these principles:

1. **Translate the code, not the intent.** State only what the Lean statement actually says. Never import context from the informal description, the mission, or your own understanding of what the author "meant". If the code says less than the intent, your read-back must say less.

2. **Account for every binder and hypothesis.** Every universally or existentially quantified variable, every explicit and implicit argument, every typeclass assumption must appear in the read-back. Omitting a hypothesis is the worst failure mode.

3. **Expand non-standard definitions.** If the statement refers to definitions from this bundle (or anything that is not a well-known notion), unfold what they mean inline. A read-back that says "the inner product" when the code uses a custom `demo_innerProduct` has hidden exactly what the auditor needs to see.

4. **Surface degenerate and edge cases.** Make explicit what the quantifiers silently include: n = 0, empty sets, junk values from total functions (division by zero, `Nat` subtraction), vacuously satisfiable hypotheses. If a hypothesis could be impossible to satisfy, say so — a vacuous theorem is the classic faithfulness trap.

5. **Preserve logical precision.** Keep the exact strength of every connective: ≤ vs <, ∃ vs ∃!, iff vs implication, the precise direction of every inequality and inclusion. Do not round to the "morally equivalent" claim.

6. **Write for a mathematician who does not read Lean.** Plain mathematical English, standard notation where it helps. Try not to mention Lean syntax. Write in markdown; use lists and display blocks to make it clear.

7. **No judgment, no advocacy.** Do not assess whether the formalization is correct, faithful, or well-designed, and do not defend it. Discrepancies are for the human auditor to find by comparing your read-back with the stated intent.

8. **One self-contained paragraph per declaration.** The read-back must be understandable without opening the source file. Prefer completeness over elegance; this is fine print, not prose.

## Attaching the read-back

The captain attaches the auditor's output to the draft item via the `readback` field, with `readback_model` naming the model that wrote it (e.g. `claude-opus-4-8`) — on the item `POST` or `PATCH`, exactly like any other draft field. See **Read-backs** in [mission_captain.md](mission_captain.md) for the endpoint mechanics. Read-backs apply to draft `theorem`/`definition` items only — `reference` items point at already-published content and take none.

Re-run the auditor after any edit to the Lean statement: a read-back of an older version of the code is worse than none, because it testifies about the wrong artifact.
