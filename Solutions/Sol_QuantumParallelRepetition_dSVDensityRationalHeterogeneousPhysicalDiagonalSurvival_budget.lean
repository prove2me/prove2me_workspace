import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_14
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_dSVSoftBobLeftReducedDensity_posSemidef
import Theorems.Thm_QuantumParallelRepetition_dSVUniformDensityThresholdSharedState_norm
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalPhysicalProjector_pos
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalPhysicalProjector_complement_pos
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalCompleteProjectiveThresholdProjector_pos
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalCompleteProjectiveThresholdProjector_complement_pos
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Basic
import Mathlib.Algebra.Field.Defs
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
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Basic
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Basic
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Ring.Parity
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
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
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Real
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.MulAction
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Complex.BigOperators
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Range
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.GroupTheory.GroupAction.Ring
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Vec
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.LinearCombination.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Eq
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Algebra.UniformMulAction
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.EMetricSpace.Defs
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem pureDensityMatrix_trace_mul
    {d : Type*} [Fintype d] [DecidableEq d]
    (z : EuclideanSpace ℂ d) (hz : ‖z‖ = 1)
    (E : Matrix d d ℂ) :
    (Matrix.trace ((pureDensityMatrix z hz).matrix * E)).re =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) E) z := by
  unfold pureDensityMatrix quadraticExpectation
  congr 1
  calc
    Matrix.trace
        (Matrix.vecMulVec (ofLp z) (star (ofLp z)) * E) =
      Matrix.trace
        (E * Matrix.vecMulVec (ofLp z) (star (ofLp z))) :=
          Matrix.trace_mul_comm _ _
    _ = E.mulVec (ofLp z) ⬝ᵥ star (ofLp z) := by
      rw [Matrix.mul_vecMulVec, Matrix.trace_vecMulVec]
    _ = ⟪z, Matrix.toEuclideanCLM
          (n := d) (𝕜 := ℂ) E z⟫_ℂ := by
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

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

theorem rectangularMatrix_norm_sq
    {d e : Type*}
    [Fintype d] [Fintype e] [DecidableEq d]
    (K : Matrix e d ℂ) (z : EuclideanSpace ℂ d) :
    ‖toLp 2 (K.mulVec (ofLp z))‖ ^ 2 =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ)
          (K.conjTranspose * K)) z := by
  calc
    ‖toLp 2 (K.mulVec (ofLp z))‖ ^ 2 =
        (inner ℂ (toLp 2 (K.mulVec (ofLp z)))
          (toLp 2 (K.mulVec (ofLp z)))).re :=
            norm_sq_eq_re_inner (𝕜 := ℂ)
              (toLp 2 (K.mulVec (ofLp z)))
    _ = (star (K.mulVec (ofLp z)) ⬝ᵥ
          K.mulVec (ofLp z)).re := by
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      change
        (K.mulVec (ofLp z) ⬝ᵥ
          star (K.mulVec (ofLp z))).re = _
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

theorem coherentBinaryJointOutcome_norm_sq
    {d e : Type*}
    [Fintype d] [Fintype e] [DecidableEq d] [DecidableEq e]
    (P : POVM Bool d) (Q : POVM Bool e)
    (hP : ∀ c : Bool, P.operator c * P.operator c = P.operator c)
    (hQ : ∀ c : Bool, Q.operator c * Q.operator c = Q.operator c)
    (z : EuclideanSpace ℂ (d × e)) (hz : ‖z‖ = 1)
    (a b : Bool) :
    ‖coherentBinaryJointOutcome P Q z a b‖ ^ 2 =
      (Matrix.trace
        ((pureDensityMatrix z hz).matrix *
          (P.operator a ⊗ₖ Q.operator b))).re := by
  let K : Matrix (d × e) (d × e) ℂ :=
    P.operator a ⊗ₖ Q.operator b
  have hgram : K.conjTranspose * K = K := by
    dsimp [K]
    rw [Matrix.conjTranspose_kronecker,
      (P.positive a).isHermitian.eq,
      (Q.positive b).isHermitian.eq,
      ← Matrix.mul_kronecker_mul,
      hP a, hQ b]
  calc
    ‖coherentBinaryJointOutcome P Q z a b‖ ^ 2 =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := d × e) (𝕜 := ℂ)
          (K.conjTranspose * K)) z :=
        rectangularMatrix_norm_sq K z
    _ = quadraticExpectation
        (Matrix.toEuclideanCLM (n := d × e) (𝕜 := ℂ) K) z := by
      rw [hgram]
    _ = (Matrix.trace ((pureDensityMatrix z hz).matrix * K)).re :=
      (pureDensityMatrix_trace_mul z hz K).symm

theorem binaryBornProbability_normalized
    {d e : Type*}
    [Fintype d] [Fintype e] [DecidableEq d] [DecidableEq e]
    (ρ : DensityMatrix (d × e))
    (P : POVM Bool d) (Q : POVM Bool e) :
    (∑ a : Bool, ∑ b : Bool,
      binaryBornProbability ρ P Q a b) = 1 := by
  classical
  have hjoint :
      (∑ a : Bool, ∑ b : Bool, P.operator a ⊗ₖ Q.operator b) =
        (1 : Matrix (d × e) (d × e) ℂ) := by
    calc
      (∑ a : Bool, ∑ b : Bool, P.operator a ⊗ₖ Q.operator b) =
          (∑ a : Bool, P.operator a) ⊗ₖ
            (∑ b : Bool, Q.operator b) := by
              ext ⟨i, j⟩ ⟨k, l⟩
              simp only [Matrix.sum_apply,
                Matrix.kroneckerMap_apply]
              rw [Finset.sum_mul]
              simp_rw [Finset.mul_sum]
      _ = 1 := by
        rw [P.complete, Q.complete]
        exact Matrix.one_kronecker_one
  calc
    (∑ a : Bool, ∑ b : Bool,
      binaryBornProbability ρ P Q a b) =
        (Matrix.trace
          (ρ.matrix *
            (∑ a : Bool, ∑ b : Bool,
              P.operator a ⊗ₖ Q.operator b))).re := by
          simp only [Fintype.sum_bool,
            binaryBornProbability, Matrix.mul_add,
            Matrix.trace_add, Complex.add_re]
    _ = (Matrix.trace ρ.matrix).re := by
      rw [hjoint]
      simp
    _ = 1 := by
      rw [ρ.trace_one]
      rfl

