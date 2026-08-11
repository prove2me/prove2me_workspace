import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_05
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_posSemidef
import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_sum
import Theorems.Thm_QuantumParallelRepetition_diagonalSchmidtState_norm_sq
import Theorems.Thm_QuantumParallelRepetition_targetReducedDensity_posSemidef
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Algebra.BigOperators.Finsupp.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Pi
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Opposite
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Opposite
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.GroupWithZero.Units.Lemmas
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Projective
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Module.Submodule.Ker
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Basic
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Opposites
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.Commute
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.BigOperators
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Algebra.Star.StarRingHom
import Mathlib.Algebra.Star.Unitary
import Mathlib.Analysis.CStarAlgebra.Basic
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
import Mathlib.Analysis.InnerProductSpace.Orthonormal
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Real
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
import Mathlib.Data.Finsupp.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.NNRat.Defs
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Rat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.Set.CoeSort
import Mathlib.Data.Set.Defs
import Mathlib.Data.Set.Restrict
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Dual.Lemmas
import Mathlib.LinearAlgebra.FiniteDimensional.Defs
import Mathlib.LinearAlgebra.FreeModule.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Vec
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.RingTheory.PicardGroup
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Pow
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Tactic.Ring.RingNF
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Algebra.UniformMulAction
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.EMetricSpace.Defs
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators ComplexConjugate InnerProductSpace

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem weighted_real_cauchy
    {ι : Type*} [Fintype ι]
    (weight f g : ι → ℝ)
    (h_weight : ∀ i, 0 ≤ weight i) :
    (∑ i : ι, weight i * f i * g i) ≤
      Real.sqrt (∑ i : ι, weight i * f i ^ 2) *
        Real.sqrt (∑ i : ι, weight i * g i ^ 2) := by
  have h := Real.sum_mul_le_sqrt_mul_sqrt Finset.univ
    (fun i : ι => Real.sqrt (weight i) * f i)
    (fun i : ι => Real.sqrt (weight i) * g i)
  have hsq (i : ι) : Real.sqrt (weight i) ^ 2 = weight i :=
    Real.sq_sqrt (h_weight i)
  have h_left :
      (∑ i : ι,
        (Real.sqrt (weight i) * f i) *
          (Real.sqrt (weight i) * g i)) =
        ∑ i : ι, weight i * f i * g i := by
    apply Finset.sum_congr rfl
    intro i _
    calc
      (Real.sqrt (weight i) * f i) *
          (Real.sqrt (weight i) * g i) =
        Real.sqrt (weight i) ^ 2 * f i * g i := by ring
      _ = weight i * f i * g i := by rw [hsq i]
  have h_f :
      (∑ i : ι, (Real.sqrt (weight i) * f i) ^ 2) =
        ∑ i : ι, weight i * f i ^ 2 := by
    apply Finset.sum_congr rfl
    intro i _
    rw [mul_pow, hsq i]
  have h_g :
      (∑ i : ι, (Real.sqrt (weight i) * g i) ^ 2) =
        ∑ i : ι, weight i * g i ^ 2 := by
    apply Finset.sum_congr rfl
    intro i _
    rw [mul_pow, hsq i]
  simpa [h_left, h_f, h_g] using h

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

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem spectralAtomOverlap_nonneg
    {d : Type*} [Fintype d] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (i j : d) :
    0 ≤ spectralAtomOverlap F G hF hG i j := by
  exact trace_mul_posSemidef_nonneg
    (positiveMatrixSpectralAtom_posSemidef F hF i)
    (positiveMatrixSpectralAtom_posSemidef G hG j)

theorem spectralAtom_trace
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (i : d) :
    Matrix.trace (positiveMatrixSpectralAtom F hF i) = 1 := by
  classical
  unfold positiveMatrixSpectralAtom
  rw [spectralConjugationCLM_apply, Matrix.trace_mul_cycle,
    Matrix.UnitaryGroup.star_mul_self, one_mul,
    Matrix.trace_diagonal]
  simp [Pi.single_apply]

theorem spectralAtomOverlap_sum_right
    {d : Type*} [Fintype d] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (i : d) :
    (∑ j : d, spectralAtomOverlap F G hF hG i j) = 1 := by
  classical
  calc
    (∑ j : d, spectralAtomOverlap F G hF hG i j) =
        (Matrix.trace
          (positiveMatrixSpectralAtom F hF i *
            (∑ j : d, positiveMatrixSpectralAtom G hG j))).re := by
              simp only [spectralAtomOverlap,
                Matrix.mul_sum, Matrix.trace_sum, Complex.re_sum]
    _ = (Matrix.trace (positiveMatrixSpectralAtom F hF i)).re := by
      rw [positiveMatrixSpectralAtom_sum]
      simp
    _ = 1 := by
      rw [spectralAtom_trace]
      rfl

theorem spectralAtomOverlap_sum_left
    {d : Type*} [Fintype d] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (j : d) :
    (∑ i : d, spectralAtomOverlap F G hF hG i j) = 1 := by
  classical
  calc
    (∑ i : d, spectralAtomOverlap F G hF hG i j) =
        (Matrix.trace
          ((∑ i : d, positiveMatrixSpectralAtom F hF i) *
            positiveMatrixSpectralAtom G hG j)).re := by
              simp only [spectralAtomOverlap,
                Matrix.sum_mul, Matrix.trace_sum, Complex.re_sum]
    _ = (Matrix.trace (positiveMatrixSpectralAtom G hG j)).re := by
      rw [positiveMatrixSpectralAtom_sum]
      simp
    _ = 1 := by
      rw [spectralAtom_trace]
      rfl

theorem positiveDensity_eigenvalues_sum
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (htrace : Matrix.trace F = 1) :
    (∑ i : d, hF.isHermitian.eigenvalues i) = 1 := by
  have hspectral := congrArg Complex.re
    hF.isHermitian.trace_eq_sum_eigenvalues
  simpa [htrace, Complex.re_sum] using hspectral.symm

