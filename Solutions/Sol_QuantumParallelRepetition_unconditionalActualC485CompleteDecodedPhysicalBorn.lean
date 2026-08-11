import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_25
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Ring.Finset
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
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Algebra.Star.Unitary
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
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Operator.LinearIsometry
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
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Reindex
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Logic.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Basic
import Mathlib.Topology.Algebra.UniformMulAction
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.EMetricSpace.Defs
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

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

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

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
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem unconditionalMixedConjugateSigmaAtomLift_apply
    {d m : ℕ} (B : ℕ)
    (U : Matrix.unitaryGroup (Fin d) ℂ)
    (φ ψ : Fin B) (i j : Fin d) (a b : Fin m) :
    (unconditionalMixedConjugateSigmaAtomLift (m := m) B U :
      Matrix (Σ _ : Fin B × Fin d, Fin m)
        (Σ _ : Fin B × Fin d, Fin m) ℂ)
      ⟨(φ, i), a⟩ ⟨(ψ, j), b⟩ =
      if φ = ψ ∧ a = b then
        (U : Matrix (Fin d) (Fin d) ℂ) i j
      else 0 := by
  classical
  by_cases phase : φ = ψ <;>
    by_cases work : a = b <;>
      simp [unconditionalMixedConjugateSigmaAtomLift,
        Matrix.reindex_apply, Matrix.kroneckerMap_apply, phase, work]

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
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

@[simp] theorem directDSVActualReindexedRetainedPOVM_effect
    {C s t ι : Type*}
    [Fintype C] [Fintype s] [Fintype t] [Fintype ι]
    [DecidableEq s] [DecidableEq t] [DecidableEq ι]
    (e : ι ≃ s × t)
    (P : POVM C s) (a : C) (i j : ι) :
    (directDSVActualReindexedRetainedPOVM e P).operator a i j =
      P.operator a (e i).1 (e j).1 *
        if (e i).2 = (e j).2 then 1 else 0 := by
  change
    (P.operator a ⊗ₖ (1 : Matrix t t ℂ)) (e i) (e j) = _
  simp [Matrix.kroneckerMap_apply, Matrix.one_apply]

theorem directDSVActualReindexedRetainedPOVMWinningEffect
    {X Y A B s t u v ι κ : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [Fintype u] [Fintype v]
    [Fintype ι] [Fintype κ]
    [DecidableEq s] [DecidableEq t] [DecidableEq u] [DecidableEq v]
    [DecidableEq ι] [DecidableEq κ]
    (G : Game X Y A B)
    (eA : ι ≃ s × t) (eB : κ ≃ u × v)
    (PA : POVM A s) (PB : POVM B u)
    (x : X) (y : Y) :
    directDSVActualLocalPOVMWinningEffect G
        (directDSVActualReindexedRetainedPOVM eA PA)
        (directDSVActualReindexedRetainedPOVM eB PB)
        x y =
      Matrix.reindex
        (directDSVActualBilateralRetainedIndexEquiv eA eB).symm
        (directDSVActualBilateralRetainedIndexEquiv eA eB).symm
        (directDSVActualLocalPOVMWinningEffect G PA PB x y ⊗ₖ
          (1 : Matrix (t × v) (t × v) ℂ)) := by
  classical
  ext ⟨i, k⟩ ⟨j, l⟩
  by_cases alice_work : (eA i).2 = (eA j).2 <;>
    by_cases bob_work : (eB k).2 = (eB l).2 <;>
      simp [directDSVActualLocalPOVMWinningEffect,
        directDSVActualReindexedRetainedPOVM,
        reindexedPOVM, purificationAlicePOVM,
        directDSVActualBilateralRetainedIndexEquiv,
        Matrix.reindex_apply, Matrix.sum_apply, Matrix.ite_apply,
        Matrix.submatrix_apply,
        Matrix.kroneckerMap_apply, Matrix.one_apply,
        Equiv.prodProdProdComm_apply, alice_work, bob_work]

theorem directDSVActualReindexedWinningEffect_quadratic
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq ι] [DecidableEq κ]
    (e : ι ≃ κ) (winning : Matrix κ κ ℂ)
    (z : EuclideanSpace ℂ ι) :
    quadraticExpectation
        (Matrix.toEuclideanCLM (n := ι) (𝕜 := ℂ)
          (Matrix.reindex e.symm e.symm winning)) z =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := κ) (𝕜 := ℂ) winning)
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ e z) := by
  classical
  rw [matrixQuadraticExpectation_expand,
    matrixQuadraticExpectation_expand]
  change
    (∑ i : ι, (∑ j : ι, winning (e i) (e j) * z j) *
      star (z i)).re =
    (∑ i : κ,
      (∑ j : κ, winning i j * z (e.symm j)) *
        star (z (e.symm i))).re
  congr 1
  calc
    (∑ i : ι, (∑ j : ι, winning (e i) (e j) * z j) *
      star (z i)) =
        ∑ i : ι,
          (∑ j : κ, winning (e i) j * z (e.symm j)) *
            star (z i) := by
          apply Finset.sum_congr rfl
          intro i _
          congr 1
          simpa only [Equiv.symm_apply_apply] using
            (Equiv.sum_comp e
              (fun j : κ => winning (e i) j * z (e.symm j)))
    _ = ∑ i : κ,
          (∑ j : κ, winning i j * z (e.symm j)) *
            star (z (e.symm i)) := by
          simpa only [Equiv.symm_apply_apply] using
            (Equiv.sum_comp e
              (fun i : κ =>
                (∑ j : κ, winning i j * z (e.symm j)) *
                  star (z (e.symm i))))

