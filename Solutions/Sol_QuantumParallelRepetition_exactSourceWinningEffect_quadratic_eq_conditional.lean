import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_exactAliceQuestionFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobQuestionFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactAliceCoordinateFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobCoordinateFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactAliceCoordinateFilter_sum
import Theorems.Thm_QuantumParallelRepetition_exactBobCoordinateFilter_sum
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactAliceQuestionPurificationMatrix_gram
import Theorems.Thm_QuantumParallelRepetition_exactBobQuestionPurificationMatrix_gram
import Theorems.Thm_QuantumParallelRepetition_exactAliceConditionalMatrix_eq_joint
import Theorems.Thm_QuantumParallelRepetition_exactBobConditionalMatrix_eq_joint
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Pi
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Basic
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Algebra.Star.StarRingHom
import Mathlib.Algebra.Star.Unitary
import Mathlib.Algebra.Star.UnitaryStarAlgAut
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.CStarAlgebra.Module.Constructions
import Mathlib.Analysis.CStarAlgebra.Module.Defs
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Complex.BigOperators
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Erase
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Vec
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Tactic.Abel
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Result
import Mathlib.Topology.Algebra.ConstMulAction
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Algebra.Monoid.Defs
import Mathlib.Topology.Algebra.UniformMulAction
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.EMetricSpace.Defs
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Cauchy
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

theorem spectralSupportFunctional_mul
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (f g : ℝ → ℝ) :
    spectralSupportFunctional F hF f *
        spectralSupportFunctional F hF g =
      spectralSupportFunctional F hF (fun x => f x * g x) := by
  classical
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ)
    hF.isHermitian.eigenvectorUnitary
  change e _ * e _ = e _
  rw [← map_mul, Matrix.diagonal_mul_diagonal]
  congr 1
  funext i
  push_cast
  rfl

theorem spectralSupportFunctional_id
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    spectralSupportFunctional F hF (fun x => x) = F := by
  simpa [spectralSupportFunctional, Function.comp_def] using
    hF.isHermitian.spectral_theorem.symm

theorem spectralSupportFunctional_congr
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    {f g : ℝ → ℝ}
    (h : ∀ i : d,
      f (hF.isHermitian.eigenvalues i) =
        g (hF.isHermitian.eigenvalues i)) :
    spectralSupportFunctional F hF f =
      spectralSupportFunctional F hF g := by
  unfold spectralSupportFunctional
  congr 2
  funext i
  exact_mod_cast h i

theorem spectralSupportFunctional_isHermitian
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (f : ℝ → ℝ) :
    (spectralSupportFunctional F hF f).IsHermitian := by
  classical
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ)
    hF.isHermitian.eigenvectorUnitary
  let D : Matrix d d ℂ :=
    Matrix.diagonal fun i => (f (hF.isHermitian.eigenvalues i) : ℂ)
  have hD : D.IsHermitian := by
    apply Matrix.isHermitian_diagonal_iff.mpr
    intro i
    change star (f (hF.isHermitian.eigenvalues i) : ℂ) = _
    simp
  have hDstar : star D = D := by
    simpa only [Matrix.star_eq_conjTranspose] using hD.eq
  change Matrix.conjTranspose (e D) = e D
  simpa only [Matrix.star_eq_conjTranspose] using
    (show star (e D) = e D by rw [← map_star, hDstar])

theorem spectralSupportProjection_isHermitian
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    (spectralSupportProjection F hF).IsHermitian :=
  spectralSupportFunctional_isHermitian F hF _

theorem spectralSupportInverse_mul
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    spectralSupportInverse F hF * F =
      spectralSupportProjection F hF := by
  change spectralSupportFunctional F hF (fun x => x⁻¹) * F =
    spectralSupportFunctional F hF (fun x => if x = 0 then 0 else 1)
  calc
    spectralSupportFunctional F hF (fun x => x⁻¹) * F =
        spectralSupportFunctional F hF (fun x => x⁻¹) *
          spectralSupportFunctional F hF (fun x => x) := by
            rw [spectralSupportFunctional_id]
    _ = spectralSupportFunctional F hF (fun x => x⁻¹ * x) :=
      spectralSupportFunctional_mul F hF _ _
    _ = _ := spectralSupportFunctional_congr F hF (by
      intro i
      by_cases hi : hF.isHermitian.eigenvalues i = 0
      · simp [hi]
      · simp [hi])