theorem spectralAtomOverlap_schmidtMass_le_one
    {d : Type*} [Fintype d] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (hFtrace : Matrix.trace F = 1)
    (hGtrace : Matrix.trace G = 1) :
    (∑ i : d, ∑ j : d,
      Real.sqrt (hF.isHermitian.eigenvalues i) *
        Real.sqrt (hG.isHermitian.eigenvalues j) *
          spectralAtomOverlap F G hF hG i j) ≤ 1 := by
  classical
  let w : d × d → ℝ := fun q =>
    spectralAtomOverlap F G hF hG q.1 q.2
  let f : d × d → ℝ := fun q =>
    Real.sqrt (hF.isHermitian.eigenvalues q.1)
  let g : d × d → ℝ := fun q =>
    Real.sqrt (hG.isHermitian.eigenvalues q.2)
  have hf : (∑ q : d × d, w q * f q ^ 2) = 1 := by
    dsimp [w, f]
    rw [Fintype.sum_prod_type]
    simp_rw [Real.sq_sqrt (hF.eigenvalues_nonneg _)]
    calc
      (∑ i : d, ∑ j : d,
        spectralAtomOverlap F G hF hG i j *
          hF.isHermitian.eigenvalues i) =
        ∑ i : d,
          hF.isHermitian.eigenvalues i *
            (∑ j : d,
              spectralAtomOverlap F G hF hG i j) := by
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro j _
          ring
      _ = ∑ i : d, hF.isHermitian.eigenvalues i := by
        simp_rw [spectralAtomOverlap_sum_right,
          mul_one]
      _ = 1 := positiveDensity_eigenvalues_sum F hF hFtrace
  have hg : (∑ q : d × d, w q * g q ^ 2) = 1 := by
    dsimp [w, g]
    rw [Fintype.sum_prod_type]
    simp_rw [Real.sq_sqrt (hG.eigenvalues_nonneg _)]
    calc
      (∑ i : d, ∑ j : d,
        spectralAtomOverlap F G hF hG i j *
          hG.isHermitian.eigenvalues j) =
        ∑ j : d,
          hG.isHermitian.eigenvalues j *
            (∑ i : d,
              spectralAtomOverlap F G hF hG i j) := by
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro j _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro i _
          ring
      _ = ∑ j : d, hG.isHermitian.eigenvalues j := by
        simp_rw [spectralAtomOverlap_sum_left,
          mul_one]
      _ = 1 := positiveDensity_eigenvalues_sum G hG hGtrace
  calc
    (∑ i : d, ∑ j : d,
      Real.sqrt (hF.isHermitian.eigenvalues i) *
        Real.sqrt (hG.isHermitian.eigenvalues j) *
          spectralAtomOverlap F G hF hG i j) =
      ∑ q : d × d, w q * f q * g q := by
        rw [Fintype.sum_prod_type]
        apply Finset.sum_congr rfl
        intro i _
        apply Finset.sum_congr rfl
        intro j _
        dsimp [w, f, g]
        ring
    _ ≤ Real.sqrt (∑ q : d × d, w q * f q ^ 2) *
        Real.sqrt (∑ q : d × d, w q * g q ^ 2) := by
          apply weighted_real_cauchy
          intro q
          exact spectralAtomOverlap_nonneg
            F G hF hG q.1 q.2
    _ = 1 := by rw [hf, hg]; norm_num

theorem doublyStochasticSchmidtMass_le_one
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (σ : ι → ℝ) (μ : κ → ℝ) (w : ι → κ → ℝ)
    (hσunit : (∑ i : ι, σ i ^ 2) = 1)
    (hμunit : (∑ j : κ, μ j ^ 2) = 1)
    (hw : ∀ i j, 0 ≤ w i j)
    (hrow : ∀ i, (∑ j : κ, w i j) = 1)
    (hcol : ∀ j, (∑ i : ι, w i j) = 1) :
    (∑ i : ι, ∑ j : κ, σ i * μ j * w i j) ≤ 1 := by
  classical
  let W : ι × κ → ℝ := fun q => w q.1 q.2
  let f : ι × κ → ℝ := fun q => σ q.1
  let g : ι × κ → ℝ := fun q => μ q.2
  have hf : (∑ q : ι × κ, W q * f q ^ 2) = 1 := by
    dsimp [W, f]
    rw [Fintype.sum_prod_type]
    calc
      (∑ i : ι, ∑ j : κ, w i j * σ i ^ 2) =
          ∑ i : ι, σ i ^ 2 * (∑ j : κ, w i j) := by
            apply Finset.sum_congr rfl
            intro i _
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro j _
            ring_nf
      _ = ∑ i : ι, σ i ^ 2 := by simp_rw [hrow, mul_one]
      _ = 1 := hσunit
  have hg : (∑ q : ι × κ, W q * g q ^ 2) = 1 := by
    dsimp [W, g]
    rw [Fintype.sum_prod_type]
    calc
      (∑ i : ι, ∑ j : κ, w i j * μ j ^ 2) =
          ∑ j : κ, μ j ^ 2 * (∑ i : ι, w i j) := by
            rw [Finset.sum_comm]
            apply Finset.sum_congr rfl
            intro j _
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro i _
            ring
      _ = ∑ j : κ, μ j ^ 2 := by simp_rw [hcol, mul_one]
      _ = 1 := hμunit
  calc
    (∑ i : ι, ∑ j : κ, σ i * μ j * w i j) =
        ∑ q : ι × κ, W q * f q * g q := by
          rw [Fintype.sum_prod_type]
          apply Finset.sum_congr rfl
          intro i _
          apply Finset.sum_congr rfl
          intro j _
          dsimp [W, f, g]
          ring
    _ ≤ Real.sqrt (∑ q : ι × κ, W q * f q ^ 2) *
        Real.sqrt (∑ q : ι × κ, W q * g q ^ 2) := by
          apply weighted_real_cauchy
          intro q
          exact hw q.1 q.2
    _ = 1 := by rw [hf, hg]; norm_num

theorem doublyStochasticSchmidtEnergy_eq
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (σ : ι → ℝ) (μ : κ → ℝ) (w : ι → κ → ℝ)
    (hσunit : (∑ i : ι, σ i ^ 2) = 1)
    (hμunit : (∑ j : κ, μ j ^ 2) = 1)
    (hrow : ∀ i, (∑ j : κ, w i j) = 1)
    (hcol : ∀ j, (∑ i : ι, w i j) = 1) :
    (∑ i : ι, ∑ j : κ, (σ i - μ j) ^ 2 * w i j) =
      2 - 2 * (∑ i : ι, ∑ j : κ, σ i * μ j * w i j) := by
  classical
  have hfirst :
      (∑ i : ι, ∑ j : κ, σ i ^ 2 * w i j) = 1 := by
    calc
      (∑ i : ι, ∑ j : κ, σ i ^ 2 * w i j) =
          ∑ i : ι, σ i ^ 2 * (∑ j : κ, w i j) := by
            simp_rw [Finset.mul_sum]
      _ = ∑ i : ι, σ i ^ 2 := by simp_rw [hrow, mul_one]
      _ = 1 := hσunit
  have hsecond :
      (∑ i : ι, ∑ j : κ, μ j ^ 2 * w i j) = 1 := by
    calc
      (∑ i : ι, ∑ j : κ, μ j ^ 2 * w i j) =
          ∑ j : κ, μ j ^ 2 * (∑ i : ι, w i j) := by
            rw [Finset.sum_comm]
            simp_rw [Finset.mul_sum]
      _ = ∑ j : κ, μ j ^ 2 := by simp_rw [hcol, mul_one]
      _ = 1 := hμunit
  calc
    (∑ i : ι, ∑ j : κ, (σ i - μ j) ^ 2 * w i j) =
      (∑ i : ι, ∑ j : κ, σ i ^ 2 * w i j) -
        2 * (∑ i : ι, ∑ j : κ, σ i * μ j * w i j) +
          (∑ i : ι, ∑ j : κ, μ j ^ 2 * w i j) := by
            simp_rw [sub_sq]
            simp only [sub_mul, add_mul,
              Finset.sum_add_distrib, Finset.sum_sub_distrib,
              Finset.mul_sum]
            ring_nf
    _ = 2 - 2 * (∑ i : ι, ∑ j : κ, σ i * μ j * w i j) := by
      rw [hfirst, hsecond]
      ring

