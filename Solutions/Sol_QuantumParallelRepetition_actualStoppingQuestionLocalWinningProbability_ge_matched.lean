import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Pi
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
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
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
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
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
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.IsEmpty.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Result
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

open scoped BigOperators ComplexConjugate InnerProductSpace

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem positive_quadraticExpectation_nonneg
    (W : H →L[ℂ] H) (hW : W.IsPositive) (z : H) :
    0 ≤ quadraticExpectation W z := by
  exact hW.re_inner_nonneg_right z

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder Matrix.Norms.L2Operator

theorem matrixEffectCLM_isPositive
    {d : Type*} [Fintype d] [DecidableEq d]
    (E : Matrix d d ℂ) (hE : E.PosSemidef) :
    (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) E).IsPositive := by
  apply (ContinuousLinearMap.isPositive_toLinearMap_iff _).mp
  exact Matrix.isPositive_toEuclideanLin_iff.mpr hE

namespace Strategy

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B}

theorem winningEffect_born
    (S : Strategy G) (x : X) (y : Y) :
    (Matrix.trace (S.state.matrix * S.winningEffect x y)).re =
      ∑ a : A, ∑ b : B,
        if G.predicate x y a b = true then
          S.outcomeProbability x y a b else 0 := by
  classical
  simp [winningEffect, outcomeProbability, Matrix.mul_sum,
    Matrix.trace_sum]
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  split <;> simp

theorem winProbability_eq_winningEffect_born
    (S : Strategy G) :
    S.winProbability =
      ∑ x : X, ∑ y : Y,
        G.questionWeight x y *
          (Matrix.trace (S.state.matrix * S.winningEffect x y)).re := by
  simp_rw [S.winningEffect_born]
  rfl

end Strategy

end

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

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

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

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

section ActualSharedFlag

variable {X Y A B dA dB J : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype dA] [Fintype dB] [DecidableEq dA] [DecidableEq dB]
variable [Fintype J] [DecidableEq J]

theorem pureVectorWinningProbability_eq
    (G : Game X Y A B)
    (z : EuclideanSpace ℂ (dA × dB)) (hz : ‖z‖ = 1)
    (PA : X → POVM A dA) (PB : Y → POVM B dB) :
    (pureVectorStrategy G z hz PA PB).winProbability =
      ∑ x : X, ∑ y : Y, G.questionWeight x y *
        quadraticExpectation
          (Matrix.toEuclideanCLM (n := dA × dB) (𝕜 := ℂ)
            (pureVerifierEffect G z hz PA PB x y)) z := by
  classical
  rw [(pureVectorStrategy G z hz PA PB).winProbability_eq_winningEffect_born]
  apply Finset.sum_congr rfl
  intro x _
  apply Finset.sum_congr rfl
  intro y _
  congr 1
  exact pureDensityMatrix_trace_mul z hz
    (pureVerifierEffect G z hz PA PB x y)

end ActualSharedFlag

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

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

@[simp] theorem dependentBlockPOVM_effect_same
    {R C : Type*} [Fintype R] [DecidableEq R] [Fintype C]
    {ι : R → Type*}
    [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]
    (P : (r : R) → POVM C (ι r))
    (r : R) (c : C) (i j : ι r) :
    (dependentBlockPOVM P).operator c
      ⟨r, i⟩ ⟨r, j⟩ = (P r).operator c i j := by
  classical
  simp [dependentBlockPOVM,
    Matrix.blockDiagonal'_apply]

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem matrixQuadraticExpectation_expand
    {d : Type*} [Fintype d] [DecidableEq d]
    (M : Matrix d d ℂ) (z : EuclideanSpace ℂ d) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) M) z =
      (∑ i : d, (∑ j : d, M i j * z j) * star (z i)).re := by
  simp [quadraticExpectation, EuclideanSpace.inner_eq_star_dotProduct,
    Matrix.mulVec, dotProduct]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

section DependentStoppingBlocks