end

noncomputable section

open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem unconditionalActualRetainedPOVM_ext
    {C ι : Type*} [Fintype C] [Fintype ι] [DecidableEq ι]
    (P Q : POVM C ι)
    (same : ∀ (a : C) (i j : ι), P.operator a i j = Q.operator a i j) :
    P = Q := by
  cases P with
  | mk pe pp pc =>
    cases Q with
    | mk qe qp qc =>
      have operator : pe = qe := by
        funext a
        apply Matrix.ext
        intro i j
        exact same a i j
      cases operator
      rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

theorem unconditionalSelectedGaugeRetainedPOVMNaturality_effect
    {C : Type} [Fintype C]
    {P N d m : ℕ}
    (basis : Matrix.unitaryGroup (Fin d) ℂ)
    (source : POVM C (Fin d)) (a : C) :
    (directDSVActualReindexedRetainedPOVM
      (physical8SelectedGlobalTargetWorkEquiv P N d m)
      (unitaryConjugatePOVM basis source)).operator a =
    (unitaryConjugatePOVM
      (unconditionalMixedConjugateSigmaAtomLift
        (m := N * m) P basis)
      (directDSVActualReindexedRetainedPOVM
        (physical8SelectedGlobalTargetWorkEquiv P N d m)
        source)).operator a := by
  classical
  ext p q
  rcases p with ⟨⟨φ, i⟩, k⟩
  rcases q with ⟨⟨ψ, j⟩, l⟩
  by_cases phase : φ = ψ <;> by_cases work : k = l <;>
    simp [directDSVActualReindexedRetainedPOVM_effect,
      physical8SelectedGlobalTargetWorkEquiv,
      unitaryConjugatePOVM, Matrix.mul_apply,
      Matrix.conjTranspose_apply, Fintype.sum_sigma,
      Fintype.sum_prod_type,
      unconditionalMixedConjugateSigmaAtomLift_apply,
      mul_assoc, ite_and, phase, work, eq_comm]

theorem unconditionalSelectedGaugeRetainedPOVMNaturality
    {C : Type} [Fintype C]
    {P N d m : ℕ}
    (basis : Matrix.unitaryGroup (Fin d) ℂ)
    (source : POVM C (Fin d)) :
    directDSVActualReindexedRetainedPOVM
        (physical8SelectedGlobalTargetWorkEquiv P N d m)
        (unitaryConjugatePOVM basis source) =
      unitaryConjugatePOVM
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P basis)
        (directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m)
          source) := by
  classical
  apply unconditionalActualRetainedPOVM_ext
  intro a i j
  exact congrArg (fun M => M i j)
    (unconditionalSelectedGaugeRetainedPOVMNaturality_effect
      (P := P) (N := N) (m := m) basis source a)