theorem binaryStoppingPartition
    {d e : Type*}
    [Fintype d] [Fintype e] [DecidableEq d] [DecidableEq e]
    (ρ : DensityMatrix (d × e))
    (P : POVM Bool d) (Q : POVM Bool e) :
    binaryContinueProbability ρ P Q +
      binaryJointSuccessProbability ρ P Q +
        binaryMismatchProbability ρ P Q = 1 := by
  have hnormalized := binaryBornProbability_normalized ρ P Q
  simp only [Fintype.sum_bool] at hnormalized
  unfold binaryContinueProbability
    binaryJointSuccessProbability
    binaryMismatchProbability
  linarith

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

theorem transposePOVM_projective
    {ι d : Type*} [Fintype ι] [Fintype d] [DecidableEq d]
    (P : POVM ι d)
    (hP : ∀ b : ι, P.operator b * P.operator b = P.operator b)
    (b : ι) :
    (transposePOVM P).operator b *
      (transposePOVM P).operator b =
        (transposePOVM P).operator b := by
  change
    (P.operator b).transpose * (P.operator b).transpose =
      (P.operator b).transpose
  rw [← Matrix.transpose_mul, hP b]

theorem sharedThresholdResourceRaw_eq_vec
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) :
    sharedThresholdResourceRaw (d := d) τ =
      toLp 2 (Matrix.vec
        (Matrix.diagonal (fun q : Σ _ : κ, d => (τ q.1 : ℂ)))) := by
  ext ⟨⟨k, i⟩, ⟨l, j⟩⟩
  by_cases h : k = l
  · subst l
    by_cases hij : i = j
    · subst j
      simp [sharedThresholdResourceRaw, Matrix.vec]
    · simp [sharedThresholdResourceRaw,
        Matrix.vec, hij, Ne.symm hij]
  · simp [sharedThresholdResourceRaw,
      Matrix.vec, h, Ne.symm h]

theorem sharedThresholdResourceRaw_local_action
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ)
    (A B : Matrix (Σ _ : κ, d) (Σ _ : κ, d) ℂ) :
    toLp 2
      ((A ⊗ₖ B.transpose).mulVec
        (ofLp (sharedThresholdResourceRaw (d := d) τ))) =
      toLp 2
        (Matrix.vec
          (B.transpose *
            Matrix.diagonal
              (fun q : Σ _ : κ, d => (τ q.1 : ℂ)) * A.transpose)) := by
  rw [sharedThresholdResourceRaw_eq_vec]
  apply WithLp.ofLp_injective
  change
    (A ⊗ₖ B.transpose).mulVec
      (Matrix.vec
        (Matrix.diagonal
          (fun q : Σ _ : κ, d => (τ q.1 : ℂ)))) =
      Matrix.vec
        (B.transpose *
          Matrix.diagonal
            (fun q : Σ _ : κ, d => (τ q.1 : ℂ)) * A.transpose)
  exact Matrix.kronecker_mulVec_vec
    B.transpose
    (Matrix.diagonal
      (fun q : Σ _ : κ, d => (τ q.1 : ℂ)))
    A

theorem matrixVectorization_norm_sq
    {d e : Type*} [Fintype d] [Fintype e]
    (K : Matrix d e ℂ) :
    ‖toLp 2 (Matrix.vec K)‖ ^ 2 =
      (Matrix.trace (K.conjTranspose * K)).re := by
  calc
    ‖toLp 2 (Matrix.vec K)‖ ^ 2 =
        (inner ℂ (toLp 2 (Matrix.vec K))
          (toLp 2 (Matrix.vec K))).re :=
            norm_sq_eq_re_inner (𝕜 := ℂ)
              (toLp 2 (Matrix.vec K))
    _ = (star (Matrix.vec K) ⬝ᵥ Matrix.vec K).re := by
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      change
        (Matrix.vec K ⬝ᵥ star (Matrix.vec K)).re =
          (star (Matrix.vec K) ⬝ᵥ Matrix.vec K).re
      rw [dotProduct_comm]
    _ = (Matrix.trace (K.conjTranspose * K)).re := by
      rw [Matrix.star_vec_dotProduct_vec]

