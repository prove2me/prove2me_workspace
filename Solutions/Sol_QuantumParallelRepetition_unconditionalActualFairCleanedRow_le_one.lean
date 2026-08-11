import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_25
import Theorems.Thm_QuantumParallelRepetition_embezzlementState_norm
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
import Theorems.Thm_QuantumParallelRepetition_dSVUniformDensityThresholdSharedState_norm
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalMixedAcceptedPrefix_norm_sq
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Basic
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Basic
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Ring.Parity
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
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
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Real
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.FinEnum
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Range
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
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.NNRat.Defs
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Rat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
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

theorem finiteTensorVector_norm_sq
    {ι d : Type*} [Fintype ι] [DecidableEq ι] [Fintype d]
    (v : ι → EuclideanSpace ℂ d) :
    ‖finiteTensorVector v‖ ^ 2 =
      ∏ i : ι, ‖v i‖ ^ 2 := by
  classical
  rw [EuclideanSpace.norm_sq_eq]
  change
    (∑ q : ι → d, ‖∏ i : ι, v i (q i)‖ ^ 2) =
      ∏ i : ι, ‖v i‖ ^ 2
  calc
    (∑ q : ι → d, ‖∏ i : ι, v i (q i)‖ ^ 2) =
        ∑ q : ι → d, ∏ i : ι, ‖v i (q i)‖ ^ 2 := by
          apply Finset.sum_congr rfl
          intro q _
          rw [norm_prod, ← Finset.prod_pow]
    _ = ∏ i : ι, ∑ a : d, ‖v i a‖ ^ 2 :=
      (Fintype.prod_sum
        (fun i : ι => fun a : d => ‖v i a‖ ^ 2)).symm
    _ = ∏ i : ι, ‖v i‖ ^ 2 := by
      apply Finset.prod_congr rfl
      intro i _
      exact (EuclideanSpace.norm_sq_eq (v i)).symm

theorem finiteTensorVector_norm
    {ι d : Type*} [Fintype ι] [DecidableEq ι] [Fintype d]
    (v : ι → EuclideanSpace ℂ d)
    (hv : ∀ i, ‖v i‖ = 1) :
    ‖finiteTensorVector v‖ = 1 := by
  have hsquare := finiteTensorVector_norm_sq v
  simp_rw [hv, one_pow, Finset.prod_const_one] at hsquare
  nlinarith [norm_nonneg (finiteTensorVector v)]

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

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

theorem dSVCanonicalFailurePrefix_card
    {d : ℕ} (r : Fin (d + 1)) :
    (Finset.univ.filter
      (fun i : Fin d => i.val < r.val)).card = r.val := by
  classical
  calc
    (Finset.univ.filter
      (fun i : Fin d => i.val < r.val)).card =
        (Finset.range r.val).card := by
      apply Finset.card_bij (fun i _ => i.val)
      · intro i member
        exact Finset.mem_range.mpr (Finset.mem_filter.mp member).2
      · intro i _ j _ equal
        exact Fin.ext equal
      · intro j member
        have before : j < r.val := Finset.mem_range.mp member
        have bounded : j < d := by
          have endpoint : r.val ≤ d := by omega
          omega
        refine ⟨⟨j, bounded⟩, ?_, rfl⟩
        exact Finset.mem_filter.mpr
          ⟨Finset.mem_univ _, before⟩
    _ = r.val := Finset.card_range _

theorem dSVCanonicalFailurePrefix_norm_sq
    {d : ℕ} (r : Fin (d + 1)) :
    ‖dSVCanonicalFailurePrefix r‖ ^ 2 = (r.val : ℝ) := by
  classical
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  change
    (∑ i : Fin d, ∑ j : Fin d,
      ‖if i = j ∧ i.val < r.val then (1 : ℂ) else 0‖ ^ 2) =
      (r.val : ℝ)
  have atom (i j : Fin d) :
      ‖if i = j ∧ i.val < r.val then (1 : ℂ) else 0‖ ^ 2 =
        if i = j then if i.val < r.val then (1 : ℝ) else 0
        else 0 := by
    by_cases same : i = j
    · subst j
      by_cases before : i.val < r.val <;> simp [before]
    · simp [same]
  simp_rw [atom]
  have count := dSVCanonicalFailurePrefix_card r
  simpa [Finset.sum_boole] using congrArg
    (fun n : ℕ => (n : ℝ)) count

