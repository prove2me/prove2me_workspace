import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_posSemidef
import Theorems.Thm_QuantumParallelRepetition_positiveMatrixSpectralAtom_sum
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exists_proofDSVDensityRationalPublicBucketPhysicalQuantitativeMixedPrefixCleanup_sq
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousCommonStopSpectralAliceMass_eq_diagonalBorn
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Basic
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Algebra.Star.Unitary
import Mathlib.Algebra.Star.UnitaryStarAlgAut
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Real
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Complex.BigOperators
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.NNRat.Defs
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Nat.Init
import Mathlib.Data.Rat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Order.RelClasses
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.FieldSimp.Lemmas
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
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

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

theorem spectralAtom_mul
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (i j : d) :
    positiveMatrixSpectralAtom F hF i *
      positiveMatrixSpectralAtom F hF j =
        if i = j then positiveMatrixSpectralAtom F hF i else 0 := by
  classical
  let e := Unitary.conjStarAlgAut ℝ (Matrix d d ℂ)
    hF.isHermitian.eigenvectorUnitary
  change
    e (Matrix.diagonal (Pi.single i (1 : ℂ))) *
      e (Matrix.diagonal (Pi.single j (1 : ℂ))) =
        if i = j then
          e (Matrix.diagonal (Pi.single i (1 : ℂ)))
        else
          0
  by_cases hij : i = j
  · subst j
    simp only [ite_true]
    rw [← map_mul, Matrix.diagonal_mul_diagonal]
    congr 1
    ext k l
    simp only [Matrix.diagonal_apply, Pi.single_apply]
    split_ifs <;> simp_all
  · simp only [hij, ite_false]
    rw [← map_mul, Matrix.diagonal_mul_diagonal, ← map_zero e]
    congr 1
    ext k l
    by_cases hik : k = i
    · subst k
      simp [Matrix.diagonal_apply, Pi.single_apply, hij]
    · simp [Matrix.diagonal_apply, Pi.single_apply, hik]

theorem spectralAtomSum_mul_self
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (s : Finset d) :
    (∑ i ∈ s, positiveMatrixSpectralAtom F hF i) *
      (∑ i ∈ s, positiveMatrixSpectralAtom F hF i) =
        ∑ i ∈ s, positiveMatrixSpectralAtom F hF i := by
  classical
  calc
    (∑ i ∈ s, positiveMatrixSpectralAtom F hF i) *
        (∑ i ∈ s, positiveMatrixSpectralAtom F hF i) =
      ∑ i ∈ s, ∑ j ∈ s,
        positiveMatrixSpectralAtom F hF i *
          positiveMatrixSpectralAtom F hF j := by
            simp only [Matrix.sum_mul, Matrix.mul_sum]
            rw [Finset.sum_comm]
    _ = ∑ i ∈ s, positiveMatrixSpectralAtom F hF i := by
      apply Finset.sum_congr rfl
      intro i hi
      simp [spectralAtom_mul, hi]

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

theorem sharedThresholdResourceRaw_norm_sq
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) :
    ‖sharedThresholdResourceRaw (d := d) τ‖ ^ 2 =
      (Fintype.card d : ℝ) * ∑ k : κ, τ k ^ 2 := by
  classical
  have hterm (k l : κ) (i j : d) :
      ‖if k = l ∧ i = j then (τ k : ℂ) else 0‖ ^ 2 =
        if k = l then if i = j then τ k ^ 2 else 0 else 0 := by
    split_ifs <;>
      simp_all [Complex.norm_real, Real.norm_eq_abs, sq_abs]
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  simp_rw [Fintype.sum_sigma]
  change
    (∑ k : κ, ∑ i : d, ∑ l : κ, ∑ j : d,
      ‖if k = l ∧ i = j then (τ k : ℂ) else 0‖ ^ 2) =
        (Fintype.card d : ℝ) * ∑ k : κ, τ k ^ 2
  simp_rw [hterm]
  simp [Finset.mul_sum]

@[simp] theorem unitaryBasisOverlap_apply
    {d : Type*} [Fintype d] [DecidableEq d]
    (U V : Matrix.unitaryGroup d ℂ) (i j : d) :
    unitaryBasisOverlap U V i j =
      (((U : Matrix d d ℂ).conjTranspose *
        (V : Matrix d d ℂ)) i j) := by
  rfl

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem spectralPartitionPOVM_projective
    {κ d : Type*}
    [Fintype κ] [Fintype d] [DecidableEq κ] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (bin : d → κ) (k : κ) :
    (spectralPartitionPOVM F hF bin).operator k *
      (spectralPartitionPOVM F hF bin).operator k =
        (spectralPartitionPOVM F hF bin).operator k := by
  exact spectralAtomSum_mul_self F hF
    (Finset.univ.filter (fun i : d => bin i = k))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3000000
set_option maxRecDepth 2048

theorem spectralPartitionPOVM_trace_eq_atom_count
    {κ d : Type*}
    [Fintype κ] [Fintype d] [DecidableEq κ] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (bin : d → κ) (k : κ) :
    (Matrix.trace
      ((spectralPartitionPOVM F hF bin).operator k)).re =
      ∑ i : d, if bin i = k then (1 : ℝ) else 0 := by
  classical
  simp [spectralPartitionPOVM,
    Matrix.trace_sum, spectralAtom_trace]

theorem spectralPartitionPOVM_trace_mul_eq_atom_overlap
    {κ d : Type*}
    [Fintype κ] [Fintype d] [DecidableEq κ] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (binF binG : d → κ) (k : κ) :
    (Matrix.trace
      ((spectralPartitionPOVM F hF binF).operator k *
        (spectralPartitionPOVM G hG binG).operator k)).re =
      ∑ i ∈ (Finset.univ.filter fun i : d => binF i = k),
        ∑ j ∈ (Finset.univ.filter fun j : d => binG j = k),
          spectralAtomOverlap F G hF hG i j := by
  classical
  simp [spectralPartitionPOVM,
    spectralAtomOverlap,
    Matrix.sum_mul, Matrix.mul_sum,
    Matrix.trace_sum]
  rw [Finset.sum_comm]