variable {X Y A B R : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype R] [DecidableEq R]
variable {ι κ : R → Type}
variable [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]
variable [∀ r, Fintype (κ r)] [∀ r, DecidableEq (κ r)]

theorem actualStoppingBranchWinningEffect_posSemidef
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (s : R) → Y → POVM B (κ s))
    (r s : R) (x : X) (y : Y) :
    (actualStoppingBranchWinningEffect
      G PA PB r s x y).PosSemidef := by
  classical
  apply Matrix.nonneg_iff_posSemidef.mp
  unfold actualStoppingBranchWinningEffect
  apply Finset.sum_nonneg
  intro a _
  apply Finset.sum_nonneg
  intro b _
  split
  · exact ((PA r x).positive a).kronecker
      ((PB s y).positive b) |>.nonneg
  · exact le_rfl

theorem actualStoppingBranchBorn_nonneg
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (s : R) → Y → POVM B (κ s))
    (z : EuclideanSpace ℂ ((Σ r, ι r) × (Σ s, κ s)))
    (r s : R) (x : X) (y : Y) :
    0 ≤ quadraticExpectation
      (Matrix.toEuclideanCLM (n := ι r × κ s) (𝕜 := ℂ)
        (actualStoppingBranchWinningEffect
          G PA PB r s x y))
      (actualStoppingBranchVector z r s) := by
  apply positive_quadraticExpectation_nonneg
  apply matrixEffectCLM_isPositive
  exact actualStoppingBranchWinningEffect_posSemidef
    G PA PB r s x y

theorem actualStoppingGlobalWinningEffect_same
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (s : R) → Y → POVM B (κ s))
    (r s : R) (x : X) (y : Y)
    (i i' : ι r) (j j' : κ s) :
    actualStoppingGlobalWinningEffect G PA PB x y
        (⟨r, i⟩, ⟨s, j⟩) (⟨r, i'⟩, ⟨s, j'⟩) =
      actualStoppingBranchWinningEffect G PA PB r s x y
        (i, j) (i', j') := by
  classical
  unfold actualStoppingGlobalWinningEffect
    actualStoppingBranchWinningEffect
  simp only [Matrix.sum_apply]
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  split_ifs
  · simp [dependentBlockPOVM_effect_same]
  · rfl

