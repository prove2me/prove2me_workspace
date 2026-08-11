import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_26
import Theorems.Thm_QuantumParallelRepetition_embezzlementState_norm
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Notation.Pi.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
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
import Mathlib.Data.Complex.BigOperators
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.FinEnum
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.Order.Basic
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Order.Lattice
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
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

theorem unconditionalMatchedVerifierEffect_tensor_quadratic
    {s t : Type*} [Fintype s] [Fintype t]
    [DecidableEq s] [DecidableEq t]
    (operator : Matrix s s ℂ)
    (target : EuclideanSpace ℂ s)
    (work : EuclideanSpace ℂ t) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := s × t) (𝕜 := ℂ)
        (operator ⊗ₖ (1 : Matrix t t ℂ)))
      (unconditionalMatchedVerifierTensor target work) =
      ‖work‖ ^ 2 *
        quadraticExpectation
          (Matrix.toEuclideanCLM (n := s) (𝕜 := ℂ) operator)
          target := by
  classical
  rw [matrixQuadraticExpectation_expand,
    matrixQuadraticExpectation_expand]
  have residual_complex :
      (∑ k : t, work k * star (work k)) =
        (↑(‖work‖ ^ 2) : ℂ) := by
    calc
      (∑ k : t, work k * star (work k)) =
          (↑(∑ k : t, ‖work k‖ ^ 2) : ℂ) := by
            push_cast
            apply Finset.sum_congr rfl
            intro k _
            simpa [Complex.normSq_eq_norm_sq] using
              Complex.mul_conj (work k)
      _ = (↑(‖work‖ ^ 2) : ℂ) := by
            rw [← EuclideanSpace.norm_sq_eq]
  change
    (∑ i : s × t,
      (∑ j : s × t,
        (operator i.1 j.1 * (if i.2 = j.2 then 1 else 0)) *
          (target j.1 * work j.2)) *
        star (target i.1 * work i.2)).re =
      ‖work‖ ^ 2 *
        (∑ i : s, (∑ j : s, operator i j * target j) *
          star (target i)).re
  rw [Fintype.sum_prod_type]
  have complex_factor :
      (∑ i : s, ∑ k : t,
        (∑ j : s × t,
          (operator i j.1 * (if k = j.2 then 1 else 0)) *
            (target j.1 * work j.2)) *
          star (target i * work k)) =
        (∑ i : s,
          (∑ j : s, operator i j * target j) * star (target i)) *
          (↑(‖work‖ ^ 2) : ℂ) := by
    calc
      (∑ i : s, ∑ k : t,
        (∑ j : s × t,
          (operator i j.1 * (if k = j.2 then 1 else 0)) *
            (target j.1 * work j.2)) *
          star (target i * work k)) =
        ∑ i : s, ∑ k : t,
          ((∑ j : s, operator i j * target j) * work k) *
            star (target i * work k) := by
              apply Finset.sum_congr rfl
              intro i _
              apply Finset.sum_congr rfl
              intro k _
              congr 1
              rw [Fintype.sum_prod_type]
              simp [mul_ite, ite_mul, Finset.sum_mul, mul_assoc]
      _ = ∑ i : s,
        ((∑ j : s, operator i j * target j) * star (target i)) *
          (∑ k : t, work k * star (work k)) := by
            apply Finset.sum_congr rfl
            intro i _
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro k _
            simp only [star_mul]
            ring
      _ = (∑ i : s,
          (∑ j : s, operator i j * target j) * star (target i)) *
          (↑(‖work‖ ^ 2) : ℂ) := by
            rw [residual_complex, Finset.sum_mul]
  rw [complex_factor, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im]
  ring

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

@[simp] theorem unconditionalConjugatePureVector_apply
    {ι : Type*} [Fintype ι]
    (z : EuclideanSpace ℂ ι) (i : ι) :
    unconditionalConjugatePureVector z i = star (z i) := by
  rfl

