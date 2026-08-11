import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_10
import Theorems.Thm_QuantumParallelRepetition_scalarResolventFilter_memLp_two
import Theorems.Thm_QuantumParallelRepetition_spectralPurificationFilter_memLp_two
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Algebra.BigOperators.Finsupp.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.GroupWithZero.Action
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.Group.Units.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Lie.Basic
import Mathlib.Algebra.Lie.OfAssociative
import Mathlib.Algebra.Module.BigOperators
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.NatInt
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Module.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Algebra.Star.StarRingHom
import Mathlib.Algebra.Star.Unitary
import Mathlib.Algebra.Star.UnitaryStarAlgAut
import Mathlib.Analysis.CStarAlgebra.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
import Mathlib.Analysis.CStarAlgebra.Module.Constructions
import Mathlib.Analysis.CStarAlgebra.Module.Defs
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.LinearMap
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.Subspace
import Mathlib.Analysis.Matrix.HermitianFunctionalCalculus
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Field.Lemmas
import Mathlib.Analysis.Normed.Group.Constructions
import Mathlib.Analysis.Normed.Group.Continuity
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Real
import Mathlib.Analysis.Normed.Group.Submodule
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.ENNReal.Holder
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finsupp.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Int.Cast.Lemmas
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.NNRat.Defs
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Rat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.Set.Defs
import Mathlib.Data.SetLike.Basic
import Mathlib.FieldTheory.Perfect
import Mathlib.FieldTheory.Separable
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Basis.VectorSpace
import Mathlib.LinearAlgebra.Complex.FiniteDimensional
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.FreeModule.PID
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic
import Mathlib.MeasureTheory.Constructions.BorelSpace.Order
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.L1Space.Integrable
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Function.LpSeminorm.Defs
import Mathlib.MeasureTheory.Function.LpSeminorm.Monotonicity
import Mathlib.MeasureTheory.Function.LpSeminorm.TriangleInequality
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.MeasureTheory.Integral.IntegrableOn
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.MeasurableSpace.Defs
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.MeasureTheory.OuterMeasure.AE
import Mathlib.MeasureTheory.SpecificCodomains.Pi
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Filter.AtTopBot.Defs
import Mathlib.Order.Filter.AtTopBot.Group
import Mathlib.Order.Filter.Defs
import Mathlib.Order.Filter.Tendsto
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Order.Lattice
import Mathlib.Order.Max
import Mathlib.RingTheory.Algebraic.Integral
import Mathlib.RingTheory.DedekindDomain.Basic
import Mathlib.RingTheory.Flat.FaithfullyFlat.Algebra
import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic
import Mathlib.RingTheory.Flat.TorsionFree
import Mathlib.RingTheory.IntegralClosure.Algebra.Basic
import Mathlib.RingTheory.SimpleRing.Basic
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Abel
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Linarith.Preprocessing
import Mathlib.Tactic.Module
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Eq
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Pow
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Field
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Algebra.Module.ModuleTopology
import Mathlib.Topology.Algebra.Monoid.Defs
import Mathlib.Topology.Algebra.Order.Field
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Ring.Real
import Mathlib.Topology.Algebra.Star.Real
import Mathlib.Topology.Constructions
import Mathlib.Topology.Continuous
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.EMetricSpace.Defs
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Basic
import Mathlib.Topology.MetricSpace.Defs
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.MetricSpace.Pseudo.Lemmas
import Mathlib.Topology.Neighborhoods
import Mathlib.Topology.Order.OrderClosed
import Mathlib.Topology.UniformSpace.Defs
import Mathlib.Topology.UniformSpace.Matrix
import Mathlib.Topology.UniformSpace.Pi
import Mathlib.Topology.UniformSpace.Real

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators

theorem noncommutative_resolvent_identity
    {R : Type*} [Ring R]
    (F M S RF RM : R)
    (hF : RF * (F + S) = 1)
    (hM : (M + S) * RM = 1) :
    RF - RM = RF * (M - F) * RM := by
  calc
    RF - RM = RF * ((M + S) * RM) - (RF * (F + S)) * RM := by
      rw [hM, hF]
      simp
    _ = RF * (M - F) * RM := by
      noncomm_ring

theorem noncommutative_filtered_resolvent_identity
    {R : Type*} [Ring R]
    (F M S RF RM : R)
    (hF_left : (F + S) * RF = 1)
    (hF_right : RF * (F + S) = 1)
    (hM_left : (M + S) * RM = 1) :
    F * RF - M * RM = S * (RF * (F - M) * RM) := by
  have hFR : F * RF = 1 - S * RF := by
    have h : F * RF + S * RF = 1 := by
      simpa [add_mul] using hF_left
    exact eq_sub_of_add_eq h
  have hMR : M * RM = 1 - S * RM := by
    have h : M * RM + S * RM = 1 := by
      simpa [add_mul] using hM_left
    exact eq_sub_of_add_eq h
  have hdiff : RM - RF = RF * (F - M) * RM := by
    calc
      RM - RF = -(RF - RM) := by noncomm_ring
      _ = -(RF * (M - F) * RM) := by
        rw [noncommutative_resolvent_identity F M S RF RM hF_right hM_left]
      _ = RF * (F - M) * RM := by noncomm_ring
  rw [hFR, hMR]
  calc
    (1 - S * RF) - (1 - S * RM) = S * (RM - RF) := by
      noncomm_ring
    _ = S * (RF * (F - M) * RM) := by rw [hdiff]

theorem noncommutative_resolvent_second_order
    {R : Type*} [Ring R]
    (F M S RF RM : R)
    (hF_left : (F + S) * RF = 1)
    (hF_right : RF * (F + S) = 1)
    (hM_left : (M + S) * RM = 1)
    (hM_right : RM * (M + S) = 1) :
    RF = RM - RM * (F - M) * RM +
      RM * (F - M) * RF * (F - M) * RM := by
  have hleft : RM - RF = RM * (F - M) * RF :=
    noncommutative_resolvent_identity M F S RM RF hM_right hF_left
  have hright : RF - RM = RF * (M - F) * RM :=
    noncommutative_resolvent_identity F M S RF RM hF_right hM_left
  have hfirst : RF = RM - RM * (F - M) * RF := by
    calc
      RF = RM - (RM - RF) := by noncomm_ring
      _ = RM - RM * (F - M) * RF := by rw [hleft]
  have hsecond : RF = RM - RF * (F - M) * RM := by
    calc
      RF = RM + (RF - RM) := by noncomm_ring
      _ = RM + RF * (M - F) * RM := by rw [hright]
      _ = RM - RF * (F - M) * RM := by noncomm_ring
  calc
    RF = RM - RM * (F - M) * RF := hfirst
    _ = RM - RM * (F - M) *
      (RM - RF * (F - M) * RM) := by rw [← hsecond]
    _ = RM - RM * (F - M) * RM +
      RM * (F - M) * RF * (F - M) * RM := by noncomm_ring

theorem noncommutative_weighted_resolvent_second_order
    {ι R : Type*} [Fintype ι] [Ring R]
    (weight : ι → R) (F : ι → R) (M S : R)
    (RF : ι → R) (RM : R)
    (normalized : (∑ i : ι, weight i) = 1)
    (centered : (∑ i : ι, weight i * (F i - M)) = 0)
    (commute_mean : ∀ i, weight i * RM = RM * weight i)
    (hF_left : ∀ i, (F i + S) * RF i = 1)
    (hF_right : ∀ i, RF i * (F i + S) = 1)
    (hM_left : (M + S) * RM = 1)
    (hM_right : RM * (M + S) = 1) :
    (∑ i : ι, weight i * RF i) - RM =
      RM * (∑ i : ι,
        weight i * ((F i - M) * RF i * (F i - M))) * RM := by
  have hterm (i : ι) :
      weight i * RF i =
        weight i * RM - RM * (weight i * (F i - M)) * RM +
          RM * (weight i * ((F i - M) * RF i * (F i - M))) * RM := by
    nth_rewrite 1 [noncommutative_resolvent_second_order
      (F i) M S (RF i) RM (hF_left i) (hF_right i) hM_left hM_right]
    have hw := commute_mean i
    calc
      weight i *
        (RM - RM * (F i - M) * RM +
          RM * (F i - M) * RF i * (F i - M) * RM) =
        weight i * RM -
          (weight i * RM) * (F i - M) * RM +
          (weight i * RM) * ((F i - M) * RF i * (F i - M)) * RM := by
            noncomm_ring
      _ = weight i * RM -
          (RM * weight i) * (F i - M) * RM +
          (RM * weight i) * ((F i - M) * RF i * (F i - M)) * RM := by
            rw [hw]
      _ = weight i * RM - RM * (weight i * (F i - M)) * RM +
          RM * (weight i * ((F i - M) * RF i * (F i - M))) * RM := by
            noncomm_ring
  calc
    (∑ i : ι, weight i * RF i) - RM =
        (∑ i : ι,
          (weight i * RM - RM * (weight i * (F i - M)) * RM +
            RM * (weight i * ((F i - M) * RF i * (F i - M))) * RM)) - RM := by
              congr 1
              exact Finset.sum_congr rfl (fun i _ => hterm i)
    _ = (∑ i : ι, weight i) * RM -
          RM * (∑ i : ι, weight i * (F i - M)) * RM +
          RM * (∑ i : ι,
            weight i * ((F i - M) * RF i * (F i - M))) * RM - RM := by
              simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib,
                ← Finset.sum_mul, ← Finset.mul_sum]
    _ = RM * (∑ i : ι,
          weight i * ((F i - M) * RF i * (F i - M))) * RM := by
            rw [normalized, centered]
            noncomm_ring

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