theorem mul_spectralSupportInverse
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    F * spectralSupportInverse F hF =
      spectralSupportProjection F hF := by
  change F * spectralSupportFunctional F hF (fun x => x⁻¹) =
    spectralSupportFunctional F hF (fun x => if x = 0 then 0 else 1)
  calc
    F * spectralSupportFunctional F hF (fun x => x⁻¹) =
        spectralSupportFunctional F hF (fun x => x) *
          spectralSupportFunctional F hF (fun x => x⁻¹) := by
            rw [spectralSupportFunctional_id]
    _ = spectralSupportFunctional F hF (fun x => x * x⁻¹) :=
      spectralSupportFunctional_mul F hF _ _
    _ = _ := spectralSupportFunctional_congr F hF (by
      intro i
      by_cases hi : hF.isHermitian.eigenvalues i = 0
      · simp [hi]
      · simp [hi])

theorem spectralSupportProjection_mul
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    spectralSupportProjection F hF * F = F := by
  change spectralSupportFunctional F hF
      (fun x => if x = 0 then 0 else 1) * F = F
  calc
    spectralSupportFunctional F hF
        (fun x => if x = 0 then 0 else 1) * F =
      spectralSupportFunctional F hF
        (fun x => if x = 0 then 0 else 1) *
          spectralSupportFunctional F hF (fun x => x) := by
            rw [spectralSupportFunctional_id]
    _ = spectralSupportFunctional F hF
          (fun x => (if x = 0 then 0 else 1) * x) :=
      spectralSupportFunctional_mul F hF _ _
    _ = spectralSupportFunctional F hF (fun x => x) :=
      spectralSupportFunctional_congr F hF (by
        intro i
        by_cases hi : hF.isHermitian.eigenvalues i = 0 <;> simp [hi])
    _ = F := spectralSupportFunctional_id F hF

theorem spectralSupportSqrt_sq
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    spectralSupportSqrt F hF * spectralSupportSqrt F hF = F := by
  change spectralSupportFunctional F hF Real.sqrt *
    spectralSupportFunctional F hF Real.sqrt = F
  calc
    spectralSupportFunctional F hF Real.sqrt *
        spectralSupportFunctional F hF Real.sqrt =
      spectralSupportFunctional F hF
        (fun x => Real.sqrt x * Real.sqrt x) :=
      spectralSupportFunctional_mul F hF _ _
    _ = spectralSupportFunctional F hF (fun x => x) :=
      spectralSupportFunctional_congr F hF (by
        intro i
        exact Real.mul_self_sqrt (hF.eigenvalues_nonneg i))
    _ = F := spectralSupportFunctional_id F hF

end

noncomputable section

open Matrix
open scoped BigOperators ComplexOrder MatrixOrder

theorem mul_spectralSupportProjection
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    F * spectralSupportProjection F hF = F := by
  have h := congrArg Matrix.conjTranspose
    (spectralSupportProjection_mul F hF)
  simpa [Matrix.conjTranspose_mul,
    (spectralSupportProjection_isHermitian F hF).eq,
    hF.isHermitian.eq] using h

theorem posSemidef_kernel_of_sub_posSemidef
    {d : Type*} [Fintype d] [DecidableEq d]
    {F A : Matrix d d ℂ}
    (hA : A.PosSemidef) (hsub : (F - A).PosSemidef)
    {x : d → ℂ} (hx : F *ᵥ x = 0) :
    A *ᵥ x = 0 := by
  apply (hA.dotProduct_mulVec_zero_iff x).mp
  have hA_nonneg : 0 ≤ star x ⬝ᵥ (A *ᵥ x) :=
    hA.dotProduct_mulVec_nonneg x
  have hsub_nonneg : 0 ≤ star x ⬝ᵥ ((F - A) *ᵥ x) :=
    hsub.dotProduct_mulVec_nonneg x
  have hzero :
      star x ⬝ᵥ (A *ᵥ x) +
        star x ⬝ᵥ ((F - A) *ᵥ x) = 0 := by
    calc
      star x ⬝ᵥ (A *ᵥ x) +
          star x ⬝ᵥ ((F - A) *ᵥ x) =
        star x ⬝ᵥ ((A + (F - A)) *ᵥ x) := by
          rw [Matrix.add_mulVec, dotProduct_add]
      _ = star x ⬝ᵥ (F *ᵥ x) := by
        have hsum : A + (F - A) = F := by abel
        rw [hsum]
      _ = 0 := by rw [hx]; simp
  exact (add_eq_zero_iff_of_nonneg hA_nonneg hsub_nonneg).mp hzero |>.1