end

noncomputable section

open scoped BigOperators ComplexOrder

theorem dSVHeterogeneousRealPrefix_nonneg
    (continuation : ℕ → ℝ)
    (nonnegative : ∀ k, 0 ≤ continuation k) (k : ℕ) :
    0 ≤ dSVHeterogeneousRealPrefix continuation k := by
  unfold dSVHeterogeneousRealPrefix
  exact Finset.prod_nonneg (fun i _ => nonnegative i)

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

theorem dSVUniformDensityIndependentSharedState_norm
    (L : ℕ) {N d : ℕ}
    (grid : 0 < N) (dimension : 0 < d) :
    ‖dSVUniformDensityIndependentSharedState L N d‖ = 1 := by
  unfold dSVUniformDensityIndependentSharedState
  rw [LinearIsometryEquiv.norm_map]
  exact finiteTensorVector_norm
    (fun _ : Fin L =>
      dSVUniformDensityThresholdSharedState N d)
    (fun _ =>
      dSVUniformDensityThresholdSharedState_norm
        grid dimension)

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem rectangular_matrix_mulVec_norm_sq
    {d e : Type*} [Fintype d] [Fintype e] [DecidableEq d]
    (K : Matrix e d ℂ) (z : EuclideanSpace ℂ d) :
    ‖toLp 2 (K.mulVec (ofLp z))‖ ^ 2 =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ)
          (K.conjTranspose * K)) z := by
  calc
    ‖toLp 2 (K.mulVec (ofLp z))‖ ^ 2 =
        (⟪toLp 2 (K.mulVec (ofLp z)),
          toLp 2 (K.mulVec (ofLp z))⟫_ℂ).re :=
      norm_sq_eq_re_inner (𝕜 := ℂ)
        (toLp 2 (K.mulVec (ofLp z)))
    _ = (star (K.mulVec (ofLp z)) ⬝ᵥ
          K.mulVec (ofLp z)).re := by
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      change
        (K.mulVec (ofLp z) ⬝ᵥ star (K.mulVec (ofLp z))).re = _
      rw [dotProduct_comm]
    _ = (star (ofLp z) ⬝ᵥ
          (K.conjTranspose * K).mulVec (ofLp z)).re := by
      rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec,
        Matrix.mulVec_mulVec]
    _ = quadraticExpectation
          (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ)
            (K.conjTranspose * K)) z := by
      unfold quadraticExpectation
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      change
        (star (ofLp z) ⬝ᵥ
            (K.conjTranspose * K).mulVec (ofLp z)).re =
          ((K.conjTranspose * K).mulVec (ofLp z) ⬝ᵥ
            star (ofLp z)).re
      rw [dotProduct_comm]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder InnerProductSpace