theorem weightedComplexOverlapVector_norm_sq
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (σ : ι → ℝ) (μ : κ → ℝ)
    (hσ : ∀ i, 0 ≤ σ i) (hμ : ∀ j, 0 ≤ μ j)
    (L : ι → κ → ℂ) :
    ‖weightedComplexOverlapVector σ μ L‖ ^ 2 =
      ∑ i : ι, ∑ j : κ,
        σ i * μ j * ‖L i j‖ ^ 2 := by
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  change
    ‖(Real.sqrt (σ i * μ j) : ℂ) * L i j‖ ^ 2 =
      σ i * μ j * ‖L i j‖ ^ 2
  rw [norm_mul, mul_pow, Complex.norm_real,
    Real.norm_eq_abs, abs_of_nonneg (Real.sqrt_nonneg _),
    Real.sq_sqrt (mul_nonneg (hσ i) (hμ j))]

theorem complexInner_norm_sq_le
    {ι : Type*} [Fintype ι]
    (z w : EuclideanSpace ℂ ι) :
    ‖inner ℂ z w‖ ^ 2 ≤ ‖z‖ ^ 2 * ‖w‖ ^ 2 := by
  have hcauchy := @norm_inner_le_norm ℂ _ _ _ _ z w
  nlinarith [norm_nonneg (inner ℂ z w), norm_nonneg z,
    norm_nonneg w, mul_nonneg (norm_nonneg z) (norm_nonneg w)]

theorem twoSidedSchmidtSpectralEnergy_le
    {ι κ ν : Type*} [Fintype ι] [Fintype κ] [Fintype ν]
    (ψ φ : EuclideanSpace ℂ ν)
    (hψ : ‖ψ‖ = 1) (hφ : ‖φ‖ = 1)
    (σ : ι → ℝ) (μ : κ → ℝ)
    (hσ : ∀ i, 0 ≤ σ i) (hμ : ∀ j, 0 ≤ μ j)
    (hσunit : (∑ i : ι, σ i ^ 2) = 1)
    (hμunit : (∑ j : κ, μ j ^ 2) = 1)
    (L R : ι → κ → ℂ)
    (hLrow : ∀ i, (∑ j : κ, ‖L i j‖ ^ 2) = 1)
    (hLcol : ∀ j, (∑ i : ι, ‖L i j‖ ^ 2) = 1)
    (hRrow : ∀ i, (∑ j : κ, ‖R i j‖ ^ 2) = 1)
    (hRcol : ∀ j, (∑ i : ι, ‖R i j‖ ^ 2) = 1)
    (hinner :
      inner ℂ ψ φ =
        inner ℂ
          (weightedComplexOverlapVector σ μ L)
          (weightedComplexOverlapVector σ μ R)) :
    (∑ i : ι, ∑ j : κ,
      (σ i - μ j) ^ 2 * ‖L i j‖ ^ 2) ≤
        2 * ‖ψ - φ‖ ^ 2 := by
  classical
  let a : ℝ :=
    ∑ i : ι, ∑ j : κ, σ i * μ j * ‖L i j‖ ^ 2
  let b : ℝ :=
    ∑ i : ι, ∑ j : κ, σ i * μ j * ‖R i j‖ ^ 2
  have ha : 0 ≤ a := by
    dsimp [a]
    apply Finset.sum_nonneg
    intro i _
    apply Finset.sum_nonneg
    intro j _
    exact mul_nonneg
      (mul_nonneg (hσ i) (hμ j)) (sq_nonneg _)
  have hb : b ≤ 1 := by
    exact doublyStochasticSchmidtMass_le_one
      σ μ (fun i j => ‖R i j‖ ^ 2)
      hσunit hμunit
      (fun i j => sq_nonneg _)
      hRrow hRcol
  have hinnerbound : ‖inner ℂ ψ φ‖ ^ 2 ≤ a := by
    calc
      ‖inner ℂ ψ φ‖ ^ 2 =
          ‖inner ℂ
            (weightedComplexOverlapVector σ μ L)
            (weightedComplexOverlapVector σ μ R)‖ ^ 2 := by
              rw [hinner]
      _ ≤ ‖weightedComplexOverlapVector σ μ L‖ ^ 2 *
          ‖weightedComplexOverlapVector σ μ R‖ ^ 2 :=
            complexInner_norm_sq_le
              (weightedComplexOverlapVector σ μ L)
              (weightedComplexOverlapVector σ μ R)
      _ = a * b := by
            rw [weightedComplexOverlapVector_norm_sq
              σ μ hσ hμ L,
              weightedComplexOverlapVector_norm_sq
                σ μ hσ hμ R]
      _ ≤ a := by nlinarith
  have hre : (inner ℂ ψ φ).re ^ 2 ≤ a := by
    calc
      (inner ℂ ψ φ).re ^ 2 =
          (inner ℂ ψ φ).re * (inner ℂ ψ φ).re := by ring
      _ ≤ Complex.normSq (inner ℂ ψ φ) :=
        Complex.re_sq_le_normSq (inner ℂ ψ φ)
      _ = ‖inner ℂ ψ φ‖ ^ 2 :=
        Complex.normSq_eq_norm_sq (inner ℂ ψ φ)
      _ ≤ a := hinnerbound
  have hdistance :
      ‖ψ - φ‖ ^ 2 = 2 - 2 * (inner ℂ ψ φ).re := by
    rw [@norm_sub_sq ℂ, hψ, hφ]
    change
      1 ^ 2 - 2 * (inner ℂ ψ φ).re + 1 ^ 2 =
        2 - 2 * (inner ℂ ψ φ).re
    ring
  rw [doublyStochasticSchmidtEnergy_eq
    σ μ (fun i j => ‖L i j‖ ^ 2)
    hσunit hμunit hLrow hLcol, hdistance]
  change 2 - 2 * a ≤ 2 *
    (2 - 2 * (inner ℂ ψ φ).re)
  nlinarith [sq_nonneg ((inner ℂ ψ φ).re - 1)]

theorem localUnitaryAction_matrix_mem_unitary {n : ℕ}
    (U V : Matrix.unitaryGroup (Fin n) ℂ) :
    ((U : Matrix (Fin n) (Fin n) ℂ) ⊗ₖ
      (V : Matrix (Fin n) (Fin n) ℂ)) ∈
        Matrix.unitaryGroup (Fin n × Fin n) ℂ := by
  exact Matrix.kronecker_mem_unitary U.property V.property

theorem localUnitaryAction_norm {n : ℕ}
    (U V : Matrix.unitaryGroup (Fin n) ℂ)
    (ψ : EuclideanSpace ℂ (Fin n × Fin n)) :
    ‖localUnitaryAction U V ψ‖ = ‖ψ‖ := by
  let M : Matrix (Fin n × Fin n) (Fin n × Fin n) ℂ :=
    (U : Matrix (Fin n) (Fin n) ℂ) ⊗ₖ
      (V : Matrix (Fin n) (Fin n) ℂ)
  have hM : M ∈ Matrix.unitaryGroup (Fin n × Fin n) ℂ :=
    localUnitaryAction_matrix_mem_unitary U V
  have hclm : Matrix.toEuclideanCLM
      (n := Fin n × Fin n) (𝕜 := ℂ) M ∈
      unitary
        (EuclideanSpace ℂ (Fin n × Fin n) →L[ℂ]
          EuclideanSpace ℂ (Fin n × Fin n)) :=
    Unitary.map_mem
      (Matrix.toEuclideanCLM (n := Fin n × Fin n) (𝕜 := ℂ)) hM
  exact ContinuousLinearMap.norm_map_of_mem_unitary hclm ψ

