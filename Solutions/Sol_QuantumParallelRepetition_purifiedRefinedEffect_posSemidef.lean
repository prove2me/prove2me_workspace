import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_01
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Algebra.Star.StarRingHom
import Mathlib.Algebra.Star.Unitary
import Mathlib.Algebra.Star.UnitaryStarAlgAut
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Tactic.Abel
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Result
import Mathlib.Topology.Defs.Filter

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

theorem spectralSupportInverse_isHermitian
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    (spectralSupportInverse F hF).IsHermitian :=
  spectralSupportFunctional_isHermitian F hF _

theorem spectralSupportInverse_penrose
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    spectralSupportInverse F hF * F *
        spectralSupportInverse F hF =
      spectralSupportInverse F hF := by
  change spectralSupportFunctional F hF (fun x => x⁻¹) * F *
      spectralSupportFunctional F hF (fun x => x⁻¹) =
    spectralSupportFunctional F hF (fun x => x⁻¹)
  calc
    spectralSupportFunctional F hF (fun x => x⁻¹) * F *
        spectralSupportFunctional F hF (fun x => x⁻¹) =
      (spectralSupportFunctional F hF (fun x => x⁻¹) *
        spectralSupportFunctional F hF (fun x => x)) *
          spectralSupportFunctional F hF (fun x => x⁻¹) := by
            rw [spectralSupportFunctional_id]
    _ = spectralSupportFunctional F hF
          (fun x => (x⁻¹ * x) * x⁻¹) := by
      rw [spectralSupportFunctional_mul,
        spectralSupportFunctional_mul]
    _ = _ := spectralSupportFunctional_congr F hF (by
      intro i
      by_cases hi : hF.isHermitian.eigenvalues i = 0
      · simp [hi]
      · simp [hi])

end

noncomputable section

open Matrix
open scoped BigOperators ComplexOrder MatrixOrder

set_option maxHeartbeats 400000

theorem purificationRangeProjection_isHermitian
    {d e : Type*} [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ) :
    (purificationRangeProjection F hF Γ).IsHermitian := by
  unfold purificationRangeProjection
  change Matrix.conjTranspose
    (Γ * spectralSupportInverse F hF * Matrix.conjTranspose Γ) = _
  simp [Matrix.conjTranspose_mul,
    (spectralSupportInverse_isHermitian F hF).eq, Matrix.mul_assoc]

theorem purificationRangeProjection_idempotent
    {d e : Type*} [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ)
    (hΓ : Matrix.conjTranspose Γ * Γ = F) :
    purificationRangeProjection F hF Γ *
        purificationRangeProjection F hF Γ =
      purificationRangeProjection F hF Γ := by
  unfold purificationRangeProjection
  calc
    (Γ * spectralSupportInverse F hF * Matrix.conjTranspose Γ) *
        (Γ * spectralSupportInverse F hF * Matrix.conjTranspose Γ) =
      Γ * (spectralSupportInverse F hF *
        (Matrix.conjTranspose Γ * Γ) *
          spectralSupportInverse F hF) * Matrix.conjTranspose Γ := by
            simp only [Matrix.mul_assoc]
    _ = Γ * (spectralSupportInverse F hF * F *
          spectralSupportInverse F hF) * Matrix.conjTranspose Γ := by
            rw [hΓ]
    _ = Γ * spectralSupportInverse F hF *
          Matrix.conjTranspose Γ := by
            rw [spectralSupportInverse_penrose]

theorem purificationRangeProjection_complement_posSemidef
    {d e : Type*} [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ)
    (hΓ : Matrix.conjTranspose Γ * Γ = F) :
    (1 - purificationRangeProjection F hF Γ).PosSemidef := by
  let P := purificationRangeProjection F hF Γ
  have hPstar : Matrix.conjTranspose P = P :=
    (purificationRangeProjection_isHermitian F hF Γ).eq
  have hPsq : P * P = P :=
    purificationRangeProjection_idempotent F hF Γ hΓ
  have hsquare :
      Matrix.conjTranspose (1 - P) * (1 - P) = 1 - P := by
    calc
      Matrix.conjTranspose (1 - P) * (1 - P) =
          (1 - P) * (1 - P) := by
            simp [Matrix.conjTranspose_sub, hPstar]
      _ = 1 - P - P + P * P := by noncomm_ring
      _ = 1 - P := by rw [hPsq]; noncomm_ring
  have hpositive := Matrix.posSemidef_conjTranspose_mul_self
    (1 - P)
  rw [hsquare] at hpositive
  exact hpositive

theorem purifiedRefinementCore_posSemidef
    {ι d e : Type*} [Fintype ι]
    [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ)
    (operator : ι → Matrix d d ℂ)
    (hpositive : ∀ a, (operator a).PosSemidef)
    (a : ι) :
    (purifiedRefinementCore F hF Γ operator a).PosSemidef := by
  have h := (hpositive a).mul_mul_conjTranspose_same
    (Γ * spectralSupportInverse F hF)
  simpa [purifiedRefinementCore, Matrix.conjTranspose_mul,
    (spectralSupportInverse_isHermitian F hF).eq,
    Matrix.mul_assoc] using h

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open Matrix
open scoped BigOperators ComplexOrder MatrixOrder
set_option maxHeartbeats 400000

theorem solution
    {ι d e : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype d] [DecidableEq d]
    [Fintype e] [DecidableEq e]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (Γ : Matrix e d ℂ)
    (hΓ : Matrix.conjTranspose Γ * Γ = F)
    (operator : ι → Matrix d d ℂ)
    (hpositive : ∀ a, (operator a).PosSemidef)
    (a₀ a : ι) :
    (purifiedRefinedEffect F hF Γ operator a₀ a).PosSemidef := by
  change (purifiedRefinementCore F hF Γ operator a +
    if a = a₀ then 1 - purificationRangeProjection F hF Γ else 0).PosSemidef
  refine (purifiedRefinementCore_posSemidef F hF Γ operator
    hpositive a).add ?_
  split
  · exact purificationRangeProjection_complement_posSemidef F hF Γ hΓ
  · exact Matrix.PosSemidef.zero