theorem posSemidef_hermitian_sandwich
    {d : Type*} [Fintype d] [DecidableEq d]
    {A D : Matrix d d ℂ}
    (hA : A.PosSemidef) (hD : D.IsHermitian) :
    (D * A * D).PosSemidef := by
  simpa [hD.eq] using hA.mul_mul_conjTranspose_same D

theorem shifted_posSemidef_matrix_posDef
    {d : Type*} [Fintype d] [DecidableEq d]
    {F : Matrix d d ℂ} (hF : F.PosSemidef)
    {s : ℝ} (hs : 0 < s) :
    (F + s • (1 : Matrix d d ℂ)).PosDef := by
  have hshift : (s • (1 : Matrix d d ℂ)).PosDef :=
    Matrix.PosDef.one.smul hs
  exact Matrix.PosDef.posSemidef_add hF hshift

theorem shifted_posSemidef_matrix_inverse_posSemidef
    {d : Type*} [Fintype d] [DecidableEq d]
    {F : Matrix d d ℂ} (hF : F.PosSemidef)
    {s : ℝ} (hs : 0 < s) :
    ((F + s • (1 : Matrix d d ℂ))⁻¹).PosSemidef :=
  (shifted_posSemidef_matrix_posDef hF hs).posSemidef.inv

theorem matrix_weighted_centered
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ) (F : ι → Matrix d d ℂ)
    (M : Matrix d d ℂ)
    (normalized : (∑ i : ι, weight i) = 1)
    (mean : (∑ i : ι, weight i • F i) = M) :
    (∑ i : ι, weight i • (F i - M)) = 0 := by
  simp_rw [smul_sub]
  rw [Finset.sum_sub_distrib, mean, ← Finset.sum_smul, normalized]
  simp

theorem weighted_positive_matrix_mean
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ) (F : ι → Matrix d d ℂ)
    (nonnegative : ∀ i, 0 ≤ weight i)
    (positive : ∀ i, (F i).PosSemidef) :
    (∑ i : ι, weight i • F i).PosSemidef := by
  exact Matrix.posSemidef_sum Finset.univ
    (fun i _ => (positive i).smul (nonnegative i))

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