theorem spectralPartitionPOVM_weighted_trace_deficit_eq_mismatch
    {κ d : Type*}
    [Fintype κ] [Fintype d] [DecidableEq κ] [DecidableEq d]
    (F G : Matrix d d ℂ)
    (hF : F.PosSemidef) (hG : G.PosSemidef)
    (binF binG : d → κ)
    (τ : κ → ℝ) :
    (∑ k : κ, τ k ^ 2 *
        (Matrix.trace
          ((spectralPartitionPOVM G hG binG).operator k)).re) -
      (∑ k : κ, τ k ^ 2 *
        (Matrix.trace
          ((spectralPartitionPOVM F hF binF).operator k *
            (spectralPartitionPOVM G hG binG).operator k)).re) =
      ∑ i : d, ∑ j : d,
        if binF i = binG j then 0
        else τ (binG j) ^ 2 *
          spectralAtomOverlap F G hF hG i j := by
  classical
  let w : d → d → ℝ :=
    spectralAtomOverlap F G hF hG
  have hQ :
      (∑ k : κ, τ k ^ 2 *
        (Matrix.trace
          ((spectralPartitionPOVM G hG binG).operator k)).re) =
        ∑ j : d, τ (binG j) ^ 2 := by
    simp_rw [spectralPartitionPOVM_trace_eq_atom_count]
    calc
      (∑ k : κ, τ k ^ 2 *
        (∑ j : d, if binG j = k then (1 : ℝ) else 0)) =
          ∑ k : κ, ∑ j : d,
            if binG j = k then τ k ^ 2 else 0 := by
              apply Finset.sum_congr rfl
              intro k _
              rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro j _
              split_ifs <;> simp
      _ = ∑ j : d, ∑ k : κ,
          if binG j = k then τ k ^ 2 else 0 :=
            Finset.sum_comm
      _ = ∑ j : d, τ (binG j) ^ 2 := by
            simp
  have hPQ :
      (∑ k : κ, τ k ^ 2 *
        (Matrix.trace
          ((spectralPartitionPOVM F hF binF).operator k *
            (spectralPartitionPOVM G hG binG).operator k)).re) =
        ∑ i : d, ∑ j : d,
          if binF i = binG j then
            τ (binG j) ^ 2 * w i j
          else 0 := by
    have hsingle (k : κ) :
        τ k ^ 2 *
          (Matrix.trace
            ((spectralPartitionPOVM F hF binF).operator k *
              (spectralPartitionPOVM G hG binG).operator k)).re =
          ∑ i : d, ∑ j : d,
            if binF i = k ∧ binG j = k then
              τ k ^ 2 * w i j
            else 0 := by
      rw [spectralPartitionPOVM_trace_mul_eq_atom_overlap]
      dsimp [w]
      simp only [Finset.sum_filter, Finset.mul_sum,
        mul_ite, mul_zero]
      apply Finset.sum_congr rfl
      intro i _
      by_cases hi : binF i = k
      · simp [hi]
      · simp [hi]
    simp_rw [hsingle]
    calc
      (∑ k : κ, ∑ i : d, ∑ j : d,
        if binF i = k ∧ binG j = k then
          τ k ^ 2 * w i j
        else 0) =
          ∑ i : d, ∑ j : d, ∑ k : κ,
            if binF i = k ∧ binG j = k then
              τ k ^ 2 * w i j
            else 0 := by
              rw [Finset.sum_comm]
              apply Finset.sum_congr rfl
              intro i _
              rw [Finset.sum_comm]
      _ = ∑ i : d, ∑ j : d,
          if binF i = binG j then
            τ (binG j) ^ 2 * w i j
          else 0 := by
            apply Finset.sum_congr rfl
            intro i _
            apply Finset.sum_congr rfl
            intro j _
            have reindex (k : κ) :
                (if binF i = k ∧ binG j = k then
                  τ k ^ 2 * w i j
                else 0) =
                  if binG j = k then
                    if binF i = binG j then
                      τ (binG j) ^ 2 * w i j
                    else 0
                  else 0 := by
              by_cases hk : binG j = k
              · subst k
                simp
              · simp [hk]
            simp_rw [reindex]
            simp
  rw [hQ, hPQ]
  have hcolumn : ∀ j : d, (∑ i : d, w i j) = 1 :=
    spectralAtomOverlap_sum_left F G hF hG
  have hfirst :
      (∑ j : d, τ (binG j) ^ 2) =
        ∑ i : d, ∑ j : d,
          τ (binG j) ^ 2 * w i j := by
    calc
      (∑ j : d, τ (binG j) ^ 2) =
          ∑ j : d,
            τ (binG j) ^ 2 * (∑ i : d, w i j) := by
              simp_rw [hcolumn]
              simp
      _ = ∑ i : d, ∑ j : d,
          τ (binG j) ^ 2 * w i j := by
            simp_rw [Finset.mul_sum]
            exact Finset.sum_comm
  rw [hfirst, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _
  split_ifs <;> simp [w]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

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

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityThresholdRaw_norm_sq
    (N d : ℕ) :
    ‖sharedThresholdResourceRaw (d := Fin d)
      (fun _ : Fin N => (1 : ℝ))‖ ^ 2 =
      (d : ℝ) * (N : ℝ) := by
  simpa using sharedThresholdResourceRaw_norm_sq
    (d := Fin d) (fun _ : Fin N => (1 : ℝ))

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVUniformDensityThresholdWeight_nonneg
    (N : ℕ) (k : Fin N) :
    0 ≤ dSVUniformDensityThresholdWeight N k := by
  unfold dSVUniformDensityThresholdWeight
  positivity

theorem dSVUniformDensityGridPrefix_eq_count
    (N : ℕ) (density : ℝ) :
    dSVUniformDensityGridPrefix N density =
      ((Finset.univ.filter fun k : Fin N =>
        dSVUniformDensityThresholdGrid N k ≤ density).card : ℝ) /
        (N : ℝ) := by
  classical
  unfold dSVUniformDensityGridPrefix
    dSVUniformDensityThresholdWeight
  simp_rw [mul_ite, mul_one, mul_zero]
  rw [← Finset.sum_filter]
  simp [div_eq_mul_inv, mul_comm]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 12000000
set_option maxRecDepth 4096

theorem dSVUniformDensityBinarySpectral_false_eq_complement
    {d : Type*} [Fintype d] [DecidableEq d]
    (F : Matrix d d ℂ) (hF : F.PosSemidef)
    (bin : d → Bool) :
    (spectralPartitionPOVM F hF bin).operator false =
      1 - (spectralPartitionPOVM F hF bin).operator true := by
  have complete := (spectralPartitionPOVM F hF bin).complete
  rw [Fintype.sum_bool] at complete
  rw [add_comm] at complete
  exact eq_sub_of_add_eq complete

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityCorrectedMatchedSigmaWeightedResidual_distance_sq
    {H : Type*} [Fintype H] {n : ℕ}
    (history : EuclideanSpace ℂ (H × H))
    (work target : H → H → EuclideanSpace ℂ (Fin n × Fin n)) :
    ‖dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history work -
      dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history target‖ ^ 2 =
      ∑ a : H, ∑ b : H,
        ‖history (a, b)‖ ^ 2 * ‖work a b - target a b‖ ^ 2 := by
  classical
  rw [EuclideanSpace.norm_sq_eq]
  simp only [Fintype.sum_prod_type, Fintype.sum_sigma]
  change
    (∑ a : H, ∑ i : Fin n,
      ∑ b : H, ∑ j : Fin n,
        ‖history (a, b) * work a b (i, j) -
          history (a, b) * target a b (i, j)‖ ^ 2) = _
  apply Finset.sum_congr rfl
  intro a _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro b _
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  change
    ‖history (a, b) * work a b (i, j) -
      history (a, b) * target a b (i, j)‖ ^ 2 =
      ‖history (a, b)‖ ^ 2 *
        ‖work a b (i, j) - target a b (i, j)‖ ^ 2
  rw [← mul_sub, norm_mul, mul_pow]

theorem dSVUniformDensityCorrectedMatchedSigmaWeightedResidual_controlled
    {H : Type*} [Fintype H] [DecidableEq H] {n : ℕ}
    (history : EuclideanSpace ℂ (H × H))
    (work : H → H → EuclideanSpace ℂ (Fin n × Fin n))
    (U V : H → Matrix.unitaryGroup (Fin n) ℂ) :
    dSVUniformDensityPhysicalAsyncSigmaContinuation
        U V
        (dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
          history work) =
      dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history (fun a b =>
          localUnitaryAction (U a) (V b) (work a b)) := by
  classical
  ext ⟨⟨a, i⟩, ⟨b, j⟩⟩
  simp [dSVUniformDensityPhysicalAsyncSigmaContinuation,
    dSVUniformDensityCorrectedMatchedSigmaWeightedResidual,
    coherentSharedRandomControlledUnitary,
    localUnitaryAction, Matrix.mulVec, dotProduct,
    Matrix.kroneckerMap_apply, Matrix.blockDiagonal'_apply,
    Fintype.sum_prod_type, Fintype.sum_sigma,
    mul_assoc, mul_comm]
  simp_rw [Finset.mul_sum]

theorem
    dSVUniformDensityCorrectedMatchedSigmaControlledReset_distance_sq
    {H : Type*} [Fintype H] [DecidableEq H] {n : ℕ}
    (history : EuclideanSpace ℂ (H × H))
    (work target : H → H → EuclideanSpace ℂ (Fin n × Fin n))
    (U V : H → Matrix.unitaryGroup (Fin n) ℂ) :
    ‖dSVUniformDensityPhysicalAsyncSigmaContinuation U V
        (dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
          history work) -
      dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history target‖ ^ 2 =
      ∑ a : H, ∑ b : H,
        ‖history (a, b)‖ ^ 2 *
          ‖localUnitaryAction
              (U a) (V b) (work a b) - target a b‖ ^ 2 := by
  rw [dSVUniformDensityCorrectedMatchedSigmaWeightedResidual_controlled,
    dSVUniformDensityCorrectedMatchedSigmaWeightedResidual_distance_sq]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalPhysicalProjectorSquare_eq_atomMismatch
    {d N : ℕ} (w : ℝ)
    (ξ ζ : BipartiteUnitVector d) (k : Fin N) :
    (Matrix.trace
      ((dSVDensityRationalPhysicalProjector w ξ k -
        dSVDensityRationalPhysicalProjector w ζ k) *
       (dSVDensityRationalPhysicalProjector w ξ k -
        dSVDensityRationalPhysicalProjector w ζ k))).re =
      ∑ i : Fin d, ∑ j : Fin d,
        if dSVDensityRationalProjectiveThresholdBin w N k
              ((dSVSoftBobLeftReducedDensity_posSemidef
                ξ).isHermitian.eigenvalues i) =
            dSVDensityRationalProjectiveThresholdBin w N k
              ((dSVSoftBobLeftReducedDensity_posSemidef
                ζ).isHermitian.eigenvalues j)
        then 0
        else spectralAtomOverlap
          (dSVSoftBobLeftReducedDensity ξ)
          (dSVSoftBobLeftReducedDensity ζ)
          (dSVSoftBobLeftReducedDensity_posSemidef ξ)
          (dSVSoftBobLeftReducedDensity_posSemidef ζ) i j := by
  classical
  let F := dSVSoftBobLeftReducedDensity ξ
  let G := dSVSoftBobLeftReducedDensity ζ
  let hF := dSVSoftBobLeftReducedDensity_posSemidef ξ
  let hG := dSVSoftBobLeftReducedDensity_posSemidef ζ
  let f : Fin d → Bool := fun i =>
    dSVDensityRationalProjectiveThresholdBin w N k
      (hF.isHermitian.eigenvalues i)
  let g : Fin d → Bool := fun j =>
    dSVDensityRationalProjectiveThresholdBin w N k
      (hG.isHermitian.eigenvalues j)
  let P := (spectralPartitionPOVM F hF f).operator true
  let R := (spectralPartitionPOVM G hG g).operator true
  have deficit :=
    spectralPartitionPOVM_weighted_trace_deficit_eq_mismatch
      F G hF hG f g (fun _ : Bool => (1 : ℝ))
  simp only [one_pow, one_mul] at deficit
  have ffalse := dSVUniformDensityBinarySpectral_false_eq_complement
    F hF f
  have gfalse := dSVUniformDensityBinarySpectral_false_eq_complement
    G hG g
  have hp : P * P = P :=
    spectralPartitionPOVM_projective F hF f true
  have hr : R * R = R :=
    spectralPartitionPOVM_projective G hG g true
  change (Matrix.trace ((P - R) * (P - R))).re = _
  change
    (∑ b : Bool, (Matrix.trace
      ((spectralPartitionPOVM G hG g).operator b)).re) -
      (∑ b : Bool, (Matrix.trace
        ((spectralPartitionPOVM F hF f).operator b *
          (spectralPartitionPOVM G hG g).operator b)).re) =
      ∑ i : Fin d, ∑ j : Fin d,
        if f i = g j then 0
        else spectralAtomOverlap F G hF hG i j at deficit
  rw [← deficit]
  simp only [Fintype.sum_bool]
  rw [ffalse, gfalse]
  change (Matrix.trace ((P - R) * (P - R))).re =
    (Matrix.trace R).re + (Matrix.trace (1 - R)).re -
      ((Matrix.trace (P * R)).re +
        (Matrix.trace ((1 - P) * (1 - R))).re)
  simp only [Matrix.sub_mul, Matrix.mul_sub, Matrix.one_mul,
    Matrix.mul_one, Matrix.trace_sub, Complex.sub_re, hp, hr]
  rw [Matrix.trace_mul_comm R P]
  ring

theorem dSVDensityRationalPhysicalProjectorSquare_grid_eq
    {d N : ℕ} (w : ℝ)
    (ξ ζ : BipartiteUnitVector d) :
    (∑ k : Fin N,
      (Matrix.trace
        ((dSVDensityRationalPhysicalProjector w ξ k -
          dSVDensityRationalPhysicalProjector w ζ k) *
         (dSVDensityRationalPhysicalProjector w ξ k -
          dSVDensityRationalPhysicalProjector w ζ k))).re) /
        (N : ℝ) =
      dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ := by
  classical
  simp_rw [dSVDensityRationalPhysicalProjectorSquare_eq_atomMismatch]
  let F := dSVSoftBobLeftReducedDensity ξ
  let G := dSVSoftBobLeftReducedDensity ζ
  let hF := dSVSoftBobLeftReducedDensity_posSemidef ξ
  let hG := dSVSoftBobLeftReducedDensity_posSemidef ζ
  let overlap := spectralAtomOverlap F G hF hG
  have commute :
      (∑ k : Fin N, ∑ i : Fin d, ∑ j : Fin d,
        if dSVDensityRationalProjectiveThresholdBin w N k
              (hF.isHermitian.eigenvalues i) =
            dSVDensityRationalProjectiveThresholdBin w N k
              (hG.isHermitian.eigenvalues j)
        then 0 else overlap i j) =
      ∑ i : Fin d, ∑ j : Fin d, ∑ k : Fin N,
        if dSVDensityRationalProjectiveThresholdBin w N k
              (hF.isHermitian.eigenvalues i) =
            dSVDensityRationalProjectiveThresholdBin w N k
              (hG.isHermitian.eigenvalues j)
        then 0 else overlap i j := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    rw [Finset.sum_comm]
  change
    (∑ k : Fin N, ∑ i : Fin d, ∑ j : Fin d,
      if dSVDensityRationalProjectiveThresholdBin w N k
            (hF.isHermitian.eigenvalues i) =
          dSVDensityRationalProjectiveThresholdBin w N k
            (hG.isHermitian.eigenvalues j)
      then 0 else overlap i j) / (N : ℝ) = _
  rw [commute]
  unfold dSVDensityRationalLeftProjectiveThresholdAtomMismatch
  change
    (∑ i : Fin d, ∑ j : Fin d, ∑ k : Fin N,
      if dSVDensityRationalProjectiveThresholdBin w N k
            (hF.isHermitian.eigenvalues i) =
          dSVDensityRationalProjectiveThresholdBin w N k
            (hG.isHermitian.eigenvalues j)
      then 0 else overlap i j) / (N : ℝ) =
      ∑ i : Fin d, ∑ j : Fin d,
        overlap i j * dSVUniformDensityThresholdMismatch N
          (dSVRationalSoftPass w
            (hF.isHermitian.eigenvalues i))
          (dSVRationalSoftPass w
            (hG.isHermitian.eigenvalues j))
  simp_rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  unfold dSVUniformDensityThresholdMismatch
    dSVUniformDensityThresholdWeight
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  unfold dSVDensityRationalProjectiveThresholdBin
  by_cases left : dSVUniformDensityThresholdGrid N k ≤
      dSVRationalSoftPass w (hF.isHermitian.eigenvalues i)
  · by_cases right : dSVUniformDensityThresholdGrid N k ≤
        dSVRationalSoftPass w (hG.isHermitian.eigenvalues j)
    · simp [left, right]
    · simp [left, right, div_eq_mul_inv]
  · by_cases right : dSVUniformDensityThresholdGrid N k ≤
        dSVRationalSoftPass w (hG.isHermitian.eigenvalues j)
    · simp [left, right, div_eq_mul_inv]
    · simp [left, right]

theorem dSVDensityRationalPhysicalProjectorCrossHazard_eq
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalPhysicalProjectorCrossHazard N w ξ ζ =
      dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ / (d : ℝ) := by
  have d_nonzero : (d : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt dimension)
  have n_nonzero : (N : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt grid)
  unfold dSVDensityRationalPhysicalProjectorCrossHazard
  calc
    (∑ k : Fin N,
      (Matrix.trace
        ((dSVDensityRationalPhysicalProjector w ξ k -
          dSVDensityRationalPhysicalProjector w ζ k) *
         (dSVDensityRationalPhysicalProjector w ξ k -
          dSVDensityRationalPhysicalProjector w ζ k))).re) /
        ((d : ℝ) * (N : ℝ)) =
      ((∑ k : Fin N,
        (Matrix.trace
          ((dSVDensityRationalPhysicalProjector w ξ k -
            dSVDensityRationalPhysicalProjector w ζ k) *
           (dSVDensityRationalPhysicalProjector w ξ k -
            dSVDensityRationalPhysicalProjector w ζ k))).re) /
          (N : ℝ)) / (d : ℝ) := by
      field_simp
    _ = dSVDensityRationalLeftProjectiveThresholdAtomMismatch
          w N ξ ζ / (d : ℝ) := by
      rw [dSVDensityRationalPhysicalProjectorSquare_grid_eq w ξ ζ]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalPhysicalAcceptedRank_gridPrefix
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (i : Fin d) :
    dSVUniformDensityGridPrefix N
        (dSVRationalSoftPass w
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ξ).isHermitian.eigenvalues i)) =
      ((dSVDensityRationalPhysicalAcceptedRank
        w N ξ i).val : ℝ) / (N : ℝ) := by
  classical
  rw [dSVUniformDensityGridPrefix_eq_count]
  simp [dSVDensityRationalPhysicalAcceptedRank,
    dSVDensityRationalProjectiveThresholdBin]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVUniformDensityGridPrefix_mono
    (N : ℕ) {a b : ℝ} (ordered : a ≤ b) :
    dSVUniformDensityGridPrefix N a ≤
      dSVUniformDensityGridPrefix N b := by
  unfold dSVUniformDensityGridPrefix
  apply Finset.sum_le_sum
  intro k _
  apply mul_le_mul_of_nonneg_left _
    (dSVUniformDensityThresholdWeight_nonneg N k)
  by_cases low : dSVUniformDensityThresholdGrid N k ≤ a
  · have high : dSVUniformDensityThresholdGrid N k ≤ b :=
      low.trans ordered
    simp [low, high]
  · by_cases high : dSVUniformDensityThresholdGrid N k ≤ b
    · simp [low, high]
    · simp [low, high]