theorem sharedThresholdDiagonal_eq_block
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) :
    Matrix.diagonal
        (fun q : Σ _ : κ, d => (τ q.1 : ℂ)) =
      Matrix.blockDiagonal' fun k : κ =>
        (τ k : ℂ) • (1 : Matrix d d ℂ) := by
  classical
  ext ⟨k, i⟩ ⟨l, j⟩
  by_cases h : k = l
  · subst l
    by_cases hij : i = j
    · subst j
      simp [Matrix.blockDiagonal'_apply]
    · simp [Matrix.blockDiagonal'_apply, hij]
  · simp [Matrix.blockDiagonal'_apply, h]

theorem sharedThresholdResourceRaw_block_action
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (A B : κ → Matrix d d ℂ) :
    toLp 2
      ((Matrix.blockDiagonal' A ⊗ₖ
          (Matrix.blockDiagonal' B).transpose).mulVec
        (ofLp (sharedThresholdResourceRaw (d := d) τ))) =
      toLp 2
        (Matrix.vec
          ((Matrix.blockDiagonal' fun k : κ =>
              (τ k : ℂ) • (A k * B k)).transpose)) := by
  rw [sharedThresholdResourceRaw_local_action]
  congr 2
  rw [sharedThresholdDiagonal_eq_block]
  simp only [Matrix.blockDiagonal'_transpose]
  rw [← Matrix.blockDiagonal'_mul,
    ← Matrix.blockDiagonal'_mul]
  congr 1
  funext k
  simp [Matrix.transpose_mul]

theorem projectorProduct_hilbertSchmidt_trace
    {d : Type*} [Fintype d] [DecidableEq d]
    (A B : Matrix d d ℂ)
    (hA : A.PosSemidef) (hB : B.PosSemidef)
    (hAA : A * A = A) (hBB : B * B = B) :
    Matrix.trace ((A * B).conjTranspose * (A * B)) =
      Matrix.trace (A * B) := by
  rw [Matrix.conjTranspose_mul,
    hA.isHermitian.eq, hB.isHermitian.eq]
  calc
    Matrix.trace ((B * A) * (A * B)) =
        Matrix.trace (B * (A * A) * B) := by
          congr 1
          simp [Matrix.mul_assoc]
    _ = Matrix.trace (B * A * B) := by rw [hAA]
    _ = Matrix.trace (B * B * A) := by
          rw [Matrix.trace_mul_cycle]
    _ = Matrix.trace (B * A) := by rw [hBB]
    _ = Matrix.trace (A * B) := Matrix.trace_mul_comm B A

theorem weightedProjectorProduct_hilbertSchmidt_trace
    {d : Type*} [Fintype d] [DecidableEq d]
    (t : ℝ) (A B : Matrix d d ℂ)
    (hA : A.PosSemidef) (hB : B.PosSemidef)
    (hAA : A * A = A) (hBB : B * B = B) :
    (Matrix.trace
      (((t : ℂ) • (A * B)).conjTranspose *
        ((t : ℂ) • (A * B)))).re =
      t ^ 2 * (Matrix.trace (A * B)).re := by
  have hgram := projectorProduct_hilbertSchmidt_trace
    A B hA hB hAA hBB
  rw [Matrix.conjTranspose_smul,
    Matrix.smul_mul, Matrix.mul_smul,
    Matrix.trace_smul, Matrix.trace_smul, hgram]
  simp [Complex.mul_re, pow_two, mul_assoc]

theorem sharedThresholdResourceRaw_block_action_norm_sq
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ)
    (A B : κ → Matrix d d ℂ)
    (hA : ∀ k, (A k).PosSemidef)
    (hB : ∀ k, (B k).PosSemidef)
    (hAA : ∀ k, A k * A k = A k)
    (hBB : ∀ k, B k * B k = B k) :
    ‖toLp 2
      ((Matrix.blockDiagonal' A ⊗ₖ
          (Matrix.blockDiagonal' B).transpose).mulVec
        (ofLp (sharedThresholdResourceRaw (d := d) τ)))‖ ^ 2 =
      ∑ k : κ, τ k ^ 2 *
        (Matrix.trace (A k * B k)).re := by
  rw [sharedThresholdResourceRaw_block_action,
    matrixVectorization_norm_sq]
  let K : Matrix (Σ _ : κ, d) (Σ _ : κ, d) ℂ :=
    Matrix.blockDiagonal' fun k : κ =>
      (τ k : ℂ) • (A k * B k)
  change
    (Matrix.trace (K.transpose.conjTranspose * K.transpose)).re =
      ∑ k : κ, τ k ^ 2 *
        (Matrix.trace (A k * B k)).re
  rw [Matrix.transpose_conjTranspose,
    ← Matrix.conjTranspose_transpose,
    Matrix.trace_transpose_mul]
  change
    (Matrix.trace
      ((Matrix.blockDiagonal' fun k : κ =>
        (τ k : ℂ) • (A k * B k)).conjTranspose *
        (Matrix.blockDiagonal' fun k : κ =>
          (τ k : ℂ) • (A k * B k)))).re = _
  rw [Matrix.blockDiagonal'_conjTranspose,
    ← Matrix.blockDiagonal'_mul,
    Matrix.trace_blockDiagonal', Complex.re_sum]
  apply Finset.sum_congr rfl
  intro k _
  exact weightedProjectorProduct_hilbertSchmidt_trace
    (τ k) (A k) (B k) (hA k) (hB k) (hAA k) (hBB k)

theorem sharedThresholdResource_block_action_norm_sq
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ)
    (A B : κ → Matrix d d ℂ)
    (hA : ∀ k, (A k).PosSemidef)
    (hB : ∀ k, (B k).PosSemidef)
    (hAA : ∀ k, A k * A k = A k)
    (hBB : ∀ k, B k * B k = B k) :
    ‖toLp 2
      ((Matrix.blockDiagonal' A ⊗ₖ
          (Matrix.blockDiagonal' B).transpose).mulVec
        (ofLp (sharedThresholdResource (d := d) τ)))‖ ^ 2 =
      (∑ k : κ, τ k ^ 2 *
        (Matrix.trace (A k * B k)).re) /
        ((Fintype.card d : ℝ) * ∑ k : κ, τ k ^ 2) := by
  let M : Matrix
      ((Σ _ : κ, d) × (Σ _ : κ, d))
      ((Σ _ : κ, d) × (Σ _ : κ, d)) ℂ :=
    Matrix.blockDiagonal' A ⊗ₖ
      (Matrix.blockDiagonal' B).transpose
  change
    ‖Matrix.toEuclideanLin M
      (sharedThresholdResource (d := d) τ)‖ ^ 2 = _
  rw [sharedThresholdResource,
    (Matrix.toEuclideanLin M).map_smul_of_tower,
    norm_smul, Real.norm_eq_abs,
    abs_of_nonneg (inv_nonneg.mpr (norm_nonneg _)),
    mul_pow, inv_pow]
  change
    (‖sharedThresholdResourceRaw (d := d) τ‖ ^ 2)⁻¹ *
      ‖toLp 2
        ((Matrix.blockDiagonal' A ⊗ₖ
            (Matrix.blockDiagonal' B).transpose).mulVec
          (ofLp (sharedThresholdResourceRaw (d := d) τ)))‖ ^ 2 = _
  rw [sharedThresholdResourceRaw_norm_sq,
    sharedThresholdResourceRaw_block_action_norm_sq
      τ A B hA hB hAA hBB]
  simp [div_eq_mul_inv, mul_comm]

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
set_option maxHeartbeats 5000000
set_option maxRecDepth 3072

theorem dSVProjectorSquaredDifference_trace
    {d : Type*} [Fintype d] [DecidableEq d]
    (P Q : Matrix d d ℂ)
    (hP : P * P = P) (hQ : Q * Q = Q) :
    (Matrix.trace ((P - Q) * (P - Q))).re =
      (Matrix.trace P).re + (Matrix.trace Q).re -
        2 * (Matrix.trace (P * Q)).re := by
  have complex :
      Matrix.trace ((P - Q) * (P - Q)) =
        Matrix.trace P + Matrix.trace Q -
          2 * Matrix.trace (P * Q) := by
    rw [Matrix.sub_mul, Matrix.mul_sub, Matrix.mul_sub,
      Matrix.trace_sub, Matrix.trace_sub, Matrix.trace_sub,
      hP, hQ, Matrix.trace_mul_comm Q P]
    ring
  rw [complex]
  simp

end

noncomputable section

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVMixedProjectorSuccessLoss_le_square
    {d : Type*} [Fintype d] [DecidableEq d]
    (P R : Matrix d d ℂ)
    (hcomplement : (1 - P).PosSemidef)
    (hR : R.PosSemidef)
    (hPP : P * P = P) (hRR : R * R = R) :
    (Matrix.trace P).re - (Matrix.trace (P * R)).re ≤
      (Matrix.trace ((P - R) * (P - R))).re := by
  have remainder := trace_mul_posSemidef_nonneg hcomplement hR
  have square :
      (Matrix.trace ((P - R) * (P - R))).re =
        (Matrix.trace P).re + (Matrix.trace R).re -
          2 * (Matrix.trace (P * R)).re := by
    rw [Matrix.sub_mul, Matrix.mul_sub, Matrix.mul_sub,
      hPP, hRR, Matrix.trace_sub, Matrix.trace_sub,
      Matrix.trace_sub, Matrix.trace_mul_comm R P]
    simp [Complex.sub_re]
    ring
  have rest :
      0 ≤ (Matrix.trace R).re - (Matrix.trace (P * R)).re := by
    simpa [Matrix.sub_mul, Matrix.trace_sub] using remainder
  rw [square]
  linarith

theorem dSVWeightedMixedProjectorSuccessLoss_le_square
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq d]
    (w : κ → ℝ) (nonnegative : ∀ k, 0 ≤ w k)
    (P R : κ → Matrix d d ℂ)
    (hcomplement : ∀ k, (1 - P k).PosSemidef)
    (hR : ∀ k, (R k).PosSemidef)
    (hPP : ∀ k, P k * P k = P k)
    (hRR : ∀ k, R k * R k = R k) :
    (∑ k : κ, w k * (Matrix.trace (P k)).re) -
        (∑ k : κ, w k * (Matrix.trace (P k * R k)).re) ≤
      ∑ k : κ, w k *
        (Matrix.trace ((P k - R k) * (P k - R k))).re := by
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_le_sum
  intro k _
  rw [← mul_sub]
  exact mul_le_mul_of_nonneg_left
    (dSVMixedProjectorSuccessLoss_le_square
      (P k) (R k) (hcomplement k) (hR k) (hPP k) (hRR k))
    (nonnegative k)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVGlobalProjectorBinaryPOVM_projective
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (P : κ → Matrix d d ℂ)
    (positive : ∀ k, (P k).PosSemidef)
    (complement : ∀ k, (1 - P k).PosSemidef)
    (projective : ∀ k, P k * P k = P k)
    (b : Bool) :
    (dSVGlobalProjectorBinaryPOVM
      P positive complement).operator b *
      (dSVGlobalProjectorBinaryPOVM
        P positive complement).operator b =
      (dSVGlobalProjectorBinaryPOVM
        P positive complement).operator b := by
  change
    Matrix.blockDiagonal' (fun k => if b then P k else 1 - P k) *
      Matrix.blockDiagonal' (fun k => if b then P k else 1 - P k) =
      Matrix.blockDiagonal' (fun k => if b then P k else 1 - P k)
  rw [← Matrix.blockDiagonal'_mul]
  apply congrArg (fun A : κ → Matrix d d ℂ => Matrix.blockDiagonal' A)
  funext k
  cases b
  · simp [Matrix.mul_sub, Matrix.sub_mul, projective k]
  · exact projective k

theorem dSVActualGlobalMixedBornSuccess_eq
    {κ d : Type*} [Fintype κ] [Fintype d]
    [DecidableEq κ] [DecidableEq d]
    (τ : κ → ℝ) (k₀ : κ) (i₀ : d) (nonzero : τ k₀ ≠ 0)
    (P R : κ → Matrix d d ℂ)
    (hP : ∀ k, (P k).PosSemidef)
    (hPc : ∀ k, (1 - P k).PosSemidef)
    (hR : ∀ k, (R k).PosSemidef)
    (hRc : ∀ k, (1 - R k).PosSemidef)
    (hPP : ∀ k, P k * P k = P k)
    (hRR : ∀ k, R k * R k = R k) :
    binaryJointSuccessProbability
      (pureDensityMatrix
        (sharedThresholdResource (d := d) τ)
        (sharedThresholdResource_norm τ k₀ i₀ nonzero))
      (dSVGlobalProjectorBinaryPOVM P hP hPc)
      (transposePOVM
        (dSVGlobalProjectorBinaryPOVM R hR hRc)) =
      (∑ k : κ, τ k ^ 2 * (Matrix.trace (P k * R k)).re) /
        ((Fintype.card d : ℝ) * ∑ k : κ, τ k ^ 2) := by
  let A := dSVGlobalProjectorBinaryPOVM P hP hPc
  let B := transposePOVM
    (dSVGlobalProjectorBinaryPOVM R hR hRc)
  let z := sharedThresholdResource (d := d) τ
  have hz : ‖z‖ = 1 :=
    sharedThresholdResource_norm τ k₀ i₀ nonzero
  have hA : ∀ b : Bool, A.operator b * A.operator b = A.operator b :=
    dSVGlobalProjectorBinaryPOVM_projective
      P hP hPc hPP
  have hB : ∀ b : Bool, B.operator b * B.operator b = B.operator b :=
    transposePOVM_projective
      (dSVGlobalProjectorBinaryPOVM R hR hRc)
      (dSVGlobalProjectorBinaryPOVM_projective
        R hR hRc hRR)
  change binaryJointSuccessProbability
    (pureDensityMatrix z hz) A B = _
  unfold binaryJointSuccessProbability
    binaryBornProbability
  rw [← coherentBinaryJointOutcome_norm_sq
    A B hA hB z hz true true]
  change
    ‖toLp 2
      ((Matrix.blockDiagonal' P ⊗ₖ
        (Matrix.blockDiagonal' R).transpose).mulVec
          (ofLp (sharedThresholdResource (d := d) τ)))‖ ^ 2 = _
  exact sharedThresholdResource_block_action_norm_sq
    τ P R hP hR hPP hRR

end

noncomputable section

open scoped BigOperators ComplexOrder

theorem dSVHeterogeneousRealPrefix_succ
    (continuation : ℕ → ℝ) (k : ℕ) :
    dSVHeterogeneousRealPrefix continuation (k + 1) =
      dSVHeterogeneousRealPrefix continuation k *
        continuation k := by
  simp [dSVHeterogeneousRealPrefix,
    Finset.prod_range_succ]

theorem dSVHeterogeneousRealStopping_escape_identity
    (continuation : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N,
      dSVHeterogeneousRealPrefix continuation k *
        (1 - continuation k)) =
      1 - dSVHeterogeneousRealPrefix continuation N := by
  induction N with
  | zero =>
      simp [dSVHeterogeneousRealPrefix]
  | succ N ih =>
      simp only [Finset.sum_range_succ,
        dSVHeterogeneousRealPrefix_succ]
      linear_combination ih

theorem dSVHeterogeneousRealPrefix_nonneg
    (continuation : ℕ → ℝ)
    (nonnegative : ∀ k, 0 ≤ continuation k) (k : ℕ) :
    0 ≤ dSVHeterogeneousRealPrefix continuation k := by
  unfold dSVHeterogeneousRealPrefix
  exact Finset.prod_nonneg (fun i _ => nonnegative i)

theorem dSVHeterogeneousRealStopping_escape_budget
    (continuation escape : ℕ → ℝ)
    (continuation_nonnegative : ∀ k, 0 ≤ continuation k)
    (escape_bound : ∀ k, continuation k + escape k ≤ 1)
    (N : ℕ) :
    (∑ k ∈ Finset.range N,
      dSVHeterogeneousRealPrefix continuation k * escape k)
      ≤ 1 := by
  have each (k : ℕ) :
      dSVHeterogeneousRealPrefix continuation k * escape k ≤
        dSVHeterogeneousRealPrefix continuation k *
          (1 - continuation k) := by
    apply mul_le_mul_of_nonneg_left
    · linarith [escape_bound k]
    · exact dSVHeterogeneousRealPrefix_nonneg
        continuation continuation_nonnegative k
  calc
    (∑ k ∈ Finset.range N,
      dSVHeterogeneousRealPrefix continuation k * escape k)
        ≤ ∑ k ∈ Finset.range N,
          dSVHeterogeneousRealPrefix continuation k *
            (1 - continuation k) := by
              exact Finset.sum_le_sum (fun k _ => each k)
    _ = 1 - dSVHeterogeneousRealPrefix continuation N :=
      dSVHeterogeneousRealStopping_escape_identity
        continuation N
    _ ≤ 1 := by
      have := dSVHeterogeneousRealPrefix_nonneg
        continuation continuation_nonnegative N
      linarith

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityThresholdShared_mixedBorn_eq
    {N d : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (P R : Fin N → Matrix (Fin d) (Fin d) ℂ)
    (hP : ∀ k, (P k).PosSemidef)
    (hPc : ∀ k, (1 - P k).PosSemidef)
    (hR : ∀ k, (R k).PosSemidef)
    (hRc : ∀ k, (1 - R k).PosSemidef)
    (hPP : ∀ k, P k * P k = P k)
    (hRR : ∀ k, R k * R k = R k) :
    binaryJointSuccessProbability
      (dSVUniformDensityThresholdSharedDensity
        grid dimension)
      (dSVGlobalProjectorBinaryPOVM P hP hPc)
      (transposePOVM
        (dSVGlobalProjectorBinaryPOVM R hR hRc)) =
      (∑ k : Fin N, (Matrix.trace (P k * R k)).re) /
        ((d : ℝ) * (N : ℝ)) := by
  simpa [dSVUniformDensityThresholdSharedDensity,
    dSVUniformDensityThresholdSharedState] using
    dSVActualGlobalMixedBornSuccess_eq
      (fun _ : Fin N => (1 : ℝ))
      ⟨0, grid⟩ ⟨0, dimension⟩ (by norm_num)
      P R hP hPc hR hRc hPP hRR

theorem dSVUniformDensityThresholdShared_diagonalBorn_eq
    {N d : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (P : Fin N → Matrix (Fin d) (Fin d) ℂ)
    (hP : ∀ k, (P k).PosSemidef)
    (hPc : ∀ k, (1 - P k).PosSemidef)
    (hPP : ∀ k, P k * P k = P k) :
    binaryJointSuccessProbability
      (dSVUniformDensityThresholdSharedDensity
        grid dimension)
      (dSVGlobalProjectorBinaryPOVM P hP hPc)
      (transposePOVM
        (dSVGlobalProjectorBinaryPOVM P hP hPc)) =
      (∑ k : Fin N, (Matrix.trace (P k)).re) /
        ((d : ℝ) * (N : ℝ)) := by
  rw [dSVUniformDensityThresholdShared_mixedBorn_eq
    grid dimension P P hP hPc hP hPc hPP hPP]
  simp_rw [hPP]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalProjectiveThresholdPOVM_projective
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (w : ℝ) (N : ℕ) (k : Fin N)
    (F : Matrix ι ι ℂ) (positive : F.PosSemidef) (outcome : Bool) :
    (dSVDensityRationalProjectiveThresholdPOVM
      w N k F positive).operator outcome *
      (dSVDensityRationalProjectiveThresholdPOVM
        w N k F positive).operator outcome =
      (dSVDensityRationalProjectiveThresholdPOVM
        w N k F positive).operator outcome := by
  exact spectralPartitionPOVM_projective F positive
    (fun i : ι => dSVDensityRationalProjectiveThresholdBin
      w N k (positive.isHermitian.eigenvalues i)) outcome

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem dSVDensityRationalPhysicalProjector_projective
    {d N : ℕ} (w : ℝ)
    (ξ : BipartiteUnitVector d) (k : Fin N) :
    dSVDensityRationalPhysicalProjector w ξ k *
        dSVDensityRationalPhysicalProjector w ξ k =
      dSVDensityRationalPhysicalProjector w ξ k := by
  exact dSVDensityRationalProjectiveThresholdPOVM_projective
    w N k (dSVSoftBobLeftReducedDensity ξ)
    (dSVSoftBobLeftReducedDensity_posSemidef ξ) true

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteProjectiveThresholdEffect_projective
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d)
    (k : Fin N) (a : Bool) :
    (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ξ).operator a *
      (dSVDensityRationalLeftProjectiveThresholdPOVM
        w N k ξ).operator a =
      (dSVDensityRationalLeftProjectiveThresholdPOVM
        w N k ξ).operator a := by
  exact dSVDensityRationalProjectiveThresholdPOVM_projective
    w N k
    (dSVSoftBobLeftReducedDensity ξ)
    (dSVSoftBobLeftReducedDensity_posSemidef ξ) a

theorem dSVDensityRationalCompleteProjectiveThresholdEffect_false
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (k : Fin N) :
    (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ξ).operator false =
      1 - dSVDensityRationalCompleteProjectiveThresholdProjector
        w N ξ k := by
  have complete :=
    (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ξ).complete
  rw [Fintype.sum_bool, add_comm] at complete
  exact eq_sub_of_add_eq complete

theorem dSVDensityRationalCompleteProjectiveBinaryPOVM_effect
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (a : Bool) :
    (dSVDensityRationalCompleteProjectiveBinaryPOVM
      w N ξ).operator a =
      Matrix.blockDiagonal' (fun k : Fin N =>
        (dSVDensityRationalLeftProjectiveThresholdPOVM
          w N k ξ).operator a) := by
  cases a
  · change
      Matrix.blockDiagonal' (fun k : Fin N =>
        1 - dSVDensityRationalCompleteProjectiveThresholdProjector
          w N ξ k) = _
    congr 1
    funext k
    exact
      (dSVDensityRationalCompleteProjectiveThresholdEffect_false
        w N ξ k).symm
  · rfl

theorem dSVDensityRationalCompleteProjectiveBinaryPOVM_projective
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ : BipartiteUnitVector d) (a : Bool) :
    (dSVDensityRationalCompleteProjectiveBinaryPOVM
      w N ξ).operator a *
      (dSVDensityRationalCompleteProjectiveBinaryPOVM
        w N ξ).operator a =
      (dSVDensityRationalCompleteProjectiveBinaryPOVM
        w N ξ).operator a := by
  exact dSVGlobalProjectorBinaryPOVM_projective
    (dSVDensityRationalCompleteProjectiveThresholdProjector
      w N ξ)
    (dSVDensityRationalCompleteProjectiveThresholdProjector_pos
      w N ξ)
    (dSVDensityRationalCompleteProjectiveThresholdProjector_complement_pos
      w N ξ)
    (fun k =>
      dSVDensityRationalCompleteProjectiveThresholdEffect_projective
        w N ξ k true)
    a

theorem dSVDensityRationalCompleteProjectiveOutcome_eq_block_action
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (a b : Bool) :
    dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ a b =
      toLp 2
        ((Matrix.blockDiagonal'
            (fun k : Fin N =>
              (dSVDensityRationalLeftProjectiveThresholdPOVM
                w N k ξ).operator a) ⊗ₖ
          (Matrix.blockDiagonal'
            (fun k : Fin N =>
              (dSVDensityRationalLeftProjectiveThresholdPOVM
                w N k ζ).operator b)).transpose).mulVec
          (ofLp
            (dSVUniformDensityThresholdSharedState N d))) := by
  unfold dSVDensityRationalCompleteProjectiveOutcome
    coherentBinaryJointOutcome
  change
    toLp 2
      (((dSVDensityRationalCompleteProjectiveBinaryPOVM
            w N ξ).operator a ⊗ₖ
         ((dSVDensityRationalCompleteProjectiveBinaryPOVM
            w N ζ).operator b).transpose).mulVec
        (ofLp (dSVUniformDensityThresholdSharedState N d))) = _
  rw [dSVDensityRationalCompleteProjectiveBinaryPOVM_effect,
    dSVDensityRationalCompleteProjectiveBinaryPOVM_effect]

theorem dSVDensityRationalCompleteProjectiveOutcome_norm_sq_eq
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (a b : Bool) :
    ‖dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ a b‖ ^ 2 =
      (∑ k : Fin N,
        (Matrix.trace
          ((dSVDensityRationalLeftProjectiveThresholdPOVM
              w N k ξ).operator a *
           (dSVDensityRationalLeftProjectiveThresholdPOVM
              w N k ζ).operator b)).re) /
        ((d : ℝ) * (N : ℝ)) := by
  classical
  rw [dSVDensityRationalCompleteProjectiveOutcome_eq_block_action]
  let τ : Fin N → ℝ := fun _ => 1
  let P : Fin N → Matrix (Fin d) (Fin d) ℂ :=
    fun k => (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ξ).operator a
  let R : Fin N → Matrix (Fin d) (Fin d) ℂ :=
    fun k => (dSVDensityRationalLeftProjectiveThresholdPOVM
      w N k ζ).operator b
  change
    ‖toLp 2
      ((Matrix.blockDiagonal' P ⊗ₖ
        (Matrix.blockDiagonal' R).transpose).mulVec
          (ofLp (sharedThresholdResource (d := Fin d) τ)))‖ ^ 2 =
      (∑ k : Fin N, (Matrix.trace (P k * R k)).re) /
        ((d : ℝ) * (N : ℝ))
  simpa [τ] using
    sharedThresholdResource_block_action_norm_sq
      τ P R
      (fun k =>
        (dSVDensityRationalLeftProjectiveThresholdPOVM
          w N k ξ).positive a)
      (fun k =>
        (dSVDensityRationalLeftProjectiveThresholdPOVM
          w N k ζ).positive b)
      (fun k =>
        dSVDensityRationalCompleteProjectiveThresholdEffect_projective
          w N ξ k a)
      (fun k =>
        dSVDensityRationalCompleteProjectiveThresholdEffect_projective
          w N ζ k b)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalPhysicalMixedBornSuccess_eq
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalPhysicalMixedBornSuccess
        grid dimension w ξ ζ =
      (∑ k : Fin N, (Matrix.trace
        (dSVDensityRationalPhysicalProjector w ξ k *
          dSVDensityRationalPhysicalProjector w ζ k)).re) /
        ((d : ℝ) * (N : ℝ)) := by
  unfold dSVDensityRationalPhysicalMixedBornSuccess
    dSVDensityRationalPhysicalGlobalPOVM
  exact dSVUniformDensityThresholdShared_mixedBorn_eq
    grid dimension
    (dSVDensityRationalPhysicalProjector w ξ)
    (dSVDensityRationalPhysicalProjector w ζ)
    (dSVDensityRationalPhysicalProjector_pos w ξ)
    (dSVDensityRationalPhysicalProjector_complement_pos w ξ)
    (dSVDensityRationalPhysicalProjector_pos w ζ)
    (dSVDensityRationalPhysicalProjector_complement_pos w ζ)
    (dSVDensityRationalPhysicalProjector_projective w ξ)
    (dSVDensityRationalPhysicalProjector_projective w ζ)

theorem dSVDensityRationalPhysicalMixedBornSuccess_loss_le
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalPhysicalDiagonalBornSuccess
        grid dimension w ξ -
      dSVDensityRationalPhysicalMixedBornSuccess
        grid dimension w ξ ζ ≤
      dSVDensityRationalPhysicalProjectorCrossHazard
        N w ξ ζ := by
  have denominator : 0 < (d : ℝ) * (N : ℝ) := by
    exact mul_pos (by exact_mod_cast dimension)
      (by exact_mod_cast grid)
  have diagonal :
      dSVDensityRationalPhysicalDiagonalBornSuccess
          grid dimension w ξ =
        (∑ k : Fin N,
          (Matrix.trace
            (dSVDensityRationalPhysicalProjector w ξ k)).re) /
          ((d : ℝ) * (N : ℝ)) := by
    unfold dSVDensityRationalPhysicalDiagonalBornSuccess
      dSVDensityRationalPhysicalGlobalPOVM
    exact dSVUniformDensityThresholdShared_diagonalBorn_eq
      grid dimension
      (dSVDensityRationalPhysicalProjector w ξ)
      (dSVDensityRationalPhysicalProjector_pos w ξ)
      (dSVDensityRationalPhysicalProjector_complement_pos w ξ)
      (dSVDensityRationalPhysicalProjector_projective w ξ)
  have ledger := dSVWeightedMixedProjectorSuccessLoss_le_square
    (fun _ : Fin N => (1 : ℝ)) (fun _ => zero_le_one)
    (dSVDensityRationalPhysicalProjector w ξ)
    (dSVDensityRationalPhysicalProjector w ζ)
    (dSVDensityRationalPhysicalProjector_complement_pos w ξ)
    (dSVDensityRationalPhysicalProjector_pos w ζ)
    (dSVDensityRationalPhysicalProjector_projective w ξ)
    (dSVDensityRationalPhysicalProjector_projective w ζ)
  simp only [one_mul] at ledger
  rw [diagonal,
    dSVDensityRationalPhysicalMixedBornSuccess_eq
      grid dimension w ξ ζ]
  unfold dSVDensityRationalPhysicalProjectorCrossHazard
  rw [← sub_div]
  exact (div_le_div_iff_of_pos_right denominator).mpr ledger

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem dSVDensityRationalActualMixedSuccessMass_eq
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalActualMixedSuccessMass w N ξ ζ =
      dSVDensityRationalPhysicalMixedBornSuccess
        grid dimension w ξ ζ := by
  unfold dSVDensityRationalActualMixedSuccessMass
  rw [dSVDensityRationalCompleteProjectiveOutcome_norm_sq_eq,
    dSVDensityRationalPhysicalMixedBornSuccess_eq
      grid dimension w ξ ζ]
  rfl

theorem dSVDensityRationalActualMixedOutcome_norm_sq_eq_born
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d)
    (a b : Bool) :
    ‖dSVDensityRationalCompleteProjectiveOutcome
      w N ξ ζ a b‖ ^ 2 =
      binaryBornProbability
        (dSVUniformDensityThresholdSharedDensity
          grid dimension)
        (dSVDensityRationalPhysicalGlobalPOVM w ξ)
        (transposePOVM
          (dSVDensityRationalPhysicalGlobalPOVM w ζ)) a b := by
  let A := dSVDensityRationalCompleteProjectiveBinaryPOVM
    w N ξ
  let B := dSVDensityRationalCompleteProjectiveBinaryPOVM
    w N ζ
  let z := dSVUniformDensityThresholdSharedState N d
  have alice_physical :
      A = dSVDensityRationalPhysicalGlobalPOVM w ξ := by
    rfl
  have bob_physical :
      B = dSVDensityRationalPhysicalGlobalPOVM w ζ := by
    rfl
  have actual := coherentBinaryJointOutcome_norm_sq
    A (transposePOVM B)
    (dSVDensityRationalCompleteProjectiveBinaryPOVM_projective
      w N ξ)
    (transposePOVM_projective B
      (dSVDensityRationalCompleteProjectiveBinaryPOVM_projective
        w N ζ))
    z (dSVUniformDensityThresholdSharedState_norm
      grid dimension) a b
  rw [alice_physical, bob_physical] at actual
  simpa [z,
    dSVDensityRationalCompleteProjectiveOutcome,
    dSVUniformDensityThresholdSharedDensity,
    binaryBornProbability,
    ← alice_physical, ← bob_physical] using actual

theorem dSVDensityRationalActualMixedContinueMass_eq_born
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalActualMixedContinueMass w N ξ ζ =
      binaryContinueProbability
        (dSVUniformDensityThresholdSharedDensity
          grid dimension)
        (dSVDensityRationalPhysicalGlobalPOVM w ξ)
        (transposePOVM
          (dSVDensityRationalPhysicalGlobalPOVM w ζ)) := by
  unfold dSVDensityRationalActualMixedContinueMass
    binaryContinueProbability
  exact dSVDensityRationalActualMixedOutcome_norm_sq_eq_born
    grid dimension w ξ ζ false false

theorem dSVDensityRationalActualMixedAsynchronousMass_eq_born
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalActualMixedAsynchronousMass w N ξ ζ =
      binaryMismatchProbability
        (dSVUniformDensityThresholdSharedDensity
          grid dimension)
        (dSVDensityRationalPhysicalGlobalPOVM w ξ)
        (transposePOVM
          (dSVDensityRationalPhysicalGlobalPOVM w ζ)) := by
  unfold dSVDensityRationalActualMixedAsynchronousMass
    binaryMismatchProbability
  rw [dSVDensityRationalActualMixedOutcome_norm_sq_eq_born
    grid dimension w ξ ζ true false,
    dSVDensityRationalActualMixedOutcome_norm_sq_eq_born
      grid dimension w ξ ζ false true]

theorem dSVDensityRationalActualMixed_mass_partition
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalActualMixedContinueMass w N ξ ζ +
      dSVDensityRationalActualMixedSuccessMass w N ξ ζ +
      dSVDensityRationalActualMixedAsynchronousMass
        w N ξ ζ = 1 := by
  rw [dSVDensityRationalActualMixedContinueMass_eq_born
    grid dimension w ξ ζ,
    dSVDensityRationalActualMixedSuccessMass_eq
      grid dimension w ξ ζ,
    dSVDensityRationalActualMixedAsynchronousMass_eq_born
      grid dimension w ξ ζ]
  unfold dSVDensityRationalPhysicalMixedBornSuccess
  exact binaryStoppingPartition
    (dSVUniformDensityThresholdSharedDensity
      grid dimension)
    (dSVDensityRationalPhysicalGlobalPOVM w ξ)
    (transposePOVM
      (dSVDensityRationalPhysicalGlobalPOVM w ζ))

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem dSVDensityRationalActualMixedAsynchronousMass_eq_crossHazard
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalActualMixedAsynchronousMass
        w N ξ ζ =
      dSVDensityRationalPhysicalProjectorCrossHazard
        N w ξ ζ := by
  classical
  unfold dSVDensityRationalActualMixedAsynchronousMass
  rw [dSVDensityRationalCompleteProjectiveOutcome_norm_sq_eq,
    dSVDensityRationalCompleteProjectiveOutcome_norm_sq_eq]
  unfold dSVDensityRationalPhysicalProjectorCrossHazard
  rw [← add_div]
  congr 1
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro k _
  rw [dSVDensityRationalCompleteProjectiveThresholdEffect_false
    w N ζ k,
    dSVDensityRationalCompleteProjectiveThresholdEffect_false
      w N ξ k]
  let P := dSVDensityRationalPhysicalProjector w ξ k
  let R := dSVDensityRationalPhysicalProjector w ζ k
  change
    (Matrix.trace (P * (1 - R))).re +
        (Matrix.trace ((1 - P) * R)).re =
      (Matrix.trace ((P - R) * (P - R))).re
  have square := dSVProjectorSquaredDifference_trace P R
    (dSVDensityRationalPhysicalProjector_projective w ξ k)
    (dSVDensityRationalPhysicalProjector_projective w ζ k)
  rw [square]
  simp [Matrix.mul_sub, Matrix.sub_mul, Matrix.trace_sub]
  ring

theorem dSVDensityRationalActualMixed_escape_ge_diagonal
    {d N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (w : ℝ) (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalPhysicalDiagonalBornSuccess
        grid dimension w ξ ≤
      dSVDensityRationalActualMixedSuccessMass w N ξ ζ +
        dSVDensityRationalActualMixedAsynchronousMass
          w N ξ ζ := by
  have loss := dSVDensityRationalPhysicalMixedBornSuccess_loss_le
    grid dimension w ξ ζ
  rw [← dSVDensityRationalActualMixedSuccessMass_eq
      grid dimension w ξ ζ,
    ← dSVDensityRationalActualMixedAsynchronousMass_eq_crossHazard
      w N ξ ζ] at loss
  linarith

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

theorem dSVDensityRationalHeterogeneousPhysicalStage_partition
    {d S L N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (k : ℕ) :
    dSVDensityRationalHeterogeneousPhysicalStageContinue
        N width schedule ξ ζ k +
      dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ k +
      dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
          N width schedule ξ ζ k = 1 := by
  by_cases active : k < L
  · simpa [
      dSVDensityRationalHeterogeneousPhysicalStageContinue,
      dSVDensityRationalHeterogeneousPhysicalStageSuccess,
      dSVDensityRationalHeterogeneousPhysicalStageAsynchronous,
      dSVDensityRationalHeterogeneousPhysicalStageOutcome,
      active,
      dSVDensityRationalActualMixedContinueMass,
      dSVDensityRationalActualMixedSuccessMass,
      dSVDensityRationalActualMixedAsynchronousMass] using
        (dSVDensityRationalActualMixed_mass_partition
          grid dimension (width (schedule ⟨k, active⟩)) ξ ζ)
  · simp [
      dSVDensityRationalHeterogeneousPhysicalStageContinue,
      dSVDensityRationalHeterogeneousPhysicalStageSuccess,
      dSVDensityRationalHeterogeneousPhysicalStageAsynchronous,
      dSVDensityRationalHeterogeneousPhysicalStageOutcome,
      active]

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
    dSVDensityRationalHeterogeneousPhysicalStage_escape_ge_diagonal
    {d S L N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (k : Fin L) :
    dSVDensityRationalPhysicalDiagonalBornSuccess
        grid dimension (width (schedule k)) ξ ≤
      dSVDensityRationalHeterogeneousPhysicalStageSuccess
          N width schedule ξ ζ k.val +
        dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
          N width schedule ξ ζ k.val := by
  simpa [
    dSVDensityRationalHeterogeneousPhysicalStageSuccess,
    dSVDensityRationalHeterogeneousPhysicalStageAsynchronous,
    dSVDensityRationalHeterogeneousPhysicalStageOutcome,
    k.isLt,
    dSVDensityRationalActualMixedSuccessMass,
    dSVDensityRationalActualMixedAsynchronousMass]
    using dSVDensityRationalActualMixed_escape_ge_diagonal
      grid dimension (width (schedule k)) ξ ζ

theorem dSVDensityRationalHeterogeneousPhysicalStoppedEscape_budget
    {d S L N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    (∑ k ∈ Finset.range L,
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ k *
        (dSVDensityRationalHeterogeneousPhysicalStageSuccess
            N width schedule ξ ζ k +
          dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
            N width schedule ξ ζ k)) ≤ 1 := by
  let continuation :=
    dSVDensityRationalHeterogeneousPhysicalStageContinue
      N width schedule ξ ζ
  let escape : ℕ → ℝ := fun k =>
    dSVDensityRationalHeterogeneousPhysicalStageSuccess
        N width schedule ξ ζ k +
      dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
        N width schedule ξ ζ k
  have continuation_nonnegative : ∀ k, 0 ≤ continuation k := by
    intro k
    exact
      dSVDensityRationalHeterogeneousPhysicalStageOutcome_nonneg
        N width schedule ξ ζ k false false
  have stage : ∀ k, continuation k + escape k ≤ 1 := by
    intro k
    have actual :=
      dSVDensityRationalHeterogeneousPhysicalStage_partition
        grid dimension width schedule ξ ζ k
    dsimp [continuation, escape]
    linarith
  simpa [continuation, escape,
    dSVDensityRationalHeterogeneousPhysicalSurvival]
    using dSVHeterogeneousRealStopping_escape_budget
      continuation escape continuation_nonnegative stage L

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem
    solution
    {d S L N : ℕ} (grid : 0 < N) (dimension : 0 < d)
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) :
    (∑ k : Fin L,
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ k.val *
        dSVDensityRationalPhysicalDiagonalBornSuccess
          grid dimension (width (schedule k)) ξ) ≤ 1 := by
  calc
    _ ≤ ∑ k : Fin L,
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ k.val *
        (dSVDensityRationalHeterogeneousPhysicalStageSuccess
            N width schedule ξ ζ k.val +
          dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
            N width schedule ξ ζ k.val) := by
      apply Finset.sum_le_sum
      intro k _
      exact mul_le_mul_of_nonneg_left
        (dSVDensityRationalHeterogeneousPhysicalStage_escape_ge_diagonal
          grid dimension width schedule ξ ζ k)
        (dSVDensityRationalHeterogeneousPhysicalSurvival_nonneg
          N width schedule ξ ζ k.val)
    _ = ∑ k ∈ Finset.range L,
      dSVDensityRationalHeterogeneousPhysicalSurvival
          N width schedule ξ ζ k *
        (dSVDensityRationalHeterogeneousPhysicalStageSuccess
            N width schedule ξ ζ k +
          dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
            N width schedule ξ ζ k) := by
      simpa using
        (Fin.sum_univ_eq_sum_range
          (fun k : ℕ =>
            dSVDensityRationalHeterogeneousPhysicalSurvival
                N width schedule ξ ζ k *
              (dSVDensityRationalHeterogeneousPhysicalStageSuccess
                  N width schedule ξ ζ k +
                dSVDensityRationalHeterogeneousPhysicalStageAsynchronous
                  N width schedule ξ ζ k)) L)
    _ ≤ 1 :=
      dSVDensityRationalHeterogeneousPhysicalStoppedEscape_budget
        grid dimension width schedule ξ ζ
