import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_embezzlementState_norm
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Nat
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Nat
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Real
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.MulAction
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Pow
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem sharedThresholdResourceRaw_ne_zero
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (k : κ) (i : d) (hk : τ k ≠ 0) :
    sharedThresholdResourceRaw (d := d) τ ≠ 0 := by
  intro hzero
  have hentry := congrArg
    (fun z : EuclideanSpace ℂ
        ((Σ _ : κ, d) × (Σ _ : κ, d)) =>
      z (⟨k, i⟩, ⟨k, i⟩)) hzero
  have hcast : (τ k : ℂ) = 0 := by
    simpa [sharedThresholdResourceRaw] using hentry
  exact hk (by exact_mod_cast hcast)

theorem sharedThresholdResource_norm
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (k : κ) (i : d) (hk : τ k ≠ 0) :
    ‖sharedThresholdResource (d := d) τ‖ = 1 := by
  have hnorm : ‖sharedThresholdResourceRaw (d := d) τ‖ ≠ 0 :=
    norm_ne_zero_iff.mpr
      (sharedThresholdResourceRaw_ne_zero τ k i hk)
  rw [sharedThresholdResource, norm_smul, Real.norm_eq_abs,
    abs_of_nonneg (inv_nonneg.mpr (norm_nonneg _)),
    inv_mul_cancel₀ hnorm]

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker

theorem ePRState_norm (m : ℕ) (hm : 0 < m) :
    ‖ePRState m‖ = 1 := by
  have hmreal : 0 < (m : ℝ) := by exact_mod_cast hm
  have hamp :
      ‖(↑((Real.sqrt (m : ℝ))⁻¹) : ℂ)‖ ^ 2 =
        (m : ℝ)⁻¹ := by
    rw [Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (inv_nonneg.mpr (Real.sqrt_nonneg _)),
      inv_pow, Real.sq_sqrt hmreal.le]
  have hsquare : ‖ePRState m‖ ^ 2 = 1 := by
    rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
    have hterm (i j : Fin m) :
        ‖if i = j then
          (↑((Real.sqrt (m : ℝ))⁻¹) : ℂ)
        else
          0‖ ^ 2 =
          if i = j then (m : ℝ)⁻¹ else 0 := by
      split_ifs with h
      · exact hamp
      · simp
    change
      (∑ i : Fin m, ∑ j : Fin m,
        ‖if i = j then
          (↑((Real.sqrt (m : ℝ))⁻¹) : ℂ)
        else
          0‖ ^ 2) = 1
    simp_rw [hterm]
    simp [hmreal.ne']
  nlinarith [norm_nonneg (ePRState m)]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityThresholdWholeHistorySharedState_norm
    {N d : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (L : ℕ) :
    ‖dSVUniformDensityThresholdWholeHistorySharedState
      N d L‖ = 1 := by
  let k : Fin (L + 1) := ⟨0, by omega⟩
  let i : Fin (L + 1) →
      DSVUniformDensityThresholdLocalIndex N d :=
    fun _ => ⟨⟨0, grid⟩, ⟨0, dimension⟩⟩
  apply sharedThresholdResource_norm
    (fun flag : Fin (L + 1) =>
      if flag.val = 0 then (1 : ℝ) else 0) k i
  simp [k]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalPublicMultiscalePhase_card
    (S B : ℕ) :
    Fintype.card
        (DSVDensityRationalPublicMultiscalePhase S B) =
      B ^ S := by
  simp [DSVDensityRationalPublicMultiscalePhase]

theorem dSVDensityRationalPublicMultiscalePhase_card_pos
    {S B : ℕ} (positive : 0 < B) :
    0 < Fintype.card
      (DSVDensityRationalPublicMultiscalePhase S B) := by
  rw [dSVDensityRationalPublicMultiscalePhase_card]
  exact pow_pos positive S

theorem dSVDensityRationalPublicLogBilateralPureTensor_norm_sq
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (v : EuclideanSpace ℂ (ι × ι))
    (u : EuclideanSpace ℂ (κ × κ)) :
    ‖dSVDensityRationalPublicLogBilateralPureTensor v u‖ ^ 2 =
      ‖v‖ ^ 2 * ‖u‖ ^ 2 := by
  classical
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq,
    EuclideanSpace.norm_sq_eq]
  change
    (∑ q : (ι × κ) × (ι × κ),
      ‖v (q.1.1, q.2.1) * u (q.1.2, q.2.2)‖ ^ 2) =
      (∑ q : ι × ι, ‖v q‖ ^ 2) *
        (∑ q : κ × κ, ‖u q‖ ^ 2)
  simp only [Fintype.sum_prod_type, norm_mul, mul_pow]
  calc
    (∑ a : ι, ∑ x : κ, ∑ b : ι, ∑ y : κ,
      ‖v (a, b)‖ ^ 2 * ‖u (x, y)‖ ^ 2) =
      ∑ a : ι, ∑ b : ι, ∑ x : κ, ∑ y : κ,
        ‖v (a, b)‖ ^ 2 * ‖u (x, y)‖ ^ 2 := by
          apply Finset.sum_congr rfl
          intro a _
          rw [Finset.sum_comm]
    _ = (∑ a : ι, ∑ b : ι, ‖v (a, b)‖ ^ 2) *
          (∑ x : κ, ∑ y : κ, ‖u (x, y)‖ ^ 2) := by
            symm
            rw [Finset.sum_mul]
            apply Finset.sum_congr rfl
            intro a _
            rw [Finset.sum_mul]
            apply Finset.sum_congr rfl
            intro b _
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro x _
            rw [Finset.mul_sum]

theorem dSVDensityRationalPublicLogPhasePureSource_norm
    {B N d L : ℕ}
    (phases : 0 < B) (grid : 0 < N) (dimension : 0 < d) :
    ‖dSVDensityRationalPublicLogPhasePureSource
      B N d L‖ = 1 := by
  have squared :
      ‖dSVDensityRationalPublicLogPhasePureSource
        B N d L‖ ^ 2 = 1 := by
    unfold dSVDensityRationalPublicLogPhasePureSource
    rw [dSVDensityRationalPublicLogBilateralPureTensor_norm_sq,
      ePRState_norm B phases,
      dSVUniformDensityThresholdWholeHistorySharedState_norm
        grid dimension L]
    norm_num
  nlinarith [norm_nonneg
    (dSVDensityRationalPublicLogPhasePureSource B N d L)]

theorem dSVDensityRationalPublicLogPhaseHarmonicPureSource_norm
    {B N d L m : ℕ}
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m) :
    ‖dSVDensityRationalPublicLogPhaseHarmonicPureSource
      B N d L m‖ = 1 := by
  have squared :
      ‖dSVDensityRationalPublicLogPhaseHarmonicPureSource
        B N d L m‖ ^ 2 = 1 := by
    unfold dSVDensityRationalPublicLogPhaseHarmonicPureSource
    rw [dSVDensityRationalPublicLogBilateralPureTensor_norm_sq,
      dSVDensityRationalPublicLogPhasePureSource_norm
        phases grid dimension,
      embezzlementState_norm m harmonic]
    norm_num
  nlinarith [norm_nonneg
    (dSVDensityRationalPublicLogPhaseHarmonicPureSource
      B N d L m)]

