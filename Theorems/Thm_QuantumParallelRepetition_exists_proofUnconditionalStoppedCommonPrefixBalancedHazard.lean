import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_29
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Topology.Defs.Filter

open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

theorem QuantumParallelRepetition.exists_proofUnconditionalStoppedCommonPrefixBalancedHazard
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (t : ℝ) (positive : 0 < t) (bounded : t ≤ 1)
    (precision : ℝ) (precision_positive : 0 < precision) :
    ∃ B Q n : ℕ, 0 < B ∧ 0 < Q ∧ 0 < n ∧
      ∃ A C : Fin B → Option ℕ →
          Matrix.unitaryGroup (Fin (N * n)) ℂ,
        ∀ {S L : ℕ}
          (width : Fin S → ℝ) (schedule : Fin L → Fin S)
          (ξ ζ : BipartiteUnitVector d),
          dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
              Q n width schedule ξ ζ A C ≤
            (34 / t) *
                dSVDensityRationalHeterogeneousActualAsynchronousFlagMass
                  N width schedule ξ ζ +
              4 * precision ^ 2 +
                (16 * (Real.exp 1 - 1) + 4) * t := by sorry