theorem actualStoppingGlobalWinningEffect_cross_eq_zero
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (s : R) → Y → POVM B (κ s))
    (r s r' s' : R) (x : X) (y : Y)
    (i : ι r) (j : κ s) (i' : ι r') (j' : κ s')
    (different : r ≠ r' ∨ s ≠ s') :
    actualStoppingGlobalWinningEffect G PA PB x y
        (⟨r, i⟩, ⟨s, j⟩) (⟨r', i'⟩, ⟨s', j'⟩) = 0 := by
  classical
  rcases different with left | right
  · unfold actualStoppingGlobalWinningEffect
    simp only [Matrix.sum_apply]
    apply Finset.sum_eq_zero
    intro a _
    apply Finset.sum_eq_zero
    intro b _
    split_ifs
    · simp [dependentBlockPOVM,
        Matrix.blockDiagonal'_apply, left]
    · rfl
  · unfold actualStoppingGlobalWinningEffect
    simp only [Matrix.sum_apply]
    apply Finset.sum_eq_zero
    intro a _
    apply Finset.sum_eq_zero
    intro b _
    split_ifs
    · simp [dependentBlockPOVM,
        Matrix.blockDiagonal'_apply, right]
    · rfl

theorem actualStoppingGlobalBorn_eq_sum
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (s : R) → Y → POVM B (κ s))
    (z : EuclideanSpace ℂ ((Σ r, ι r) × (Σ s, κ s)))
    (x : X) (y : Y) :
    quadraticExpectation
        (Matrix.toEuclideanCLM
          (n := (Σ r, ι r) × (Σ s, κ s)) (𝕜 := ℂ)
          (actualStoppingGlobalWinningEffect G PA PB x y)) z =
      ∑ r : R, ∑ s : R,
        quadraticExpectation
          (Matrix.toEuclideanCLM (n := ι r × κ s) (𝕜 := ℂ)
            (actualStoppingBranchWinningEffect
              G PA PB r s x y))
          (actualStoppingBranchVector z r s) := by
  classical
  have collapse (r s : R) (i : ι r) (j : κ s) :
      (∑ r' : R, ∑ i' : ι r', ∑ s' : R, ∑ j' : κ s',
        actualStoppingGlobalWinningEffect G PA PB x y
            (⟨r, i⟩, ⟨s, j⟩) (⟨r', i'⟩, ⟨s', j'⟩) *
          z (⟨r', i'⟩, ⟨s', j'⟩)) =
        ∑ i' : ι r, ∑ j' : κ s,
          actualStoppingBranchWinningEffect G PA PB r s x y
              (i, j) (i', j') * z (⟨r, i'⟩, ⟨s, j'⟩) := by
    rw [Finset.sum_eq_single r]
    · apply Finset.sum_congr rfl
      intro i' _
      rw [Finset.sum_eq_single s]
      · apply Finset.sum_congr rfl
        intro j' _
        rw [actualStoppingGlobalWinningEffect_same]
      · intro s' _ unequal
        apply Finset.sum_eq_zero
        intro j' _
        rw [actualStoppingGlobalWinningEffect_cross_eq_zero
          G PA PB r s r s' x y i j i' j'
            (Or.inr (Ne.symm unequal))]
        simp
      · simp
    · intro r' _ unequal
      apply Finset.sum_eq_zero
      intro i' _
      apply Finset.sum_eq_zero
      intro s' _
      apply Finset.sum_eq_zero
      intro j' _
      rw [actualStoppingGlobalWinningEffect_cross_eq_zero
        G PA PB r s r' s' x y i j i' j'
          (Or.inl (Ne.symm unequal))]
      simp
    · simp
  rw [matrixQuadraticExpectation_expand]
  simp_rw [matrixQuadraticExpectation_expand]
  simp only [Fintype.sum_prod_type, Fintype.sum_sigma,
    Complex.re_sum]
  apply Finset.sum_congr rfl
  intro r _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro s _
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  congr 1
  rw [collapse]
  rfl

end DependentStoppingBlocks

end

noncomputable section

open Matrix
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

theorem unitaryConjugatePOVM_jointMeasurementOperator
    {A B d : Type} [Fintype A] [Fintype B]
    [Fintype d] [DecidableEq d]
    (U V : Matrix.unitaryGroup d ℂ)
    (P : POVM A d) (Q : POVM B d)
    (a : A) (b : B) :
    (unitaryConjugatePOVM U P).operator a ⊗ₖ
      (unitaryConjugatePOVM V Q).operator b =
      (((U : Matrix d d ℂ) ⊗ₖ (V : Matrix d d ℂ))ᴴ *
        (P.operator a ⊗ₖ Q.operator b) *
        ((U : Matrix d d ℂ) ⊗ₖ (V : Matrix d d ℂ))) := by
  change
    (((U : Matrix d d ℂ)ᴴ * P.operator a * (U : Matrix d d ℂ)) ⊗ₖ
      ((V : Matrix d d ℂ)ᴴ * Q.operator b * (V : Matrix d d ℂ))) =
      (((U : Matrix d d ℂ) ⊗ₖ (V : Matrix d d ℂ))ᴴ *
        (P.operator a ⊗ₖ Q.operator b) *
        ((U : Matrix d d ℂ) ⊗ₖ (V : Matrix d d ℂ)))
  rw [Matrix.conjTranspose_kronecker,
    ← Matrix.mul_kronecker_mul,
    ← Matrix.mul_kronecker_mul]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

section QuestionLocalStopping

variable {X Y A B R : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype R] [DecidableEq R]
variable {ι : R → Type}
variable [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]

theorem actualStoppingQuestionLocalWinningEffect_quadratic
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (r : R) → Y → POVM B (ι r))
    (U : X → Matrix.unitaryGroup (Σ r, ι r) ℂ)
    (V : Y → Matrix.unitaryGroup (Σ r, ι r) ℂ)
    (z : EuclideanSpace ℂ ((Σ r, ι r) × (Σ r, ι r)))
    (normalized : ‖z‖ = 1)
    (x : X) (y : Y) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (Σ r, ι r) × (Σ r, ι r)) (𝕜 := ℂ)
        (pureVerifierEffect G z normalized
          (fun x => unitaryConjugatePOVM (U x)
            (dependentBlockPOVM (fun r => PA r x)))
          (fun y => unitaryConjugatePOVM (V y)
            (dependentBlockPOVM (fun r => PB r y)))
          x y)) z =
      quadraticExpectation
        (Matrix.toEuclideanCLM
          (n := (Σ r, ι r) × (Σ r, ι r)) (𝕜 := ℂ)
          (actualStoppingGlobalWinningEffect
            G PA PB x y))
        (actualStoppingQuestionLocalAction
          (U x) (V y) z) := by
  classical
  change
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (Σ r, ι r) × (Σ r, ι r)) (𝕜 := ℂ)
        (∑ a : A, ∑ b : B,
          if G.predicate x y a b = true then
            (unitaryConjugatePOVM (U x)
              (dependentBlockPOVM
                (fun r => PA r x))).operator a ⊗ₖ
            (unitaryConjugatePOVM (V y)
              (dependentBlockPOVM
                (fun r => PB r y))).operator b
          else 0)) z =
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (Σ r, ι r) × (Σ r, ι r)) (𝕜 := ℂ)
        (∑ a : A, ∑ b : B,
          if G.predicate x y a b = true then
            (dependentBlockPOVM
              (fun r => PA r x)).operator a ⊗ₖ
            (dependentBlockPOVM
              (fun r => PB r y)).operator b
          else 0))
      (actualStoppingQuestionLocalAction
        (U x) (V y) z)
  rw [sourceHistoryQuadraticExpectation_matrix_sum,
    sourceHistoryQuadraticExpectation_matrix_sum]
  apply Finset.sum_congr rfl
  intro a _
  rw [sourceHistoryQuadraticExpectation_matrix_sum,
    sourceHistoryQuadraticExpectation_matrix_sum]
  apply Finset.sum_congr rfl
  intro b _
  split_ifs with accepted
  · rw [unitaryConjugatePOVM_jointMeasurementOperator]
    exact (rectangular_matrix_quadratic_compression
      (((U x : Matrix (Σ r, ι r) (Σ r, ι r) ℂ) ⊗ₖ
        (V y : Matrix (Σ r, ι r) (Σ r, ι r) ℂ)))
      (((dependentBlockPOVM (fun r => PA r x)).operator a) ⊗ₖ
       ((dependentBlockPOVM (fun r => PB r y)).operator b))
      z).symm
  · simp [quadraticExpectation]