theorem dSVUniformDensityMixedProtocolLocalAction_norm
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (U V : Matrix.unitaryGroup ι ℂ)
    (z : EuclideanSpace ℂ (ι × ι)) :
    ‖toLp 2
        (((U : Matrix ι ι ℂ) ⊗ₖ
          (V : Matrix ι ι ℂ)).mulVec (ofLp z))‖ = ‖z‖ := by
  classical
  let M : Matrix (ι × ι) (ι × ι) ℂ :=
    (U : Matrix ι ι ℂ) ⊗ₖ (V : Matrix ι ι ℂ)
  have unitary : M ∈ Matrix.unitaryGroup (ι × ι) ℂ :=
    Matrix.kronecker_mem_unitary U.property V.property
  have gram : M.conjTranspose * M = 1 := by
    simpa [Matrix.star_eq_conjTranspose] using
      (Matrix.mem_unitaryGroup_iff'.mp unitary)
  have squared :
      ‖toLp 2 (M.mulVec (ofLp z))‖ ^ 2 = ‖z‖ ^ 2 := by
    rw [rectangular_matrix_mulVec_norm_sq, gram]
    simp [quadraticExpectation, ← Complex.ofReal_pow]
  change ‖toLp 2 (M.mulVec (ofLp z))‖ = ‖z‖
  nlinarith [norm_nonneg (toLp 2 (M.mulVec (ofLp z))),
    norm_nonneg z]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityPhysicalAsyncSigmaContinuation_norm
    {ι κ : Type*} [Fintype ι] [DecidableEq ι]
    [Fintype κ] [DecidableEq κ]
    (U V : ι → Matrix.unitaryGroup κ ℂ)
    (z : EuclideanSpace ℂ
      ((Σ _ : ι, κ) × (Σ _ : ι, κ))) :
    ‖dSVUniformDensityPhysicalAsyncSigmaContinuation U V z‖ =
      ‖z‖ := by
  simpa [dSVUniformDensityPhysicalAsyncSigmaContinuation]
    using dSVUniformDensityMixedProtocolLocalAction_norm
      (coherentSharedRandomControlledUnitary U)
      (coherentSharedRandomControlledUnitary V) z

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

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalPhysicalMixedAcceptedPrefixWork_norm_sq
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (i j : Fin d) :
    ‖dSVDensityRationalPhysicalMixedAcceptedPrefixWork
        w N ξ ζ i j‖ ^ 2 =
      ((dSVDensityRationalPhysicalMixedAcceptedIntersectionRank
        w N ξ ζ i j).val : ℝ) := by
  exact dSVCanonicalFailurePrefix_norm_sq
    (dSVDensityRationalPhysicalMixedAcceptedIntersectionRank
      w N ξ ζ i j)

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

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

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

theorem dSVDensityRationalHeterogeneousPhysicalSurvival_nonneg
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (k : ℕ) :
    0 ≤ dSVDensityRationalHeterogeneousPhysicalSurvival
      N width schedule ξ ζ k := by
  unfold dSVDensityRationalHeterogeneousPhysicalSurvival
  apply dSVHeterogeneousRealPrefix_nonneg
  intro j
  exact dSVDensityRationalHeterogeneousPhysicalStageOutcome_nonneg
    N width schedule ξ ζ j false false

theorem
    dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_nonneg
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    0 ≤
      dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
        N width schedule ξ ζ := by
  unfold
    dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass
  apply Finset.sum_nonneg
  intro k _
  apply mul_nonneg
    (dSVDensityRationalHeterogeneousPhysicalSurvival_nonneg
      N width schedule ξ ζ k)
  exact add_nonneg
    (dSVDensityRationalHeterogeneousPhysicalStageOutcome_nonneg
      N width schedule ξ ζ k true false)
    (dSVDensityRationalHeterogeneousPhysicalStageOutcome_nonneg
      N width schedule ξ ζ k false true)

theorem dSVDensityRationalHeterogeneousPhysicalTerminalMass_nonneg
    {d S L : ℕ} (N : ℕ)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    0 ≤ dSVDensityRationalHeterogeneousPhysicalTerminalMass
      N width schedule ξ ζ :=
  dSVDensityRationalHeterogeneousPhysicalSurvival_nonneg
    N width schedule ξ ζ L

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_norm_sq
    {N n : ℕ} (positive : 0 < n)
    (z : EuclideanSpace ℂ (Fin N × Fin N)) :
    ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
      n z‖ ^ 2 = ‖z‖ ^ 2 := by
  classical
  let e : ((Fin N × Fin N) × (Fin n × Fin n)) ≃
      (Fin (N * n) × Fin (N * n)) :=
    (Equiv.prodProdProdComm (Fin N) (Fin N) (Fin n) (Fin n)).trans
      (Equiv.prodCongr finProdFinEquiv finProdFinEquiv)
  have point (q : (Fin N × Fin N) × (Fin n × Fin n)) :
      dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n z (e q) =
        z q.1 * embezzlementState n q.2 := by
    rcases q with ⟨⟨a, b⟩, ⟨i, j⟩⟩
    change
      z ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).1,
          (finProdFinEquiv.symm (finProdFinEquiv (b, j))).1) *
        embezzlementState n
          ((finProdFinEquiv.symm (finProdFinEquiv (a, i))).2,
            (finProdFinEquiv.symm (finProdFinEquiv (b, j))).2) =
      z (a, b) * embezzlementState n (i, j)
    simp only [Equiv.symm_apply_apply]
  rw [EuclideanSpace.norm_sq_eq]
  calc
    (∑ q : Fin (N * n) × Fin (N * n),
        ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n z q‖ ^ 2) =
      ∑ q : (Fin N × Fin N) × (Fin n × Fin n),
        ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
          n z (e q)‖ ^ 2 :=
        (Equiv.sum_comp e
          (fun q : Fin (N * n) × Fin (N * n) =>
            ‖dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor
              n z q‖ ^ 2)).symm
    _ = ∑ q : (Fin N × Fin N) × (Fin n × Fin n),
          ‖z q.1 * embezzlementState n q.2‖ ^ 2 := by
          apply Finset.sum_congr rfl
          intro q _
          rw [point q]
    _ = (∑ a : Fin N × Fin N, ‖z a‖ ^ 2) *
          (∑ b : Fin n × Fin n,
            ‖embezzlementState n b‖ ^ 2) := by
          rw [Fintype.sum_prod_type]
          simp_rw [norm_mul, mul_pow]
          exact (Fintype.sum_mul_sum
            (fun a : Fin N × Fin N => ‖z a‖ ^ 2)
            (fun b : Fin n × Fin n =>
              ‖embezzlementState n b‖ ^ 2)).symm
    _ = ‖z‖ ^ 2 := by
          rw [← EuclideanSpace.norm_sq_eq,
            ← EuclideanSpace.norm_sq_eq,
            embezzlementState_norm n positive]
          ring