@[simp] theorem spectralConjugationCLM_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (U : Matrix.unitaryGroup d ℂ) (A : Matrix d d ℂ) :
    spectralConjugationCLM U A =
      (U : Matrix d d ℂ) * A * star (U : Matrix d d ℂ) := by
  rfl

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem spectralPurificationFilter_mul_shift
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    {s : ℝ} (hs : 0 < s) :
    spectralPurificationFilter F hF s *
        (F + s • (1 : Matrix d d ℂ)) = F := by
  classical
  let U := hF.isHermitian.eigenvectorUnitary
  let eigenvalue := hF.isHermitian.eigenvalues
  let D : Matrix d d ℂ :=
    Matrix.diagonal fun i => (eigenvalue i : ℂ)
  let T : Matrix d d ℂ := Matrix.diagonal fun i =>
    ((eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ)
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ) U
  have heigenvalue (i : d) : 0 ≤ eigenvalue i :=
    hF.eigenvalues_nonneg i
  have hden (i : d) : eigenvalue i + s ≠ 0 :=
    ne_of_gt (add_pos_of_nonneg_of_pos (heigenvalue i) hs)
  have hFspec : F = e D := by
    simpa [D, eigenvalue, e, Function.comp_def] using
      hF.isHermitian.spectral_theorem
  have hshift_inner :
      D + s • (1 : Matrix d d ℂ) =
        Matrix.diagonal fun i => ((eigenvalue i + s : ℝ) : ℂ) := by
    ext i j
    by_cases hij : i = j
    · subst j
      simp [D]
    · simp [D, hij]
  have hproduct : T * (D + s • (1 : Matrix d d ℂ)) = D := by
    rw [hshift_inner]
    change
      Matrix.diagonal (fun i =>
        ((eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ)) *
          Matrix.diagonal (fun i => ((eigenvalue i + s : ℝ) : ℂ)) =
        Matrix.diagonal (fun i => (eigenvalue i : ℂ))
    rw [Matrix.diagonal_mul_diagonal]
    congr 1
    funext i
    push_cast
    have hden_complex :
        (eigenvalue i : ℂ) + (s : ℂ) ≠ 0 := by
      exact_mod_cast hden i
    rw [div_mul_cancel₀ _ hden_complex]
  have hscalar : e (s • (1 : Matrix d d ℂ)) =
      s • (1 : Matrix d d ℂ) := by
    change
      (U : Matrix d d ℂ) * (s • (1 : Matrix d d ℂ)) *
          star (U : Matrix d d ℂ) = s • (1 : Matrix d d ℂ)
    rw [mul_smul_comm, mul_one, smul_mul_assoc]
    simp
  change e T * (F + s • (1 : Matrix d d ℂ)) = F
  rw [hFspec, ← hscalar, ← map_add, ← map_mul, hproduct]

theorem spectralPurificationFilter_eq_resolvent
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    {s : ℝ} (hs : 0 < s) :
    spectralPurificationFilter F hF s =
      F * (F + s • (1 : Matrix d d ℂ))⁻¹ := by
  have hdet : IsUnit (F + s • (1 : Matrix d d ℂ)).det :=
    (Matrix.isUnit_iff_isUnit_det _).mp
      (shifted_posSemidef_matrix_posDef hF hs).isUnit
  calc
    spectralPurificationFilter F hF s =
        spectralPurificationFilter F hF s *
          ((F + s • (1 : Matrix d d ℂ)) *
            (F + s • (1 : Matrix d d ℂ))⁻¹) := by
          rw [Matrix.mul_nonsing_inv _ hdet, mul_one]
    _ = (spectralPurificationFilter F hF s *
          (F + s • (1 : Matrix d d ℂ))) *
          (F + s • (1 : Matrix d d ℂ))⁻¹ := by
          rw [mul_assoc]
    _ = F * (F + s • (1 : Matrix d d ℂ))⁻¹ := by
          rw [spectralPurificationFilter_mul_shift F hF hs]

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem spectralPurificationFilter_square_contraction
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    {s : ℝ} (hs : 0 < s) :
    (spectralPurificationFilter F hF s -
      star (spectralPurificationFilter F hF s) *
        spectralPurificationFilter F hF s).PosSemidef := by
  classical
  let U := hF.isHermitian.eigenvectorUnitary
  let eigenvalue := hF.isHermitian.eigenvalues
  let D : Matrix d d ℂ := Matrix.diagonal fun i =>
    ((eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ)
  let e := Unitary.conjStarAlgAut ℂ (Matrix d d ℂ) U
  have hDhermitian : D.IsHermitian := by
    apply Matrix.isHermitian_diagonal_iff.mpr
    intro i
    change star ((eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ) = _
    simp
  have hDstar : star D = D := by
    simpa only [Matrix.star_eq_conjTranspose] using hDhermitian.eq
  have hdiag : (D - D * D).PosSemidef := by
    rw [show D * D = Matrix.diagonal (fun i =>
      (((eigenvalue i / (eigenvalue i + s)) ^ 2 : ℝ) : ℂ)) by
        dsimp [D]
        rw [Matrix.diagonal_mul_diagonal]
        congr 1
        funext i
        simp [pow_two]]
    have hsub : D - Matrix.diagonal (fun i =>
        (((eigenvalue i / (eigenvalue i + s)) ^ 2 : ℝ) : ℂ)) =
        Matrix.diagonal (fun i =>
          ((eigenvalue i / (eigenvalue i + s) -
            (eigenvalue i / (eigenvalue i + s)) ^ 2 : ℝ) : ℂ)) := by
      ext i j
      by_cases hij : i = j
      · subst j
        simp [D]
      · simp [D, hij]
    rw [hsub]
    apply Matrix.PosSemidef.diagonal
    intro i
    change 0 ≤ ((eigenvalue i / (eigenvalue i + s) -
      (eigenvalue i / (eigenvalue i + s)) ^ 2 : ℝ) : ℂ)
    apply Complex.nonneg_iff.mpr
    constructor
    · have hnonneg : 0 ≤ eigenvalue i / (eigenvalue i + s) :=
        div_nonneg (hF.eigenvalues_nonneg i)
          (le_of_lt (add_pos_of_nonneg_of_pos
            (hF.eigenvalues_nonneg i) hs))
      have hle : eigenvalue i / (eigenvalue i + s) ≤ 1 :=
        (div_le_one (add_pos_of_nonneg_of_pos
          (hF.eigenvalues_nonneg i) hs)).mpr (by linarith)
      change 0 ≤ eigenvalue i / (eigenvalue i + s) -
        (eigenvalue i / (eigenvalue i + s)) ^ 2
      nlinarith
    · simp only [Complex.ofReal_im]
  change (e D - star (e D) * e D).PosSemidef
  rw [← map_star, hDstar, ← map_mul, ← map_sub]
  change ((U : Matrix d d ℂ) * (D - D * D) *
    star (U : Matrix d d ℂ)).PosSemidef
  simpa [Matrix.star_eq_conjTranspose] using
    hdiag.mul_mul_conjTranspose_same (U : Matrix d d ℂ)

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem bochner_integral_posSemidef
    {α d : Type*} [MeasurableSpace α]
    [Fintype d] [DecidableEq d]
    {μ : Measure α} {f : α → Matrix d d ℂ}
    (hf : Integrable f μ)
    (hpos : ∀ᵐ t ∂μ, (f t).PosSemidef) :
    (∫ t, f t ∂μ).PosSemidef := by
  have hadjoint :
      star (∫ t, f t ∂μ) = ∫ t, star (f t) ∂μ := by
    exact (ContinuousLinearMap.integral_comp_comm
      matrixAdjointCLM hf).symm
  have hadjoint_ae : (fun t => star (f t)) =ᵐ[μ] f := by
    filter_upwards [hpos] with t ht
    simpa only [Matrix.star_eq_conjTranspose] using ht.isHermitian.eq
  have hhermitian : (∫ t, f t ∂μ).IsHermitian := by
    apply Matrix.IsHermitian.ext
    intro i j
    have hstar : star (∫ t, f t ∂μ) = ∫ t, f t ∂μ :=
      hadjoint.trans (integral_congr_ae hadjoint_ae)
    have hentry := congr_fun (congr_fun hstar i) j
    simpa [Matrix.star_eq_conjTranspose, Matrix.conjTranspose] using hentry
  apply Matrix.PosSemidef.of_dotProduct_mulVec_nonneg hhermitian
  intro x
  have hcomm :
      (∫ t, matrixQuadraticCLM x (f t) ∂μ) =
        matrixQuadraticCLM x (∫ t, f t ∂μ) :=
    ContinuousLinearMap.integral_comp_comm
      (matrixQuadraticCLM x) hf
  change 0 ≤ matrixQuadraticCLM x (∫ t, f t ∂μ)
  rw [← hcomm]
  apply integral_nonneg_of_ae
  filter_upwards [hpos] with t ht
  exact ht.dotProduct_mulVec_nonneg x

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem spectralPurificationFilter_eq_one_sub_shifted_inverse
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    {s : ℝ} (hs : 0 < s) :
    spectralPurificationFilter F hF s =
      1 - s • (F + s • (1 : Matrix d d ℂ))⁻¹ := by
  have hdet : IsUnit (F + s • (1 : Matrix d d ℂ)).det :=
    (Matrix.isUnit_iff_isUnit_det _).mp
      (shifted_posSemidef_matrix_posDef hF hs).isUnit
  rw [spectralPurificationFilter_eq_resolvent F hF hs]
  apply eq_sub_of_add_eq
  simpa [add_mul, smul_mul_assoc] using
    Matrix.mul_nonsing_inv
      (F + s • (1 : Matrix d d ℂ)) hdet

theorem shifted_inverse_square_contraction
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    {s : ℝ} (hs : 0 < s) :
    (s • (F + s • (1 : Matrix d d ℂ))⁻¹ -
      s ^ 2 •
        ((F + s • (1 : Matrix d d ℂ))⁻¹ *
          (F + s • (1 : Matrix d d ℂ))⁻¹)).PosSemidef := by
  let R : Matrix d d ℂ := (F + s • (1 : Matrix d d ℂ))⁻¹
  have hstar : star R = R := by
    simpa only [Matrix.star_eq_conjTranspose] using
      (shifted_posSemidef_matrix_inverse_posSemidef hF hs).isHermitian.eq
  have h := spectralPurificationFilter_square_contraction F hF hs
  rw [spectralPurificationFilter_eq_one_sub_shifted_inverse F hF hs] at h
  change (s • R - s ^ 2 • (R * R)).PosSemidef
  change ((1 - s • R) - star (1 - s • R) *
    (1 - s • R)).PosSemidef at h
  convert h using 1
  simp only [star_sub, star_one, star_smul, star_trivial, hstar,
    sub_mul, mul_sub, one_mul, mul_one, smul_mul_assoc,
    mul_smul_comm, pow_two]
  module

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem spectralPurificationFilter_sub_resolvent
    {d : Type*} [Fintype d] [DecidableEq d]
    (F M : Matrix d d ℂ)
    (hF : F.PosSemidef) (hM : M.PosSemidef)
    {s : ℝ} (hs : 0 < s) :
    spectralPurificationFilter F hF s -
        spectralPurificationFilter M hM s =
      s • ((F + s • (1 : Matrix d d ℂ))⁻¹ *
        (F - M) * (M + s • (1 : Matrix d d ℂ))⁻¹) := by
  have hdetF : IsUnit (F + s • (1 : Matrix d d ℂ)).det :=
    (Matrix.isUnit_iff_isUnit_det _).mp
      (shifted_posSemidef_matrix_posDef hF hs).isUnit
  have hdetM : IsUnit (M + s • (1 : Matrix d d ℂ)).det :=
    (Matrix.isUnit_iff_isUnit_det _).mp
      (shifted_posSemidef_matrix_posDef hM hs).isUnit
  rw [spectralPurificationFilter_eq_resolvent F hF hs,
    spectralPurificationFilter_eq_resolvent M hM hs]
  simpa [smul_mul_assoc] using
    noncommutative_filtered_resolvent_identity
      F M (s • (1 : Matrix d d ℂ))
      (F + s • (1 : Matrix d d ℂ))⁻¹
      (M + s • (1 : Matrix d d ℂ))⁻¹
      (Matrix.mul_nonsing_inv _ hdetF)
      (Matrix.nonsing_inv_mul _ hdetF)
      (Matrix.mul_nonsing_inv _ hdetM)

theorem spectralPurificationFilter_sub_gram
    {d : Type*} [Fintype d] [DecidableEq d]
    (F M : Matrix d d ℂ)
    (hF : F.PosSemidef) (hM : M.PosSemidef)
    {s : ℝ} (hs : 0 < s) :
    star (spectralPurificationFilter F hF s -
        spectralPurificationFilter M hM s) *
      (spectralPurificationFilter F hF s -
        spectralPurificationFilter M hM s) =
      s ^ 2 •
        ((M + s • (1 : Matrix d d ℂ))⁻¹ * (F - M) *
          ((F + s • (1 : Matrix d d ℂ))⁻¹ *
            (F + s • (1 : Matrix d d ℂ))⁻¹) *
          (F - M) * (M + s • (1 : Matrix d d ℂ))⁻¹) := by
  let RF : Matrix d d ℂ := (F + s • (1 : Matrix d d ℂ))⁻¹
  let RM : Matrix d d ℂ := (M + s • (1 : Matrix d d ℂ))⁻¹
  let D : Matrix d d ℂ := F - M
  have hRF : star RF = RF := by
    simpa only [Matrix.star_eq_conjTranspose] using
      (shifted_posSemidef_matrix_inverse_posSemidef hF hs).isHermitian.eq
  have hRM : star RM = RM := by
    simpa only [Matrix.star_eq_conjTranspose] using
      (shifted_posSemidef_matrix_inverse_posSemidef hM hs).isHermitian.eq
  have hD : star D = D := by
    simpa only [Matrix.star_eq_conjTranspose] using
      (hF.isHermitian.sub hM.isHermitian).eq
  rw [spectralPurificationFilter_sub_resolvent F M hF hM hs]
  change star (s • (RF * D * RM)) * (s • (RF * D * RM)) =
    s ^ 2 • (RM * D * (RF * RF) * D * RM)
  simp only [star_smul, star_trivial, star_mul, hRF, hRM, hD,
    smul_mul_assoc, mul_smul_comm, smul_smul, pow_two]
  congr 1
  noncomm_ring

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem weighted_shifted_inverse_second_order
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ) (F : ι → Matrix d d ℂ)
    (M : Matrix d d ℂ)
    (normalized : (∑ i : ι, weight i) = 1)
    (mean : (∑ i : ι, weight i • F i) = M)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef)
    {s : ℝ} (hs : 0 < s) :
    (∑ i : ι, weight i •
      (F i + s • (1 : Matrix d d ℂ))⁻¹) -
        (M + s • (1 : Matrix d d ℂ))⁻¹ =
      (M + s • (1 : Matrix d d ℂ))⁻¹ *
        (∑ i : ι, weight i •
          ((F i - M) * (F i + s • (1 : Matrix d d ℂ))⁻¹ *
            (F i - M))) *
        (M + s • (1 : Matrix d d ℂ))⁻¹ := by
  let W : ι → Matrix d d ℂ := fun i =>
    weight i • (1 : Matrix d d ℂ)
  let RF : ι → Matrix d d ℂ := fun i =>
    (F i + s • (1 : Matrix d d ℂ))⁻¹
  let RM : Matrix d d ℂ :=
    (M + s • (1 : Matrix d d ℂ))⁻¹
  have hW_normalized : (∑ i : ι, W i) = 1 := by
    dsimp [W]
    rw [← Finset.sum_smul, normalized]
    simp
  have hW_centered : (∑ i : ι, W i * (F i - M)) = 0 := by
    dsimp [W]
    simp_rw [smul_mul_assoc, one_mul]
    exact matrix_weighted_centered weight F M normalized mean
  have hW_commutes (i : ι) : W i * RM = RM * W i := by
    dsimp [W]
    rw [smul_mul_assoc, one_mul, mul_smul_comm, mul_one]
  have hdetF (i : ι) :
      IsUnit (F i + s • (1 : Matrix d d ℂ)).det :=
    (Matrix.isUnit_iff_isUnit_det _).mp
      (shifted_posSemidef_matrix_posDef (positive i) hs).isUnit
  have hdetM : IsUnit (M + s • (1 : Matrix d d ℂ)).det :=
    (Matrix.isUnit_iff_isUnit_det _).mp
      (shifted_posSemidef_matrix_posDef hM hs).isUnit
  have hidentity := noncommutative_weighted_resolvent_second_order
    W F M (s • (1 : Matrix d d ℂ)) RF RM
    hW_normalized hW_centered hW_commutes
    (fun i => Matrix.mul_nonsing_inv _ (hdetF i))
    (fun i => Matrix.nonsing_inv_mul _ (hdetF i))
    (Matrix.mul_nonsing_inv _ hdetM)
    (Matrix.nonsing_inv_mul _ hdetM)
  simpa [W, RF, RM, smul_mul_assoc] using hidentity

theorem weighted_spectralPurificationFilter_variance_le_inverse_jensen
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ) (F : ι → Matrix d d ℂ)
    (M : Matrix d d ℂ)
    (nonnegative : ∀ i, 0 ≤ weight i)
    (normalized : (∑ i : ι, weight i) = 1)
    (mean : (∑ i : ι, weight i • F i) = M)
    (positive : ∀ i, (F i).PosSemidef)
    {s : ℝ} (hs : 0 < s) :
    let hM : M.PosSemidef := by
      rw [← mean]
      exact weighted_positive_matrix_mean weight F nonnegative positive
    (s •
      ((∑ i : ι, weight i •
        (F i + s • (1 : Matrix d d ℂ))⁻¹) -
        (M + s • (1 : Matrix d d ℂ))⁻¹) -
      ∑ i : ι, weight i •
        (star (spectralPurificationFilter (F i) (positive i) s -
            spectralPurificationFilter M hM s) *
          (spectralPurificationFilter (F i) (positive i) s -
            spectralPurificationFilter M hM s))).PosSemidef := by
  dsimp
  let hM : M.PosSemidef := by
    rw [← mean]
    exact weighted_positive_matrix_mean weight F nonnegative positive
  let RF : ι → Matrix d d ℂ := fun i =>
    (F i + s • (1 : Matrix d d ℂ))⁻¹
  let RM : Matrix d d ℂ :=
    (M + s • (1 : Matrix d d ℂ))⁻¹
  let D : ι → Matrix d d ℂ := fun i => F i - M
  let K : ι → Matrix d d ℂ := fun i =>
    s • RF i - s ^ 2 • (RF i * RF i)
  have hK (i : ι) : (K i).PosSemidef :=
    shifted_inverse_square_contraction (F i) (positive i) hs
  have hD (i : ι) : (D i).IsHermitian :=
    (positive i).isHermitian.sub hM.isHermitian
  have hinner :
      (∑ i : ι, weight i • (D i * K i * D i)).PosSemidef := by
    apply Matrix.posSemidef_sum
    intro i _
    exact (posSemidef_hermitian_sandwich (hK i) (hD i)).smul
      (nonnegative i)
  have hRM : RM.IsHermitian :=
    (shifted_posSemidef_matrix_inverse_posSemidef hM hs).isHermitian
  have houter :
      (RM * (∑ i : ι, weight i • (D i * K i * D i)) * RM).PosSemidef :=
    posSemidef_hermitian_sandwich hinner hRM
  have hsecond :
      (∑ i : ι, weight i • RF i) - RM =
        RM * (∑ i : ι, weight i • (D i * RF i * D i)) * RM :=
    weighted_shifted_inverse_second_order
      weight F M normalized mean positive hM hs
  have hgram (i : ι) :
      star (spectralPurificationFilter (F i) (positive i) s -
          spectralPurificationFilter M hM s) *
        (spectralPurificationFilter (F i) (positive i) s -
          spectralPurificationFilter M hM s) =
        s ^ 2 • (RM * D i * (RF i * RF i) * D i * RM) :=
    spectralPurificationFilter_sub_gram
      (F i) M (positive i) hM hs
  change
    (s • ((∑ i : ι, weight i • RF i) - RM) -
      ∑ i : ι, weight i •
        (star (spectralPurificationFilter (F i) (positive i) s -
            spectralPurificationFilter M hM s) *
          (spectralPurificationFilter (F i) (positive i) s -
            spectralPurificationFilter M hM s))).PosSemidef
  rw [hsecond]
  simp_rw [hgram]
  convert houter using 1
  simp only [Finset.mul_sum, Finset.sum_mul, Finset.smul_sum,
    mul_smul_comm, smul_mul_assoc,
    smul_smul, mul_sub, sub_mul, K]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [smul_sub, smul_smul, smul_smul, mul_comm s (weight i)]
  simp only [mul_assoc]

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem matrix_memLp_two_mul_integrable
    {α d : Type*} [MeasurableSpace α]
    [Fintype d] {μ : Measure α}
    {f g : α → Matrix d d ℂ}
    (hf : MemLp f 2 μ) (hg : MemLp g 2 μ) :
    Integrable (fun t => f t * g t) μ := by
  classical
  apply Integrable.of_eval
  intro i
  apply Integrable.of_eval
  intro j
  change Integrable (fun t => ∑ k : d, f t i k * g t k j) μ
  apply integrable_finsetSum Finset.univ
  intro k _
  exact ((hf.eval i).eval k).integrable_mul ((hg.eval k).eval j)