end

noncomputable section

open WithLp Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

theorem unconditionalActualFairSourceSelectedRetainedWinningEffectGauge
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {P N d m : ℕ}
    (G : Game X Y A B)
    (alice bob : Matrix.unitaryGroup (Fin d) ℂ)
    (PA : POVM A (Fin d)) (PB : POVM B (Fin d))
    (x : X) (y : Y) :
    let e := physical8SelectedGlobalTargetWorkEquiv P N d m
    let U := unconditionalMixedConjugateSigmaAtomLift
      (m := N * m) P alice
    let V := unconditionalMixedConjugateSigmaAtomLift
      (m := N * m) P bob
    directDSVActualLocalPOVMWinningEffect G
      (directDSVActualReindexedRetainedPOVM e
        (unitaryConjugatePOVM alice PA))
      (directDSVActualReindexedRetainedPOVM e
        (unitaryConjugatePOVM bob PB)) x y =
      (((U : Matrix _ _ ℂ) ⊗ₖ (V : Matrix _ _ ℂ))ᴴ *
        directDSVActualLocalPOVMWinningEffect G
          (directDSVActualReindexedRetainedPOVM e PA)
          (directDSVActualReindexedRetainedPOVM e PB) x y *
        ((U : Matrix _ _ ℂ) ⊗ₖ (V : Matrix _ _ ℂ))) := by
  classical
  dsimp only
  rw [unconditionalSelectedGaugeRetainedPOVMNaturality,
    unconditionalSelectedGaugeRetainedPOVMNaturality]
  unfold directDSVActualLocalPOVMWinningEffect
  simp_rw [unitaryConjugatePOVM_jointMeasurementOperator]
  simp [Finset.mul_sum, Finset.sum_mul]

