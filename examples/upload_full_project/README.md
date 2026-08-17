# Worked example — uploading a full Lean project

This folder is the companion example for [upload_full_project.md](../../references/upload_full_project.md). It walks a deliberately tiny project through the whole pipeline: extract the declaration graph (Stage 1), extract the sketch facts (Stage 2), and generate the platform tree by skeleton subtraction. Every file in `expected/` was produced by actually running the scripts and compiling the results — treat it as the reference answer for your own generator.

## The source project

`SumSquares/` is a three-file Lean 4 project whose main theorem is `six_sumSq`: six times the sum of the first `n` squares equals `n(n+1)(2n+1)`.

| File | Declares | Why it is in the example |
|------|----------|--------------------------|
| `SumSquares/Defs.lean` | `def sumSq`, `class SumBudget`, an anonymous `instance` | Def-material; an equation-style def (`valKind: "eqns"`); an instance with **no `declId`** (its `decl` fact has `nameText: null`) |
| `SumSquares/Lemmas.lean` | `lemma sumSq_succ` | used cross-file → becomes a platform node; written with the **`lemma` macro command** (not a `Command.declaration` node) to pin Stage 2's coverage of it |
| `SumSquares/Main.lean` | `private theorem six_mul_succ`, `theorem six_sumSq` | a private helper (must be inlined) and the target |

## Reproduce it

`SumSquares/` is source-only. To build it, scaffold a Lake project pinned to the platform environment (`GET /environments` gives the `mathlib_rev` + toolchain; [lean-setup.md](../../references/lean-setup.md) walks through the setup), drop the `SumSquares/` folder in as a `lean_lib`, and `lake build`. `expected/` was generated against the platform pin current at the time of writing; the byte offsets depend only on the source files, not the toolchain. Then:

```bash
# Stage 1 — declaration graph (edit the two EDIT lines first)
lake env lean extract_decl_graph.lean          # writes decl_graph.jsonl

# Stage 2 — sketch facts, one run per source file
lake env lean --run extract_sketch_info.lean SumSquares/Defs.lean   SumSquares > sketch_info.Defs.jsonl
lake env lean --run extract_sketch_info.lean SumSquares/Lemmas.lean SumSquares > sketch_info.Lemmas.jsonl
lake env lean --run extract_sketch_info.lean SumSquares/Main.lean   SumSquares > sketch_info.Main.jsonl
```

The scripts live at [`../../scripts/extract_decl_graph.lean`](../../scripts/extract_decl_graph.lean) and [`../../scripts/extract_sketch_info.lean`](../../scripts/extract_sketch_info.lean); copy them into the source project to run them. Expected outputs are in `expected/`.

## Reading the graph (`expected/decl_graph.jsonl`)

Filter out compiler-generated entries first — anything with `startLine: 0` (equation lemmas `*.eq_*`, match auxiliaries `*.match_*`) has no source span and is never uploaded. Then collapse span-sharing members: the `class SumBudget` generates `.mk`, `.budget`, `.rec`/`.casesOn`/`.noConfusion` entries whose spans sit inside the class's own span — the Phase 2 containment rule ("anything whose span is contained in a Def-bundle span is provided by that bundle") folds them all into the class. What remains is the plan:

```
six_sumSq  (target)
 ├─ typeDeps  ──→ sumSq          non-private def     → Definitions bundle
 └─ valueDeps ──→ sumSq_succ     cross-file theorem  → node (Thm_ + Sol_)
                  six_mul_succ   private theorem     → inline helper
```

Applying the Phase 2 classification table:

| Declaration | Class | Destination |
|-------------|-------|-------------|
| `sumSq`, `SumBudget`, the anonymous instance | Def-material | `Definitions/Def_SumSquares_Defs.lean` (one bundle per source module). `sumSq` is reachable from the target; the instance is kept by the instance-root rule (`isInstance: true` rows override dead-code elimination), and its statement pulls in `SumBudget` |
| `sumSq_succ` | Node — *by demonstration fiat*: its one-line proof is below the Phase 2 inline floor and a real planner would inline it; the example promotes it to exercise the full `Thm_` + `Sol_` mechanics | `Theorems/Thm_SumSquares_sumSq_succ.lean` + `Solutions/Sol_SumSquares_sumSq_succ.lean` |
| `six_mul_succ` | Inline helper | pasted verbatim into `Sol_SumSquares_six_sumSq.lean` |
| `six_sumSq` | Node — the target is a node like any other: it needs its own `Thm_` stub published, because `POST /verify` takes a `theorem_id` | `Theorems/Thm_SumSquares_six_sumSq.lean` + `Solutions/Sol_SumSquares_six_sumSq.lean` |

## Reading the sketch facts (`expected/sketch_info.*.jsonl`)

Each run emits `decl` facts and `ref` facts with exact positions (1-based line, 0-based column, byte offset):

- **`decl` facts** drive the proof cut and the modifier edits: `docstring` is the range to strip from a `formal_statement`, `privateTok` the range to delete when promoting a private helper. The stub for `sumSq_succ` is literally `text[declStart.offset : valStart.offset] ++ ":= by sorry"` — `valStart` points at the `:=` of the declaration, past the full statement including type-level syntax that a naive text search would trip on.
- **`ref` facts** drive renames. Note that the *binding* occurrence (the name in the declaration head) is included, alongside every use site — e.g. `Main.lean` reports `sumSq_succ` inside the `rw [...]` and `six_mul_succ` at both its declaration and its use. Rewriting these exact ranges (right-to-left) is how ASCII renames are applied; no pattern matching against source text, ever.

Two joins your generator needs between the stages: match Stage 1 declarations to Stage 2 `decl` facts by **containment** (`startLine` falls inside `[declStart.line, declEnd.line]`; the lines are equal here, but differ for wrapped declarations, where Stage 2 spans the `include … in`/`set_option … in` wrapper), and match private names by their **`userName`** — Stage 1 prints `_private.SumSquares.Main.0.SumSquares.six_mul_succ` while Stage 2 (which elaborates the file standalone) prints `_private.0.SumSquares.six_mul_succ`; the user-name suffix `SumSquares.six_mul_succ` is the stable key.

## The generated platform tree (`expected/platform/`)

Every file carries a header comment stating exactly which transforms produced it. The tree compiles as-is: the Def bundle builds clean, the stub builds with only its `sorry` warning, and both solutions are sorry-free — `Sol_SumSquares_six_sumSq` type-checks against the *stub* of `sumSq_succ`, which is precisely what makes it a valid reduction (SKETCH_ACCEPTED if `sumSq_succ` is still Open, ACCEPTED once it is Proved; the leaves-first upload order of Phase 7 guarantees the latter).

File and module names follow the platform's slug rule — `Thm_<theorem_name with dots replaced by underscores>` — because `theorem_name` is the fully-dotted name (`SumSquares.sumSq_succ`) and dots cannot appear in Lean module names.

Upload order for this example: `Def_SumSquares_Defs` → `Thm_SumSquares_sumSq_succ` and `Thm_SumSquares_six_sumSq` (both via `submit-problem`) → `Sol_SumSquares_sumSq_succ` (verify; the child resolves to Proved) → `Sol_SumSquares_six_sumSq` (verify; the target resolves straight to Proved).