theorem unconditionalConjugatePureVector_norm_sq
    {ι : Type*} [Fintype ι] (z : EuclideanSpace ℂ ι) :
    ‖unconditionalConjugatePureVector z‖ ^ 2 = ‖z‖ ^ 2 := by
  simp [EuclideanSpace.norm_sq_eq]

theorem unconditionalConjugatePureVector_norm
    {ι : Type*} [Fintype ι] (z : EuclideanSpace ℂ ι) :
    ‖unconditionalConjugatePureVector z‖ = ‖z‖ := by
  have squares := unconditionalConjugatePureVector_norm_sq z
  nlinarith [norm_nonneg (unconditionalConjugatePureVector z),
    norm_nonneg z]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

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

theorem directDSVActualReindexedRetainedPOVMWinningEffect_tensor_quadratic
    {X Y A B s t u v ι κ : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [Fintype u] [Fintype v]
    [Fintype ι] [Fintype κ]
    [DecidableEq s] [DecidableEq t] [DecidableEq u] [DecidableEq v]
    [DecidableEq ι] [DecidableEq κ]
    (G : Game X Y A B)
    (eA : ι ≃ s × t) (eB : κ ≃ u × v)
    (PA : POVM A s) (PB : POVM B u)
    (x : X) (y : Y)
    (z : EuclideanSpace ℂ (ι × κ))
    (target : EuclideanSpace ℂ (s × u))
    (work : EuclideanSpace ℂ (t × v))
    (selected :
      LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
        (directDSVActualBilateralRetainedIndexEquiv eA eB) z =
          unconditionalMatchedVerifierTensor target work) :
    quadraticExpectation
      (Matrix.toEuclideanCLM (n := ι × κ) (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (directDSVActualReindexedRetainedPOVM eA PA)
          (directDSVActualReindexedRetainedPOVM eB PB)
          x y)) z =
      ‖work‖ ^ 2 *
        quadraticExpectation
          (Matrix.toEuclideanCLM (n := s × u) (𝕜 := ℂ)
            (directDSVActualLocalPOVMWinningEffect G PA PB x y))
          target := by
  rw [directDSVActualReindexedRetainedPOVMWinningEffect,
    directDSVActualReindexedWinningEffect_quadratic,
    selected, unconditionalMatchedVerifierEffect_tensor_quadratic]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalActualFairSourcePhaseHarmonicWork_norm
    {P k : ℕ} (phases : 0 < P) (harmonic : 0 < k) :
    ‖unconditionalActualFairSourcePhaseHarmonicWork P k‖ = 1 := by
  unfold unconditionalActualFairSourcePhaseHarmonicWork
  rw [LinearIsometryEquiv.norm_map,
    unconditionalMatchedVerifierTensor_norm,
    ePRState_norm P phases,
    embezzlementState_norm k harmonic]
  norm_num

theorem unconditionalActualFairSourcePhaseHarmonicStage_sourceProduct
    {P N d m : ℕ}
    (ψ : EuclideanSpace ℂ (Fin d × Fin d)) :
    LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
        (directDSVActualBilateralRetainedIndexEquiv
          (physical8SelectedGlobalTargetWorkEquiv P N d m)
          (physical8SelectedGlobalTargetWorkEquiv P N d m))
        (dSVDensityRationalPublicBucketCoherentPhaseSigmaState P
          (unconditionalConjugatePureVector ψ)
          (fun _ _ _ => embezzlementState (N * m))) =
      unconditionalMatchedVerifierTensor
        (unconditionalConjugatePureVector ψ)
        (unconditionalActualFairSourcePhaseHarmonicWork
          P (N * m)) := by
  classical
  ext ⟨⟨i, j⟩, ⟨⟨p, a⟩, ⟨q, b⟩⟩⟩
  simp [LinearIsometryEquiv.piLpCongrLeft_apply,
    directDSVActualBilateralRetainedIndexEquiv,
    physical8SelectedGlobalTargetWorkEquiv,
    dSVDensityRationalPublicBucketCoherentPhaseSigmaState,
    dSVUniformDensityCorrectedMatchedSigmaWeightedResidual,
    dSVDensityRationalPublicBucketCoherentPhaseHistory,
    unconditionalMatchedVerifierTensor,
    unconditionalActualFairSourcePhaseHarmonicWork,
    mul_assoc, mul_left_comm, mul_comm]

theorem unconditionalActualFairSourceSelectedBorn_of_base
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N m : ℕ} (phases : 0 < P) (grid : 0 < N)
    (harmonic : 0 < m)
    (x : X) (y : Y)
    (ψ : EuclideanSpace ℂ
      (Fin (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)) ×
       Fin (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))))
    (value : ℝ)
    (base_born :
      quadraticExpectation
        (unconditionalActualFairSourceBaseWinningCLM
          G n S D a₀ b₀ x y)
        (unconditionalConjugatePureVector ψ) = value) :
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          UnconditionalSelectedCopyLocalIndex
            P (Fintype.card
              (ExactGlobalHistoryLocalIndex G n S D)) N m ×
          UnconditionalSelectedCopyLocalIndex
            P (Fintype.card
              (ExactGlobalHistoryLocalIndex G n S D)) N m)
        (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (integratorActualC485SelectedAlicePOVM
            G n S D a₀ P N m x)
          (integratorActualC485SelectedBobPOVM
            G n S D b₀ P N m y) x y))
      (dSVDensityRationalPublicBucketCoherentPhaseSigmaState P
        (unconditionalConjugatePureVector ψ)
        (fun _ _ _ => embezzlementState (N * m))) = value := by
  classical
  let d : ℕ :=
    Fintype.card (ExactGlobalHistoryLocalIndex G n S D)
  let e := physical8SelectedGlobalTargetWorkEquiv P N d m
  let stage := dSVDensityRationalPublicBucketCoherentPhaseSigmaState P
    (unconditionalConjugatePureVector ψ)
    (fun _ _ _ => embezzlementState (N * m))
  let work := unconditionalActualFairSourcePhaseHarmonicWork
    P (N * m)
  have work_unit : ‖work‖ = 1 :=
    unconditionalActualFairSourcePhaseHarmonicWork_norm
      phases (Nat.mul_pos grid harmonic)
  change
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          UnconditionalSelectedCopyLocalIndex P d N m ×
          UnconditionalSelectedCopyLocalIndex P d N m)
        (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (directDSVActualReindexedRetainedPOVM e
            (integratorActualC485SourceAlicePOVM G n S D a₀ x))
          (directDSVActualReindexedRetainedPOVM e
            (integratorActualC485SourceBobPOVM G n S D b₀ y)) x y))
      stage = value
  rw [directDSVActualReindexedRetainedPOVMWinningEffect_tensor_quadratic
    G e e
    (integratorActualC485SourceAlicePOVM G n S D a₀ x)
    (integratorActualC485SourceBobPOVM G n S D b₀ y)
    x y stage (unconditionalConjugatePureVector ψ) work
    (unconditionalActualFairSourcePhaseHarmonicStage_sourceProduct ψ)]
  change
    ‖work‖ ^ 2 *
      quadraticExpectation
        (unconditionalActualFairSourceBaseWinningCLM
          G n S D a₀ b₀ x y)
        (unconditionalConjugatePureVector ψ) = value
  rw [work_unit, one_pow, one_mul, base_born]

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
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (phases : 0 < P) (grid : 0 < N)
    (harmonic : 0 < m)
    (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (ξ ζ : BipartiteUnitVector
      (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)))
    (ψ : EuclideanSpace ℂ
      (Fin (Fintype.card (ExactGlobalHistoryLocalIndex G n S D)) ×
       Fin (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))))
    (ψ_unit : ‖ψ‖ = 1)
    (j : Fin L) (x : X) (y : Y) (value : ℝ)
    (base_born :
      quadraticExpectation
        (unconditionalActualFairSourceBaseWinningCLM
          G n S D a₀ b₀ x y)
        (unconditionalConjugatePureVector ψ) = value) :
    quadraticExpectation
      (integratorActualC485WinningEffect
        G n S D a₀ b₀ (P := P) (N := N) (m := m) j x y)
      (integratorActualC485SourceVector
        (B := P) (N := N) (m := m) width schedule ξ ζ ψ j) =
      ‖integratorActualC485SourceVector
        (B := P) (N := N) (m := m) width schedule ξ ζ ψ j‖ ^ 2 * value := by
  classical
  let d : ℕ :=
    Fintype.card (ExactGlobalHistoryLocalIndex G n S D)
  let stage := dSVDensityRationalPublicBucketCoherentPhaseSigmaState P
    (unconditionalConjugatePureVector ψ)
    (fun _ _ _ => embezzlementState (N * m))
  let retained := integratorActualC485NormalizedDiagonalWork
    (B := P) (N := N) width schedule ξ ζ j
  have selected_born :
      quadraticExpectation
        (Matrix.toEuclideanCLM
          (n :=
            UnconditionalSelectedCopyLocalIndex P d N m ×
            UnconditionalSelectedCopyLocalIndex P d N m)
          (𝕜 := ℂ)
          (directDSVActualLocalPOVMWinningEffect G
            (integratorActualC485SelectedAlicePOVM
              G n S D a₀ P N m x)
            (integratorActualC485SelectedBobPOVM
              G n S D b₀ P N m y) x y))
        stage = value :=
    unconditionalActualFairSourceSelectedBorn_of_base
      G n S D a₀ b₀ phases grid harmonic x y ψ value base_born
  have stage_unit : ‖stage‖ = 1 := by
    calc
      ‖stage‖ =
          ‖LinearIsometryEquiv.piLpCongrLeft 2 ℂ ℂ
            (directDSVActualBilateralRetainedIndexEquiv
              (physical8SelectedGlobalTargetWorkEquiv P N d m)
              (physical8SelectedGlobalTargetWorkEquiv P N d m))
            stage‖ := by rw [LinearIsometryEquiv.norm_map]
      _ = ‖unconditionalMatchedVerifierTensor
            (unconditionalConjugatePureVector ψ)
            (unconditionalActualFairSourcePhaseHarmonicWork
              P (N * m))‖ := by
              rw [unconditionalActualFairSourcePhaseHarmonicStage_sourceProduct]
      _ = 1 := by
            rw [unconditionalMatchedVerifierTensor_norm,
              unconditionalConjugatePureVector_norm, ψ_unit,
              unconditionalActualFairSourcePhaseHarmonicWork_norm
                phases (Nat.mul_pos grid harmonic)]
            norm_num
  change
    quadraticExpectation
      (Matrix.toEuclideanCLM
        (n :=
          (UnconditionalSelectedCopyLocalIndex P d N m ×
           UnconditionalSelectedCopyLocalIndex P d N m) ×
          IntegratorActualC485RetainedIndex 1 P N d L j)
        (𝕜 := ℂ)
        (directDSVActualLocalPOVMWinningEffect G
          (integratorActualC485SelectedAlicePOVM
            G n S D a₀ P N m x)
          (integratorActualC485SelectedBobPOVM
            G n S D b₀ P N m y) x y ⊗ₖ
          (1 : Matrix
            (IntegratorActualC485RetainedIndex 1 P N d L j)
            (IntegratorActualC485RetainedIndex 1 P N d L j) ℂ)))
      (unconditionalMatchedVerifierTensor stage retained) =
        ‖unconditionalMatchedVerifierTensor stage retained‖ ^ 2 * value
  rw [unconditionalMatchedVerifierEffect_tensor_quadratic,
    selected_born, unconditionalMatchedVerifierTensor_norm_sq,
    stage_unit]
  ring