theorem dSVUniformDensityThresholdMismatch_eq_sub_of_le
    (N : ℕ) {a b : ℝ} (ordered : a ≤ b) :
    dSVUniformDensityThresholdMismatch N a b =
      dSVUniformDensityGridPrefix N b -
        dSVUniformDensityGridPrefix N a := by
  unfold dSVUniformDensityThresholdMismatch
    dSVUniformDensityGridPrefix
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro k _
  by_cases low : dSVUniformDensityThresholdGrid N k ≤ a
  · have high : dSVUniformDensityThresholdGrid N k ≤ b :=
      low.trans ordered
    simp [low, high]
  · by_cases high : dSVUniformDensityThresholdGrid N k ≤ b
    · simp [low, high]
    · simp [low, high]

theorem dSVUniformDensityThresholdMismatch_eq_abs_gridPrefix
    (N : ℕ) (a b : ℝ) :
    dSVUniformDensityThresholdMismatch N a b =
      |dSVUniformDensityGridPrefix N a -
        dSVUniformDensityGridPrefix N b| := by
  rcases le_total a b with ordered | ordered
  · rw [dSVUniformDensityThresholdMismatch_eq_sub_of_le
      N ordered]
    rw [abs_of_nonpos (sub_nonpos.mpr
      (dSVUniformDensityGridPrefix_mono N ordered))]
    ring
  · have symmetric :
        dSVUniformDensityThresholdMismatch N a b =
          dSVUniformDensityThresholdMismatch N b a := by
      unfold dSVUniformDensityThresholdMismatch
      apply Finset.sum_congr rfl
      intro k _
      by_cases low : dSVUniformDensityThresholdGrid N k ≤ a
      · by_cases high : dSVUniformDensityThresholdGrid N k ≤ b
        · simp [low, high]
        · simp [low, high]
      · by_cases high : dSVUniformDensityThresholdGrid N k ≤ b
        · simp [low, high]
        · simp [low, high]
    rw [symmetric,
      dSVUniformDensityThresholdMismatch_eq_sub_of_le
        N ordered,
      abs_of_nonneg (sub_nonneg.mpr
        (dSVUniformDensityGridPrefix_mono N ordered))]