theorem unitary_row_norm_sq_sum
    {d : Type*} [Fintype d] [DecidableEq d]
    (U : Matrix.unitaryGroup d ℂ) (i : d) :
    (∑ j : d, ‖U i j‖ ^ 2) = 1 := by
  have hnorm (z : ℂ) :
      z.re * z.re + z.im * z.im = ‖z‖ ^ 2 := by
    rw [← Complex.normSq_eq_norm_sq, Complex.normSq_apply]
  have h := congrArg
    (fun M : Matrix d d ℂ => (M i i).re) U.property.2
  simpa [Matrix.mul_apply, Matrix.star_eq_conjTranspose,
    Matrix.conjTranspose_apply, Complex.re_sum,
    Complex.mul_re, hnorm, Matrix.one_apply] using h

theorem unitary_col_norm_sq_sum
    {d : Type*} [Fintype d] [DecidableEq d]
    (U : Matrix.unitaryGroup d ℂ) (j : d) :
    (∑ i : d, ‖U i j‖ ^ 2) = 1 := by
  have hnorm (z : ℂ) :
      z.re * z.re + z.im * z.im = ‖z‖ ^ 2 := by
    rw [← Complex.normSq_eq_norm_sq, Complex.normSq_apply]
  have h := congrArg
    (fun M : Matrix d d ℂ => (M j j).re) U.property.1
  simpa [Matrix.mul_apply, Matrix.star_eq_conjTranspose,
    Matrix.conjTranspose_apply, Complex.re_sum,
    Complex.mul_re, hnorm, Matrix.one_apply] using h

theorem schmidtVector_norm_sq
    {d : ℕ}
    (σ : Fin d → ℝ)
    (U V : Matrix.unitaryGroup (Fin d) ℂ) :
    ‖schmidtVector σ U V‖ ^ 2 =
      ∑ i : Fin d, σ i ^ 2 := by
  rw [schmidtVector,
    localUnitaryAction_norm,
    diagonalSchmidtState_norm_sq]

theorem schmidtVector_apply
    {d : ℕ}
    (σ : Fin d → ℝ)
    (U V : Matrix.unitaryGroup (Fin d) ℂ)
    (a b : Fin d) :
    schmidtVector σ U V (a, b) =
      ∑ i : Fin d, (σ i : ℂ) * U a i * V b i := by
  classical
  simp [schmidtVector, localUnitaryAction,
    Matrix.mulVec, dotProduct, Matrix.kroneckerMap_apply,
    diagonalSchmidtState, Fintype.sum_prod_type,
    mul_assoc, mul_comm]

theorem weightedComplexOverlapVector_inner
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (σ : ι → ℝ) (μ : κ → ℝ)
    (hσ : ∀ i, 0 ≤ σ i) (hμ : ∀ j, 0 ≤ μ j)
    (L R : ι → κ → ℂ) :
    inner ℂ
      (weightedComplexOverlapVector σ μ
        (fun i j => star (L i j)))
      (weightedComplexOverlapVector σ μ R) =
        ∑ i : ι, ∑ j : κ,
          (σ i : ℂ) * (μ j : ℂ) * L i j * R i j := by
  classical
  rw [EuclideanSpace.inner_eq_star_dotProduct]
  change
    (∑ q : ι × κ,
      ((Real.sqrt (σ q.1 * μ q.2) : ℂ) * R q.1 q.2) *
        star ((Real.sqrt (σ q.1 * μ q.2) : ℂ) *
          star (L q.1 q.2))) = _
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  have hsqrt :
      (Real.sqrt (σ i * μ j) : ℂ) *
        (Real.sqrt (σ i * μ j) : ℂ) =
          (σ i : ℂ) * (μ j : ℂ) := by
    norm_cast
    exact Real.mul_self_sqrt (mul_nonneg (hσ i) (hμ j))
  calc
    ((Real.sqrt (σ i * μ j) : ℂ) * R i j) *
        star ((Real.sqrt (σ i * μ j) : ℂ) * star (L i j)) =
      ((Real.sqrt (σ i * μ j) : ℂ) * R i j) *
        ((Real.sqrt (σ i * μ j) : ℂ) * L i j) := by simp
    _ =
      ((Real.sqrt (σ i * μ j) : ℂ) *
        (Real.sqrt (σ i * μ j) : ℂ)) *
          L i j * R i j := by ring
    _ = (σ i : ℂ) * (μ j : ℂ) * L i j * R i j := by
      rw [hsqrt]

theorem matrixVectorization_inner
    {d e : Type*} [Fintype d] [Fintype e]
    (X Y : Matrix d e ℂ) :
    inner ℂ (toLp 2 (Matrix.vec X))
      (toLp 2 (Matrix.vec Y)) =
        Matrix.trace (X.conjTranspose * Y) := by
  rw [EuclideanSpace.inner_eq_star_dotProduct]
  change
    Matrix.vec Y ⬝ᵥ star (Matrix.vec X) =
      Matrix.trace (X.conjTranspose * Y)
  rw [dotProduct_comm, Matrix.star_vec_dotProduct_vec]

theorem diagonalSchmidtState_eq_vec
    {d : Type*} [Fintype d] [DecidableEq d]
    (σ : d → ℝ) :
    diagonalSchmidtState σ =
      toLp 2 (Matrix.vec (Matrix.diagonal fun i => (σ i : ℂ))) := by
  ext ⟨i, j⟩
  by_cases h : i = j
  · subst j
    simp [diagonalSchmidtState, Matrix.vec]
  · simp [diagonalSchmidtState, Matrix.vec, h, Ne.symm h]

theorem schmidtVector_eq_vec
    {d : ℕ}
    (σ : Fin d → ℝ)
    (U V : Matrix.unitaryGroup (Fin d) ℂ) :
    schmidtVector σ U V =
      toLp 2
        (Matrix.vec
          ((V : Matrix (Fin d) (Fin d) ℂ) *
            Matrix.diagonal (fun i => (σ i : ℂ)) *
            (U : Matrix (Fin d) (Fin d) ℂ).transpose)) := by
  rw [schmidtVector, localUnitaryAction,
    diagonalSchmidtState_eq_vec]
  apply WithLp.ofLp_injective
  exact Matrix.kronecker_mulVec_vec
    (V : Matrix (Fin d) (Fin d) ℂ)
    (Matrix.diagonal (fun i => (σ i : ℂ)))
    (U : Matrix (Fin d) (Fin d) ℂ)

theorem weightedSchmidtMatrixTrace
    {d : Type*} [Fintype d] [DecidableEq d]
    (σ μ : d → ℝ) (L R : Matrix d d ℂ) :
    Matrix.trace
      (L.transpose *
        Matrix.diagonal (fun i => (σ i : ℂ)) *
        R * Matrix.diagonal (fun j => (μ j : ℂ))) =
      ∑ i : d, ∑ j : d,
        (σ i : ℂ) * (μ j : ℂ) * L i j * R i j := by
  classical
  simp [Matrix.trace, Matrix.mul_apply,
    Matrix.diagonal_apply, Matrix.transpose_apply,
    mul_assoc, mul_left_comm, mul_comm]
  rw [Finset.sum_comm]

