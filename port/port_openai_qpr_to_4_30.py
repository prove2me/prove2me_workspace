#!/usr/bin/env python3
"""Port openai/ten-proofs QuantumParallelRepetition.lean from Lean v4.32.0 / Mathlib 81a5d25
to the Prove2me default environment: Lean v4.30.0 / Mathlib c5ea003.

Each patch asserts its expected hit count so a silently-missed rewrite fails loudly.
"""
import sys

# Usage: port_openai_qpr_to_4_30.py <path-to-upstream-QuantumParallelRepetition.lean> <out.lean>
SRC = sys.argv[1] if len(sys.argv) > 1 else "QuantumParallelRepetition.lean"
DST = sys.argv[2] if len(sys.argv) > 2 else "Solutions/QPRPort.lean"

s = open(SRC).read()
applied = []


def sub(old, new, expect, tag):
    global s
    n = s.count(old)
    assert n == expect, f"[{tag}] expected {expect} occurrences, found {n}"
    s = s.replace(old, new)
    applied.append(f"{tag}: {n}")


# ---------------------------------------------------------------------------
# Patch 1 — Matrix.reindexRingEquiv does not exist in Mathlib c5ea003.
# The reindex-equiv family there is reindexLinearEquiv / reindexAlgEquiv /
# reindexEquiv / reindexGroupEquiv.  For ℂ-matrices reindexAlgEquiv ℂ ℂ e is an
# AlgEquiv, hence a RingEquiv, and is defeq to reindex e e.
# ---------------------------------------------------------------------------
sub("(Matrix.reindexRingEquiv ℂ e)", "(Matrix.reindexAlgEquiv ℂ ℂ e)", 20, "reindexRingEquiv->reindexAlgEquiv")

# AlgEquiv's map_mul/map_one projections elaborate through a toMulEquiv coercion,
# so the `.map_mul` spelling no longer matches the goal syntactically.  The
# generic MonoidHomClass lemmas do.
sub("rw [← (Matrix.reindexAlgEquiv ℂ ℂ e).map_mul,",
    "rw [← map_mul (Matrix.reindexAlgEquiv ℂ ℂ e),", 5, "map_mul generic")
sub("exact (Matrix.reindexAlgEquiv ℂ ℂ e).map_one",
    "exact map_one (Matrix.reindexAlgEquiv ℂ ℂ e)", 5, "map_one generic")

# ---------------------------------------------------------------------------
# Patch 2 — MeasureTheory.Lp.coeFn_fun_finsetSum does not exist in c5ea003 in
# any spelling (it has coeFn_add / coeFn_zero / coeFn_smul but no finset-sum
# version).  Backport it by induction and redirect the single call site.
# ---------------------------------------------------------------------------
SHIM = '''import Mathlib

/-! ### Prove2me port shims (Lean v4.30.0 / Mathlib c5ea003)

Declarations backported from the newer Mathlib the upstream file was written
against.  Each is stated exactly as the upstream constant it stands in for. -/

section Prove2mePortShims
open MeasureTheory

/-- Backport of `MeasureTheory.Lp.coeFn_fun_finsetSum`. -/
theorem Lp_coeFn_fun_finsetSum
    {α E ι : Type*} [MeasurableSpace α] {μ : Measure α}
    [NormedAddCommGroup E] {p : ENNReal}
    (s : Finset ι) (f : ι → Lp E p μ) :
    ∀ᵐ a ∂μ, (∑ i ∈ s, f i) a = ∑ i ∈ s, (f i) a := by
  classical
  induction s using Finset.induction with
  | empty => simpa using (Lp.coeFn_zero E p μ)
  | insert i s hi ih =>
      filter_upwards [Lp.coeFn_add (f i) (∑ j ∈ s, f j), ih] with a hadd hih
      rw [Finset.sum_insert hi, Finset.sum_insert hi, hadd, Pi.add_apply, hih]

end Prove2mePortShims
'''