theorem posSemidef_mul_spectralSupportProjection
    {d : Type*} [Fintype d] [DecidableEq d]
    {F A : Matrix d d ℂ}
    (hF : F.PosSemidef) (hA : A.PosSemidef)
    (hsub : (F - A).PosSemidef) :
    A * spectralSupportProjection F hF = A := by
  let P := spectralSupportProjection F hF
  have hFP : F * P = F := mul_spectralSupportProjection F hF
  have hkernel : F * (1 - P) = 0 := by
    rw [mul_sub, mul_one, hFP, sub_self]
  have hAzero : A * (1 - P) = 0 := by
    apply Matrix.ext_of_mulVec_single
    intro i
    have hxi : F *ᵥ ((1 - P) *ᵥ Pi.single i 1) = 0 := by
      have h := congrArg
        (fun M : Matrix d d ℂ => M *ᵥ Pi.single i 1) hkernel
      simpa only [Matrix.mulVec_mulVec, Matrix.zero_mulVec] using h
    have hAi := posSemidef_kernel_of_sub_posSemidef hA hsub hxi
    simpa only [Matrix.mulVec_mulVec, Matrix.zero_mulVec] using hAi
  have hdiff : A - A * P = 0 := by
    simpa [mul_sub] using hAzero
  exact (sub_eq_zero.mp hdiff).symm

theorem spectralSupportProjection_mul_posSemidef
    {d : Type*} [Fintype d] [DecidableEq d]
    {F A : Matrix d d ℂ}
    (hF : F.PosSemidef) (hA : A.PosSemidef)
    (hsub : (F - A).PosSemidef) :
    spectralSupportProjection F hF * A = A := by
  have h := congrArg Matrix.conjTranspose
    (posSemidef_mul_spectralSupportProjection hF hA hsub)
  simpa [Matrix.conjTranspose_mul,
    (spectralSupportProjection_isHermitian F hF).eq,
    hA.isHermitian.eq] using h

theorem refinement_complement_posSemidef
    {ι d : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype d] [DecidableEq d]
    (operator : ι → Matrix d d ℂ)
    (hpositive : ∀ a, (operator a).PosSemidef)
    (a : ι) :
    ((∑ b : ι, operator b) - operator a).PosSemidef := by
  have herase : (∑ b ∈ Finset.univ.erase a, operator b).PosSemidef := by
    apply Matrix.posSemidef_sum (Finset.univ.erase a)
    intro c _
    exact hpositive c
  have hsum : operator a +
      (∑ b ∈ Finset.univ.erase a, operator b) =
      ∑ b : ι, operator b := by
    simp
  rw [← hsum, add_sub_cancel_left]
  exact herase

end

noncomputable section

open Matrix
open scoped BigOperators ComplexOrder MatrixOrder

set_option maxHeartbeats 400000

theorem purificationRangeProjection_compression
    {d e : Type*} [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ)
    (hΓ : Matrix.conjTranspose Γ * Γ = F) :
    Matrix.conjTranspose Γ * purificationRangeProjection F hF Γ * Γ = F := by
  unfold purificationRangeProjection
  calc
    Matrix.conjTranspose Γ *
        (Γ * spectralSupportInverse F hF * Matrix.conjTranspose Γ) * Γ =
      (Matrix.conjTranspose Γ * Γ) * spectralSupportInverse F hF *
        (Matrix.conjTranspose Γ * Γ) := by
          simp only [Matrix.mul_assoc]
    _ = F * spectralSupportInverse F hF * F := by rw [hΓ]
    _ = spectralSupportProjection F hF * F := by
      rw [mul_spectralSupportInverse]
    _ = F := spectralSupportProjection_mul F hF

