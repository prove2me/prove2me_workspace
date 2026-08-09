# Porting OpenAI's quantum parallel-repetition proof to the Prove2me environment

[`openai/ten-proofs`](https://github.com/openai/ten-proofs) ships
`QuantumParallelRepetition.lean` — a single 70,980-line, `sorry`-free proof of the
exponential-decay parallel-repetition theorem for entangled games. It is written against
**Lean v4.32.0 / Mathlib `81a5d257c8e410db227a6665ed08f64fea08e997`**.

The Prove2me default environment is **Lean v4.30.0 / Mathlib
`c5ea00351c28e24afc9f0f84379aa41082b1188f`** — two releases earlier. The upstream file does
not compile there unmodified.

`port_openai_qpr_to_4_30.py` closes that gap. It is a patch script rather than a vendored
copy: the upstream file is Apache-2.0 and 2.7 MB, so shipping the diff keeps provenance
clear and states exactly what changed, which is what Apache-2.0 §4(b) asks for.

## Reproducing

```bash
git clone https://github.com/openai/ten-proofs /tmp/ten-proofs
python3 port/port_openai_qpr_to_4_30.py \
  /tmp/ten-proofs/QuantumParallelRepetition.lean Solutions/QPRPort.lean
lake build Solutions.QPRPort        # ~25 min, ~9 GB peak RSS
```

Every patch asserts its expected hit count, so an upstream revision that moves any of these
sites fails loudly instead of silently skipping a rewrite.

## Verification

```
'QuantumParallelRepetition.standardQuantumParallelRepetition' depends on axioms:
  [propext, Classical.choice, Quot.sound]
'QuantumParallelRepetition.distributionUniformExponential' depends on axioms:
  [propext, Classical.choice, Quot.sound]
```

No `sorryAx` — the port is a real proof in this environment, not merely an error-free build.
This distinction matters: Lean admits a failed declaration backed by `sorryAx` and keeps
going, so *before* the port both top-level theorems reported no error at their own line
while in fact depending on `sorryAx`. `#print axioms` is the check that catches that;
`Solutions/QPRVerify.lean` runs it in ~15 s against the cached olean.

## What actually drifted

The unmodified file produces **27 errors across 18 declarations** (0.7% of its 2,474
declarations). Two runs — one with `autoImplicit=false` (the platform setting), one with
upstream's default `true` — gave byte-identical error sets, so this is genuine version
drift, not a build-configuration artifact.

### Missing constants (2 declarations affected, 11 errors)

| Constant | Resolution |
|---|---|
| `Matrix.reindexRingEquiv` | Absent from c5ea003, which has only `reindexLinearEquiv` / `reindexAlgEquiv` / `reindexEquiv` / `reindexGroupEquiv`. `reindexAlgEquiv ℂ ℂ e` is defeq and, being an `AlgEquiv`, is also a `RingEquiv`. Its `map_mul`/`map_one` **projections** elaborate through a `toMulEquiv` coercion and no longer match syntactically, so the generic `MonoidHomClass` lemmas are used instead. |
| `MeasureTheory.Lp.coeFn_fun_finsetSum` | Absent in every spelling; c5ea003 has `coeFn_add`/`coeFn_zero`/`coeFn_smul` but no finset-sum version. Backported as an 11-line `Finset.induction` in the `Prove2mePortShims` section the script prepends. |

### Non-beta-reduced goals (5 declarations)

The dominant behavioural change. In c5ea003, `congrArg (fun z => …) h` and
`Finset.single_le_sum`'s side-goal leave a beta-redex `(fun x => …) a` where the newer
Mathlib presents the reduced form. Tactics that match syntactically — `rw`, `split_ifs` —
then fail to see through the lambda. Fixed with `beta_reduce at h` or an explicit `show`.

### Over-eager tactic chains (2 declarations)

`convert … using 1 ; simp … ; congr 2`: in c5ea003 the `convert` closes the goal outright,
so the chained tactics raise "No goals to be solved". Replaced with `all_goals`, a no-op on
zero goals. The build now emits `'all_goals congr 2' tactic does nothing` at these four
sites, which confirms the diagnosis.

### Cascades (11 declarations, no patch needed)

The remaining 11 broken declarations needed no changes at all. They failed only because
they consumed a `sorryAx`-backed ancestor, several showing a literal `sorry` in their goal.
Repairing the 7 root causes fixed them for free — worth knowing before estimating a port
from a raw error count, which overstates the work by roughly 2.5×.

## Relationship to the Prove2me mission

This is *not* yet a submission for the "Parallel repetition for quantum games" mission.
Three gaps remain between this ported file and the mission's main theorem
`QuantumParallelRepetition.entangledValue_tendsto_zero`:

1. **Different conclusion.** Upstream proves `HasExponentialBound`; the target is
   `Tendsto (repeatedEntangledValue G) atTop (𝓝 0)`. The bridge is a squeeze against
   `entangledValue_nonneg` (already present upstream, unconditionally).
2. **Universes.** The target is `{X Y A B : Type*}`; upstream's final theorems are `Type`.
   The core reduction `exact_standardQuantumParallelRepetition_of_source_rounding` is
   already `Type*`-polymorphic — the restriction enters only in the last ~800 lines.
3. **Definitions and imports.** A submission must use the platform's
   `Definitions.Def_quantum_parallel_repetition_game` (which renames `POVM.effect` to
   `operator` and `jointEffect` to `jointMeasurementOperator`) rather than the file's own
   copies, and must replace `import Mathlib`, which the platform forbids as it times out.