theorem spectralPurificationFilter_difference_gram_integrable
    {d : Type*} [Fintype d] [DecidableEq d]
    (F M : Matrix d d ℂ)
    (hF : F.PosSemidef) (hM : M.PosSemidef) :
    IntegrableOn
      (fun s : ℝ =>
        star (spectralPurificationFilter F hF s -
          spectralPurificationFilter M hM s) *
        (spectralPurificationFilter F hF s -
          spectralPurificationFilter M hM s))
      (Ioi 0) := by
  have hdelta :
      MemLp (fun s : ℝ =>
        spectralPurificationFilter F hF s -
          spectralPurificationFilter M hM s) 2
        (volume.restrict (Ioi 0)) :=
    (spectralPurificationFilter_memLp_two F hF).sub
      (spectralPurificationFilter_memLp_two M hM)
  exact matrix_memLp_two_mul_integrable hdelta.star hdelta

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem scalar_entropy_resolvent_integrable
    {z : ℝ} (hz : 0 ≤ z) :
    IntegrableOn
      (fun s : ℝ => z / (1 + s) - z / (z + s))
      (Ioi 0) := by
  have hone :
      MemLp (fun s : ℝ => 1 / (1 + s)) 2
        (volume.restrict (Ioi 0)) :=
    scalarResolventFilter_memLp_two (z := 1) (by norm_num)
  have hzfilter := scalarResolventFilter_memLp_two hz
  have hproduct :
      Integrable
        (fun s : ℝ =>
          (1 / (1 + s)) * (z / (z + s)))
        (volume.restrict (Ioi 0)) :=
    hone.integrable_mul hzfilter
  have hscaled :
      IntegrableOn
        (fun s : ℝ =>
          (z - 1) * ((1 / (1 + s)) * (z / (z + s))))
        (Ioi 0) := hproduct.const_mul (z - 1)
  refine hscaled.congr_fun (fun s hs => ?_) measurableSet_Ioi
  have hspos : 0 < s := hs
  have hzone : 1 + s ≠ 0 := ne_of_gt (by linarith)
  have hzden : z + s ≠ 0 := ne_of_gt (by linarith)
  field_simp
  ; ring