theorem purificationRangeProjection_complement_compression
    {d e : Type*} [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ)
    (hΓ : Matrix.conjTranspose Γ * Γ = F) :
    Matrix.conjTranspose Γ *
        (1 - purificationRangeProjection F hF Γ) * Γ = 0 := by
  calc
    Matrix.conjTranspose Γ *
        (1 - purificationRangeProjection F hF Γ) * Γ =
      Matrix.conjTranspose Γ * Γ -
        Matrix.conjTranspose Γ * purificationRangeProjection F hF Γ * Γ := by
          rw [Matrix.mul_sub, Matrix.sub_mul]
          simp
    _ = F - F := by
      rw [hΓ, purificationRangeProjection_compression F hF Γ hΓ]
    _ = 0 := sub_self F

theorem purifiedRefinementCore_compression
    {ι d e : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ)
    (hΓ : Matrix.conjTranspose Γ * Γ = F)
    (operator : ι → Matrix d d ℂ)
    (hpositive : ∀ a, (operator a).PosSemidef)
    (hsum : (∑ a : ι, operator a) = F)
    (a : ι) :
    Matrix.conjTranspose Γ *
        purifiedRefinementCore F hF Γ operator a * Γ = operator a := by
  have hsub : (F - operator a).PosSemidef := by
    rw [← hsum]
    exact refinement_complement_posSemidef operator hpositive a
  unfold purifiedRefinementCore
  calc
    Matrix.conjTranspose Γ *
        (Γ * spectralSupportInverse F hF * operator a *
          spectralSupportInverse F hF * Matrix.conjTranspose Γ) * Γ =
      (Matrix.conjTranspose Γ * Γ) * spectralSupportInverse F hF *
        operator a * spectralSupportInverse F hF *
          (Matrix.conjTranspose Γ * Γ) := by
            simp only [Matrix.mul_assoc]
    _ = F * spectralSupportInverse F hF * operator a *
          spectralSupportInverse F hF * F := by
            rw [hΓ]
    _ = (F * spectralSupportInverse F hF) * operator a *
          (spectralSupportInverse F hF * F) := by
            simp only [Matrix.mul_assoc]
    _ = spectralSupportProjection F hF * operator a *
          spectralSupportProjection F hF := by
            rw [mul_spectralSupportInverse, spectralSupportInverse_mul]
    _ = operator a := by
      rw [spectralSupportProjection_mul_posSemidef hF
        (hpositive a) hsub]
      exact posSemidef_mul_spectralSupportProjection hF
        (hpositive a) hsub

theorem purifiedRefinedEffect_compression
    {ι d e : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ)
    (hΓ : Matrix.conjTranspose Γ * Γ = F)
    (operator : ι → Matrix d d ℂ)
    (hpositive : ∀ a, (operator a).PosSemidef)
    (hsum : (∑ a : ι, operator a) = F)
    (a₀ a : ι) :
    Matrix.conjTranspose Γ *
        purifiedRefinedEffect F hF Γ operator a₀ a * Γ = operator a := by
  have hdefect : Matrix.conjTranspose Γ *
      (if a = a₀ then 1 - purificationRangeProjection F hF Γ else 0) *
        Γ = 0 := by
    split
    · exact purificationRangeProjection_complement_compression F hF Γ hΓ
    · simp
  change Matrix.conjTranspose Γ *
      (purifiedRefinementCore F hF Γ operator a +
        if a = a₀ then 1 - purificationRangeProjection F hF Γ else 0) *
        Γ = operator a
  rw [Matrix.mul_add, Matrix.add_mul]
  rw [purifiedRefinementCore_compression F hF Γ hΓ
    operator hpositive hsum a, hdefect, add_zero]

