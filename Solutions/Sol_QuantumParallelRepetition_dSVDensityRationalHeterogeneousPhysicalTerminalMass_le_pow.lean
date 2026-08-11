import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_14
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStageContinue_le_uniform
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE
import Mathlib.Algebra.Order.Ring.Basic
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Ring.Parity
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Range
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Order.RelClasses
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators ComplexOrder

theorem dSVHeterogeneousRealPrefix_succ
    (continuation : ℕ → ℝ) (k : ℕ) :
    dSVHeterogeneousRealPrefix continuation (k + 1) =
      dSVHeterogeneousRealPrefix continuation k *
        continuation k := by
  simp [dSVHeterogeneousRealPrefix,
    Finset.prod_range_succ]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem dSVDensityRationalHeterogeneousPhysicalStageOutcome_nonneg
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (k : ℕ) (alice bob : Bool) :
    0 ≤ dSVDensityRationalHeterogeneousPhysicalStageOutcome
      N width schedule ξ ζ k alice bob := by
  unfold dSVDensityRationalHeterogeneousPhysicalStageOutcome
  split_ifs <;> positivity

theorem
    dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate_le_half
    {d : ℕ} (dimension : 0 < d)
    {W : ℝ} (W_nonnegative : 0 ≤ W) :
    dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
      d W ≤ (1 / 2 : ℝ) := by
  have real_dimension : 0 < (d : ℝ) := by
    exact_mod_cast dimension
  have dimension_one : (1 : ℝ) ≤ (d : ℝ) := by
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt dimension))
  have denominator : 0 < 2 * (W + 1) * (d : ℝ) := by
    positivity
  unfold dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
  apply (div_le_div_iff₀ denominator (by norm_num : (0 : ℝ) < 2)).mpr
  nlinarith [mul_nonneg W_nonnegative real_dimension.le]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem
    solution
    {d S L N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (large : ∀ s, 1 ≤ width s)
    (fine : ∀ s : Fin S,
      (d : ℝ) / N ≤ 1 / (2 * (width s + 1)))
    {W : ℝ} (W_nonnegative : 0 ≤ W)
    (upper : ∀ s, width s ≤ W)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalHeterogeneousPhysicalTerminalMass
        N width schedule ξ ζ ≤
      (1 -
        dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
          d W) ^ L := by
  let continuation :=
    dSVDensityRationalHeterogeneousPhysicalStageContinue
      N width schedule ξ ζ
  let c : ℝ :=
    1 - dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate
      d W
  have rate_bounded :=
    dSVDensityRationalHeterogeneousPhysicalUniformEscapeRate_le_half
      dimension W_nonnegative
  have c_nonnegative : 0 ≤ c := by
    dsimp [c]
    linarith
  have continuation_nonnegative : ∀ k, 0 ≤ continuation k := by
    intro k
    exact
      dSVDensityRationalHeterogeneousPhysicalStageOutcome_nonneg
        N width schedule ξ ζ k false false
  have prefix_bound : ∀ k : ℕ, k ≤ L →
      dSVHeterogeneousRealPrefix continuation k ≤ c ^ k := by
    intro k
    induction k with
    | zero =>
        intro _
        simp [dSVHeterogeneousRealPrefix]
    | succ k induction =>
        intro within
        have active : k < L := by omega
        have previous := induction (by omega : k ≤ L)
        let stage : Fin L := ⟨k, active⟩
        have next :=
          dSVDensityRationalHeterogeneousPhysicalStageContinue_le_uniform
            grid dimension width large fine W_nonnegative upper
            schedule ξ ζ stage
        change continuation k ≤ c at next
        rw [dSVHeterogeneousRealPrefix_succ, pow_succ]
        exact mul_le_mul previous next
          (continuation_nonnegative k) (pow_nonneg c_nonnegative k)
  change dSVHeterogeneousRealPrefix continuation L ≤ c ^ L
  exact prefix_bound L (le_refl L)
