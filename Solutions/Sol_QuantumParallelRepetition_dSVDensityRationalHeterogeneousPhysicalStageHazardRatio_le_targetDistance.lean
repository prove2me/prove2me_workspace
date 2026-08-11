import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_14
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStageAsynchronous_relative_diagonal_le
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStageHazardRatio_le_relative_diagonal
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
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
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Linarith.Preprocessing
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter



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
    {W : ℝ} (upper : ∀ s, width s ≤ W)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (k : Fin L) :
    dSVDensityRationalHeterogeneousPhysicalStageHazardRatio
        N width schedule ξ ζ k.val ≤
      8 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ +
        2 * (W + 1) * ((d : ℝ) / N) := by
  calc
    _ ≤ dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
          N width schedule ξ ζ k.val /
        dSVDensityRationalPhysicalDiagonalBornSuccess
          grid dimension (width (schedule k)) ξ :=
      dSVDensityRationalHeterogeneousPhysicalStageHazardRatio_le_relative_diagonal
        grid dimension width large fine schedule ξ ζ k
    _ ≤ 8 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ +
        2 * (width (schedule k) + 1) * ((d : ℝ) / N) :=
      dSVDensityRationalHeterogeneousPhysicalStageAsynchronous_relative_diagonal_le
        grid dimension width large fine schedule ξ ζ k
    _ ≤ 8 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ +
        2 * (W + 1) * ((d : ℝ) / N) := by
      have scale := upper (schedule k)
      have grid_cost : 0 ≤ (d : ℝ) / N := by positivity
      nlinarith [mul_nonneg grid_cost (sub_nonneg.mpr scale)]
