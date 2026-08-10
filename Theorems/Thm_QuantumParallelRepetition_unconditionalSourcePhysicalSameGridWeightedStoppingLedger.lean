import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Linarith.Preprocessing
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Pow
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem QuantumParallelRepetition.unconditionalSourcePhysicalSameGridWeightedStoppingLedger
    {d N : ℕ} (dimension : 0 < d) (grid : 0 < N)
    (w δ : ℝ) (large : 1 ≤ w)
    (precision : 0 < δ) (bounded : δ ≤ 1)
    (grid_budget : 2 * (w + 1) * ((d : ℝ) / N) ≤ δ)
    (t : ℝ) (t_positive : 0 < t) (t_bounded : t ≤ 1)
    (rho : ℝ) (rho_positive : 0 < rho)
    {ι : Type} [Fintype ι]
    (weight : ι → ℝ)
    (weight_nonnegative : ∀ i, 0 ≤ weight i)
    (weight_normalized : (∑ i, weight i) = 1)
    (ξ ζ : ι → BipartiteUnitVector d)
    (eta : ℝ)
    (source_energy :
      (∑ i, weight i * ‖(ξ i).val - (ζ i).val‖ ^ 2) ≤ 32 * eta) :
    ∃ L B Q m : ℕ,
      0 < L ∧ 0 < B ∧ 0 < Q ∧ 0 < m ∧
      ∃ A C : Fin B → Option ℕ →
          Matrix.unitaryGroup (Fin (N * m)) ℂ,
        let width : Fin 1 → ℝ := fun _ => w
        let schedule : Fin L → Fin 1 := fun _ => 0
        (∀ i,
          dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
              N width schedule (ξ i) (ζ i) ≤
            8 * Real.sqrt 2 * ‖(ξ i).val - (ζ i).val‖ + δ) ∧
        (∀ i,
          dSVDensityRationalHeterogeneousPhysicalTerminalMass
              N width schedule (ξ i) (ζ i) ≤ δ ^ 2) ∧
        ((∑ i, weight i *
          dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
            N width schedule (ξ i) (ζ i)) ≤
              64 * Real.sqrt eta + δ) ∧
        ((∑ i, weight i *
          dSVDensityRationalHeterogeneousPhysicalTerminalMass
            N width schedule (ξ i) (ζ i)) ≤ δ ^ 2) ∧
        ((∑ i, weight i *
          dSVDensityRationalHeterogeneousStoppedCommonPrefixHazard
            Q m width schedule (ξ i) (ζ i) A C) ≤
          (34 / t) * (64 * Real.sqrt eta + δ) +
            4 * rho ^ 2 +
              (16 * (Real.exp 1 - 1) + 4) * t) := by sorry