theorem schmidtVector_inner
    {d : ℕ}
    (σ μ : Fin d → ℝ)
    (U V X Y : Matrix.unitaryGroup (Fin d) ℂ) :
    inner ℂ
      (schmidtVector σ U V)
      (schmidtVector μ X Y) =
        ∑ i : Fin d, ∑ j : Fin d,
          (σ i : ℂ) * (μ j : ℂ) *
            (((U : Matrix (Fin d) (Fin d) ℂ).conjTranspose *
              (X : Matrix (Fin d) (Fin d) ℂ)) i j) *
            (((V : Matrix (Fin d) (Fin d) ℂ).conjTranspose *
              (Y : Matrix (Fin d) (Fin d) ℂ)) i j) := by
  classical
  rw [schmidtVector_eq_vec σ U V,
    schmidtVector_eq_vec μ X Y,
    matrixVectorization_inner]
  let S : Matrix (Fin d) (Fin d) ℂ :=
    Matrix.diagonal fun i => (σ i : ℂ)
  let T : Matrix (Fin d) (Fin d) ℂ :=
    Matrix.diagonal fun i => (μ i : ℂ)
  let A : Matrix (Fin d) (Fin d) ℂ := U
  let B : Matrix (Fin d) (Fin d) ℂ := V
  let C : Matrix (Fin d) (Fin d) ℂ := X
  let D : Matrix (Fin d) (Fin d) ℂ := Y
  change
    Matrix.trace ((B * S * A.transpose).conjTranspose *
      (D * T * C.transpose)) = _
  calc
    Matrix.trace ((B * S * A.transpose).conjTranspose *
        (D * T * C.transpose)) =
      Matrix.trace
        (((B * S * A.transpose).conjTranspose *
          (D * T)) * C.transpose) := by
            congr 1
            simp [Matrix.mul_assoc]
    _ = Matrix.trace
        (C.transpose *
          ((B * S * A.transpose).conjTranspose * (D * T))) :=
            Matrix.trace_mul_comm _ _
    _ = Matrix.trace
        ((A.conjTranspose * C).transpose * S *
          (B.conjTranspose * D) * T) := by
            congr 1
            simp [Matrix.conjTranspose_mul,
              Matrix.transpose_mul,
              Matrix.transpose_conjTranspose,
              Matrix.conjTranspose_transpose,
              Matrix.diagonal_conjTranspose,
              S, Pi.star_def, Matrix.mul_assoc]
    _ = _ := weightedSchmidtMatrixTrace
      σ μ (A.conjTranspose * C) (B.conjTranspose * D)

@[simp] theorem unitaryBasisOverlap_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (U V : Matrix.unitaryGroup d ℂ) (i j : d) :
    unitaryBasisOverlap U V i j =
      (((U : Matrix d d ℂ).conjTranspose *
        (V : Matrix d d ℂ)) i j) := by
  rfl

theorem schmidtVector_spectralEnergy_le
    {d : ℕ}
    (σ μ : Fin d → ℝ)
    (hσ : ∀ i, 0 ≤ σ i) (hμ : ∀ j, 0 ≤ μ j)
    (hσunit : (∑ i : Fin d, σ i ^ 2) = 1)
    (hμunit : (∑ j : Fin d, μ j ^ 2) = 1)
    (U V X Y : Matrix.unitaryGroup (Fin d) ℂ) :
    (∑ i : Fin d, ∑ j : Fin d,
      (σ i - μ j) ^ 2 *
        ‖unitaryBasisOverlap U X i j‖ ^ 2) ≤
      2 * ‖schmidtVector σ U V -
        schmidtVector μ X Y‖ ^ 2 := by
  have hψ : ‖schmidtVector σ U V‖ = 1 := by
    have h := schmidtVector_norm_sq σ U V
    rw [hσunit] at h
    nlinarith [norm_nonneg (schmidtVector σ U V)]
  have hφ : ‖schmidtVector μ X Y‖ = 1 := by
    have h := schmidtVector_norm_sq μ X Y
    rw [hμunit] at h
    nlinarith [norm_nonneg (schmidtVector μ X Y)]
  let L : Fin d → Fin d → ℂ :=
    fun i j => star (unitaryBasisOverlap U X i j)
  let R : Fin d → Fin d → ℂ :=
    fun i j => unitaryBasisOverlap V Y i j
  have hLrow : ∀ i, (∑ j : Fin d, ‖L i j‖ ^ 2) = 1 := by
    intro i
    simpa [L] using
      unitary_row_norm_sq_sum
        (unitaryBasisOverlap U X) i
  have hLcol : ∀ j, (∑ i : Fin d, ‖L i j‖ ^ 2) = 1 := by
    intro j
    simpa [L] using
      unitary_col_norm_sq_sum
        (unitaryBasisOverlap U X) j
  have hRrow : ∀ i, (∑ j : Fin d, ‖R i j‖ ^ 2) = 1 := by
    intro i
    exact unitary_row_norm_sq_sum
      (unitaryBasisOverlap V Y) i
  have hRcol : ∀ j, (∑ i : Fin d, ‖R i j‖ ^ 2) = 1 := by
    intro j
    exact unitary_col_norm_sq_sum
      (unitaryBasisOverlap V Y) j
  have hinner :
      inner ℂ (schmidtVector σ U V)
          (schmidtVector μ X Y) =
        inner ℂ
          (weightedComplexOverlapVector σ μ L)
          (weightedComplexOverlapVector σ μ R) := by
    rw [weightedComplexOverlapVector_inner
      σ μ hσ hμ
      (fun i j => unitaryBasisOverlap U X i j)
      (fun i j => unitaryBasisOverlap V Y i j)]
    simpa [unitaryBasisOverlap_apply] using
      schmidtVector_inner σ μ U V X Y
  simpa [L] using
    twoSidedSchmidtSpectralEnergy_le
      (schmidtVector σ U V)
      (schmidtVector μ X Y)
      hψ hφ σ μ hσ hμ hσunit hμunit L R
      hLrow hLcol hRrow hRcol hinner

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

@[simp] theorem orthonormalBasisUnitary_apply
    {d : ℕ}
    (b : OrthonormalBasis (Fin d) ℂ
      (EuclideanSpace ℂ (Fin d)))
    (i j : Fin d) :
    orthonormalBasisUnitary b i j = b j i := by
  rfl

@[simp] theorem conjugateUnitary_apply
    {d : ℕ}
    (U : Matrix.unitaryGroup (Fin d) ℂ)
    (i j : Fin d) :
    conjugateUnitary U i j = star (U i j) := by
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem targetCoefficientMatrix_vec
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    toLp 2 (Matrix.vec (targetCoefficientMatrix ξ)) = ξ.val := by
  ext ⟨a, b⟩
  rfl