theorem purifiedRefinedPOVM_compression
    {ι d e : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ)
    (hΓ : Matrix.conjTranspose Γ * Γ = F)
    (operator : ι → Matrix d d ℂ)
    (hpositive : ∀ a, (operator a).PosSemidef)
    (hsum : (∑ a : ι, operator a) = F)
    (a₀ a : ι) :
    Matrix.conjTranspose Γ *
      (purifiedRefinedPOVM F hF Γ hΓ operator hpositive hsum a₀).operator a *
        Γ = operator a :=
  purifiedRefinedEffect_compression F hF Γ hΓ operator
    hpositive hsum a₀ a

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem reindexedMatrixQuadratic
    {d e : Type*} [Fintype d] [Fintype e]
    [DecidableEq d] [DecidableEq e]
    (φ : e ≃ d) (M : Matrix d d ℂ) (v : d → ℂ) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := e) (𝕜 := ℂ)
        (M.submatrix φ φ))
      (toLp 2 (v ∘ φ)) =
      (star v ⬝ᵥ M.mulVec v).re := by
  unfold quadraticExpectation
  rw [EuclideanSpace.inner_eq_star_dotProduct]
  change
    (((M.submatrix φ φ).mulVec (v ∘ φ)) ⬝ᵥ
      star (v ∘ φ)).re = (star v ⬝ᵥ M.mulVec v).re
  have h_mul :
      (M.submatrix φ φ).mulVec (v ∘ φ) =
        M.mulVec v ∘ φ := by
    simpa [Function.comp_def] using
      Matrix.submatrix_mulVec_equiv M (v ∘ φ) φ φ
  have h_star : star (v ∘ φ) = star v ∘ φ := by
    rfl
  rw [h_mul, h_star, comp_equiv_dotProduct_comp_equiv]
  rw [dotProduct_comm]

theorem purificationJointEffect_submatrix
    {dA dB : Type} [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (A : Matrix dA dA ℂ) (B : Matrix dB dB ℂ) :
    (A ⊗ₖ (1 : Matrix (dA × dB) (dA × dB) ℂ)) ⊗ₖ B =
      ((1 : Matrix (dA × dB) (dA × dB) ℂ) ⊗ₖ
        (A ⊗ₖ B)).submatrix
          (strategyPurificationShuffle dA dB)
          (strategyPurificationShuffle dA dB) := by
  classical
  ext ⟨⟨a, k⟩, b⟩ ⟨⟨a', k'⟩, b'⟩
  simp [Matrix.kroneckerMap_apply, Matrix.submatrix_apply,
    strategyPurificationShuffle, Matrix.one_apply]

theorem strategyPurificationVector_quadratic
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {G : Game X Y A B} (S : Strategy G)
    (EA : Matrix S.Alice S.Alice ℂ)
    (EB : Matrix S.Bob S.Bob ℂ) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (S.Alice × (S.Alice × S.Bob)) × S.Bob) (𝕜 := ℂ)
        ((EA ⊗ₖ (1 : Matrix (S.Alice × S.Bob)
          (S.Alice × S.Bob) ℂ)) ⊗ₖ EB))
      (strategyPurificationVector S) =
      (Matrix.trace
        (S.state.matrix * (EA ⊗ₖ EB))).re := by
  let K := spectralSupportSqrt S.state.matrix S.state.positive
  let E := EA ⊗ₖ EB
  let φ := strategyPurificationShuffle S.Alice S.Bob
  have h_hermitian : (Matrix.conjTranspose K) = K :=
    (spectralSupportFunctional_isHermitian
      S.state.matrix S.state.positive Real.sqrt).eq
  have h_lift := purificationJointEffect_submatrix EA EB
  change
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (S.Alice × (S.Alice × S.Bob)) × S.Bob) (𝕜 := ℂ)
        ((EA ⊗ₖ (1 : Matrix (S.Alice × S.Bob)
          (S.Alice × S.Bob) ℂ)) ⊗ₖ EB))
      (toLp 2 (Matrix.vec K ∘ φ)) =
      (Matrix.trace (S.state.matrix * E)).re
  rw [h_lift]
  rw [reindexedMatrixQuadratic φ
    ((1 : Matrix (S.Alice × S.Bob) (S.Alice × S.Bob) ℂ) ⊗ₖ E)
    (Matrix.vec K)]
  have h_vec :
      Matrix.mulVec
        ((1 : Matrix (S.Alice × S.Bob) (S.Alice × S.Bob) ℂ) ⊗ₖ E)
        (Matrix.vec K) =
        Matrix.vec (E * K) := by
    exact (Matrix.vec_mul_eq_mulVec E K).symm
  rw [h_vec, Matrix.star_vec_dotProduct_vec]
  rw [h_hermitian]
  congr 1
  calc
    Matrix.trace (K * (E * K)) =
      Matrix.trace (K * E * K) := by rw [Matrix.mul_assoc]
    _ = Matrix.trace (K * K * E) := by
      rw [Matrix.trace_mul_cycle]
    _ = Matrix.trace (S.state.matrix * E) := by
      change
        Matrix.trace
          (spectralSupportSqrt S.state.matrix S.state.positive *
            spectralSupportSqrt S.state.matrix S.state.positive * E) = _
      rw [spectralSupportSqrt_sq]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem rectangular_matrix_quadratic_compression
    {d e : Type*}
    [Fintype d] [Fintype e] [DecidableEq d] [DecidableEq e]
    (K : Matrix e d ℂ) (E : Matrix e e ℂ)
    (z : EuclideanSpace ℂ d) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := e) (𝕜 := ℂ) E)
      (toLp 2 (K.mulVec (ofLp z))) =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ)
          (K.conjTranspose * E * K)) z := by
  unfold quadraticExpectation
  rw [EuclideanSpace.inner_eq_star_dotProduct,
    EuclideanSpace.inner_eq_star_dotProduct]
  change
    (E.mulVec (K.mulVec (ofLp z)) ⬝ᵥ
      star (K.mulVec (ofLp z))).re =
    ((K.conjTranspose * E * K).mulVec (ofLp z) ⬝ᵥ
      star (ofLp z)).re
  rw [dotProduct_comm (E.mulVec (K.mulVec (ofLp z))),
    Matrix.star_mulVec,
    ← Matrix.dotProduct_mulVec,
    Matrix.mulVec_mulVec,
    Matrix.mulVec_mulVec]
  rw [dotProduct_comm]