theorem spectralEntropyKernel_integrable
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    IntegrableOn (spectralEntropyKernel F hF) (Ioi 0) := by
  classical
  let eigenvalue := hF.isHermitian.eigenvalues
  have hdiag :
      IntegrableOn
        (fun s : ℝ => Matrix.diagonal fun i : d =>
          ((eigenvalue i / (1 + s) -
            eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ))
        (Ioi 0) := by
    apply Integrable.of_eval
    intro i
    apply Integrable.of_eval
    intro j
    by_cases hij : i = j
    · subst j
      have heigenvalue : 0 ≤ eigenvalue i :=
        hF.eigenvalues_nonneg i
      have hcomplex :
          Integrable
            (fun s : ℝ =>
              ((eigenvalue i / (1 + s) -
                eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ))
            (volume.restrict (Ioi 0)) :=
        MeasureTheory.Integrable.ofReal (𝕜 := ℂ)
          (scalar_entropy_resolvent_integrable heigenvalue)
      simpa only [Matrix.diagonal_apply_eq] using hcomplex
    · simp [hij]
  exact
    (spectralConjugationCLM hF.isHermitian.eigenvectorUnitary).integrable_comp
      hdiag

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem spectralEntropyKernel_eq_scalar_sub_filter
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) (s : ℝ) :
    spectralEntropyKernel F hF s =
      (1 / (1 + s) : ℝ) • F -
        spectralPurificationFilter F hF s := by
  classical
  let U := hF.isHermitian.eigenvectorUnitary
  let eigenvalue := hF.isHermitian.eigenvalues
  let L := spectralConjugationCLM U
  let D : Matrix d d ℂ :=
    Matrix.diagonal fun i => (eigenvalue i : ℂ)
  let G : Matrix d d ℂ := Matrix.diagonal fun i =>
    ((eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ)
  let K : Matrix d d ℂ := Matrix.diagonal fun i =>
    ((eigenvalue i / (1 + s) -
      eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ)
  have hFspec : F = L D := by
    simpa [L, U, D, eigenvalue, Function.comp_def,
      Unitary.conjStarAlgAut_apply] using
      hF.isHermitian.spectral_theorem
  have hdiag : K = (1 / (1 + s) : ℝ) • D - G := by
    ext i j
    by_cases hij : i = j
    · subst j
      simp [K, D, G, div_eq_mul_inv, mul_comm]
    · simp [K, D, G, hij]
  change L K = (1 / (1 + s) : ℝ) • F - L G
  rw [hFspec, ← L.map_smul, ← L.map_sub, hdiag]

theorem weightedSpectralFilterVariance_integrable
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ) (F : ι → Matrix d d ℂ)
    (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) :
    IntegrableOn
      (weightedSpectralFilterVariance weight F M positive hM)
      (Ioi 0) := by
  unfold weightedSpectralFilterVariance
  apply integrable_finsetSum Finset.univ
  intro i _
  exact (spectralPurificationFilter_difference_gram_integrable
    (F i) M (positive i) hM).smul (weight i)

theorem weightedSpectralEntropyJensen_integrable
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ) (F : ι → Matrix d d ℂ)
    (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) :
    IntegrableOn
      (weightedSpectralEntropyJensen weight F M positive hM)
      (Ioi 0) := by
  unfold weightedSpectralEntropyJensen
  apply Integrable.sub
  · apply integrable_finsetSum Finset.univ
    intro i _
    exact (spectralEntropyKernel_integrable
      (F i) (positive i)).smul (weight i)
  · exact spectralEntropyKernel_integrable M hM

theorem weightedSpectralEntropyJensen_eq_shifted_inverse
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ) (F : ι → Matrix d d ℂ)
    (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef)
    (normalized : (∑ i : ι, weight i) = 1)
    (mean : (∑ i : ι, weight i • F i) = M)
    {s : ℝ} (hs : 0 < s) :
    weightedSpectralEntropyJensen weight F M positive hM s =
      s •
        ((∑ i : ι, weight i •
          (F i + s • (1 : Matrix d d ℂ))⁻¹) -
          (M + s • (1 : Matrix d d ℂ))⁻¹) := by
  classical
  let c : ℝ := 1 / (1 + s)
  let RF : ι → Matrix d d ℂ := fun i =>
    (F i + s • (1 : Matrix d d ℂ))⁻¹
  let RM : Matrix d d ℂ :=
    (M + s • (1 : Matrix d d ℂ))⁻¹
  have hscalar :
      (∑ i : ι, weight i • (c • F i)) = c • M := by
    calc
      (∑ i : ι, weight i • (c • F i)) =
          ∑ i : ι, c • (weight i • F i) := by
            apply Finset.sum_congr rfl
            intro i _
            simp only [smul_smul, mul_comm]
      _ = c • (∑ i : ι, weight i • F i) := by
            rw [Finset.smul_sum]
      _ = c • M := by rw [mean]
  have hscale :
      (∑ i : ι, weight i • (s • RF i)) =
        s • (∑ i : ι, weight i • RF i) := by
    calc
      (∑ i : ι, weight i • (s • RF i)) =
          ∑ i : ι, s • (weight i • RF i) := by
            apply Finset.sum_congr rfl
            intro i _
            simp only [smul_smul, mul_comm]
      _ = s • (∑ i : ι, weight i • RF i) := by
            rw [Finset.smul_sum]
  have hfilter_sum :
      (∑ i : ι, weight i •
        spectralPurificationFilter (F i) (positive i) s) =
      1 - s • (∑ i : ι, weight i • RF i) := by
    calc
      (∑ i : ι, weight i •
          spectralPurificationFilter (F i) (positive i) s) =
          ∑ i : ι, weight i • (1 - s • RF i) := by
            apply Finset.sum_congr rfl
            intro i _
            rw [spectralPurificationFilter_eq_one_sub_shifted_inverse
              (F i) (positive i) hs]
      _ = 1 - s • (∑ i : ι, weight i • RF i) := by
            simp_rw [smul_sub]
            rw [Finset.sum_sub_distrib, ← Finset.sum_smul,
              normalized, hscale]
            simp
  unfold weightedSpectralEntropyJensen
  simp_rw [spectralEntropyKernel_eq_scalar_sub_filter]
  change
    (∑ i : ι, weight i •
      (c • F i - spectralPurificationFilter (F i) (positive i) s)) -
      (c • M - spectralPurificationFilter M hM s) =
    s • ((∑ i : ι, weight i • RF i) - RM)
  simp_rw [smul_sub]
  rw [Finset.sum_sub_distrib, hscalar, hfilter_sum,
    spectralPurificationFilter_eq_one_sub_shifted_inverse M hM hs]
  module