theorem
    dSVDensityRationalPhysicalAcceptedRankMismatch_eq_thresholdMismatch
    {d N : ℕ} (w : ℝ)
    (ξ ζ : BipartiteUnitVector d) (i j : Fin d) :
    |((dSVDensityRationalPhysicalAcceptedRank
          w N ξ i).val : ℝ) -
      ((dSVDensityRationalPhysicalAcceptedRank
          w N ζ j).val : ℝ)| / (N : ℝ) =
      dSVUniformDensityThresholdMismatch N
        (dSVRationalSoftPass w
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ξ).isHermitian.eigenvalues i))
        (dSVRationalSoftPass w
          ((dSVSoftBobLeftReducedDensity_posSemidef
            ζ).isHermitian.eigenvalues j)) := by
  rw [dSVUniformDensityThresholdMismatch_eq_abs_gridPrefix,
    dSVDensityRationalPhysicalAcceptedRank_gridPrefix,
    dSVDensityRationalPhysicalAcceptedRank_gridPrefix,
    ← sub_div, abs_div, abs_of_nonneg (by positivity : (0 : ℝ) ≤ N)]

theorem dSVDensityRationalPrefixRankMismatch_eq_atomMismatch
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalPrefixRankMismatch w N ξ ζ =
      dSVDensityRationalLeftProjectiveThresholdAtomMismatch
        w N ξ ζ := by
  unfold dSVDensityRationalPrefixRankMismatch
    dSVDensityRationalLeftProjectiveThresholdAtomMismatch
  simp_rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  rw [mul_div_assoc,
    dSVDensityRationalPhysicalAcceptedRankMismatch_eq_thresholdMismatch]