theorem targetReducedDensity_trace
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    Matrix.trace (targetReducedDensity ξ) = 1 := by
  have vectorized := matrixVectorization_inner
    (targetCoefficientMatrix ξ)
    (targetCoefficientMatrix ξ)
  rw [targetCoefficientMatrix_vec,
    inner_self_eq_one_of_norm_eq_one ξ.property] at vectorized
  exact vectorized.symm

theorem targetSpectralAtom_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (i a b : d) :
    positiveMatrixSpectralAtom F hF i a b =
      (hF.isHermitian.eigenvectorUnitary : Matrix d d ℂ) a i *
        star ((hF.isHermitian.eigenvectorUnitary : Matrix d d ℂ) b i) := by
  classical
  simp [positiveMatrixSpectralAtom, spectralConjugationCLM_apply,
    Matrix.mul_apply, Matrix.diagonal_apply,
    Pi.single_apply]

theorem targetSpectralAtomOverlap_eq_basis_norm_sq
    {d : Type*} [Fintype d] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (i j : d) :
    spectralAtomOverlap F G hF hG i j =
      ‖unitaryBasisOverlap
        hF.isHermitian.eigenvectorUnitary
        hG.isHermitian.eigenvectorUnitary i j‖ ^ 2 := by
  classical
  let U : Matrix d d ℂ := hF.isHermitian.eigenvectorUnitary
  let V : Matrix d d ℂ := hG.isHermitian.eigenvectorUnitary
  let z : ℂ := ∑ a : d, star (U a i) * V a j
  have cross :
      Matrix.trace
        (positiveMatrixSpectralAtom F hF i *
          positiveMatrixSpectralAtom G hG j) = star z * z := by
    simp only [Matrix.trace, Matrix.diag_apply, Matrix.mul_apply,
      targetSpectralAtom_apply]
    change
      (∑ a : d, ∑ b : d,
        (U a i * star (U b i)) *
          (V b j * star (V a j))) = star z * z
    dsimp [z]
    rw [map_sum, Finset.sum_mul]
    simp only [map_mul]
    simp_rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro a _
    apply Finset.sum_congr rfl
    intro b _
    simp only [starRingEnd_apply, star_star]
    ring
  unfold spectralAtomOverlap
  rw [cross]
  have coeff :
      unitaryBasisOverlap
        hF.isHermitian.eigenvectorUnitary
        hG.isHermitian.eigenvectorUnitary i j = z := by
    simp [unitaryBasisOverlap_apply,
      Matrix.mul_apply, Matrix.conjTranspose_apply, U, V, z]
  rw [coeff, ← Complex.normSq_eq_norm_sq]
  change (star z * z).re = Complex.normSq z
  simpa [Complex.star_def] using
    (congrArg Complex.re
      (@Complex.normSq_eq_conj_mul_self z)).symm

end

noncomputable section

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 8000000
set_option maxRecDepth 3072

theorem targetCanonicalSchmidtCoefficient_nonneg
    {d : ℕ} (ξ : BipartiteUnitVector d) (i : Fin d) :
    0 ≤ targetCanonicalSchmidtCoefficient ξ i :=
  Real.sqrt_nonneg _

theorem targetCanonicalSchmidtCoefficient_sq_sum
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    (∑ i : Fin d, targetCanonicalSchmidtCoefficient ξ i ^ 2) = 1 := by
  unfold targetCanonicalSchmidtCoefficient
  simp_rw [Real.sq_sqrt
    ((targetReducedDensity_posSemidef ξ).eigenvalues_nonneg _)]
  exact positiveDensity_eigenvalues_sum
    (targetReducedDensity ξ)
    (targetReducedDensity_posSemidef ξ)
    (targetReducedDensity_trace ξ)