theorem integrated_weighted_spectralPurificationFilter_jensen
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ) (F : ι → Matrix d d ℂ)
    (M : Matrix d d ℂ)
    (nonnegative : ∀ i, 0 ≤ weight i)
    (normalized : (∑ i : ι, weight i) = 1)
    (mean : (∑ i : ι, weight i • F i) = M)
    (positive : ∀ i, (F i).PosSemidef) :
    let hM : M.PosSemidef := by
      rw [← mean]
      exact weighted_positive_matrix_mean weight F nonnegative positive
    ((∫ s in Ioi (0 : ℝ),
        weightedSpectralEntropyJensen weight F M positive hM s) -
      (∫ s in Ioi (0 : ℝ),
        weightedSpectralFilterVariance weight F M positive hM s)).PosSemidef := by
  dsimp
  let hM : M.PosSemidef := by
    rw [← mean]
    exact weighted_positive_matrix_mean weight F nonnegative positive
  have hentropy := weightedSpectralEntropyJensen_integrable
    weight F M positive hM
  have hvariance := weightedSpectralFilterVariance_integrable
    weight F M positive hM
  have hremainder :
      Integrable
        (fun s : ℝ =>
          weightedSpectralEntropyJensen weight F M positive hM s -
            weightedSpectralFilterVariance weight F M positive hM s)
        (volume.restrict (Ioi 0)) :=
    hentropy.sub hvariance
  have hpointwise :
      ∀ᵐ s ∂(volume.restrict (Ioi (0 : ℝ))),
        (weightedSpectralEntropyJensen weight F M positive hM s -
          weightedSpectralFilterVariance weight F M positive hM s).PosSemidef := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with s hs
    have hspos : 0 < s := hs
    rw [weightedSpectralEntropyJensen_eq_shifted_inverse
      weight F M positive hM normalized mean hspos]
    unfold weightedSpectralFilterVariance
    exact weighted_spectralPurificationFilter_variance_le_inverse_jensen
      weight F M nonnegative normalized mean positive hspos
  have hintegral := bochner_integral_posSemidef hremainder hpointwise
  rw [integral_sub hentropy hvariance] at hintegral
  exact hintegral

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem scalar_entropy_resolvent_integral
    {z : ℝ} (hz : 0 ≤ z) :
    (∫ s in Ioi (0 : ℝ),
      (z / (1 + s) - z / (z + s))) = z * Real.log z := by
  rcases hz.eq_or_lt with rfl | hzpos
  · simp
  · have hderiv :
        ∀ x ∈ Ici (0 : ℝ),
          HasDerivAt
            (fun t : ℝ => z * Real.log ((1 + t) / (z + t)))
            (z / (1 + x) - z / (z + x)) x := by
      intro x hx
      have hxnonneg : 0 ≤ x := hx
      have hnum : 1 + x ≠ 0 := ne_of_gt (by linarith)
      have hden : z + x ≠ 0 := ne_of_gt (by linarith)
      have hratio : (1 + x) / (z + x) ≠ 0 :=
        div_ne_zero hnum hden
      have hdnum :=
        (hasDerivAt_const x (1 : ℝ)).add (hasDerivAt_id x)
      have hdden :=
        (hasDerivAt_const x z).add (hasDerivAt_id x)
      have hd :
          HasDerivAt
            (fun t : ℝ => z * Real.log ((1 + t) / (z + t)))
            (z * (((z + x) - (1 + x)) / (z + x) ^ 2 /
              ((1 + x) / (z + x)))) x := by
        simpa [Function.comp_def] using
          ((hdnum.div hdden hden).log hratio).const_mul z
      apply hd.congr_deriv
      field_simp [hnum, hden]
    have hden_top : Tendsto (fun t : ℝ => z + t) atTop atTop := by
      simpa [add_comm] using
        tendsto_atTop_add_const_right atTop z tendsto_id
    have hzero :
        Tendsto (fun t : ℝ => (1 - z) / (z + t))
          atTop (𝓝 (0 : ℝ)) :=
      tendsto_const_nhds.div_atTop hden_top
    have hratio_limit :
        Tendsto (fun t : ℝ => (1 + t) / (z + t))
          atTop (𝓝 (1 : ℝ)) := by
      have hone : Tendsto (fun _ : ℝ => (1 : ℝ))
          atTop (𝓝 (1 : ℝ)) := tendsto_const_nhds
      have h' :
          Tendsto (fun t : ℝ => 1 + (1 - z) / (z + t))
            atTop (𝓝 (1 : ℝ)) := by
        simpa using hone.add hzero
      apply h'.congr'
      filter_upwards [eventually_gt_atTop (-z)] with t ht
      have hden : z + t ≠ 0 := ne_of_gt (by linarith)
      field_simp
      ; ring
    have hlog_limit :
        Tendsto (fun t : ℝ =>
          Real.log ((1 + t) / (z + t)))
          atTop (𝓝 (0 : ℝ)) := by
      have hlog :
          Tendsto
            (Real.log ∘ (fun t : ℝ => (1 + t) / (z + t)))
            atTop (𝓝 (Real.log (1 : ℝ))) :=
        (Real.continuousAt_log (by norm_num : (1 : ℝ) ≠ 0)).tendsto.comp
          hratio_limit
      change
        Tendsto (fun t : ℝ => Real.log ((1 + t) / (z + t)))
          atTop (𝓝 (Real.log (1 : ℝ))) at hlog
      simpa only [Real.log_one] using hlog
    have hlimit :
        Tendsto (fun t : ℝ =>
          z * Real.log ((1 + t) / (z + t)))
          atTop (𝓝 (0 : ℝ)) := by
      simpa using tendsto_const_nhds.mul hlog_limit
    have hftc := integral_Ioi_of_hasDerivAt_of_tendsto'
      hderiv (scalar_entropy_resolvent_integrable hzpos.le) hlimit
    calc
      (∫ s in Ioi (0 : ℝ),
        (z / (1 + s) - z / (z + s))) =
          0 - z * Real.log ((1 + 0) / (z + 0)) := hftc
      _ = z * Real.log z := by
        simp [Real.log_inv]

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem diagonalEntropyKernel_integrable
    {d : Type*} [Fintype d] [DecidableEq d]
    (eigenvalue : d → ℝ)
    (nonnegative : ∀ i, 0 ≤ eigenvalue i) :
    IntegrableOn (diagonalEntropyKernel eigenvalue) (Ioi 0) := by
  classical
  apply Integrable.of_eval
  intro i
  apply Integrable.of_eval
  intro j
  by_cases hij : i = j
  · subst j
    have hcomplex :
        Integrable
          (fun s : ℝ =>
            ((eigenvalue i / (1 + s) -
              eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ))
          (volume.restrict (Ioi 0)) :=
      MeasureTheory.Integrable.ofReal (𝕜 := ℂ)
        (scalar_entropy_resolvent_integrable (nonnegative i))
    simpa only [diagonalEntropyKernel,
      Matrix.diagonal_apply_eq] using hcomplex
  · simp [diagonalEntropyKernel, hij]

theorem integral_diagonalEntropyKernel
    {d : Type*} [Fintype d] [DecidableEq d]
    (eigenvalue : d → ℝ)
    (nonnegative : ∀ i, 0 ≤ eigenvalue i) :
    (∫ s in Ioi (0 : ℝ), diagonalEntropyKernel eigenvalue s) =
      Matrix.diagonal fun i =>
        ((eigenvalue i * Real.log (eigenvalue i) : ℝ) : ℂ) := by
  classical
  have hmatrix := diagonalEntropyKernel_integrable
    eigenvalue nonnegative
  have hrows :
      ∀ i : d,
        Integrable
          (fun s : ℝ => diagonalEntropyKernel eigenvalue s i)
          (volume.restrict (Ioi 0)) :=
    fun i => hmatrix.eval i
  have hentry (i : d) :
      ∀ j : d,
        Integrable
          (fun s : ℝ => diagonalEntropyKernel eigenvalue s i j)
          (volume.restrict (Ioi 0)) :=
    fun j => (hrows i).eval j
  ext i j
  rw [MeasureTheory.eval_integral hrows i,
    MeasureTheory.eval_integral (hentry i) j]
  by_cases hij : i = j
  · subst j
    simp only [diagonalEntropyKernel, Matrix.diagonal_apply_eq]
    calc
      (∫ s in Ioi (0 : ℝ),
        ((eigenvalue i / (1 + s) -
          eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ)) =
          ((∫ s in Ioi (0 : ℝ),
            eigenvalue i / (1 + s) -
              eigenvalue i / (eigenvalue i + s) : ℝ) : ℂ) :=
            integral_ofReal
      _ = ((eigenvalue i * Real.log (eigenvalue i) : ℝ) : ℂ) := by
            rw [scalar_entropy_resolvent_integral (nonnegative i)]
  · simp [diagonalEntropyKernel, hij]

theorem integral_spectralEntropyKernel_eq_cfc
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) :
    (∫ s in Ioi (0 : ℝ), spectralEntropyKernel F hF s) =
      cfc (fun z : ℝ => z * Real.log z) F := by
  let U := hF.isHermitian.eigenvectorUnitary
  let eigenvalue := hF.isHermitian.eigenvalues
  have hdiag := diagonalEntropyKernel_integrable
    eigenvalue (fun i => hF.eigenvalues_nonneg i)
  calc
    (∫ s in Ioi (0 : ℝ), spectralEntropyKernel F hF s) =
        spectralConjugationCLM U
          (∫ s in Ioi (0 : ℝ), diagonalEntropyKernel eigenvalue s) := by
            exact ContinuousLinearMap.integral_comp_comm
              (spectralConjugationCLM U) hdiag
    _ = spectralConjugationCLM U
          (Matrix.diagonal fun i =>
            ((eigenvalue i * Real.log (eigenvalue i) : ℝ) : ℂ)) := by
            rw [integral_diagonalEntropyKernel eigenvalue
              (fun i => hF.eigenvalues_nonneg i)]
    _ = cfc (fun z : ℝ => z * Real.log z) F := by
          rw [hF.isHermitian.cfc_eq]
          rfl

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder Matrix.Norms.Elementwise

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem integral_weightedSpectralEntropyJensen_eq_cfc
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ) (F : ι → Matrix d d ℂ)
    (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) :
    (∫ s in Ioi (0 : ℝ),
      weightedSpectralEntropyJensen weight F M positive hM s) =
      (∑ i : ι, weight i •
        cfc (fun z : ℝ => z * Real.log z) (F i)) -
        cfc (fun z : ℝ => z * Real.log z) M := by
  have hterm (i : ι) :
      Integrable
        (fun s : ℝ => weight i •
          spectralEntropyKernel (F i) (positive i) s)
        (volume.restrict (Ioi 0)) :=
    (spectralEntropyKernel_integrable (F i) (positive i)).smul
      (weight i)
  have hsum :
      Integrable
        (fun s : ℝ => ∑ i : ι, weight i •
          spectralEntropyKernel (F i) (positive i) s)
        (volume.restrict (Ioi 0)) :=
    integrable_finsetSum Finset.univ (fun i _ => hterm i)
  have hmean := spectralEntropyKernel_integrable M hM
  unfold weightedSpectralEntropyJensen
  rw [integral_sub hsum hmean]
  rw [integral_finsetSum Finset.univ (fun i _ => hterm i)]
  simp_rw [integral_smul, integral_spectralEntropyKernel_eq_cfc]

theorem exact_matrix_log_entropy_filter_jensen
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ) (F : ι → Matrix d d ℂ)
    (M : Matrix d d ℂ)
    (nonnegative : ∀ i, 0 ≤ weight i)
    (normalized : (∑ i : ι, weight i) = 1)
    (mean : (∑ i : ι, weight i • F i) = M)
    (positive : ∀ i, (F i).PosSemidef) :
    let hM : M.PosSemidef := by
      rw [← mean]
      exact weighted_positive_matrix_mean weight F nonnegative positive
    ((∑ i : ι, weight i •
        cfc (fun z : ℝ => z * Real.log z) (F i)) -
      cfc (fun z : ℝ => z * Real.log z) M -
      (∫ s in Ioi (0 : ℝ),
        weightedSpectralFilterVariance weight F M positive hM s)).PosSemidef := by
  dsimp
  let hM : M.PosSemidef := by
    rw [← mean]
    exact weighted_positive_matrix_mean weight F nonnegative positive
  have h := integrated_weighted_spectralPurificationFilter_jensen
    weight F M nonnegative normalized mean positive
  change
    ((∫ s in Ioi (0 : ℝ),
        weightedSpectralEntropyJensen weight F M positive hM s) -
      (∫ s in Ioi (0 : ℝ),
        weightedSpectralFilterVariance weight F M positive hM s)).PosSemidef at h
  rw [integral_weightedSpectralEntropyJensen_eq_cfc
    weight F M positive hM] at h
  exact h

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder
  Matrix.Norms.Elementwise InnerProductSpace

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem spectralPurificationFilterEntryLp_coeFn
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef) (i j : d) :
    (spectralPurificationFilterEntryLp F hF i j : ℝ → ℂ)
      =ᵐ[volume.restrict (Ioi 0)]
        (fun s : ℝ => spectralPurificationFilter F hF s i j) :=
  (((spectralPurificationFilter_memLp_two F hF).eval i).eval j).coeFn_toLp

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder
  Matrix.Norms.Elementwise InnerProductSpace

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem finitePurificationMatrix_difference_gram_apply
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a : ι) (i j : d) :
    ((finitePurificationMatrix F M positive hM a -
          meanFinitePurificationMatrix F M positive hM).conjTranspose *
        (finitePurificationMatrix F M positive hM a -
          meanFinitePurificationMatrix F M positive hM)) i j =
      ∑ r : d,
        inner ℂ
          (ensemblePurificationSubspaceEntry F M positive hM a r i -
            meanPurificationSubspaceEntry F M positive hM r i)
          (ensemblePurificationSubspaceEntry F M positive hM a r j -
            meanPurificationSubspaceEntry F M positive hM r j) := by
  classical
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply,
    Matrix.sub_apply, finitePurificationMatrix,
    meanFinitePurificationMatrix, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro r _
  let b := commonPurificationOrthonormalBasis F M positive hM
  let u := ensemblePurificationSubspaceEntry
    F M positive hM a r i
  let u₀ := meanPurificationSubspaceEntry
    F M positive hM r i
  let v := ensemblePurificationSubspaceEntry
    F M positive hM a r j
  let v₀ := meanPurificationSubspaceEntry
    F M positive hM r j
  have hisometry := b.repr.inner_map_map (u - u₀) (v - v₀)
  change
    (∑ k, star (b.repr u k - b.repr u₀ k) *
      (b.repr v k - b.repr v₀ k)) =
      inner ℂ (u - u₀) (v - v₀)
  rw [← hisometry, EuclideanSpace.inner_eq_star_dotProduct]
  simp [dotProduct, map_sub, mul_comm]