theorem finiteLocalPurificationJointMatrix_compression
    {X Y A B eA eB : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype eA] [Fintype eB]
    [DecidableEq eA] [DecidableEq eB]
    {G : Game X Y A B} (S : Strategy G)
    (KA : Matrix eA S.Alice ℂ) (KB : Matrix eB S.Bob ℂ)
    (EA : Matrix eA eA ℂ) (EB : Matrix eB eB ℂ) :
    (finiteLocalPurificationJointMatrix S KA KB).conjTranspose *
        (((EA ⊗ₖ
            (1 : Matrix (S.Alice × S.Bob)
              (S.Alice × S.Bob) ℂ)) ⊗ₖ EB)) *
        finiteLocalPurificationJointMatrix S KA KB =
      (((KA.conjTranspose * EA * KA) ⊗ₖ
          (1 : Matrix (S.Alice × S.Bob)
            (S.Alice × S.Bob) ℂ)) ⊗ₖ
        (KB.conjTranspose * EB * KB)) := by
  unfold finiteLocalPurificationJointMatrix
  rw [Matrix.conjTranspose_kronecker,
    ← Matrix.mul_kronecker_mul,
    ← Matrix.mul_kronecker_mul,
    Matrix.conjTranspose_kronecker,
    ← Matrix.mul_kronecker_mul,
    ← Matrix.mul_kronecker_mul]
  simp