theorem exists_proofTargetCanonicalSpectralSchmidtDecomposition
    {d : ℕ} (ξ : BipartiteUnitVector d) :
    ∃ (V : Matrix.unitaryGroup (Fin d) ℂ),
      ξ.val = schmidtVector
        (targetCanonicalSchmidtCoefficient ξ)
        (conjugateUnitary
          (targetReducedDensity_posSemidef ξ).isHermitian.eigenvectorUnitary)
        V := by
  classical
  let C : Matrix (Fin d) (Fin d) ℂ := targetCoefficientMatrix ξ
  let T : EuclideanSpace ℂ (Fin d) →ₗ[ℂ]
      EuclideanSpace ℂ (Fin d) := Matrix.toEuclideanLin C
  let hF := targetReducedDensity_posSemidef ξ
  let v : OrthonormalBasis (Fin d) ℂ
      (EuclideanSpace ℂ (Fin d)) := hF.isHermitian.eigenvectorBasis
  let σ : Fin d → ℝ := targetCanonicalSchmidtCoefficient ξ
  have hσ (i : Fin d) : 0 ≤ σ i :=
    targetCanonicalSchmidtCoefficient_nonneg ξ i
  have hσsq (i : Fin d) :
      σ i ^ 2 = hF.isHermitian.eigenvalues i := by
    exact Real.sq_sqrt (hF.eigenvalues_nonneg i)
  have heigen (i : Fin d) :
      (T.adjoint ∘ₗ T) (v i) = ((σ i ^ 2 : ℝ) : ℂ) • v i := by
    rw [← Matrix.toEuclideanLin_conjTranspose_eq_adjoint]
    change
      toLp 2
        (C.conjTranspose.mulVec
          (C.mulVec (ofLp (v i)))) =
        ((σ i ^ 2 : ℝ) : ℂ) • v i
    rw [Matrix.mulVec_mulVec]
    have spectral := hF.isHermitian.mulVec_eigenvectorBasis i
    change
      (C.conjTranspose * C).mulVec
        (ofLp (v i)) =
        (hF.isHermitian.eigenvalues i) • (ofLp (v i)) at spectral
    rw [spectral, ← hσsq]
    rfl
  let s : Set (Fin d) := {i | σ i ≠ 0}
  let f : Fin d → EuclideanSpace ℂ (Fin d) :=
    fun i => ((σ i : ℂ)⁻¹) • T (v i)
  have hGram (i j : Fin d) :
      inner ℂ (T (v i)) (T (v j)) =
        ((σ j ^ 2 : ℝ) : ℂ) * inner ℂ (v i) (v j) := by
    calc
      inner ℂ (T (v i)) (T (v j)) =
          inner ℂ (v i) (T.adjoint (T (v j))) :=
        (T.adjoint_inner_right (v i) (T (v j))).symm
      _ = inner ℂ (v i) (((σ j ^ 2 : ℝ) : ℂ) • v j) := by
        rw [← heigen j]
        rfl
      _ = _ := by rw [inner_smul_right]
  have hf : Orthonormal ℂ (s.restrict f) := by
    rw [orthonormal_iff_ite]
    intro i j
    have hi : (σ (i : Fin d) : ℂ) ≠ 0 := by
      exact_mod_cast i.property
    have hj : (σ (j : Fin d) : ℂ) ≠ 0 := by
      exact_mod_cast j.property
    change inner ℂ
      (((σ (i : Fin d) : ℂ)⁻¹) • T (v i))
      (((σ (j : Fin d) : ℂ)⁻¹) • T (v j)) = _
    rw [inner_smul_left, inner_smul_right, hGram,
      v.inner_eq_ite]
    by_cases same : i = j
    · subst j
      simp only [ite_true, mul_one]
      have real_star :
          starRingEnd ℂ ((σ (i : Fin d) : ℂ)⁻¹) =
            ((σ (i : Fin d) : ℂ)⁻¹) := by simp
      rw [real_star]
      push_cast
      field_simp
    · have unequal : (i : Fin d) ≠ (j : Fin d) := by
        intro equal
        exact same (Subtype.ext equal)
      simp [same, unequal]
  obtain ⟨u, hu⟩ :=
    Orthonormal.exists_orthonormalBasis_extension_of_card_eq
      (by
        rw [Fintype.card_fin]
        exact finrank_euclideanSpace_fin) hf
  have singular (i : Fin d) :
      T (v i) = (σ i : ℂ) • u i := by
    by_cases zero : σ i = 0
    · have kernel : (T.adjoint ∘ₗ T) (v i) = 0 := by
        rw [heigen i, zero]
        simp
      have image : T (v i) = 0 := by
        apply LinearMap.mem_ker.mp
        rw [← T.ker_adjoint_comp_self]
        exact LinearMap.mem_ker.mpr kernel
      simp [zero, image]
    · have chosen : u i = f i := hu i zero
      rw [chosen]
      change T (v i) =
        (σ i : ℂ) • (((σ i : ℂ)⁻¹) • T (v i))
      rw [smul_smul, mul_inv_cancel₀]
      · simp
      · exact_mod_cast zero
  refine ⟨orthonormalBasisUnitary u, ?_⟩
  have eigen_unitary :
      orthonormalBasisUnitary v =
        hF.isHermitian.eigenvectorUnitary := rfl
  ext ⟨a, b⟩
  rw [schmidtVector_apply]
  have repr :
      T ((EuclideanSpace.basisFun (Fin d) ℂ) a) =
        ∑ i : Fin d,
          inner ℂ (v i) ((EuclideanSpace.basisFun (Fin d) ℂ) a) •
            T (v i) := by
    calc
      T ((EuclideanSpace.basisFun (Fin d) ℂ) a) =
          T (∑ i : Fin d,
            inner ℂ (v i) ((EuclideanSpace.basisFun (Fin d) ℂ) a) •
              v i) := by rw [v.sum_repr']
      _ = _ := by simp
  have coordinate := congrArg
    (fun z : EuclideanSpace ℂ (Fin d) => z b) repr
  have replace :
      conjugateUnitary
          hF.isHermitian.eigenvectorUnitary =
        conjugateUnitary
          (orthonormalBasisUnitary v) := by
    rw [eigen_unitary]
  rw [replace]
  simpa [T, C, σ, targetCoefficientMatrix, Matrix.toLpLin_apply,
    EuclideanSpace.basisFun_apply, Matrix.mulVec_single_one,
    Matrix.col_apply, EuclideanSpace.inner_single_right,
    conjugateUnitary_apply,
    orthonormalBasisUnitary_apply, singular,
    mul_assoc, mul_left_comm, mul_comm] using coordinate

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem conjugateUnitaryBasisOverlap_norm_sq
    {d : ℕ} (U V : Matrix.unitaryGroup (Fin d) ℂ)
    (i j : Fin d) :
    ‖unitaryBasisOverlap
      (conjugateUnitary U)
      (conjugateUnitary V) i j‖ ^ 2 =
      ‖unitaryBasisOverlap U V i j‖ ^ 2 := by
  have hconj :
      unitaryBasisOverlap
        (conjugateUnitary U)
        (conjugateUnitary V) i j =
        star (unitaryBasisOverlap U V i j) := by
    simp [unitaryBasisOverlap_apply,
      Matrix.mul_apply, Matrix.conjTranspose_apply,
      conjugateUnitary_apply]
  rw [hconj, norm_star]

theorem targetCanonicalSpectralEnergy_le_of_canonicalSchmidt
    {d : ℕ} (ξ ζ : BipartiteUnitVector d)
    (V W : Matrix.unitaryGroup (Fin d) ℂ)
    (hξ :
      ξ.val = schmidtVector
        (fun i => Real.sqrt
          ((targetReducedDensity_posSemidef ξ).isHermitian.eigenvalues i))
        (conjugateUnitary
          (targetReducedDensity_posSemidef ξ).isHermitian.eigenvectorUnitary)
        V)
    (hζ :
      ζ.val = schmidtVector
        (fun j => Real.sqrt
          ((targetReducedDensity_posSemidef ζ).isHermitian.eigenvalues j))
        (conjugateUnitary
          (targetReducedDensity_posSemidef ζ).isHermitian.eigenvectorUnitary)
        W) :
    targetCanonicalSpectralEnergy ξ ζ ≤
      2 * ‖ξ.val - ζ.val‖ ^ 2 := by
  let F := targetReducedDensity ξ
  let G := targetReducedDensity ζ
  let hF : F.PosSemidef := targetReducedDensity_posSemidef ξ
  let hG : G.PosSemidef := targetReducedDensity_posSemidef ζ
  have hFtrace : Matrix.trace F = 1 :=
    targetReducedDensity_trace ξ
  have hGtrace : Matrix.trace G = 1 :=
    targetReducedDensity_trace ζ
  have hσunit :
      (∑ i : Fin d, (Real.sqrt (hF.isHermitian.eigenvalues i)) ^ 2) = 1 := by
    simp_rw [Real.sq_sqrt (hF.eigenvalues_nonneg _)]
    exact positiveDensity_eigenvalues_sum F hF hFtrace
  have hμunit :
      (∑ j : Fin d, (Real.sqrt (hG.isHermitian.eigenvalues j)) ^ 2) = 1 := by
    simp_rw [Real.sq_sqrt (hG.eigenvalues_nonneg _)]
    exact positiveDensity_eigenvalues_sum G hG hGtrace
  have henergy := schmidtVector_spectralEnergy_le
    (fun i => Real.sqrt (hF.isHermitian.eigenvalues i))
    (fun j => Real.sqrt (hG.isHermitian.eigenvalues j))
    (fun i => Real.sqrt_nonneg _)
    (fun j => Real.sqrt_nonneg _)
    hσunit hμunit
    (conjugateUnitary hF.isHermitian.eigenvectorUnitary) V
    (conjugateUnitary hG.isHermitian.eigenvectorUnitary) W
  simp_rw [conjugateUnitaryBasisOverlap_norm_sq,
    ← targetSpectralAtomOverlap_eq_basis_norm_sq F G hF hG] at henergy
  change targetCanonicalSpectralEnergy ξ ζ ≤
    2 * ‖ξ.val - ζ.val‖ ^ 2
  simpa [targetCanonicalSpectralEnergy, F, G, hF, hG, hξ, hζ]
    using henergy

theorem targetCanonicalSpectralEnergy_le
    {d : ℕ} (ξ ζ : BipartiteUnitVector d) :
    targetCanonicalSpectralEnergy ξ ζ ≤
      2 * ‖ξ.val - ζ.val‖ ^ 2 := by
  obtain ⟨V, hξ⟩ :=
    exists_proofTargetCanonicalSpectralSchmidtDecomposition ξ
  obtain ⟨W, hζ⟩ :=
    exists_proofTargetCanonicalSpectralSchmidtDecomposition ζ
  apply targetCanonicalSpectralEnergy_le_of_canonicalSchmidt
    ξ ζ V W
  · exact hξ
  · exact hζ

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 7000000
set_option maxRecDepth 3072

theorem dSVUniformDensitySchmidtSumMass_le_four
    {d : ℕ} (ξ ζ : BipartiteUnitVector d) :
    dSVUniformDensitySchmidtSumMass ξ ζ ≤ 4 := by
  let F := targetReducedDensity ξ
  let G := targetReducedDensity ζ
  let hF : F.PosSemidef := targetReducedDensity_posSemidef ξ
  let hG : G.PosSemidef := targetReducedDensity_posSemidef ζ
  let σ := targetCanonicalSchmidtCoefficient ξ
  let μ := targetCanonicalSchmidtCoefficient ζ
  let overlap := spectralAtomOverlap F G hF hG
  have left :
      (∑ i : Fin d, ∑ j : Fin d,
        σ i ^ 2 * overlap i j) = 1 := by
    calc
      _ = ∑ i : Fin d, σ i ^ 2 := by
        apply Finset.sum_congr rfl
        intro i _
        rw [← Finset.mul_sum,
          spectralAtomOverlap_sum_right F G hF hG i]
        simp
      _ = 1 := targetCanonicalSchmidtCoefficient_sq_sum ξ
  have right :
      (∑ i : Fin d, ∑ j : Fin d,
        μ j ^ 2 * overlap i j) = 1 := by
    rw [Finset.sum_comm]
    calc
      (∑ j : Fin d, ∑ i : Fin d,
        μ j ^ 2 * overlap i j) =
          ∑ j : Fin d, μ j ^ 2 := by
            apply Finset.sum_congr rfl
            intro j _
            rw [← Finset.mul_sum,
              spectralAtomOverlap_sum_left F G hF hG j]
            simp
      _ = 1 := targetCanonicalSchmidtCoefficient_sq_sum ζ
  have cross :
      (∑ i : Fin d, ∑ j : Fin d,
        σ i * μ j * overlap i j) ≤ 1 := by
    exact spectralAtomOverlap_schmidtMass_le_one
      F G hF hG (targetReducedDensity_trace ξ)
      (targetReducedDensity_trace ζ)
  have split :
      dSVUniformDensitySchmidtSumMass ξ ζ =
        (∑ i : Fin d, ∑ j : Fin d,
          σ i ^ 2 * overlap i j) +
        (∑ i : Fin d, ∑ j : Fin d,
          μ j ^ 2 * overlap i j) +
        2 * (∑ i : Fin d, ∑ j : Fin d,
          σ i * μ j * overlap i j) := by
    unfold dSVUniformDensitySchmidtSumMass
    change
      (∑ i : Fin d, ∑ j : Fin d,
        (σ i + μ j) ^ 2 * overlap i j) = _
    simp_rw [Finset.mul_sum]
    simp_rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [split, left, right]
  nlinarith

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder MatrixOrder
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 7000000
set_option maxRecDepth 3072

theorem solution
    {d : ℕ} (ξ ζ : BipartiteUnitVector d) :
    dSVUniformDensitySpectralAtomDiscrepancy ξ ζ ≤
      2 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ := by
  let F := targetReducedDensity ξ
  let G := targetReducedDensity ζ
  let hF : F.PosSemidef := targetReducedDensity_posSemidef ξ
  let hG : G.PosSemidef := targetReducedDensity_posSemidef ζ
  let σ := targetCanonicalSchmidtCoefficient ξ
  let μ := targetCanonicalSchmidtCoefficient ζ
  let weight : Fin d × Fin d → ℝ := fun ij =>
    spectralAtomOverlap F G hF hG ij.1 ij.2
  let f : Fin d × Fin d → ℝ := fun ij =>
    |σ ij.1 - μ ij.2|
  let g : Fin d × Fin d → ℝ := fun ij =>
    σ ij.1 + μ ij.2
  have hweight : ∀ ij, 0 ≤ weight ij := fun ij =>
    spectralAtomOverlap_nonneg F G hF hG ij.1 ij.2
  have cauchy := weighted_real_cauchy weight f g hweight
  have exact_l1 :
      (∑ ij : Fin d × Fin d, weight ij * f ij * g ij) =
        dSVUniformDensitySpectralAtomDiscrepancy ξ ζ := by
    rw [Fintype.sum_prod_type]
    unfold dSVUniformDensitySpectralAtomDiscrepancy
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    have sum_nonnegative : 0 ≤ σ i + μ j :=
      add_nonneg
        (targetCanonicalSchmidtCoefficient_nonneg ξ i)
        (targetCanonicalSchmidtCoefficient_nonneg ζ j)
    have factor : σ i ^ 2 - μ j ^ 2 =
        (σ i - μ j) * (σ i + μ j) := by ring
    rw [factor, abs_mul, abs_of_nonneg sum_nonnegative]
    dsimp [weight, f, g, F, G, hF, hG, σ, μ]
    ring
  have exact_energy :
      (∑ ij : Fin d × Fin d, weight ij * f ij ^ 2) =
        targetCanonicalSpectralEnergy ξ ζ := by
    rw [Fintype.sum_prod_type]
    unfold targetCanonicalSpectralEnergy
    dsimp [weight, f, F, G, hF, hG, σ, μ,
      targetCanonicalSchmidtCoefficient]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    rw [sq_abs]
    ring
  have exact_mass :
      (∑ ij : Fin d × Fin d, weight ij * g ij ^ 2) =
        dSVUniformDensitySchmidtSumMass ξ ζ := by
    rw [Fintype.sum_prod_type]
    unfold dSVUniformDensitySchmidtSumMass
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    dsimp [weight, g, F, G, hF, hG, σ, μ]
    ring
  rw [exact_l1, exact_energy, exact_mass] at cauchy
  have target_energy := targetCanonicalSpectralEnergy_le ξ ζ
  have sum_mass := dSVUniformDensitySchmidtSumMass_le_four ξ ζ
  have first :
      Real.sqrt (targetCanonicalSpectralEnergy ξ ζ) ≤
        Real.sqrt 2 * ‖ξ.val - ζ.val‖ := by
    apply Real.sqrt_le_iff.mpr
    constructor
    · positivity
    · have square_two : Real.sqrt (2 : ℝ) ^ 2 = 2 :=
        Real.sq_sqrt (by norm_num)
      nlinarith [sq_nonneg ‖ξ.val - ζ.val‖]
  have second :
      Real.sqrt (dSVUniformDensitySchmidtSumMass ξ ζ) ≤ 2 := by
    apply Real.sqrt_le_iff.mpr
    constructor
    · norm_num
    · nlinarith
  calc
    _ ≤ Real.sqrt (targetCanonicalSpectralEnergy ξ ζ) *
        Real.sqrt (dSVUniformDensitySchmidtSumMass ξ ζ) :=
      cauchy
    _ ≤ (Real.sqrt 2 * ‖ξ.val - ζ.val‖) * 2 :=
      mul_le_mul first second
        (Real.sqrt_nonneg _) (by positivity)
    _ = 2 * Real.sqrt 2 * ‖ξ.val - ζ.val‖ := by ring