theorem purificationSubspaceEntry_difference_inner_eq_integral
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a : ι) (r i j : d) :
    inner ℂ
      (ensemblePurificationSubspaceEntry F M positive hM a r i -
        meanPurificationSubspaceEntry F M positive hM r i)
      (ensemblePurificationSubspaceEntry F M positive hM a r j -
        meanPurificationSubspaceEntry F M positive hM r j) =
      ∫ s in Ioi (0 : ℝ),
        star (spectralPurificationFilter (F a) (positive a) s r i -
          spectralPurificationFilter M hM s r i) *
        (spectralPurificationFilter (F a) (positive a) s r j -
          spectralPurificationFilter M hM s r j) := by
  rw [Submodule.coe_inner, MeasureTheory.L2.inner_def]
  apply integral_congr_ae
  let fi := spectralPurificationFilterEntryLp
    (F a) (positive a) r i
  let mi := spectralPurificationFilterEntryLp M hM r i
  let fj := spectralPurificationFilterEntryLp
    (F a) (positive a) r j
  let mj := spectralPurificationFilterEntryLp M hM r j
  have hsubi := Lp.coeFn_sub fi mi
  have hsubj := Lp.coeFn_sub fj mj
  have hfi := spectralPurificationFilterEntryLp_coeFn
    (F a) (positive a) r i
  have hmi := spectralPurificationFilterEntryLp_coeFn M hM r i
  have hfj := spectralPurificationFilterEntryLp_coeFn
    (F a) (positive a) r j
  have hmj := spectralPurificationFilterEntryLp_coeFn M hM r j
  filter_upwards [hsubi, hsubj, hfi, hmi, hfj, hmj]
    with s hi hj hfi' hmi' hfj' hmj'
  change inner ℂ ((fi - mi) s) ((fj - mj) s) = _
  rw [hi, hj]
  change inner ℂ (fi s - mi s) (fj s - mj s) = _
  change
    inner ℂ
      ((spectralPurificationFilterEntryLp
        (F a) (positive a) r i : ℝ → ℂ) s -
        (spectralPurificationFilterEntryLp M hM r i : ℝ → ℂ) s)
      ((spectralPurificationFilterEntryLp
        (F a) (positive a) r j : ℝ → ℂ) s -
        (spectralPurificationFilterEntryLp M hM r j : ℝ → ℂ) s) = _
  rw [hfi', hmi', hfj', hmj']
  simp [RCLike.inner_apply, mul_comm]

theorem finitePurificationMatrix_difference_gram_eq_integral
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a : ι) :
    (finitePurificationMatrix F M positive hM a -
        meanFinitePurificationMatrix F M positive hM).conjTranspose *
      (finitePurificationMatrix F M positive hM a -
        meanFinitePurificationMatrix F M positive hM) =
      ∫ s in Ioi (0 : ℝ),
        star (spectralPurificationFilter (F a) (positive a) s -
          spectralPurificationFilter M hM s) *
        (spectralPurificationFilter (F a) (positive a) s -
          spectralPurificationFilter M hM s) := by
  classical
  have hdelta :
      MemLp (fun s : ℝ =>
        spectralPurificationFilter (F a) (positive a) s -
          spectralPurificationFilter M hM s)
        2 (volume.restrict (Ioi 0)) :=
    (spectralPurificationFilter_memLp_two (F a) (positive a)).sub
      (spectralPurificationFilter_memLp_two M hM)
  have hmatrix := spectralPurificationFilter_difference_gram_integrable
    (F a) M (positive a) hM
  have hrows :
      ∀ i : d,
        Integrable
          (fun s : ℝ =>
            (star (spectralPurificationFilter (F a) (positive a) s -
                spectralPurificationFilter M hM s) *
              (spectralPurificationFilter (F a) (positive a) s -
                spectralPurificationFilter M hM s)) i)
          (volume.restrict (Ioi 0)) :=
    fun i => hmatrix.eval i
  ext i j
  rw [finitePurificationMatrix_difference_gram_apply]
  rw [MeasureTheory.eval_integral hrows i,
    MeasureTheory.eval_integral (fun k => (hrows i).eval k) j]
  simp_rw [purificationSubspaceEntry_difference_inner_eq_integral]
  have hproduct (r : d) :
      Integrable
        (fun s : ℝ =>
          star (spectralPurificationFilter (F a) (positive a) s r i -
            spectralPurificationFilter M hM s r i) *
            (spectralPurificationFilter (F a) (positive a) s r j -
              spectralPurificationFilter M hM s r j))
        (volume.restrict (Ioi 0)) :=
    (((hdelta.eval r).eval i).star).integrable_mul
      ((hdelta.eval r).eval j)
  rw [← integral_finsetSum Finset.univ (fun r _ => hproduct r)]
  apply integral_congr_ae
  filter_upwards with s
  simp [Matrix.mul_apply, Matrix.star_apply]

theorem weighted_finitePurificationMatrix_difference_gram
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ)
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) :
    (∑ a : ι, weight a •
      ((finitePurificationMatrix F M positive hM a -
          meanFinitePurificationMatrix F M positive hM).conjTranspose *
        (finitePurificationMatrix F M positive hM a -
          meanFinitePurificationMatrix F M positive hM))) =
      ∫ s in Ioi (0 : ℝ),
        weightedSpectralFilterVariance weight F M positive hM s := by
  classical
  have hterm (a : ι) :
      Integrable
        (fun s : ℝ => weight a •
          (star (spectralPurificationFilter (F a) (positive a) s -
              spectralPurificationFilter M hM s) *
            (spectralPurificationFilter (F a) (positive a) s -
              spectralPurificationFilter M hM s)))
        (volume.restrict (Ioi 0)) :=
    (spectralPurificationFilter_difference_gram_integrable
      (F a) M (positive a) hM).smul (weight a)
  simp_rw [finitePurificationMatrix_difference_gram_eq_integral]
  unfold weightedSpectralFilterVariance
  rw [integral_finsetSum Finset.univ (fun a _ => hterm a)]
  simp_rw [integral_smul]

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder
  Matrix.Norms.Elementwise InnerProductSpace

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem finite_purification_log_entropy_jensen
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ) (F : ι → Matrix d d ℂ)
    (M : Matrix d d ℂ)
    (nonnegative : ∀ i, 0 ≤ weight i)
    (normalized : (∑ i : ι, weight i) = 1)
    (mean : (∑ i : ι, weight i • F i) = M)
    (positive : ∀ i, (F i).PosSemidef) :
    let hM : M.PosSemidef := by
      rw [← mean]
      exact weighted_positive_matrix_mean weight F nonnegative positive
    ((∑ i : ι, weight i •
        cfc (fun z : ℝ => z * Real.log z) (F i)) -
      cfc (fun z : ℝ => z * Real.log z) M -
      (∑ i : ι, weight i •
        ((finitePurificationMatrix F M positive hM i -
            meanFinitePurificationMatrix F M positive hM).conjTranspose *
          (finitePurificationMatrix F M positive hM i -
            meanFinitePurificationMatrix F M positive hM)))).PosSemidef := by
  dsimp
  let hM : M.PosSemidef := by
    rw [← mean]
    exact weighted_positive_matrix_mean weight F nonnegative positive
  have h := exact_matrix_log_entropy_filter_jensen
    weight F M nonnegative normalized mean positive
  change
    ((∑ i : ι, weight i •
        cfc (fun z : ℝ => z * Real.log z) (F i)) -
      cfc (fun z : ℝ => z * Real.log z) M -
      (∫ s in Ioi (0 : ℝ),
        weightedSpectralFilterVariance weight F M positive hM s)).PosSemidef at h
  rw [← weighted_finitePurificationMatrix_difference_gram
    weight F M positive hM] at h
  exact h

end

noncomputable section

open MeasureTheory Filter Set
open scoped BigOperators Topology ComplexOrder MatrixOrder
  Matrix.Norms.Elementwise InnerProductSpace

set_option backward.isDefEq.respectTransparency false

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem finitePurificationMatrix_pair_difference_gram_apply
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a b : ι) (i j : d) :
    ((finitePurificationMatrix F M positive hM a -
          finitePurificationMatrix F M positive hM b).conjTranspose *
        (finitePurificationMatrix F M positive hM a -
          finitePurificationMatrix F M positive hM b)) i j =
      ∑ r : d,
        inner ℂ
          (ensemblePurificationSubspaceEntry F M positive hM a r i -
            ensemblePurificationSubspaceEntry F M positive hM b r i)
          (ensemblePurificationSubspaceEntry F M positive hM a r j -
            ensemblePurificationSubspaceEntry F M positive hM b r j) := by
  classical
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply,
    Matrix.sub_apply, finitePurificationMatrix, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro r _
  let basis := commonPurificationOrthonormalBasis F M positive hM
  let u := ensemblePurificationSubspaceEntry F M positive hM a r i
  let u₀ := ensemblePurificationSubspaceEntry F M positive hM b r i
  let v := ensemblePurificationSubspaceEntry F M positive hM a r j
  let v₀ := ensemblePurificationSubspaceEntry F M positive hM b r j
  have hisometry := basis.repr.inner_map_map (u - u₀) (v - v₀)
  change
    (∑ k, star (basis.repr u k - basis.repr u₀ k) *
      (basis.repr v k - basis.repr v₀ k)) =
      inner ℂ (u - u₀) (v - v₀)
  rw [← hisometry, EuclideanSpace.inner_eq_star_dotProduct]
  simp [dotProduct, map_sub, mul_comm]