# ---------------------------------------------------------------------------
# Patch 3 — `convert ... using 1 ; simp ... ; congr 2`.  In c5ea003 the
# `convert` already closes the goal, so the chained tactics hit "No goals to be
# solved".  `all_goals` is a no-op on zero goals and behaves identically to the
# original chain when a goal does remain.
# ---------------------------------------------------------------------------
for side, ctx, rank in (("Alice", "exactReverseAliceContext", "exactReverseLeftRank"),
                        ("Bob", "exactReverseBobContext", "exactReverseRightRank")):
    # first bullet: `convert hlt' using 1` at 8-space indent
    sub(f"""        convert hlt' using 1 ;
          simp [{ctx},
            {rank}, Equiv.trans_apply] ;
          congr 2""",
        f"""        convert hlt' using 1
        all_goals simp [{ctx},
            {rank}, Equiv.trans_apply]
        all_goals congr 2""", 1, f"convert-chain {side} outer")
    # second bullet: `convert hlt using 1` at 10-space indent
    sub(f"""          convert hlt using 1 ;
            simp [{ctx},
              {rank}, Equiv.trans_apply] ;
            congr 2""",
        f"""          convert hlt using 1
          all_goals simp [{ctx},
              {rank}, Equiv.trans_apply]
          all_goals congr 2""", 1, f"convert-chain {side} inner")

# ---------------------------------------------------------------------------
# Patch 4 — Finset.single_le_sum hands back a non-beta-reduced goal
# `0 ≤ (fun candidate => if .. then .. else 0) candidate` in c5ea003, which
# split_ifs cannot see through.  State the reduced form first.
# ---------------------------------------------------------------------------
sub("""        (fun candidate _ => by
          split_ifs with positive""",
    """        (fun candidate _ => by
          show 0 ≤ if 0 < probability index candidate then
            1 / probability index candidate else 0
          split_ifs with positive""", 1, "split_ifs beta-redex")

# ---------------------------------------------------------------------------
# Patch 5 — `congrArg (fun z => ‖z‖ ^ 2) h` leaves a beta-redex in c5ea003, so
# the subsequent `rw [norm_smul, ...] at squared` cannot see the `‖r • x‖`
# pattern underneath the lambda application.
# ---------------------------------------------------------------------------
sub("""  have squared := congrArg (fun z => ‖z‖ ^ 2) covariance
  rw [norm_smul, Real.norm_eq_abs,
""",
    """  have squared := congrArg (fun z => ‖z‖ ^ 2) covariance
  beta_reduce at squared
  rw [norm_smul, Real.norm_eq_abs,
""", 1, "beta_reduce squared")

# ---------------------------------------------------------------------------
# Patch 6 — same beta-redex shape in Finset.single_le_sum's nonnegativity
# argument (the sibling call two lines below already lands beta-reduced).
# ---------------------------------------------------------------------------
sub("""
            (fun y' _ => by split_ifs <;> simp [G.weight_nonneg])
""",
    """
            (fun y' _ => by beta_reduce; split_ifs <;> simp [G.weight_nonneg])
""", 1, "beta_reduce split_ifs weight_nonneg")

# ---------------------------------------------------------------------------
# Patches 7 and 8 — two more `congrArg`-produced hypotheses that stay as
# beta-redexes in c5ea003, so rewriting at them cannot match the redex-free
# pattern.  Same root cause as patches 4-6.
# ---------------------------------------------------------------------------
sub("""  change star (ξ.val (a, b)) = _ at coordinate
  rw [schmidtVector_apply] at coordinate
""",
    """  change star (ξ.val (a, b)) = _ at coordinate
  beta_reduce at coordinate
  rw [schmidtVector_apply] at coordinate
""", 1, "beta_reduce coordinate")

sub("""        _ = _ := by rw [counted]
""",
    """        _ = _ := by beta_reduce at counted; rw [counted]
""", 1, "beta_reduce counted")

sub("Lp.coeFn_fun_finsetSum", "Lp_coeFn_fun_finsetSum", 1, "redirect coeFn_fun_finsetSum")
sub("import Mathlib\n", SHIM, 1, "insert shim section")

open(DST, "w").write(s)
print(f"wrote {DST}")
for a in applied:
    print("  ", a)