theorem unconditionalActualFairSourceSelectedRetainedWinningBornGauge
    {X Y A B τ : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype τ] [DecidableEq τ]
    {P N d m : ℕ}
    (G : Game X Y A B)
    (alice bob : Matrix.unitaryGroup (Fin d) ℂ)
    (PA : POVM A (Fin d)) (PB : POVM B (Fin d))
    (x : X) (y : Y)
    (z : EuclideanSpace ℂ
      ((UnconditionalSelectedCopyLocalIndex P d N m ×
        UnconditionalSelectedCopyLocalIndex P d N m) × τ)) :
    let e := physical8SelectedGlobalTargetWorkEquiv P N d m
    let U := unconditionalMixedConjugateSigmaAtomLift
      (m := N * m) P alice
    let V := unconditionalMixedConjugateSigmaAtomLift
      (m := N * m) P bob
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (UnconditionalSelectedCopyLocalIndex P d N m ×
          UnconditionalSelectedCopyLocalIndex P d N m) × τ)
        (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (directDSVActualReindexedRetainedPOVM e
            (unitaryConjugatePOVM alice PA))
          (directDSVActualReindexedRetainedPOVM e
            (unitaryConjugatePOVM bob PB)) x y ⊗ₖ
          (1 : Matrix τ τ ℂ))) z =
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (UnconditionalSelectedCopyLocalIndex P d N m ×
          UnconditionalSelectedCopyLocalIndex P d N m) × τ)
        (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (directDSVActualReindexedRetainedPOVM e PA)
          (directDSVActualReindexedRetainedPOVM e PB) x y ⊗ₖ
          (1 : Matrix τ τ ℂ)))
      (unconditionalMixedConjugateSelectedBranchLocalAction
        U V z) := by
  classical
  dsimp only
  rw [unconditionalActualFairSourceSelectedRetainedWinningEffectGauge]
  let UA := unconditionalMixedConjugateSigmaAtomLift
    (m := N * m) P alice
  let UB := unconditionalMixedConjugateSigmaAtomLift
    (m := N * m) P bob
  let e := physical8SelectedGlobalTargetWorkEquiv P N d m
  let selected : Type := UnconditionalSelectedCopyLocalIndex P d N m
  let E : Matrix (selected × selected) (selected × selected) ℂ :=
    directDSVActualLocalPOVMWinningEffect G
      (directDSVActualReindexedRetainedPOVM e PA)
      (directDSVActualReindexedRetainedPOVM e PB) x y
  let K : Matrix (selected × selected) (selected × selected) ℂ :=
    (UA : Matrix selected selected ℂ) ⊗ₖ
      (UB : Matrix selected selected ℂ)
  let W : Matrix ((selected × selected) × τ)
      ((selected × selected) × τ) ℂ :=
    K ⊗ₖ (1 : Matrix τ τ ℂ)
  have transport :
      (Kᴴ * E * K) ⊗ₖ (1 : Matrix τ τ ℂ) =
        Wᴴ * (E ⊗ₖ (1 : Matrix τ τ ℂ)) * W := by
    calc
      (Kᴴ * E * K) ⊗ₖ (1 : Matrix τ τ ℂ) =
          (Kᴴ ⊗ₖ (1 : Matrix τ τ ℂ)) *
            (E ⊗ₖ (1 : Matrix τ τ ℂ)) *
            (K ⊗ₖ (1 : Matrix τ τ ℂ)) := by
              rw [← Matrix.mul_kronecker_mul,
                ← Matrix.mul_kronecker_mul]
              simp
      _ = Wᴴ * (E ⊗ₖ (1 : Matrix τ τ ℂ)) * W := by
        simp [W, Matrix.conjTranspose_kronecker]
  change
    quadraticExpectation
        (Matrix.toEuclideanCLM
          (n := (selected × selected) × τ) (𝕜 := ℂ)
          ((Kᴴ * E * K) ⊗ₖ (1 : Matrix τ τ ℂ))) z =
      quadraticExpectation
        (Matrix.toEuclideanCLM
          (n := (selected × selected) × τ) (𝕜 := ℂ)
          (E ⊗ₖ (1 : Matrix τ τ ℂ)))
        (unconditionalMixedConjugateSelectedBranchLocalAction
          UA UB z)
  rw [transport]
  exact (rectangular_matrix_quadratic_compression
    W (E ⊗ₖ (1 : Matrix τ τ ℂ)) z).symm

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

attribute [local instance] Classical.propDecidable

theorem unconditionalActualC485RetainedPureWorkReindexBorn
    {s t v : Type}
    [Fintype s] [DecidableEq s]
    [Fintype t] [DecidableEq t]
    [Fintype v] [DecidableEq v]
    (e : t ≃ v)
    (winning : Matrix s s ℂ)
    (z : EuclideanSpace ℂ (s × t)) :
    quadraticExpectation
        (Matrix.toEuclideanCLM (n := s × t) (𝕜 := ℂ)
          (winning ⊗ₖ (1 : Matrix t t ℂ))) z =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := s × v) (𝕜 := ℂ)
          (winning ⊗ₖ (1 : Matrix v v ℂ)))
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (Equiv.prodCongr (Equiv.refl s) e) z) := by
  classical
  let whole : s × t ≃ s × v :=
    Equiv.prodCongr (Equiv.refl s) e
  have actual_identity :
      Matrix.reindex whole.symm whole.symm
          (winning ⊗ₖ (1 : Matrix v v ℂ)) =
        winning ⊗ₖ (1 : Matrix t t ℂ) := by
    ext ⟨i, a⟩ ⟨j, b⟩
    by_cases same : a = b
    · subst b
      simp [whole, Matrix.reindex_apply, Matrix.kroneckerMap_apply]
    · have different : e a ≠ e b := fun h => same (e.injective h)
      simp [whole, Matrix.reindex_apply, Matrix.kroneckerMap_apply,
        same, different]
  rw [← actual_identity]
  exact directDSVActualReindexedWinningEffect_quadratic
    whole (winning ⊗ₖ (1 : Matrix v v ℂ)) z

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalActualC485GenericRetainedWinningBorn
    {X Y A B s t u v ι κ : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [Fintype u] [Fintype v]
    [Fintype ι] [Fintype κ]
    [DecidableEq s] [DecidableEq t] [DecidableEq u] [DecidableEq v]
    [DecidableEq ι] [DecidableEq κ]
    (G : Game X Y A B)
    (eA : ι ≃ s × t) (eB : κ ≃ u × v)
    (PA : POVM A s) (PB : POVM B u)
    (x : X) (y : Y)
    (z : EuclideanSpace ℂ (ι × κ)) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := ι × κ) (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (directDSVActualReindexedRetainedPOVM eA PA)
          (directDSVActualReindexedRetainedPOVM eB PB) x y)) z =
      quadraticExpectation
        (Matrix.toEuclideanCLM
          (n := (s × u) × (t × v)) (𝕜 := ℂ)
          (directDSVActualLocalPOVMWinningEffect
            G PA PB x y ⊗ₖ (1 : Matrix (t × v) (t × v) ℂ)))
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (directDSVActualBilateralRetainedIndexEquiv eA eB) z) := by
  rw [directDSVActualReindexedRetainedPOVMWinningEffect,
    directDSVActualReindexedWinningEffect_quadratic]