theorem ensemblePurificationSubspaceEntry_pair_difference_inner_eq_integral
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a b : ι) (r i j : d) :
    inner ℂ
      (ensemblePurificationSubspaceEntry F M positive hM a r i -
        ensemblePurificationSubspaceEntry F M positive hM b r i)
      (ensemblePurificationSubspaceEntry F M positive hM a r j -
        ensemblePurificationSubspaceEntry F M positive hM b r j) =
      ∫ s in Ioi (0 : ℝ),
        star (spectralPurificationFilter (F a) (positive a) s r i -
          spectralPurificationFilter (F b) (positive b) s r i) *
        (spectralPurificationFilter (F a) (positive a) s r j -
          spectralPurificationFilter (F b) (positive b) s r j) := by
  rw [Submodule.coe_inner, MeasureTheory.L2.inner_def]
  apply integral_congr_ae
  let fi := spectralPurificationFilterEntryLp
    (F a) (positive a) r i
  let gi := spectralPurificationFilterEntryLp
    (F b) (positive b) r i
  let fj := spectralPurificationFilterEntryLp
    (F a) (positive a) r j
  let gj := spectralPurificationFilterEntryLp
    (F b) (positive b) r j
  have hsubi := Lp.coeFn_sub fi gi
  have hsubj := Lp.coeFn_sub fj gj
  have hfi := spectralPurificationFilterEntryLp_coeFn
    (F a) (positive a) r i
  have hgi := spectralPurificationFilterEntryLp_coeFn
    (F b) (positive b) r i
  have hfj := spectralPurificationFilterEntryLp_coeFn
    (F a) (positive a) r j
  have hgj := spectralPurificationFilterEntryLp_coeFn
    (F b) (positive b) r j
  filter_upwards [hsubi, hsubj, hfi, hgi, hfj, hgj]
    with s hi hj hfi' hgi' hfj' hgj'
  change inner ℂ ((fi - gi) s) ((fj - gj) s) = _
  rw [hi, hj]
  change inner ℂ (fi s - gi s) (fj s - gj s) = _
  change
    inner ℂ
      ((spectralPurificationFilterEntryLp
        (F a) (positive a) r i : ℝ → ℂ) s -
        (spectralPurificationFilterEntryLp
          (F b) (positive b) r i : ℝ → ℂ) s)
      ((spectralPurificationFilterEntryLp
        (F a) (positive a) r j : ℝ → ℂ) s -
        (spectralPurificationFilterEntryLp
          (F b) (positive b) r j : ℝ → ℂ) s) = _
  rw [hfi', hgi', hfj', hgj']
  simp [RCLike.inner_apply, mul_comm]

theorem finitePurificationMatrix_pair_difference_gram_eq_integral
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (F : ι → Matrix d d ℂ) (M : Matrix d d ℂ)
    (positive : ∀ i, (F i).PosSemidef)
    (hM : M.PosSemidef) (a b : ι) :
    (finitePurificationMatrix F M positive hM a -
        finitePurificationMatrix F M positive hM b).conjTranspose *
      (finitePurificationMatrix F M positive hM a -
        finitePurificationMatrix F M positive hM b) =
      ∫ s in Ioi (0 : ℝ),
        star (spectralPurificationFilter (F a) (positive a) s -
          spectralPurificationFilter (F b) (positive b) s) *
        (spectralPurificationFilter (F a) (positive a) s -
          spectralPurificationFilter (F b) (positive b) s) := by
  classical
  have hdelta :
      MemLp (fun s : ℝ =>
        spectralPurificationFilter (F a) (positive a) s -
          spectralPurificationFilter (F b) (positive b) s)
        2 (volume.restrict (Ioi 0)) :=
    (spectralPurificationFilter_memLp_two (F a) (positive a)).sub
      (spectralPurificationFilter_memLp_two (F b) (positive b))
  have hmatrix := spectralPurificationFilter_difference_gram_integrable
    (F a) (F b) (positive a) (positive b)
  have hrows :
      ∀ i : d,
        Integrable
          (fun s : ℝ =>
            (star (spectralPurificationFilter (F a) (positive a) s -
                spectralPurificationFilter (F b) (positive b) s) *
              (spectralPurificationFilter (F a) (positive a) s -
                spectralPurificationFilter (F b) (positive b) s)) i)
          (volume.restrict (Ioi 0)) :=
    fun i => hmatrix.eval i
  ext i j
  rw [finitePurificationMatrix_pair_difference_gram_apply]
  rw [MeasureTheory.eval_integral hrows i,
    MeasureTheory.eval_integral (fun k => (hrows i).eval k) j]
  simp_rw [ensemblePurificationSubspaceEntry_pair_difference_inner_eq_integral]
  have hproduct (r : d) :
      Integrable
        (fun s : ℝ =>
          star (spectralPurificationFilter (F a) (positive a) s r i -
            spectralPurificationFilter (F b) (positive b) s r i) *
          (spectralPurificationFilter (F a) (positive a) s r j -
            spectralPurificationFilter (F b) (positive b) s r j))
        (volume.restrict (Ioi 0)) :=
    (((hdelta.eval r).eval i).star).integrable_mul
      ((hdelta.eval r).eval j)
  rw [← integral_finsetSum Finset.univ (fun r _ => hproduct r)]
  apply integral_congr_ae
  filter_upwards with s
  simp [Matrix.mul_apply, Matrix.star_apply]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false

theorem solution
    {ι κ d : Type*}
    [Fintype ι] [Fintype κ] [Fintype d] [DecidableEq d]
    (weight : ι → ℝ)
    (F : κ → Matrix d d ℂ)
    (anchor : Matrix d d ℂ)
    (positive : ∀ k, (F k).PosSemidef)
    (hanchor : anchor.PosSemidef)
    (choose : ι → κ) (meanIndex : κ)
    (nonnegative : ∀ a, 0 ≤ weight a)
    (normalized : (∑ a : ι, weight a) = 1)
    (mean : (∑ a : ι, weight a • F (choose a)) = F meanIndex) :
    ((∑ a : ι, weight a •
        cfc (fun z : ℝ => z * Real.log z) (F (choose a))) -
      cfc (fun z : ℝ => z * Real.log z) (F meanIndex) -
      (∑ a : ι, weight a •
        ((finitePurificationMatrix F anchor positive hanchor (choose a) -
            finitePurificationMatrix F anchor positive hanchor meanIndex).conjTranspose *
          (finitePurificationMatrix F anchor positive hanchor (choose a) -
            finitePurificationMatrix F anchor positive hanchor meanIndex)))).PosSemidef := by
  classical
  let H : ι → Matrix d d ℂ := fun a => F (choose a)
  let M : Matrix d d ℂ := F meanIndex
  have hH : ∀ a, (H a).PosSemidef := fun a => positive (choose a)
  have hM : M.PosSemidef := positive meanIndex
  have hmean : (∑ a : ι, weight a • H a) = M := mean
  have hlocal := finite_purification_log_entropy_jensen
    weight H M nonnegative normalized hmean hH
  change
    ((∑ a : ι, weight a •
        cfc (fun z : ℝ => z * Real.log z) (H a)) -
      cfc (fun z : ℝ => z * Real.log z) M -
      (∑ a : ι, weight a •
        ((finitePurificationMatrix H M hH hM a -
            meanFinitePurificationMatrix H M hH hM).conjTranspose *
          (finitePurificationMatrix H M hH hM a -
            meanFinitePurificationMatrix H M hH hM)))).PosSemidef at hlocal
  have hpair (a : ι) :
      (finitePurificationMatrix F anchor positive hanchor (choose a) -
          finitePurificationMatrix F anchor positive hanchor meanIndex).conjTranspose *
        (finitePurificationMatrix F anchor positive hanchor (choose a) -
          finitePurificationMatrix F anchor positive hanchor meanIndex) =
      (finitePurificationMatrix H M hH hM a -
          meanFinitePurificationMatrix H M hH hM).conjTranspose *
        (finitePurificationMatrix H M hH hM a -
          meanFinitePurificationMatrix H M hH hM) := by
    rw [finitePurificationMatrix_pair_difference_gram_eq_integral,
      finitePurificationMatrix_difference_gram_eq_integral]
  change
    ((∑ a : ι, weight a •
        cfc (fun z : ℝ => z * Real.log z) (H a)) -
      cfc (fun z : ℝ => z * Real.log z) M -
      (∑ a : ι, weight a •
        ((finitePurificationMatrix F anchor positive hanchor (choose a) -
            finitePurificationMatrix F anchor positive hanchor meanIndex).conjTranspose *
          (finitePurificationMatrix F anchor positive hanchor (choose a) -
            finitePurificationMatrix F anchor positive hanchor meanIndex)))).PosSemidef
  simp_rw [hpair]
  exact hlocal
