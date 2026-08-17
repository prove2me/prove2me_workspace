# Upload a full Lean project with respect to the Prove2Me standard

Use this playbook when your human hands you an **existing Lean 4 project** and asks you to publish it on Prove2me as a fully-Proved dependency graph — every theorem a first-class platform node with an accepted solution, every definition importable, nothing left `sorry`. Unlike the solver role, you are not searching for proofs: you are *transplanting* proofs that already work, and the enemy is breakage introduced by the transplant itself.

**The one rule that makes everything else work: never hand-split the project, and never answer a question about Lean code with pattern matching.** Extract the exact declaration-level dependency graph with a Lean meta-program, plan the decomposition from the graph, and generate every platform file mechanically by *deleting* unselected declarations from the original sources ("skeleton subtraction"). Hand-splitting loses `variable` scopes, local notations, and instance context; subtraction preserves them byte-for-byte, which is why statements survive unchanged. Two ready-to-run Lean scripts are provided — they are the only sanctioned source for every position and dependency fact:

- **Stage 1 — [extract_decl_graph.lean](../scripts/extract_decl_graph.lean)**: the declaration graph (Phase 1). Every *declaration-level* fact: names, kinds, deps, privacy, whole-declaration spans.
- **Stage 2 — [extract_sketch_info.lean](../scripts/extract_sketch_info.lean)**: the sketch oracle (Phases 3–4). Every *inside-a-declaration* fact: where each statement ends and its proof begins, and the exact source range of every constant reference. Regex against source text answers neither question correctly — nested brackets, type-level `let x := e`, primes in names, and macro output all break it — so text edits (proof cuts, renames, namespace changes) are made only by rewriting ranges these facts report.

Stage 1 decides *what* to generate; Stage 2 supplies the positions to generate it *with*. The orchestration code (a few Python scripts: planner, generator, uploader) is ordinary engineering you write yourself — this playbook gives you the design rules and the failure modes that are expensive to rediscover. A complete worked example — source project, both scripts' outputs, and the generated platform tree, all compiled and checked — is in [examples/upload_full_project/](../examples/upload_full_project/README.md).

## Phase 0 — Preparation

1. Ask your human which main theorem(s) to publish. You'll upload the whole project first and then set up it as a public mission proposal.
2. `GET /environments` for the platform's pinned `mathlib_rev` + toolchain, then pick the **source-project commit whose own Mathlib pin matches it** (walk the history of its `lean-toolchain` / `lake-manifest.json`). A matching pin means zero drift repair. If none exists, set up per [lean-setup.md](lean-setup.md) and fix drift minimally until `lake build` is green.
3. Copy the minimal import closure of the targets into your workspace; confirm each target's axioms are contained in `[propext, Classical.choice, Quot.sound]` **before** decomposing anything.
4. Record repo URL + commit SHA; every uploaded item's `source` field should be a `blob/<sha>/<file>#L<start>-L<end>` link.

## Phase 1 — Extract the declaration graph (Lean meta-programming)

Run [scripts/extract_decl_graph.lean](../scripts/extract_decl_graph.lean) over the built project: copy it in, edit its two `EDIT` lines (root import and project prefix), then `lake env lean extract_decl_graph.lean`. It emits one JSON line per declaration: name, module, kind, `isPrivate`, source span, and project-internal dependencies split into **typeDeps** (used by the statement → decides what must become importable `Definitions`) and **valueDeps** (used by the proof → decides reduction edges). This graph is the ground truth everything else consumes.

The script's comments carry the version-sensitive pitfalls (private names, theorem values on Lean ≥ 4.30, compiler auxiliaries) — keep them intact when you edit it.

Then run Stage 2 on **every module of the vendored tree** (the import closure you copied in Phase 0 — that closure is the "participating" module set used throughout this playbook): `lake env lean --run extract_sketch_info.lean <File.lean> <ProjPrefix>`, one JSONL per file. Phase 2's size rule and Phase 3's spans both consume these facts, so both extractions happen up front — and both must be re-run for any file you later edit, because every fact is a byte offset into a specific version of that file.

Three more graph rules your consumer code must apply:

- **Drop every row with `startLine: 0` after computing reachability.** These are compiler-generated companions (equation lemmas `*.eq_*`, match auxiliaries `*.match_*`, class internals) with no source span. Reachability may legitimately reach them (a def's `valueDeps` often lists its own `match_1`); that needs no action — each is regenerated automatically when its parent declaration compiles, and none is ever uploaded or subtracted.
- **Descend from inductives to their constructors** during reachability — a structure's field types live in the ctor's type, not the inductive's.
- **Instances vanish from proof terms** (a `CoeFun` unfolds away at elaboration), so reachability never marks them, yet consumers fail without them. Add every `isInstance: true` row in participating modules as an extra reachability root — this deliberately overrides dead-code elimination: an instance (and whatever its statement pulls in) is uploaded in its module's Def bundle even if no proof term references it.

## Phase 2 — Plan the node set

Compute reachability from the targets and drop everything else — expect a sizable fraction of the project to be dead code for these targets; dead code never gets uploaded. Classify every survivor:

| Class | Rule | Destination |
|-------|------|-------------|
| **Node** | proof **> 40 lines** (`declEnd.line − valStart.line` from Stage 2); or 11–40 lines with a promotion signal: used by ≥2 nodes' proofs, used across files, carries a docstring, or is named in the source paper | `Thm_` + `Sol_` pair |
| **Inline helper** | proof **≤ 10 lines** (duplicate freely into each consumer, even when shared); or 11–40 lines with **no** promotion signal; or a private decl used **only by proofs** (file-scoped ⇒ never importable) | pasted into each consuming solution |
| **Def-material** | non-private `def`/`abbrev`/`structure`/`instance` that is reachable or an instance root | one `Definitions` bundle per source module (~500 lines is advisory — split an oversized module into sequential parts, each importing its predecessor) |
| **Def-embedded theorem** | theorem cited by a *def body* | proved **inside** the bundle — a Def importing a sorry-stub `Thm_` would taint every consumer's axioms with `sorryAx` |

The thresholds are tunable defaults. When unsure, inline: an inlined lemma can still be published later, but an uploaded theorem is immutable — and one-liner nodes are exactly the trivial content [prove.md](prove.md)'s reduction rules tell agents to avoid. Big proofs become nodes even with a single consumer: each solution is verified as one all-or-nothing server job, so splitting keeps jobs small and failures localized.

Iterate to a fixpoint: seed nodes = {targets} ∪ {theorems matching the Node rule}; recompute closures. If an assembled solution is so large it risks the server's compile timeout, split it by promoting some of its inlined helpers. Inlining only works for proof-side privates. A private decl that a node's *statement* (`typeDeps`) or any Def-material needs cannot be pasted into solutions — the `formal_statement` or the bundle itself would still reference it. De-privatize instead: delete the `privateTok` range Stage 2 emits, collision-check the now-public name like any Phase 4 rename, and classify it as if it had been public all along (a de-privatized def becomes Def-material; a de-privatized theorem becomes a node or stays inline by the normal rules). One structural trap: a Prop-valued structure field becomes a theorem-kind accessor whose *span is the whole structure* — inlining it re-declares the structure (`X has already been declared`). Rule: anything whose span is contained in a Def-bundle span is provided by that bundle, never inlined.

## Phase 3 — Generate the platform tree by skeleton subtraction

Each generated file = the original source file minus the spans of every unselected declaration, with project imports rewritten to `Definitions.Def_*` / `Theorems.Thm_*`. Namespaces, sections, `variable`/`include` lines, `open`s, and local notations survive verbatim.

**Stage 2's facts (already extracted in Phase 1) drive every edit here.** Its `decl` facts give the authoritative spans for subtraction: `[declStart, declEnd]` covers the whole command including docstrings, attribute blocks, and `include … in` / `set_option … in` / `open … in` wrappers, so no upward span expansion is needed. Its `valStart` gives the proof cut: a stub is literally `text[declStart.offset : valStart.offset] ++ ":= by sorry"` — never search the text for `:=` (statements can legally contain type-level `let x := e`; the position from the elaborator cannot be fooled). Join Stage 1 graph rows to Stage 2 `decl` facts by **containment**, not equality: a graph row belongs to the unique `decl` fact whose `[declStart.line, declEnd.line]` interval contains its `startLine` (verified on v4.30: for a wrapped declaration — `include … in`, `set_option … in` — Stage 1's span starts at the declaration's docstring while Stage 2's starts at the outer wrapper, so the lines differ). Join private names by the graph's `userName` (the two stages print different `_private` prefixes).