theorem unconditionalActualC485GenericSelectedWinningRegroupGauge
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {P N d m : ℕ} {ι κ R T : Type}
    [Fintype ι] [Fintype κ] [Fintype R] [Fintype T]
    [DecidableEq ι] [DecidableEq κ] [DecidableEq R] [DecidableEq T]
    (G : Game X Y A B)
    (alice bob : Matrix.unitaryGroup (Fin d) ℂ)
    (PA : POVM A (Fin d)) (PB : POVM B (Fin d))
    (eA : ι ≃ UnconditionalSelectedCopyLocalIndex P d N m × R)
    (eB : κ ≃ UnconditionalSelectedCopyLocalIndex P d N m × R)
    (pair : R × R ≃ T)
    (x : X) (y : Y)
    (z : EuclideanSpace ℂ (ι × κ)) :
    let selected := UnconditionalSelectedCopyLocalIndex P d N m
    let stage := physical8SelectedGlobalTargetWorkEquiv P N d m
    let gaugedAlice := directDSVActualReindexedRetainedPOVM stage
      (unitaryConjugatePOVM alice PA)
    let gaugedBob := directDSVActualReindexedRetainedPOVM stage
      (unitaryConjugatePOVM bob PB)
    let plainAlice := directDSVActualReindexedRetainedPOVM stage PA
    let plainBob := directDSVActualReindexedRetainedPOVM stage PB
    let regrouped :=
      LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
        (Equiv.prodCongr (Equiv.refl (selected × selected)) pair)
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (directDSVActualBilateralRetainedIndexEquiv eA eB) z)
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := ι × κ) (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (directDSVActualReindexedRetainedPOVM eA gaugedAlice)
          (directDSVActualReindexedRetainedPOVM eB gaugedBob)
          x y)) z =
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (selected × selected) × T) (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          plainAlice plainBob x y ⊗ₖ (1 : Matrix T T ℂ)))
      (unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P alice)
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P bob)
        regrouped) := by
  dsimp only
  calc
    _ = quadraticExpectation
        (Matrix.toEuclideanCLM
          (n :=
            (UnconditionalSelectedCopyLocalIndex P d N m ×
             UnconditionalSelectedCopyLocalIndex P d N m) ×
              (R × R))
          (𝕜 := ℂ)
          (directDSVActualLocalPOVMWinningEffect G
            (directDSVActualReindexedRetainedPOVM
              (physical8SelectedGlobalTargetWorkEquiv P N d m)
              (unitaryConjugatePOVM alice PA))
            (directDSVActualReindexedRetainedPOVM
              (physical8SelectedGlobalTargetWorkEquiv P N d m)
              (unitaryConjugatePOVM bob PB)) x y ⊗ₖ
            (1 : Matrix (R × R) (R × R) ℂ)))
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (directDSVActualBilateralRetainedIndexEquiv eA eB) z) :=
      unconditionalActualC485GenericRetainedWinningBorn
        G eA eB
        (directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m)
          (unitaryConjugatePOVM alice PA))
        (directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m)
          (unitaryConjugatePOVM bob PB)) x y z
    _ = quadraticExpectation
        (Matrix.toEuclideanCLM
          (n :=
            (UnconditionalSelectedCopyLocalIndex P d N m ×
             UnconditionalSelectedCopyLocalIndex P d N m) × T)
          (𝕜 := ℂ)
          (directDSVActualLocalPOVMWinningEffect G
            (directDSVActualReindexedRetainedPOVM
              (physical8SelectedGlobalTargetWorkEquiv P N d m)
              (unitaryConjugatePOVM alice PA))
            (directDSVActualReindexedRetainedPOVM
              (physical8SelectedGlobalTargetWorkEquiv P N d m)
              (unitaryConjugatePOVM bob PB)) x y ⊗ₖ
            (1 : Matrix T T ℂ)))
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (Equiv.prodCongr
            (Equiv.refl
              (UnconditionalSelectedCopyLocalIndex P d N m ×
               UnconditionalSelectedCopyLocalIndex P d N m))
            pair)
          (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
            (directDSVActualBilateralRetainedIndexEquiv eA eB) z)) :=
      unconditionalActualC485RetainedPureWorkReindexBorn
        pair
        (directDSVActualLocalPOVMWinningEffect G
          (directDSVActualReindexedRetainedPOVM
            (physical8SelectedGlobalTargetWorkEquiv P N d m)
            (unitaryConjugatePOVM alice PA))
          (directDSVActualReindexedRetainedPOVM
            (physical8SelectedGlobalTargetWorkEquiv P N d m)
            (unitaryConjugatePOVM bob PB)) x y)
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (directDSVActualBilateralRetainedIndexEquiv eA eB) z)
    _ = _ :=
      unconditionalActualFairSourceSelectedRetainedWinningBornGauge
        G alice bob PA PB x y
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (Equiv.prodCongr
            (Equiv.refl
              (UnconditionalSelectedCopyLocalIndex P d N m ×
               UnconditionalSelectedCopyLocalIndex P d N m))
            pair)
          (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
            (directDSVActualBilateralRetainedIndexEquiv eA eB) z))