theorem
    dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq
    {H : Type*} [Fintype H] {n : ℕ}
    (history : EuclideanSpace ℂ (H × H))
    (work : H → H → EuclideanSpace ℂ (Fin n × Fin n)) :
    ‖dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history work‖ ^ 2 =
      ∑ i : H, ∑ j : H,
        ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2 := by
  have zero :
      dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
          history (fun _ _ => (0 : EuclideanSpace ℂ (Fin n × Fin n))) =
        0 := by
    ext q
    simp [dSVUniformDensityCorrectedMatchedSigmaWeightedResidual]
  have distance :=
    dSVUniformDensityCorrectedMatchedSigmaWeightedResidual_distance_sq
      history work (fun _ _ => (0 : EuclideanSpace ℂ (Fin n × Fin n)))
  simpa [zero] using distance

theorem
    dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState_norm_sq
    {d N n : ℕ} {w : ℝ} (width : 0 < w)
    (grid : 0 < N) (residual : 0 < n)
    (ξ ζ : BipartiteUnitVector d) :
    ‖dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState
        (N := N) w n ξ ζ‖ ^ 2 =
      ‖dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ true true‖ ^ 2 := by
  unfold dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState
  rw [dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq]
  simp_rw [
    dSVDensityRationalLocalSpectralPairHistory_apply_norm_sq,
    dSVDensityRationalMixedCanonicalPrefixPureHarmonicTensor_norm_sq
      residual,
    dSVDensityRationalPhysicalMixedAcceptedPrefixWork_norm_sq]
  rw [dSVDensityRationalMixedAcceptedPrefix_norm_sq
    width grid ξ ζ]
  unfold dSVDensityRationalPrefixHarmonicSpectralOverlap
  simp_rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector_norm_sq
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) :
    ‖dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
        (N := N) width schedule ξ ζ j‖ ^ 2 =
      dSVDensityRationalHeterogeneousPhysicalSurvival
        N width schedule ξ ζ j.val := by
  rw [dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector,
    finiteTensorVector_norm_sq]
  unfold dSVDensityRationalHeterogeneousPhysicalSurvival
    dSVHeterogeneousRealPrefix
  calc
    (∏ i : Fin j.val,
      ‖dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy
        width schedule ξ ζ j i‖ ^ 2) =
        ∏ i : Fin j.val,
          dSVDensityRationalHeterogeneousPhysicalStageContinue
            N width schedule ξ ζ i.val := by
      apply Finset.prod_congr rfl
      intro i _
      simp [dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy,
        dSVDensityRationalHeterogeneousPhysicalStageContinue,
        dSVDensityRationalHeterogeneousPhysicalStageOutcome,
        lt_trans i.isLt j.isLt]
    _ = _ :=
      Fin.prod_univ_eq_prod_range
        (dSVDensityRationalHeterogeneousPhysicalStageContinue
          N width schedule ξ ζ) j.val

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalMatchedVerifierTensor_norm_sq
    {s t : Type*} [Fintype s] [Fintype t]
    (target : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    ‖unconditionalMatchedVerifierTensor target work‖ ^ 2 =
      ‖target‖ ^ 2 * ‖work‖ ^ 2 := by
  classical
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  change
    (∑ i : s, ∑ j : t, ‖target i * work j‖ ^ 2) =
      ‖target‖ ^ 2 * ‖work‖ ^ 2
  simp_rw [norm_mul, mul_pow]
  rw [← Fintype.sum_mul_sum, ← EuclideanSpace.norm_sq_eq,
    ← EuclideanSpace.norm_sq_eq]

theorem unconditionalMatchedVerifierTensor_norm
    {s t : Type*} [Fintype s] [Fintype t]
    (target : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    ‖unconditionalMatchedVerifierTensor target work‖ =
      ‖target‖ * ‖work‖ := by
  have squared :=
    unconditionalMatchedVerifierTensor_norm_sq target work
  nlinarith [
    norm_nonneg (unconditionalMatchedVerifierTensor target work),
    norm_nonneg target, norm_nonneg work,
    mul_nonneg (norm_nonneg target) (norm_nonneg work)]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalSelectedCopyRetainedWork_norm_sq
    {S N d L : ℕ} {τ : Type*} [Fintype τ]
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (rest : EuclideanSpace ℂ τ) :
    ‖unconditionalSelectedCopyRetainedWork
        (N := N) width schedule ξ ζ j rest‖ ^ 2 =
      dSVDensityRationalHeterogeneousPhysicalSurvival
        N width schedule ξ ζ j.val * ‖rest‖ ^ 2 := by
  unfold unconditionalSelectedCopyRetainedWork
  rw [unconditionalMatchedVerifierTensor_norm_sq,
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector_norm_sq]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalSelectedCopy_coherentPhaseSigma_norm_sq
    {H : Type*} [Fintype H] {B m : ℕ}
    (phases : 0 < B)
    (history : EuclideanSpace ℂ (H × H))
    (work : H → H → EuclideanSpace ℂ (Fin m × Fin m)) :
    ‖dSVDensityRationalPublicBucketCoherentPhaseSigmaState
        B history (fun _ i j => work i j)‖ ^ 2 =
      ‖dSVUniformDensityCorrectedMatchedSigmaWeightedResidual
        history work‖ ^ 2 := by
  classical
  unfold dSVDensityRationalPublicBucketCoherentPhaseSigmaState
  rw [dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq,
    dSVDensityRationalMixedCanonicalPrefixPhysicalSigmaWeighted_norm_sq]
  simp only [Fintype.sum_prod_type]
  simp_rw [
    dSVDensityRationalPublicBucketCoherentPhaseHistory_apply_norm_sq
      phases]
  have phase_ne : (B : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt phases)
  calc
    (∑ φ : Fin B, ∑ i : H, ∑ ψ : Fin B, ∑ j : H,
        (if φ = ψ then (B : ℝ)⁻¹ else 0) *
          ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2) =
        ∑ φ : Fin B, ∑ i : H, ∑ j : H,
          (B : ℝ)⁻¹ * ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2 := by
            apply Finset.sum_congr rfl
            intro φ _
            apply Finset.sum_congr rfl
            intro i _
            simp
    _ = _ := by
      calc
        (∑ φ : Fin B, ∑ i : H, ∑ j : H,
            (B : ℝ)⁻¹ * ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2) =
          ∑ _φ : Fin B, (B : ℝ)⁻¹ *
            (∑ i : H, ∑ j : H,
              ‖history (i, j)‖ ^ 2 * ‖work i j‖ ^ 2) := by
              apply Finset.sum_congr rfl
              intro φ _
              simp_rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro i _
              apply Finset.sum_congr rfl
              intro j _
              ring
        _ = _ := by
          rw [Finset.sum_const, Finset.card_univ,
            Fintype.card_fin, nsmul_eq_mul]
          field_simp

theorem unconditionalSelectedCopyCleanedStage_norm_sq
    {d N B m : ℕ} {w : ℝ}
    (phases : 0 < B) (grid : 0 < N) (harmonic : 0 < m)
    (width : 0 < w)
    (ξ ζ : BipartiteUnitVector d)
    (Q : ℕ)
    (A C : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    ‖unconditionalSelectedCopyCleanedStage
        (N := N) (B := B) (m := m) Q w ξ ζ A C‖ ^ 2 =
      ‖dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ true true‖ ^ 2 := by
  unfold unconditionalSelectedCopyCleanedStage
    dSVDensityRationalPublicBucketPhysicalCoherentLocalReset
  rw [dSVUniformDensityPhysicalAsyncSigmaContinuation_norm]
  unfold dSVDensityRationalPublicBucketPhysicalCoherentMixedState
  rw [unconditionalSelectedCopy_coherentPhaseSigma_norm_sq phases]
  exact
    dSVDensityRationalMixedCanonicalPrefixPhysicalAcceptedSigmaState_norm_sq
      width grid harmonic ξ ζ

theorem unconditionalSelectedCopyCleanedMatchedBranch_norm_sq
    {S N d L B m : ℕ} {τ : Type*} [Fintype τ]
    (phases : 0 < B) (grid : 0 < N) (harmonic : 0 < m)
    (width : Fin S → ℝ) (width_positive : ∀ s, 0 < width s)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (Q : ℕ)
    (A C : Fin B → Option ℕ → Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L) (rest : EuclideanSpace ℂ τ)
    (rest_unit : ‖rest‖ = 1) :
    ‖unconditionalSelectedCopyCleanedMatchedBranch
        Q width schedule ξ ζ A C j rest‖ ^ 2 =
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ j.val *
        dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ j.val := by
  unfold unconditionalSelectedCopyCleanedMatchedBranch
  rw [unconditionalMatchedVerifierTensor_norm_sq,
    unconditionalSelectedCopyCleanedStage_norm_sq
      phases grid harmonic (width_positive (schedule j)),
    unconditionalSelectedCopyRetainedWork_norm_sq,
    rest_unit]
  simp [dSVDensityRationalHeterogeneousPhysicalStageSuccess,
    dSVDensityRationalHeterogeneousPhysicalStageOutcome,
    j.isLt, mul_comm]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem integratorActualCanonicalRetainedPhaseTail_norm
    {S B N d L : ℕ}
    (phases : 0 < B) (grid : 0 < N) (dimension : 0 < d)
    (j : Fin L) :
    ‖unconditionalActualCanonicalRetainedPhaseTail
        (S := S) (B := B) (N := N) (d := d) (L := L) j‖ = 1 := by
  have residual : 0 < Fintype.card (Fin (S - 1) → Fin B) := by
    apply Fintype.card_pos_iff.mpr
    exact ⟨fun _ => ⟨0, phases⟩⟩
  change
    ‖unconditionalMatchedVerifierTensor
        (dSVUniformDensityIndependentSharedState
          (L - j.val) N d)
        (ePRState
          (Fintype.card (Fin (S - 1) → Fin B)))‖ = 1
  rw [unconditionalMatchedVerifierTensor_norm,
    dSVUniformDensityIndependentSharedState_norm
      (L - j.val) grid dimension,
    ePRState_norm _ residual]
  norm_num

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

theorem unconditionalActualFairSelectedLocalAction_norm_sq
    {ι τ : Type} [Fintype ι] [DecidableEq ι]
    [Fintype τ] [DecidableEq τ]
    (U V : Matrix.unitaryGroup ι ℂ)
    (z : EuclideanSpace ℂ ((ι × ι) × τ)) :
    ‖unconditionalMixedConjugateSelectedBranchLocalAction
        U V z‖ ^ 2 = ‖z‖ ^ 2 := by
  classical
  let M : Matrix ((ι × ι) × τ) ((ι × ι) × τ) ℂ :=
    (unconditionalMixedConjugateSelectedBranchUnitary
      (τ := τ) U V : Matrix _ _ ℂ)
  have gram : M.conjTranspose * M = 1 := by
    simpa [M, Matrix.star_eq_conjTranspose] using
      (Matrix.mem_unitaryGroup_iff'.mp
        (unconditionalMixedConjugateSelectedBranchUnitary
          (τ := τ) U V).property)
  change ‖toLp 2 (M.mulVec (ofLp z))‖ ^ 2 = ‖z‖ ^ 2
  rw [rectangular_matrix_mulVec_norm_sq, gram]
  simp [quadraticExpectation, ← Complex.ofReal_pow]

theorem unconditionalActualFairCleanedVector_norm_sq
    {S B N d L m : Nat}
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m)
    (width : Fin S → ℝ) (width_positive : ∀ s, 0 < width s)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (Q : Nat)
    (A C : Fin B → Option Nat →
      Matrix.unitaryGroup (Fin (N * m)) ℂ)
    (j : Fin L) :
    ‖integratorActualC485CleanedVector
        Q width schedule ξ ζ A C j‖ ^ 2 =
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ j.val *
        dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ j.val := by
  letI : DecidableEq
      (IntegratorActualC485RetainedIndex S B N d L j) :=
    FinEnum.decEq
  unfold integratorActualC485CleanedVector
  rw [unconditionalActualFairSelectedLocalAction_norm_sq]
  exact unconditionalSelectedCopyCleanedMatchedBranch_norm_sq
    phases grid harmonic width width_positive schedule ξ ζ Q A C j
    (unconditionalActualCanonicalRetainedPhaseTail
      (S := S) (B := B) (N := N) (d := d) (L := L) j)
    (integratorActualCanonicalRetainedPhaseTail_norm
      phases grid dimension j)

theorem unconditionalActualFairCleanedRow_eq_stoppedSuccess
    {S B N d L m : Nat}
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m)
    (width : Fin S → ℝ) (width_positive : ∀ s, 0 < width s)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (Q : Nat)
    (A C : Fin B → Option Nat →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    (∑ j : Fin L,
      ‖integratorActualC485CleanedVector
        Q width schedule ξ ζ A C j‖ ^ 2) =
      dSVDensityRationalHeterogeneousPhysicalStoppedSuccessMass
        N width schedule ξ ζ := by
  simp_rw [unconditionalActualFairCleanedVector_norm_sq
    phases grid dimension harmonic width width_positive schedule ξ ζ Q A C]
  unfold dSVDensityRationalHeterogeneousPhysicalStoppedSuccessMass
  simpa using
    (Fin.sum_univ_eq_sum_range
      (fun k : Nat =>
        dSVDensityRationalHeterogeneousPhysicalSurvival
            N width schedule ξ ζ k *
          dSVDensityRationalHeterogeneousPhysicalStageSuccess
            N width schedule ξ ζ k) L)

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
attribute [local instance] Classical.propDecidable

theorem solution
    {S B N d L m : Nat}
    (phases : 0 < B) (grid : 0 < N)
    (dimension : 0 < d) (harmonic : 0 < m)
    (width : Fin S → ℝ) (width_positive : ∀ s, 0 < width s)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (Q : Nat)
    (A C : Fin B → Option Nat →
      Matrix.unitaryGroup (Fin (N * m)) ℂ) :
    (∑ j : Fin L,
      ‖integratorActualC485CleanedVector
        Q width schedule ξ ζ A C j‖ ^ 2) ≤ 1 := by
  rw [unconditionalActualFairCleanedRow_eq_stoppedSuccess
    phases grid dimension harmonic width width_positive schedule ξ ζ Q A C]
  have partition :=
    dSVDensityRationalHeterogeneousPhysicalStopped_mass_partition
      grid dimension width schedule ξ ζ
  have asynchronous :=
    dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_nonneg
      N width schedule ξ ζ
  have terminal :=
    dSVDensityRationalHeterogeneousPhysicalTerminalMass_nonneg
      N width schedule ξ ζ
  linarith