theorem finiteLocalPurificationVector_quadratic
    {X Y A B eA eB : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype eA] [Fintype eB]
    [DecidableEq eA] [DecidableEq eB]
    {G : Game X Y A B} (S : Strategy G)
    (KA : Matrix eA S.Alice ℂ) (KB : Matrix eB S.Bob ℂ)
    (EA : Matrix eA eA ℂ) (EB : Matrix eB eB ℂ) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (eA × (S.Alice × S.Bob)) × eB) (𝕜 := ℂ)
        (((EA ⊗ₖ
          (1 : Matrix (S.Alice × S.Bob)
            (S.Alice × S.Bob) ℂ)) ⊗ₖ EB)))
      (finiteLocalPurificationVector S KA KB) =
      bornTracePairing S.state.matrix
        (KA.conjTranspose * EA * KA)
        (KB.conjTranspose * EB * KB) := by
  unfold finiteLocalPurificationVector
  rw [rectangular_matrix_quadratic_compression,
    finiteLocalPurificationJointMatrix_compression]
  exact strategyPurificationVector_quadratic S
    (KA.conjTranspose * EA * KA)
    (KB.conjTranspose * EB * KB)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactAliceRefinedPOVM_compression
    [DecidableEq A]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (x : X) (a : A) :
    (exactAlicePurificationMatrix
      G n S D r.seed r.history r.aliceAnswer (.inl x)).conjTranspose *
      (exactAliceRefinedPOVM G n S D r a₀ x).operator a *
      exactAlicePurificationMatrix
        G n S D r.seed r.history r.aliceAnswer (.inl x) =
      exactAliceCoordinateFilter
        G n S D r.seed r.history r.aliceAnswer x a := by
  exact purifiedRefinedPOVM_compression
    (exactAliceQuestionFilter
      G n S D r.seed r.history r.aliceAnswer x)
    (exactAliceQuestionFilter_posSemidef
      G n S D r.seed r.history r.aliceAnswer x)
    (exactAlicePurificationMatrix
      G n S D r.seed r.history r.aliceAnswer (.inl x))
    (exactAliceQuestionPurificationMatrix_gram G n S D r x)
    (exactAliceCoordinateFilter
      G n S D r.seed r.history r.aliceAnswer x)
    (exactAliceCoordinateFilter_posSemidef
      G n S D r.seed r.history r.aliceAnswer x)
    (exactAliceCoordinateFilter_sum
      G n S D r.seed r.history r.aliceAnswer x)
    a₀ a

theorem exactBobRefinedPOVM_compression
    [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (b₀ : B) (y : Y) (b : B) :
    (exactBobPurificationMatrix
      G n S D r.seed r.history r.bobAnswer (.inl y)).conjTranspose *
      (exactBobRefinedPOVM G n S D r b₀ y).operator b *
      exactBobPurificationMatrix
        G n S D r.seed r.history r.bobAnswer (.inl y) =
      exactBobCoordinateFilter
        G n S D r.seed r.history r.bobAnswer y b := by
  exact purifiedRefinedPOVM_compression
    (exactBobQuestionFilter
      G n S D r.seed r.history r.bobAnswer y)
    (exactBobQuestionFilter_posSemidef
      G n S D r.seed r.history r.bobAnswer y)
    (exactBobPurificationMatrix
      G n S D r.seed r.history r.bobAnswer (.inl y))
    (exactBobQuestionPurificationMatrix_gram G n S D r y)
    (exactBobCoordinateFilter
      G n S D r.seed r.history r.bobAnswer y)
    (exactBobCoordinateFilter_posSemidef
      G n S D r.seed r.history r.bobAnswer y)
    (exactBobCoordinateFilter_sum
      G n S D r.seed r.history r.bobAnswer y)
    b₀ b

theorem exactRefinedPOVM_quadratic
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (b₀ : B) (x : X) (y : Y) (a : A) (b : B) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := ExactAliceLocalIndex G n S D r ×
          ExactBobLocalIndex G n S D r)
        (𝕜 := ℂ)
        (((exactAliceRefinedPOVM
          G n S D r a₀ x).operator a ⊗ₖ
          (1 : Matrix (S.Alice × S.Bob)
            (S.Alice × S.Bob) ℂ)) ⊗ₖ
          (exactBobRefinedPOVM
            G n S D r b₀ y).operator b))
      (exactUnnormalizedPsi G n S D r x y) =
      bornTracePairing S.state.matrix
        (exactAliceCoordinateFilter
          G n S D r.seed r.history r.aliceAnswer x a)
        (exactBobCoordinateFilter
          G n S D r.seed r.history r.bobAnswer y b) := by
  unfold exactUnnormalizedPsi
  rw [finiteLocalPurificationVector_quadratic,
    exactAliceRefinedPOVM_compression,
    exactBobRefinedPOVM_compression]

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem sourceHistoryQuadraticExpectation_matrix_sum
    {I d : Type*} [Fintype I] [Fintype d] [DecidableEq d]
    (M : I → Matrix d d ℂ) (z : EuclideanSpace ℂ d) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) (∑ i : I, M i)) z =
      ∑ i : I,
        quadraticExpectation
          (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) (M i)) z := by
  simp [quadraticExpectation]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactAliceCoordinateFilter_eq_joint
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → A)
    (x : X) (y : Y) (a : A)
    (nonzero : exactFiberQuestionMass
      G n D seed history x y ≠ 0) :
    exactAliceCoordinateFilter
        G n S D seed history answer x a =
      exactJointAliceCoordinateFilter
        G n S D seed history answer x y a := by
  exact exactAliceConditionalMatrix_eq_joint
    G n D seed history x y nonzero
    (fun xs => conditionedAliceCoordinateEffect
      G n S D answer xs seed.coordinate.val a)