theorem dSVDensityRationalPrefixRankMismatch_physicalHazard
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalPrefixRankMismatch w N ξ ζ / (d : ℝ) =
      dSVDensityRationalPhysicalProjectorCrossHazard
        N w ξ ζ := by
  rw [dSVDensityRationalPrefixRankMismatch_eq_atomMismatch,
    dSVDensityRationalPhysicalProjectorCrossHazard_eq
      grid dimension w ξ ζ]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalPublicBucketCoherentPhaseHistory_apply
    {H : Type*} [Fintype H] (B : ℕ)
    (history : EuclideanSpace ℂ (H × H))
    (φ ψ : Fin B) (a b : H) :
    dSVDensityRationalPublicBucketCoherentPhaseHistory
        B history ((φ, a), (ψ, b)) =
      ePRState B (φ, ψ) * history (a, b) := by
  rfl

theorem dSVDensityRationalPublicBucketCoherentPhaseHistory_apply_norm_sq
    {H : Type*} [Fintype H] {B : ℕ}
    (positive : 0 < B)
    (history : EuclideanSpace ℂ (H × H))
    (φ ψ : Fin B) (a b : H) :
    ‖dSVDensityRationalPublicBucketCoherentPhaseHistory
        B history ((φ, a), (ψ, b))‖ ^ 2 =
      (if φ = ψ then (B : ℝ)⁻¹ else 0) *
        ‖history (a, b)‖ ^ 2 := by
  rw [dSVDensityRationalPublicBucketCoherentPhaseHistory_apply,
    norm_mul, mul_pow]
  by_cases same : φ = ψ
  · subst ψ
    simp only [ePRState, ↓reduceIte]
    rw [Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (inv_nonneg.mpr (Real.sqrt_nonneg _)),
      inv_pow, Real.sq_sqrt (by positivity : (0 : ℝ) ≤ B)]
  · simp [ePRState, same]