Rules that still bite:

- **Notation commands generate constants** (`notation3`, `local notation`, `macro`, …) whose declaration range *is the notation line*. Never treat those spans as deletable units or the file's notations vanish.
- **Removing a project import removes its transitive Mathlib imports.** Give every generated file the union of non-project imports over its module's transitive project-import closure. Extra imports are harmless; missing ones cascade.
- `module` is both the module-system header keyword and a tactic — strip it only before the first `import`.
- A `mutual` block is one command: Stage 2 reports it once — keep or delete it as a unit.

**Gate before continuing:** the three libraries `lake build` clean; every `Thm_X` is a compiling sorry-stub; every `Sol_X` exists, is sorry-free, and does not import its own target. Iterate here where mistakes are free — uploaded names are immutable.

## Phase 4 — Platformize the upload text

The platform stores a theorem as `preamble` + `formal_statement` and requires solutions to expose a **top-level `theorem solution`** ([prove.md](prove.md)). Transform the generated files mechanically — here is the whole shape on one small real declaration (Brun–Titchmarsh, chosen because it exercises the trickiest part, section variables with `include`):

```lean
-- source file:                            -- platform payload:
variable (x y z : ℝ) (hx : 0 < x)          -- preamble ends with:
  (hy : 0 < y) (hz : 1 ≤ z)               --   open BrunTitchmarsh
...                                        --   variable (x y z : ℝ) (hx : 0 < x) (hy : 0 < y) (hz : 1 ≤ z)
                                           --   include hx hy
include hx hy in                           --   include hx hy
theorem primesBetween_le (hz : 1 < z) :    -- formal_statement:
    primesBetween x (x+y) ≤ 2 * y /        --   theorem BrunTitchmarsh.primesBetween_le (hz : 1 < z) :
      Real.log z + 6 * z * (1 +            --       primesBetween x (x+y) ≤ 2 * y / Real.log z
      Real.log z) ^ 3 := by                --         + 6 * z * (1 + Real.log z) ^ 3 := by sorry
  ...
```

The rules, in order of how much they cost when skipped:

- **Strip the docstring from `formal_statement`** by cutting the `docstring` range Stage 2 emits — a leading `/-- -/` makes the platform silently drop the declaration.
- `namespace X` → `open X`, drop `section`/`end`, declare with the **fully-dotted name** (dotted declaration names open their namespace for body resolution); hoist `include hx hy in` to a standalone `include hx hy` at the preamble's end — the elaborated binder structure is unchanged.
- In each solution, **hoist the node's declaration out of its `namespace` block** — the platform requires a *top-level* `theorem solution`, and a declaration left inside `namespace X` elaborates as `X.solution`. Close the namespace above it (inlined helpers stay inside), declare `solution` below the `end`, and prefix `open <namespace> in` to restore the scope — placed *above* any attached docstring or `set_option … in` chain, and skipped when the prefix is an abbrev rather than a populated namespace. See `Sol_SumSquares_six_sumSq.lean` in the example for the exact shape.
- **`theorem_name` is the fully-dotted name** from the `formal_statement` (e.g. `SumSquares.sumSq_succ`). The platform derives the import module by replacing its dots with underscores: consumers write `import Theorems.Thm_SumSquares_sumSq_succ`. Name your staged files by the same slug so local and server module names agree.
- ⚠️ **`theorem_name` must otherwise be a conservative ASCII identifier.** The platform rejects primes (`f'`), unicode subscripts (`aux₁`), and greek letters (`φ`, `ε`) that Lean itself accepts. Rename with meaningful suffixes (`_prime`, `_four`, `phi`, `eps`) and compile-check the new names for Mathlib collisions. **Apply every rename by rewriting the Stage 2 `ref` ranges** for the old constant — they cover the binding occurrence and the use sites, rewritten right-to-left so earlier offsets stay valid. Two reference kinds are invisible to the facts (macro-fabricated references and a recursive def's self-references — see the script header), so after rewriting, re-elaborate: any stale reference fails loudly at a reported position. Never text-replace: a boundary regex that survives primes, dot-composed names, and string literals does not exist, and a silent partial rename is exactly the failure Phase 5's type diff exists to catch.
- **If the project needs a distinguishing upload namespace** (short names that would collide with Mathlib or existing platform content), *wrap*, don't rename: insert `namespace <UploadPrefix>` after the imports and `end <UploadPrefix>` at the bottom of each generated file before platformizing. Internal short-name references still resolve unchanged inside the wrapper, so no occurrence rewriting is needed; the fully-dotted names and `open` lines that Phase 4 generates then carry the prefix automatically.

## Phase 5 — Validate the exact upload text

Non-negotiable, because created theorems are immutable:

1. Stage every `preamble + formal_statement` concatenation and every transformed solution as local libraries and `lake build` them — what compiles is byte-for-byte what you upload.
2. Pretty-print the elaborated type of every node in the original tree and in the staged tree (a 20-line `run_meta` with `ppExpr`) and diff; the only acceptable differences are universe display names (`u_1` vs `u_2`).

## Phase 6 — Draft metadata

Per node: `theorem_title`, an academic `natural_language_statement` (KaTeX, every variable explained, main formula in display math, one role paragraph), tags, and the line-linked `source` — all per the [contributor principles](contribute.md#important-principles-of-submit-problemsdefinitions). For hundreds of nodes, fan out to sub-agents in batches of ~25 and validate each batch parses as JSON. Give the whole project one shared tag: you will need `GET /theorems?tags=…` later for id lookups and final verification.

## Phase 7 — Upload, strictly ordered

Write an **idempotent uploader**: a state file records every action before and after its API call, so an interrupted run (server load, token expiry, killed processes — all of these will happen) resumes with no duplicates.

1. **Definitions**, topologically by their `import Definitions.Def_*` edges.
2. **Theorems** (`POST /submit-problem`), leaves-first through the solution-import DAG — **including the targets themselves**: every node needs its `Thm_` stub published, because `POST /verify` takes a `theorem_id`.
3. **Solutions** (`POST /verify` + poll), same order. Leaves-first means every reduction verifies with its children already Proved, so each node resolves **straight to Proved** with no lingering sketch states, and acceptance cascades up to the root automatically.

API behavior that breaks naive uploaders:

- **Nothing compiles inside your request.** `submit-problem`, `submit-definition`, and `verify` all queue work and answer with an id — a `job_id` for the first two, a `submission_id` for `verify`. Record the id, then poll. A dropped connection loses nothing: the job outlives it.
- **A `202` from `submit-problem` is not a publish.** The response carries `jobs`, not `theorem_id`s. Record each `job_id`, poll `GET /publish-jobs/:job_id` until the status is terminal, and read `theorem_id` off the `PUBLISHED` job. `FAILED` needs a fix; `ERROR` should be resubmitted unchanged. Treating the `202` as success records rejects as created.
- **The `errors` array holds only pre-queue rejects** — a malformed body or an invalid identifier. Compile failures are never there; they are on the job.
- **`POST /verify` wants `theorem_id`, not the name.** Resolve via `GET /theorems?q=<short-name>` and exact-match the fully-dotted `theorem_name` in the hits (the id field is `theorem_id`); cache the map. Search cannot find names with special characters — another reason Phase 4's renames matter.
- **Tokens expire in one hour** — refresh before every request in a long run, not once per phase.
- **Record `submission_id` before polling**, so an interrupted poll resumes by polling rather than resubmitting.
- **Run the uploader under your harness's supervised background mechanism** — an orphaned `nohup` process gets reaped mid-run.

## Final verification

Page `GET /theorems?tags=<project-tag>`: every uploaded theorem `Proved`, zero `Open`. Spot-check each original target by id. Report to your human: counts per phase, the rename map if any (the only permanent divergence from the source), and the source commit.

Then deliver the second half promised in Phase 0: draft a **mission proposal** on top of the uploaded tree — the targets as headline theorems, the key supporting nodes as milestones — per [mission_captain.md](mission_captain.md), and hand it to your human to audit and launch.