theorem exactBobCoordinateFilter_eq_joint
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → B)
    (x : X) (y : Y) (b : B)
    (nonzero : exactFiberQuestionMass
      G n D seed history x y ≠ 0) :
    exactBobCoordinateFilter
        G n S D seed history answer y b =
      exactJointBobCoordinateFilter
        G n S D seed history answer x y b := by
  exact exactBobConditionalMatrix_eq_joint
    G n D seed history x y nonzero
    (fun ys => conditionedBobCoordinateEffect
      G n S D answer ys seed.coordinate.val b)

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceJointEffect_quadratic
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (b₀ : B) (x : X) (y : Y) (a : A) (b : B) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := ExactAliceLocalIndex G n S D r ×
          ExactBobLocalIndex G n S D r) (𝕜 := ℂ)
        (exactSourceJointEffect G n S D r a₀ b₀ x y a b))
      (exactUnnormalizedPsi G n S D r x y) =
      bornTracePairing S.state.matrix
        (exactAliceCoordinateFilter
          G n S D r.seed r.history r.aliceAnswer x a)
        (exactBobCoordinateFilter
          G n S D r.seed r.history r.bobAnswer y b) := by
  classical
  simpa [exactSourceJointEffect,
    exactSourceAliceRefinedPOVM,
    exactSourceBobRefinedPOVM, purificationAlicePOVM] using
    (exactRefinedPOVM_quadratic
      G n S D r a₀ b₀ x y a b)

theorem exactSourceWinningEffect_quadratic
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (b₀ : B) (x : X) (y : Y) :
    quadraticExpectation
      (exactSourceWinningEffectCLM
        G n S D r a₀ b₀ x y)
      (exactUnnormalizedPsi G n S D r x y) =
      ∑ a : A, ∑ b : B,
        if G.predicate x y a b = true then
          bornTracePairing S.state.matrix
            (exactAliceCoordinateFilter
              G n S D r.seed r.history r.aliceAnswer x a)
            (exactBobCoordinateFilter
              G n S D r.seed r.history r.bobAnswer y b)
        else 0 := by
  classical
  unfold exactSourceWinningEffectCLM
    exactSourceWinningEffect
  rw [sourceHistoryQuadraticExpectation_matrix_sum]
  apply Finset.sum_congr rfl
  intro a _
  rw [sourceHistoryQuadraticExpectation_matrix_sum]
  apply Finset.sum_congr rfl
  intro b _
  split_ifs
  · exact exactSourceJointEffect_quadratic
      G n S D r a₀ b₀ x y a b
  · simp [quadraticExpectation]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (r : ExactHistoryFlag X Y A B D)
    (a₀ : A) (b₀ : B) (x : X) (y : Y)
    (supported : exactFiberQuestionMass
      G n D r.seed r.history x y ≠ 0) :
    quadraticExpectation
      (exactSourceWinningEffectCLM
        G n S D r a₀ b₀ x y)
      (exactUnnormalizedPsi G n S D r x y) =
      exactJointConditionalWinningMass
        G n S D r.seed r.history r.aliceAnswer r.bobAnswer x y := by
  rw [exactSourceWinningEffect_quadratic]
  unfold exactJointConditionalWinningMass
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  split_ifs
  · rw [exactAliceCoordinateFilter_eq_joint
      G n S D r.seed r.history r.aliceAnswer x y a supported,
      exactBobCoordinateFilter_eq_joint
        G n S D r.seed r.history r.bobAnswer x y b supported]
  · rfl