theorem dSVDensityRationalPublicBucketCoherentPhaseSigmaReset_distance_sq
    {H I : Type*} [Fintype H] [DecidableEq H]
    [DecidableEq I] {B D m : ℕ}
    (phase_positive : 0 < B)
    (history : EuclideanSpace ℂ (H × H))
    (rankA rankB : H → Fin D)
    (bucket : Fin B → Fin D → I)
    (A C : Fin B → I → Matrix.unitaryGroup (Fin m) ℂ)
    (work target : Fin B → H → H →
      EuclideanSpace ℂ (Fin m × Fin m)) :
    ‖dSVUniformDensityPhysicalAsyncSigmaContinuation
          (fun q : Fin B × H =>
            A q.1 (bucket q.1 (rankA q.2)))
          (fun q : Fin B × H =>
            C q.1 (bucket q.1 (rankB q.2)))
          (dSVDensityRationalPublicBucketCoherentPhaseSigmaState
            B history work) -
        dSVDensityRationalPublicBucketCoherentPhaseSigmaState
          B history target‖ ^ 2 =
      (∑ φ : Fin B, ∑ a : H, ∑ b : H,
        ‖history (a, b)‖ ^ 2 *
          ‖localUnitaryAction
              (A φ (bucket φ (rankA a)))
              (C φ (bucket φ (rankB b)))
              (work φ a b) - target φ a b‖ ^ 2) /
        (B : ℝ) := by
  classical
  unfold dSVDensityRationalPublicBucketCoherentPhaseSigmaState
  rw [dSVUniformDensityCorrectedMatchedSigmaControlledReset_distance_sq]
  simp_rw [Fintype.sum_prod_type]
  change
    (∑ φ : Fin B, ∑ a : H,
      ∑ ψ : Fin B, ∑ b : H,
        ‖dSVDensityRationalPublicBucketCoherentPhaseHistory
            B history ((φ, a), (ψ, b))‖ ^ 2 *
          ‖localUnitaryAction
              (A φ (bucket φ (rankA a)))
              (C ψ (bucket ψ (rankB b)))
              (work φ a b) - target φ a b‖ ^ 2) = _
  simp_rw [
    dSVDensityRationalPublicBucketCoherentPhaseHistory_apply_norm_sq
      phase_positive]
  calc
    (∑ φ : Fin B, ∑ a : H,
      ∑ ψ : Fin B, ∑ b : H,
        ((if φ = ψ then (B : ℝ)⁻¹ else 0) *
          ‖history (a, b)‖ ^ 2) *
          ‖localUnitaryAction
              (A φ (bucket φ (rankA a)))
              (C ψ (bucket ψ (rankB b)))
              (work φ a b) - target φ a b‖ ^ 2) =
      ∑ φ : Fin B, ∑ a : H, ∑ b : H,
        (B : ℝ)⁻¹ *
          (‖history (a, b)‖ ^ 2 *
            ‖localUnitaryAction
                (A φ (bucket φ (rankA a)))
                (C φ (bucket φ (rankB b)))
                (work φ a b) - target φ a b‖ ^ 2) := by
      apply Finset.sum_congr rfl
      intro φ _
      apply Finset.sum_congr rfl
      intro a _
      simp [mul_assoc]
    _ = (B : ℝ)⁻¹ *
        (∑ φ : Fin B, ∑ a : H, ∑ b : H,
          ‖history (a, b)‖ ^ 2 *
            ‖localUnitaryAction
                (A φ (bucket φ (rankA a)))
                (C φ (bucket φ (rankB b)))
                (work φ a b) - target φ a b‖ ^ 2) := by
      simp_rw [Finset.mul_sum]
    _ = _ := by ring

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalPrefixHarmonicSpectralOverlap_nonneg
    {d : ℕ} (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) :
    0 ≤ dSVDensityRationalPrefixHarmonicSpectralOverlap
      ξ ζ i j :=
  spectralAtomOverlap_nonneg _ _ _ _ i j

theorem dSVDensityRationalLocalSpectralPairBasisOverlap_norm_sq
    {d : ℕ} (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) :
    ‖dSVDensityRationalLocalSpectralPairBasisOverlap
        ξ ζ i j‖ ^ 2 =
      dSVDensityRationalPrefixHarmonicSpectralOverlap
        ξ ζ i j := by
  unfold dSVDensityRationalLocalSpectralPairBasisOverlap
    dSVDensityRationalPrefixHarmonicSpectralOverlap
  exact (targetSpectralAtomOverlap_eq_basis_norm_sq
    (dSVSoftBobLeftReducedDensity ξ)
    (dSVSoftBobLeftReducedDensity ζ)
    (dSVSoftBobLeftReducedDensity_posSemidef ξ)
    (dSVSoftBobLeftReducedDensity_posSemidef ζ) i j).symm

theorem dSVDensityRationalLocalSpectralPairHistory_apply_norm_sq
    {d : ℕ} (N : ℕ)
    (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) :
    ‖dSVDensityRationalLocalSpectralPairHistory
        N ξ ζ (i, j)‖ ^ 2 =
      dSVDensityRationalPrefixHarmonicSpectralOverlap
        ξ ζ i j / ((d : ℝ) * (N : ℝ)) := by
  unfold dSVDensityRationalLocalSpectralPairHistory
  change
    ‖((‖sharedThresholdResourceRaw (d := Fin d)
        (fun _ : Fin N => (1 : ℝ))‖⁻¹ : ℝ) : ℂ) *
      dSVDensityRationalLocalSpectralPairBasisOverlap
        ξ ζ i j‖ ^ 2 = _
  rw [norm_mul, mul_pow, Complex.norm_real, Real.norm_eq_abs,
    sq_abs,
    dSVDensityRationalLocalSpectralPairBasisOverlap_norm_sq,
    inv_pow, dSVUniformDensityThresholdRaw_norm_sq]
  ring

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalPublicBucketPhysicalCommonRank_eq
    {d N : ℕ} (w : ℝ)
    (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) :
    dSVDensityRationalPublicBucketPhysicalCommonRank
        (dSVDensityRationalPhysicalAcceptedRank w N ξ i)
        (dSVDensityRationalPhysicalAcceptedRank w N ζ j) =
      dSVDensityRationalPhysicalMixedAcceptedIntersectionRank
        w N ξ ζ i j := by
  rfl

theorem
    dSVDensityRationalPublicBucketPhysicalCoherentMixedReset_distance_sq
    {d N B n : ℕ} (phases : 0 < B) (Q : ℕ) (w : ℝ)
    (ξ ζ : BipartiteUnitVector d)
    (A C : Fin B → Option ℕ →
      Matrix.unitaryGroup (Fin (N * n)) ℂ) :
    ‖dSVDensityRationalPublicBucketPhysicalCoherentLocalReset
          Q w ξ ζ A C
          (dSVDensityRationalPublicBucketPhysicalCoherentMixedState
            (N := N) (B := B) w n ξ ζ) -
        dSVDensityRationalPublicBucketPhysicalCoherentTargetState
          (N := N) (B := B) w n ξ ζ‖ ^ 2 =
      dSVDensityRationalPublicBucketPhysicalPhaseWeightedMixedError
        Q w ξ ζ A C := by
  unfold
    dSVDensityRationalPublicBucketPhysicalCoherentLocalReset
    dSVDensityRationalPublicBucketPhysicalCoherentMixedState
    dSVDensityRationalPublicBucketPhysicalCoherentTargetState
  rw [dSVDensityRationalPublicBucketCoherentPhaseSigmaReset_distance_sq
    phases]
  simp_rw [
    dSVDensityRationalLocalSpectralPairHistory_apply_norm_sq]
  unfold
    dSVDensityRationalPublicBucketPhysicalPhaseWeightedMixedError
    dSVDensityRationalPublicLogRankPhaseWeight
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro phase _
  ring

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    dSVDensityRationalHeterogeneousCommonStopSpectralAtomWeight_nonneg
    {d : ℕ} (N : ℕ)
    (ξ ζ : BipartiteUnitVector d)
    (i j : Fin d) :
    0 ≤ dSVDensityRationalHeterogeneousCommonStopSpectralAtomWeight
      N ξ ζ i j := by
  exact div_nonneg
    (dSVDensityRationalPrefixHarmonicSpectralOverlap_nonneg
      ξ ζ i j)
    (mul_nonneg (Nat.cast_nonneg d) (Nat.cast_nonneg N))