theorem unconditionalActualC485GenericDecodedWinningBorn
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {P N d m : ℕ} {ι κ R T : Type}
    [Fintype ι] [Fintype κ] [Fintype R] [Fintype T]
    [DecidableEq ι] [DecidableEq κ] [DecidableEq R] [DecidableEq T]
    (G : Game X Y A B)
    (alice bob : Matrix.unitaryGroup (Fin d) ℂ)
    (PA : POVM A (Fin d)) (PB : POVM B (Fin d))
    (eA : ι ≃ UnconditionalSelectedCopyLocalIndex P d N m × R)
    (eB : κ ≃ UnconditionalSelectedCopyLocalIndex P d N m × R)
    (pair : R × R ≃ T)
    (x : X) (y : Y)
    (z : EuclideanSpace ℂ (ι × κ))
    (actual : EuclideanSpace ℂ
      ((UnconditionalSelectedCopyLocalIndex P d N m ×
        UnconditionalSelectedCopyLocalIndex P d N m) × T))
    (decoded :
      unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P alice)
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P bob)
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (Equiv.prodCongr
            (Equiv.refl
              (UnconditionalSelectedCopyLocalIndex P d N m ×
               UnconditionalSelectedCopyLocalIndex P d N m))
            pair)
          (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
            (directDSVActualBilateralRetainedIndexEquiv
              eA eB) z)) = actual) :
    let selected := UnconditionalSelectedCopyLocalIndex P d N m
    let stage := physical8SelectedGlobalTargetWorkEquiv P N d m
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n := (selected × selected) × T) (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (directDSVActualReindexedRetainedPOVM stage PA)
          (directDSVActualReindexedRetainedPOVM stage PB)
          x y ⊗ₖ (1 : Matrix T T ℂ))) actual =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := ι × κ) (𝕜 := ℂ)
          (directDSVActualLocalPOVMWinningEffect G
            (directDSVActualReindexedRetainedPOVM eA
              (directDSVActualReindexedRetainedPOVM stage
                (unitaryConjugatePOVM alice PA)))
            (directDSVActualReindexedRetainedPOVM eB
              (directDSVActualReindexedRetainedPOVM stage
                (unitaryConjugatePOVM bob PB))) x y)) z := by
  dsimp only
  have physical :=
    unconditionalActualC485GenericSelectedWinningRegroupGauge
      G alice bob PA PB eA eB pair x y z
  dsimp only at physical
  rw [decoded] at physical
  exact physical.symm