theorem dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource_norm
    {B N d L m : ℕ}
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m) :
    ‖dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource
      B N d L m‖ = 1 := by
  unfold dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource
  rw [LinearIsometryEquiv.norm_map]
  exact dSVDensityRationalPublicLogPhaseHarmonicPureSource_norm
    phases grid dimension harmonic

theorem
    dSVDensityRationalPublicMultiscalePhaseTargetFirstPreparedSource_norm
    {S B N d L m : ℕ}
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m) :
    ‖dSVDensityRationalPublicMultiscalePhaseTargetFirstPreparedSource
      S B N d L m‖ = 1 := by
  unfold
    dSVDensityRationalPublicMultiscalePhaseTargetFirstPreparedSource
  exact
    dSVDensityRationalPublicLogPhaseTargetFirstPreparedSource_norm
      (dSVDensityRationalPublicMultiscalePhase_card_pos phases)
      grid dimension harmonic

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem solution
    {S B N d L m : ℕ}
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m) :
    ‖unconditionalSourcePhysicalCleanedStoppingFixedSource
      S B N d L m‖ = 1 := by
  unfold unconditionalSourcePhysicalCleanedStoppingFixedSource
  rw [LinearIsometryEquiv.norm_map]
  exact
    dSVDensityRationalPublicMultiscalePhaseTargetFirstPreparedSource_norm
      phases grid dimension harmonic