theorem
    dSVDensityRationalHeterogeneousCommonStopSpectralRankGap_eq_hazard
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalHeterogeneousCommonStopSpectralRankGap
        N w ξ ζ =
      dSVDensityRationalPhysicalProjectorCrossHazard N w ξ ζ := by
  rw [← dSVDensityRationalPrefixRankMismatch_physicalHazard
    grid dimension w ξ ζ]
  unfold
    dSVDensityRationalHeterogeneousCommonStopSpectralRankGap
    dSVDensityRationalHeterogeneousCommonStopSpectralAtomWeight
    dSVDensityRationalPrefixRankMismatch
    dSVDensityRationalPrefixHarmonicSpectralOverlap
  simp_rw [div_mul_eq_mul_div, ← Finset.sum_div]
  rw [div_div, mul_comm (N : ℝ) (d : ℝ)]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    solution
    {d N B : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (phases : 0 < B) {Q : ℕ} (fine : 0 < Q)
    (ε : ℝ) (precision : 0 < ε) :
    ∃ n : ℕ, 0 < n ∧
      ∃ A C : Fin B → Option ℕ →
          Matrix.unitaryGroup (Fin (N * n)) ℂ,
        ∀ {S L : ℕ}
          (width : Fin S → ℝ) (schedule : Fin L → Fin S)
          (ξ ζ : BipartiteUnitVector d) (k : Fin L),
          ‖dSVDensityRationalPublicBucketPhysicalCoherentLocalReset
              Q (width (schedule k)) ξ ζ A C
              (dSVDensityRationalPublicBucketPhysicalCoherentMixedState
                (N := N) (B := B)
                (width (schedule k)) n ξ ζ) -
            dSVDensityRationalPublicBucketPhysicalCoherentTargetState
              (N := N) (B := B)
              (width (schedule k)) n ξ ζ‖ ^ 2 ≤
            (10 + 8 * ((Q : ℝ) / (B : ℝ))) *
                dSVDensityRationalPhysicalProjectorCrossHazard
                  N (width (schedule k)) ξ ζ +
              (4 * ε ^ 2 +
                16 * (Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1) +
                8 / (B : ℝ)) *
                dSVDensityRationalPhysicalDiagonalBornSuccess
                  grid dimension (width (schedule k)) ξ := by
  classical
  obtain ⟨n, harmonic, A, C, accurate⟩ :=
    exists_proofDSVDensityRationalPublicBucketPhysicalQuantitativeMixedPrefixCleanup_sq
      grid phases fine ε precision
  refine ⟨n, harmonic, A, C, ?_⟩
  intro S L width schedule ξ ζ k
  let w : ℝ := width (schedule k)
  let coefficient : Fin d → Fin d → ℝ :=
    dSVDensityRationalHeterogeneousCommonStopSpectralAtomWeight
      N ξ ζ
  let gap : Fin d → Fin d → ℝ := fun i j =>
    |((dSVDensityRationalPhysicalAcceptedRank w N ξ i).val : ℝ) -
      ((dSVDensityRationalPhysicalAcceptedRank w N ζ j).val : ℝ)|
  let alice : Fin d → ℝ := fun i =>
    ((dSVDensityRationalPhysicalAcceptedRank w N ξ i).val : ℝ)
  let Kgap : ℝ := 10 + 8 * ((Q : ℝ) / (B : ℝ))
  let Kmass : ℝ :=
    4 * ε ^ 2 +
      16 * (Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1) +
      8 / (B : ℝ)
  have point (i j : Fin d) :
      (∑ phase : Fin B,
        dSVDensityRationalPublicLogRankPhaseWeight B phase *
          ‖localUnitaryAction
              (A phase
                (dSVDensityRationalPublicLogRankBucket Q phase
                  (dSVDensityRationalPhysicalAcceptedRank
                    w N ξ i)))
              (C phase
                (dSVDensityRationalPublicLogRankBucket Q phase
                  (dSVDensityRationalPhysicalAcceptedRank
                    w N ζ j)))
              (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
                n (dSVDensityRationalPhysicalMixedAcceptedPrefixWork
                  w N ξ ζ i j)) -
            Real.sqrt (alice i) •
              embezzlementState (N * n)‖ ^ 2) ≤
        Kgap * gap i j + Kmass * alice i := by
    have atom := accurate
      (dSVDensityRationalPhysicalAcceptedRank w N ξ i)
      (dSVDensityRationalPhysicalAcceptedRank w N ζ j)
    rw [dSVDensityRationalPublicBucketPhysicalCommonRank_eq
      w ξ ζ i j] at atom
    change
      (∑ phase : Fin B,
        dSVDensityRationalPublicLogRankPhaseWeight B phase *
          ‖localUnitaryAction
              (A phase
                (dSVDensityRationalPublicLogRankBucket Q phase
                  (dSVDensityRationalPhysicalAcceptedRank
                    w N ξ i)))
              (C phase
                (dSVDensityRationalPublicLogRankBucket Q phase
                  (dSVDensityRationalPhysicalAcceptedRank
                    w N ζ j)))
              (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
                n (dSVDensityRationalPhysicalMixedAcceptedPrefixWork
                  w N ξ ζ i j)) -
            Real.sqrt (alice i) •
              embezzlementState (N * n)‖ ^ 2) ≤
        2 * gap i j + 4 * alice i * ε ^ 2 +
          16 * alice i *
            (Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1) +
          8 * (((Q : ℝ) / (B : ℝ) + 1) * gap i j +
            min (alice i)
              ((dSVDensityRationalPhysicalAcceptedRank
                w N ζ j).val : ℝ) / (B : ℝ)) at atom
    have min_bound :
        min (alice i)
            ((dSVDensityRationalPhysicalAcceptedRank
              w N ζ j).val : ℝ) / (B : ℝ) ≤
          alice i / (B : ℝ) :=
      div_le_div_of_nonneg_right (min_le_left _ _)
        (by exact_mod_cast phases.le)
    calc
      _ ≤ 2 * gap i j + 4 * alice i * ε ^ 2 +
          16 * alice i *
            (Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1) +
          8 * (((Q : ℝ) / (B : ℝ) + 1) * gap i j +
            min (alice i)
              ((dSVDensityRationalPhysicalAcceptedRank
                w N ζ j).val : ℝ) / (B : ℝ)) := atom
      _ = Kgap * gap i j +
          (4 * ε ^ 2 +
            16 * (Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1)) *
              alice i +
          8 * (min (alice i)
            ((dSVDensityRationalPhysicalAcceptedRank
              w N ζ j).val : ℝ) / (B : ℝ)) := by
        dsimp [Kgap]
        ring
      _ ≤ Kgap * gap i j +
          (4 * ε ^ 2 +
            16 * (Real.exp (((B : ℝ) + 1) / (Q : ℝ)) - 1)) *
              alice i +
          8 * (alice i / (B : ℝ)) := by
        nlinarith [min_bound]
      _ = Kgap * gap i j + Kmass * alice i := by
        dsimp [Kmass]
        ring
  have exchange :
      dSVDensityRationalPublicBucketPhysicalPhaseWeightedMixedError
          Q w ξ ζ A C =
        ∑ i : Fin d, ∑ j : Fin d,
          coefficient i j *
            (∑ phase : Fin B,
              dSVDensityRationalPublicLogRankPhaseWeight B phase *
                ‖localUnitaryAction
                    (A phase
                      (dSVDensityRationalPublicLogRankBucket
                        Q phase
                        (dSVDensityRationalPhysicalAcceptedRank
                          w N ξ i)))
                    (C phase
                      (dSVDensityRationalPublicLogRankBucket
                        Q phase
                        (dSVDensityRationalPhysicalAcceptedRank
                          w N ζ j)))
                    (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
                      n
                      (dSVDensityRationalPhysicalMixedAcceptedPrefixWork
                        w N ξ ζ i j)) -
                  Real.sqrt (alice i) •
                    embezzlementState (N * n)‖ ^ 2) := by
    unfold dSVDensityRationalPublicBucketPhysicalPhaseWeightedMixedError
    change
      (∑ phase : Fin B,
        dSVDensityRationalPublicLogRankPhaseWeight B phase *
          ∑ i : Fin d, ∑ j : Fin d,
            coefficient i j * _) = _
    calc
      _ = ∑ phase : Fin B, ∑ i : Fin d, ∑ j : Fin d,
        dSVDensityRationalPublicLogRankPhaseWeight B phase *
          (coefficient i j *
            ‖localUnitaryAction
                (A phase
                  (dSVDensityRationalPublicLogRankBucket Q phase
                    (dSVDensityRationalPhysicalAcceptedRank
                      w N ξ i)))
                (C phase
                  (dSVDensityRationalPublicLogRankBucket Q phase
                    (dSVDensityRationalPhysicalAcceptedRank
                      w N ζ j)))
                (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
                  n
                  (dSVDensityRationalPhysicalMixedAcceptedPrefixWork
                    w N ξ ζ i j)) -
              Real.sqrt (alice i) •
                embezzlementState (N * n)‖ ^ 2) := by
          simp_rw [Finset.mul_sum]
          rfl
      _ = ∑ i : Fin d, ∑ j : Fin d, ∑ phase : Fin B,
        dSVDensityRationalPublicLogRankPhaseWeight B phase *
          (coefficient i j *
            ‖localUnitaryAction
                (A phase
                  (dSVDensityRationalPublicLogRankBucket Q phase
                    (dSVDensityRationalPhysicalAcceptedRank
                      w N ξ i)))
                (C phase
                  (dSVDensityRationalPublicLogRankBucket Q phase
                    (dSVDensityRationalPhysicalAcceptedRank
                      w N ζ j)))
                (dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
                  n
                  (dSVDensityRationalPhysicalMixedAcceptedPrefixWork
                    w N ξ ζ i j)) -
              Real.sqrt (alice i) •
                embezzlementState (N * n)‖ ^ 2) := by
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.sum_comm]
      _ = _ := by
          apply Finset.sum_congr rfl
          intro i _
          apply Finset.sum_congr rfl
          intro j _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro phase _
          ring
  rw [dSVDensityRationalPublicBucketPhysicalCoherentMixedReset_distance_sq
    phases Q w ξ ζ A C, exchange]
  calc
    _ ≤ ∑ i : Fin d, ∑ j : Fin d,
        coefficient i j * (Kgap * gap i j + Kmass * alice i) := by
      apply Finset.sum_le_sum
      intro i _
      apply Finset.sum_le_sum
      intro j _
      exact mul_le_mul_of_nonneg_left (point i j)
        (dSVDensityRationalHeterogeneousCommonStopSpectralAtomWeight_nonneg
          N ξ ζ i j)
    _ = Kgap *
          dSVDensityRationalHeterogeneousCommonStopSpectralRankGap
            N w ξ ζ +
        Kmass *
          dSVDensityRationalHeterogeneousCommonStopSpectralAliceMass
            N w ξ ζ := by
      unfold
        dSVDensityRationalHeterogeneousCommonStopSpectralRankGap
        dSVDensityRationalHeterogeneousCommonStopSpectralAliceMass
      change
        (∑ i : Fin d, ∑ j : Fin d,
          coefficient i j * (Kgap * gap i j + Kmass * alice i)) =
          Kgap * (∑ i : Fin d, ∑ j : Fin d,
            coefficient i j * gap i j) +
          Kmass * (∑ i : Fin d, ∑ j : Fin d,
            coefficient i j * alice i)
      simp_rw [mul_add, Finset.sum_add_distrib, Finset.mul_sum]
      congr 1
      · apply Finset.sum_congr rfl
        intro i _
        apply Finset.sum_congr rfl
        intro j _
        ring
      · apply Finset.sum_congr rfl
        intro i _
        apply Finset.sum_congr rfl
        intro j _
        ring
    _ = _ := by
      rw [
        dSVDensityRationalHeterogeneousCommonStopSpectralRankGap_eq_hazard
          grid dimension w ξ ζ,
        dSVDensityRationalHeterogeneousCommonStopSpectralAliceMass_eq_diagonalBorn
          grid dimension w ξ ζ]