theorem actualStoppingQuestionLocalWinningProbability_eq_sum
    (G : Game X Y A B)
    (PA : (r : R) → X → POVM A (ι r))
    (PB : (r : R) → Y → POVM B (ι r))
    (U : X → Matrix.unitaryGroup (Σ r, ι r) ℂ)
    (V : Y → Matrix.unitaryGroup (Σ r, ι r) ℂ)
    (z : EuclideanSpace ℂ ((Σ r, ι r) × (Σ r, ι r)))
    (normalized : ‖z‖ = 1) :
    (pureVectorStrategy G z normalized
      (fun x => unitaryConjugatePOVM (U x)
        (dependentBlockPOVM (fun r => PA r x)))
      (fun y => unitaryConjugatePOVM (V y)
        (dependentBlockPOVM (fun r => PB r y)))).winProbability =
      ∑ x : X, ∑ y : Y, G.questionWeight x y *
        ∑ r : R, ∑ s : R,
          quadraticExpectation
            (Matrix.toEuclideanCLM (n := ι r × ι s) (𝕜 := ℂ)
              (actualStoppingBranchWinningEffect
                G PA PB r s x y))
            (actualStoppingBranchVector
              (actualStoppingQuestionLocalAction
                (U x) (V y) z) r s) := by
  classical
  rw [pureVectorWinningProbability_eq]
  apply Finset.sum_congr rfl
  intro x _
  apply Finset.sum_congr rfl
  intro y _
  congr 1
  rw [actualStoppingQuestionLocalWinningEffect_quadratic]
  exact actualStoppingGlobalBorn_eq_sum
    G PA PB (actualStoppingQuestionLocalAction
      (U x) (V y) z) x y