theorem unconditionalActualC485SourceSelectedDecodedWinningBorn
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {P N d m : ℕ} {ι κ R T : Type}
    [Fintype ι] [Fintype κ] [Fintype R] [Fintype T]
    [DecidableEq ι] [DecidableEq κ] [DecidableEq R] [DecidableEq T]
    (G : Game X Y A B)
    (alice bob : Matrix.unitaryGroup (Fin d) ℂ)
    (PA : POVM A (Fin d)) (PB : POVM B (Fin d))
    (selectedA :
      POVM A (UnconditionalSelectedCopyLocalIndex P d N m))
    (selectedB :
      POVM B (UnconditionalSelectedCopyLocalIndex P d N m))
    (selectedA_eq :
      selectedA =
        directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m) PA)
    (selectedB_eq :
      selectedB =
        directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m) PB)
    (eA : ι ≃ UnconditionalSelectedCopyLocalIndex P d N m × R)
    (eB : κ ≃ UnconditionalSelectedCopyLocalIndex P d N m × R)
    (pair : R × R ≃ T)
    (x : X) (y : Y)
    (z : EuclideanSpace ℂ (ι × κ))
    (actual : EuclideanSpace ℂ
      ((UnconditionalSelectedCopyLocalIndex P d N m ×
        UnconditionalSelectedCopyLocalIndex P d N m) × T))
    (decoded :
      unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P alice)
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P bob)
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (Equiv.prodCongr
            (Equiv.refl
              (UnconditionalSelectedCopyLocalIndex P d N m ×
               UnconditionalSelectedCopyLocalIndex P d N m))
            pair)
          (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
            (directDSVActualBilateralRetainedIndexEquiv
              eA eB) z)) = actual) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          (UnconditionalSelectedCopyLocalIndex P d N m ×
           UnconditionalSelectedCopyLocalIndex P d N m) × T)
        (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          selectedA selectedB x y ⊗ₖ (1 : Matrix T T ℂ))) actual =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := ι × κ) (𝕜 := ℂ)
          (directDSVActualLocalPOVMWinningEffect G
            (directDSVActualReindexedRetainedPOVM eA
              (directDSVActualReindexedRetainedPOVM
                (physical8SelectedGlobalTargetWorkEquiv P N d m)
                (unitaryConjugatePOVM alice PA)))
            (directDSVActualReindexedRetainedPOVM eB
              (directDSVActualReindexedRetainedPOVM
                (physical8SelectedGlobalTargetWorkEquiv P N d m)
                (unitaryConjugatePOVM bob PB))) x y)) z := by
  subst selectedA
  subst selectedB
  exact
    unconditionalActualC485GenericDecodedWinningBorn
      G alice bob PA PB eA eB pair x y z actual decoded

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem solution
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {P N d m : ℕ} {ι κ R T : Type}
    [Fintype ι] [Fintype κ] [Fintype R] [Fintype T]
    [DecidableEq ι] [DecidableEq κ] [DecidableEq R] [DecidableEq T]
    (G : Game X Y A B)
    (alice bob : Matrix.unitaryGroup (Fin d) ℂ)
    (PA : POVM A (Fin d)) (PB : POVM B (Fin d))
    (selectedA :
      POVM A (UnconditionalSelectedCopyLocalIndex P d N m))
    (selectedB :
      POVM B (UnconditionalSelectedCopyLocalIndex P d N m))
    (selectedA_eq :
      selectedA =
        directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m) PA)
    (selectedB_eq :
      selectedB =
        directDSVActualReindexedRetainedPOVM
          (physical8SelectedGlobalTargetWorkEquiv P N d m) PB)
    (eA : ι ≃ UnconditionalSelectedCopyLocalIndex P d N m × R)
    (eB : κ ≃ UnconditionalSelectedCopyLocalIndex P d N m × R)
    (pair : R × R ≃ T)
    (rawA : POVM A ι) (rawB : POVM B κ)
    (rawA_eq :
      rawA =
        directDSVActualReindexedRetainedPOVM eA
          (directDSVActualReindexedRetainedPOVM
            (physical8SelectedGlobalTargetWorkEquiv P N d m)
            (unitaryConjugatePOVM alice PA)))
    (rawB_eq :
      rawB =
        directDSVActualReindexedRetainedPOVM eB
          (directDSVActualReindexedRetainedPOVM
            (physical8SelectedGlobalTargetWorkEquiv P N d m)
            (unitaryConjugatePOVM bob PB)))
    (x : X) (y : Y)
    (z : EuclideanSpace ℂ (ι × κ))
    (source cleaned : EuclideanSpace ℂ
      ((UnconditionalSelectedCopyLocalIndex P d N m ×
        UnconditionalSelectedCopyLocalIndex P d N m) × T))
    (source_eq : source = cleaned)
    (decoded :
      unconditionalMixedConjugateSelectedBranchLocalAction
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P alice)
        (unconditionalMixedConjugateSigmaAtomLift
          (m := N * m) P bob)
        (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
          (Equiv.prodCongr
            (Equiv.refl
              (UnconditionalSelectedCopyLocalIndex P d N m ×
               UnconditionalSelectedCopyLocalIndex P d N m))
            pair)
          (LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
            (directDSVActualBilateralRetainedIndexEquiv
              eA eB) z)) = cleaned) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          (UnconditionalSelectedCopyLocalIndex P d N m ×
           UnconditionalSelectedCopyLocalIndex P d N m) × T)
        (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          selectedA selectedB x y ⊗ₖ (1 : Matrix T T ℂ))) source =
      quadraticExpectation
        (Matrix.toEuclideanCLM (n := ι × κ) (𝕜 := ℂ)
          (directDSVActualLocalPOVMWinningEffect G
            rawA rawB x y)) z := by
  subst rawA
  subst rawB
  calc
    _ = quadraticExpectation
        (Matrix.toEuclideanCLM
          (n :=
            (UnconditionalSelectedCopyLocalIndex P d N m ×
             UnconditionalSelectedCopyLocalIndex P d N m) × T)
          (𝕜 := ℂ)
          (directDSVActualLocalPOVMWinningEffect G
            selectedA selectedB x y ⊗ₖ (1 : Matrix T T ℂ))) cleaned :=
      congrArg
        (fun v : EuclideanSpace ℂ
            ((UnconditionalSelectedCopyLocalIndex P d N m ×
              UnconditionalSelectedCopyLocalIndex P d N m) × T) =>
          quadraticExpectation
            (Matrix.toEuclideanCLM
              (n :=
                (UnconditionalSelectedCopyLocalIndex P d N m ×
                 UnconditionalSelectedCopyLocalIndex P d N m) × T)
              (𝕜 := ℂ)
              (directDSVActualLocalPOVMWinningEffect G
                selectedA selectedB x y ⊗ₖ (1 : Matrix T T ℂ))) v)
        source_eq
    _ = _ :=
      unconditionalActualC485SourceSelectedDecodedWinningBorn
        G alice bob PA PB selectedA selectedB selectedA_eq selectedB_eq
        eA eB pair x y z cleaned decoded
