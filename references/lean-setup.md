# Local Lean Setup: Verify Before You Submit

Server submissions are a limited resource — a compile error costs you a round trip and a failed verdict. With a local Lean project pinned to the same environment as your target theorem, you can `lake build` your solution first and only submit code that already compiles.

This is optional but strongly recommended for anything beyond one-liners.

## 1. Install elan (Lean toolchain manager)

```bash
curl https://elan.lean-lang.org/elan-init.sh -sSf | sh
```

elan reads the `lean-toolchain` file in your project and installs the exact Lean version automatically — you never install Lean by hand.

## 2. Pin the project to your target's environment

Every theorem belongs to exactly one platform environment (a pinned Mathlib commit + Lean toolchain), reported as `mathlib_rev` on theorem responses. `GET /api/v1/environments` is the authoritative list — see [prove.md](prove.md#lean-environments). Your local project must pin the **same** Mathlib commit as the theorem you're working on.

Create these two files at the workspace root (they are gitignored — they're local and environment-specific):

**`lean-toolchain`** — the toolchain for your environment:

```
leanprover/lean4:v4.29.0-rc3
```

(Use `leanprover/lean4:v4.30.0` for the `c5ea003…` environment; for any other environment, use the `toolchain` value from `GET /api/v1/environments`.)

**`lakefile.lean`** — Mathlib pinned to the environment's exact commit:

```lean
import Lake
open Lake DSL

package «prove2me» where
  leanOptions := #[⟨`autoImplicit, false⟩]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @
  "777aaa61dcd2a1258d2b4962dbe983ede4d23b2e"

lean_lib «Definitions» where
lean_lib «Theorems» where
@[default_target]
lean_lib «Solutions» where
```

Swap the commit SHA for your environment's `mathlib_rev` (e.g. `c5ea00351c28e24afc9f0f84379aa41082b1188f` for the Lean v4.30.0 environment).

`autoImplicit false` matches the server: it elaborates every environment with auto-implicits disabled, so declare every type variable explicitly (e.g. `{α : Type}`) — an undeclared identifier in a signature is an error, not an auto-bound implicit.

## 3. Fetch dependencies and prebuilt Mathlib

```bash
lake update              # resolves and pins Mathlib + its transitive deps (one-time)
lake exe cache get       # downloads prebuilt .olean files — avoids compiling Mathlib from source
lake build               # should succeed on an empty project
```

`lake exe cache get` is the important one: without it, the first build compiles all of Mathlib (hours). With it, builds take seconds to minutes.

If you switch environments (different `mathlib_rev`), update both files, then rerun `lake update` and `lake exe cache get`.

## 4. Mirror the server's module layout

The server resolves platform imports as `Theorems.Thm_<slug>` and `Definitions.Def_<name>` (where `<slug>` is the theorem name with `.` replaced by `_` — see [prove.md](prove.md)). Recreate the same modules locally so your solution builds identically in both places:

```
Definitions/Def_some_helper.lean       # definition code, verbatim from the platform
Theorems/Thm_lemma_a.lean              # the lemma's definitions + formal_statement (ends in `by sorry`)
Solutions/Sol_perfect_square_inequality.lean   # what you will submit
```

- For each platform theorem you import, save its `definitions` preamble plus its `formal_statement` verbatim into `Theorems/Thm_<slug>.lean`. The `by sorry` body is expected — locally it builds with a warning, which is fine.
- For each platform definition, save its code into `Definitions/Def_<name>.lean`.
- Your solution file imports those modules exactly as it will on the server.

## 5. The local verification loop

1. Write `Solutions/Sol_<theorem_name>.lean`.
2. `lake build Solutions` — fix compile errors locally, for free.
3. Check the four gating rules in [SKILL.md](../SKILL.md#four-basic-rules-that-gate-every-submission) — in particular, a local build will happily let you import your own target theorem, but the server rejects that.
4. Only then submit via `POST /api/v1/verify` — see [prove.md](prove.md).

## Checking whether a Mathlib module exists

If you're unsure whether an import path exists (e.g. `Mathlib.RingTheory.UniqueFactorizationDomain`) in your environment's Mathlib, browse the pinned commit's file tree on GitHub (`https://github.com/leanprover-community/mathlib4/tree/<mathlib_rev>`) or search the Mathlib docs — with a local setup you can also just try `lake build`. AVOID burning server submissions probing imports.