end QuestionLocalStopping

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
attribute [local instance] Classical.propDecidable
variable {X Y A B R : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype R] [DecidableEq R]
variable {ι : R → Type}
variable [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]

theorem solution
    {L : ℕ}
    {ι : Fin (L + 1) → Type}
    [∀ r, Fintype (ι r)] [∀ r, DecidableEq (ι r)]
    (G : Game X Y A B)
    (PA : (r : Fin (L + 1)) → X → POVM A (ι r))
    (PB : (r : Fin (L + 1)) → Y → POVM B (ι r))
    (U : X → Matrix.unitaryGroup (Σ r, ι r) ℂ)
    (V : Y → Matrix.unitaryGroup (Σ r, ι r) ℂ)
    (z : EuclideanSpace ℂ
      ((Σ r : Fin (L + 1), ι r) ×
       (Σ r : Fin (L + 1), ι r)))
    (normalized : ‖z‖ = 1) :
    (∑ x : X, ∑ y : Y, G.questionWeight x y *
      ∑ j : Fin L,
        quadraticExpectation
          (Matrix.toEuclideanCLM
            (n := ι j.succ × ι j.succ) (𝕜 := ℂ)
            (actualStoppingBranchWinningEffect
              G PA PB j.succ j.succ x y))
          (actualStoppingBranchVector
            (actualStoppingQuestionLocalAction
              (U x) (V y) z) j.succ j.succ)) ≤
      (pureVectorStrategy G z normalized
        (fun x => unitaryConjugatePOVM (U x)
          (dependentBlockPOVM (fun r => PA r x)))
        (fun y => unitaryConjugatePOVM (V y)
          (dependentBlockPOVM (fun r => PB r y)))).winProbability := by
  classical
  rw [actualStoppingQuestionLocalWinningProbability_eq_sum]
  apply Finset.sum_le_sum
  intro x _
  apply Finset.sum_le_sum
  intro y _
  apply mul_le_mul_of_nonneg_left _ (G.weight_nonneg x y)
  let stopped := actualStoppingQuestionLocalAction
    (U x) (V y) z
  calc
    (∑ j : Fin L,
      quadraticExpectation
        (Matrix.toEuclideanCLM
          (n := ι j.succ × ι j.succ) (𝕜 := ℂ)
          (actualStoppingBranchWinningEffect
            G PA PB j.succ j.succ x y))
        (actualStoppingBranchVector stopped
          j.succ j.succ)) ≤
        ∑ r : Fin (L + 1),
          quadraticExpectation
            (Matrix.toEuclideanCLM (n := ι r × ι r) (𝕜 := ℂ)
              (actualStoppingBranchWinningEffect
                G PA PB r r x y))
            (actualStoppingBranchVector stopped r r) := by
          rw [Fin.sum_univ_succ]
          have nonnegative := actualStoppingBranchBorn_nonneg
            G PA PB stopped (0 : Fin (L + 1)) 0 x y
          linarith
    _ ≤ ∑ r : Fin (L + 1), ∑ s : Fin (L + 1),
          quadraticExpectation
            (Matrix.toEuclideanCLM (n := ι r × ι s) (𝕜 := ℂ)
              (actualStoppingBranchWinningEffect
                G PA PB r s x y))
            (actualStoppingBranchVector stopped r s) := by
          apply Finset.sum_le_sum
          intro r _
          exact Finset.single_le_sum
            (fun s _ => actualStoppingBranchBorn_nonneg
              G PA PB stopped r s x y)
            (Finset.mem_univ r)
