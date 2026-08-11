import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_28
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactGlobalHistoryLocalIndex_card_pos
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourceBaseSupportedBorn
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourceOuterBorn_of_base
import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairCleanedRow_le_one
import Theorems.Thm_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_width_all
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.NonUnitalHom
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Action.Pi
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Action.Pi
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.StarAlgHom
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order
import Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap
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
import Mathlib.Analysis.InnerProductSpace.StarOrder
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Operator.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.FinEnum
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
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
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
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

theorem positive_complement_quadraticExpectation_le
    (W : H →L[ℂ] H)
    (h_complement : (1 - W).IsPositive) (z : H) :
    quadraticExpectation W z ≤ ‖z‖ ^ 2 := by
  have h := h_complement.re_inner_nonneg_right z
  have hnorm : (⟪z, z⟫_ℂ).re = ‖z‖ ^ 2 := by
    rw [inner_self_eq_norm_sq_to_K]
    simp [pow_two, Complex.mul_re]
  change 0 ≤ (⟪z, z - W z⟫_ℂ).re at h
  rw [inner_sub_right, Complex.sub_re, hnorm] at h
  unfold quadraticExpectation
  exact sub_nonneg.mp h

end

noncomputable section

open scoped BigOperators ComplexOrder MatrixOrder Matrix.Norms.L2Operator

theorem matrixEffectCLM_isPositive
    {d : Type*} [Fintype d] [DecidableEq d]
    (E : Matrix d d ℂ) (hE : E.PosSemidef) :
    (Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) E).IsPositive := by
  apply (ContinuousLinearMap.isPositive_toLinearMap_iff _).mp
  exact Matrix.isPositive_toEuclideanLin_iff.mpr hE

theorem matrixEffectCLM_complement_isPositive
    {d : Type*} [Fintype d] [DecidableEq d]
    (E : Matrix d d ℂ) (hE : (1 - E).PosSemidef) :
    (1 - Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) E).IsPositive := by
  simpa using matrixEffectCLM_isPositive (1 - E) hE

theorem matrixEffectCLM_norm_le_one
    {d : Type*} [Fintype d] [DecidableEq d]
    (E : Matrix d d ℂ) (hE : E.PosSemidef)
    (h_complement : (1 - E).PosSemidef) :
    ‖Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) E‖ ≤ 1 := by
  have h_positive := matrixEffectCLM_isPositive E hE
  have h_nonneg :
      0 ≤ Matrix.toEuclideanCLM (n := d) (𝕜 := ℂ) E :=
    (ContinuousLinearMap.nonneg_iff_isPositive _).mpr h_positive
  apply (CStarAlgebra.norm_le_one_iff_of_nonneg _ h_nonneg).mpr
  exact (ContinuousLinearMap.le_def _ _).mpr
    (matrixEffectCLM_complement_isPositive E h_complement)

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceTuplePsi_norm
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (t : ExactLocallySampleableTuple X Y A B D) :
    ‖exactSourceTuplePsi G n S D t‖ = 1 :=
  (exactGlobalHistoryFinPsi
    G n S D t.2.2.2 t.2.1 t.2.2.1).property

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalMatchedVerifierEffect_tensor_complement
    {s t : Type*} [Fintype s] [Fintype t]
    [DecidableEq s] [DecidableEq t]
    (operator : Matrix s s ℂ) :
    (1 : Matrix (s × t) (s × t) ℂ) -
        (operator ⊗ₖ (1 : Matrix t t ℂ)) =
      (1 - operator) ⊗ₖ (1 : Matrix t t ℂ) := by
  classical
  ext ⟨i, k⟩ ⟨j, l⟩
  by_cases same_target : i = j
  · subst j
    by_cases same_work : k = l
    · subst l
      simp [Matrix.kroneckerMap_apply]
    · simp [Matrix.kroneckerMap_apply, same_work]
  · by_cases same_work : k = l
    · subst l
      simp [Matrix.kroneckerMap_apply, same_target]
    · simp [Matrix.kroneckerMap_apply, same_target, same_work]

theorem unconditionalMatchedVerifierEffect_tensor_posSemidef
    {s t : Type*} [Fintype s] [Fintype t]
    [DecidableEq s] [DecidableEq t]
    (operator : Matrix s s ℂ)
    (positive : operator.PosSemidef) :
    (operator ⊗ₖ (1 : Matrix t t ℂ)).PosSemidef :=
  positive.kronecker Matrix.PosSemidef.one

theorem unconditionalMatchedVerifierEffect_tensor_complement_posSemidef
    {s t : Type*} [Fintype s] [Fintype t]
    [DecidableEq s] [DecidableEq t]
    (operator : Matrix s s ℂ)
    (complement : (1 - operator).PosSemidef) :
    ((1 : Matrix (s × t) (s × t) ℂ) -
      (operator ⊗ₖ (1 : Matrix t t ℂ))).PosSemidef := by
  rw [unconditionalMatchedVerifierEffect_tensor_complement]
  exact complement.kronecker Matrix.PosSemidef.one

theorem unconditionalMatchedVerifierEffect_tensor_norm_le_one
    {s t : Type*} [Fintype s] [Fintype t]
    [DecidableEq s] [DecidableEq t]
    (operator : Matrix s s ℂ)
    (positive : operator.PosSemidef)
    (complement : (1 - operator).PosSemidef) :
    ‖Matrix.toEuclideanCLM (n := s × t) (𝕜 := ℂ)
        (operator ⊗ₖ (1 : Matrix t t ℂ))‖ ≤ 1 := by
  exact matrixEffectCLM_norm_le_one
    (operator ⊗ₖ (1 : Matrix t t ℂ))
    (unconditionalMatchedVerifierEffect_tensor_posSemidef
      operator positive)
    (unconditionalMatchedVerifierEffect_tensor_complement_posSemidef
      operator complement)

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem unconditionalExactFairGammaUnit_eq_global
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (u : ExactLocallySampleableTuple X Y A B D) :
    unconditionalExactFairGammaUnit G n S D u =
      exactGlobalHistoryFinGamma
        G n S D u.2.2.2 u.2.1 := by
  apply Subtype.ext
  rfl

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalActualFairSourceSupportedBorn
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (a₀ : A) (b₀ : B)
    (h : ExactLocallySampleableTuple X Y A B D)
    (supported : exactLocallySampleableLaw G n S D h ≠ 0)
    {P N L m : ℕ} (phases : 0 < P) (grid : 0 < N)
    (harmonic : 0 < m)
    (width : Fin 1 → ℝ) (schedule : Fin L → Fin 1)
    (j : Fin L) :
    quadraticExpectation
      (integratorActualC485WinningEffect
        G n S D a₀ b₀ (P := P) (N := N) (m := m)
        j h.2.1 h.2.2.1)
      (integratorActualC485SourceVector
        (B := P) (N := N) (m := m) width schedule
        (exactGlobalHistoryFinGamma G n S D h.2.2.2 h.2.1)
        (exactGlobalHistoryFinPhi G n S D h.2.2.2 h.2.2.1)
        (exactSourceTuplePsi G n S D h) j) =
      ‖integratorActualC485SourceVector
        (B := P) (N := N) (m := m) width schedule
        (exactGlobalHistoryFinGamma G n S D h.2.2.2 h.2.1)
        (exactGlobalHistoryFinPhi G n S D h.2.2.2 h.2.2.1)
        (exactSourceTuplePsi G n S D h) j‖ ^ 2 *
        exactSourceConditionalWinningProbability G n S D h := by
  classical
  exact
    unconditionalActualFairSourceOuterBorn_of_base
      G n S D a₀ b₀ phases grid harmonic width schedule
      (exactGlobalHistoryFinGamma G n S D h.2.2.2 h.2.1)
      (exactGlobalHistoryFinPhi G n S D h.2.2.2 h.2.2.1)
      (exactSourceTuplePsi G n S D h)
      (exactSourceTuplePsi_norm G n S D h)
      j h.2.1 h.2.2.1
      (exactSourceConditionalWinningProbability G n S D h)
      (unconditionalActualFairSourceBaseSupportedBorn
        G n S D positive a₀ b₀ h supported)

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

theorem unconditionalActualLocalPOVMWinningEffect_posSemidef
    {X Y A B s t : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [DecidableEq s] [DecidableEq t]
    (G : Game X Y A B) (PA : POVM A s) (PB : POVM B t)
    (x : X) (y : Y) :
    (directDSVActualLocalPOVMWinningEffect
      G PA PB x y).PosSemidef := by
  classical
  apply Matrix.nonneg_iff_posSemidef.mp
  unfold directDSVActualLocalPOVMWinningEffect
  apply Finset.sum_nonneg
  intro a _
  apply Finset.sum_nonneg
  intro b _
  split
  · exact ((PA.positive a).kronecker (PB.positive b)).nonneg
  · exact le_rfl

theorem unconditionalActualLocalPOVMLosingEffect_posSemidef
    {X Y A B s t : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [DecidableEq s] [DecidableEq t]
    (G : Game X Y A B) (PA : POVM A s) (PB : POVM B t)
    (x : X) (y : Y) :
    (unconditionalActualLocalPOVMLosingEffect
      G PA PB x y).PosSemidef := by
  classical
  apply Matrix.nonneg_iff_posSemidef.mp
  unfold unconditionalActualLocalPOVMLosingEffect
  apply Finset.sum_nonneg
  intro a _
  apply Finset.sum_nonneg
  intro b _
  split
  · exact le_rfl
  · exact ((PA.positive a).kronecker (PB.positive b)).nonneg

theorem unconditionalActualLocalPOVMWinningEffect_add_losingEffect
    {X Y A B s t : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [DecidableEq s] [DecidableEq t]
    (G : Game X Y A B) (PA : POVM A s) (PB : POVM B t)
    (x : X) (y : Y) :
    directDSVActualLocalPOVMWinningEffect G PA PB x y +
      unconditionalActualLocalPOVMLosingEffect G PA PB x y = 1 := by
  classical
  change
    (∑ a : A, ∑ b : B,
      if G.predicate x y a b = true
      then PA.operator a ⊗ₖ PB.operator b else 0) +
      (∑ a : A, ∑ b : B,
        if G.predicate x y a b = true
        then 0 else PA.operator a ⊗ₖ PB.operator b) = 1
  calc
    _ = ∑ a : A, ∑ b : B, PA.operator a ⊗ₖ PB.operator b := by
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro a _
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro b _
      split <;> simp
    _ = (∑ a : A, PA.operator a) ⊗ₖ
          (∑ b : B, PB.operator b) := by
      ext ⟨i, j⟩ ⟨k, l⟩
      simp only [Matrix.sum_apply, Matrix.kroneckerMap_apply]
      rw [Finset.sum_mul]
      simp_rw [Finset.mul_sum]
    _ = 1 := by
      rw [PA.complete, PB.complete]
      exact Matrix.one_kronecker_one

theorem unconditionalActualLocalPOVMWinningEffect_complement_posSemidef
    {X Y A B s t : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Fintype s] [Fintype t] [DecidableEq s] [DecidableEq t]
    (G : Game X Y A B) (PA : POVM A s) (PB : POVM B t)
    (x : X) (y : Y) :
    (1 - directDSVActualLocalPOVMWinningEffect
      G PA PB x y).PosSemidef := by
  have complete :=
    unconditionalActualLocalPOVMWinningEffect_add_losingEffect
      G PA PB x y
  have partition :
      1 - directDSVActualLocalPOVMWinningEffect
          G PA PB x y =
        unconditionalActualLocalPOVMLosingEffect
          G PA PB x y := by
    calc
      _ =
          (directDSVActualLocalPOVMWinningEffect
              G PA PB x y +
            unconditionalActualLocalPOVMLosingEffect
              G PA PB x y) -
            directDSVActualLocalPOVMWinningEffect
              G PA PB x y := by rw [complete]
      _ = _ := by abel
  rw [partition]
  exact unconditionalActualLocalPOVMLosingEffect_posSemidef
    G PA PB x y

theorem unconditionalActualFairSourceVerifier_isPositive
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (j : Fin L) (x : X) (y : Y) :
    (integratorActualC485WinningEffect
      (P := P) (N := N) (m := m)
      G n S D a₀ b₀ j x y).IsPositive := by
  classical
  unfold integratorActualC485WinningEffect
  apply matrixEffectCLM_isPositive
  apply unconditionalMatchedVerifierEffect_tensor_posSemidef
  exact unconditionalActualLocalPOVMWinningEffect_posSemidef
    G
    (integratorActualC485SelectedAlicePOVM
      G n S D a₀ P N m x)
    (integratorActualC485SelectedBobPOVM
      G n S D b₀ P N m y) x y

theorem unconditionalActualFairSourceVerifier_complement_isPositive
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (j : Fin L) (x : X) (y : Y) :
    (1 - integratorActualC485WinningEffect
      (P := P) (N := N) (m := m)
      G n S D a₀ b₀ j x y).IsPositive := by
  classical
  unfold integratorActualC485WinningEffect
  apply matrixEffectCLM_complement_isPositive
  apply unconditionalMatchedVerifierEffect_tensor_complement_posSemidef
  exact unconditionalActualLocalPOVMWinningEffect_complement_posSemidef
    G
    (integratorActualC485SelectedAlicePOVM
      G n S D a₀ P N m x)
    (integratorActualC485SelectedBobPOVM
      G n S D b₀ P N m y) x y

theorem unconditionalActualFairSourceVerifier_norm_le_one
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (j : Fin L) (x : X) (y : Y) :
    ‖integratorActualC485WinningEffect
      (P := P) (N := N) (m := m)
      G n S D a₀ b₀ j x y‖ ≤ 1 := by
  classical
  unfold integratorActualC485WinningEffect
  apply unconditionalMatchedVerifierEffect_tensor_norm_le_one
  · exact unconditionalActualLocalPOVMWinningEffect_posSemidef
      G
      (integratorActualC485SelectedAlicePOVM
        G n S D a₀ P N m x)
      (integratorActualC485SelectedBobPOVM
        G n S D b₀ P N m y) x y
  · exact unconditionalActualLocalPOVMWinningEffect_complement_posSemidef
      G
      (integratorActualC485SelectedAlicePOVM
        G n S D a₀ P N m x)
      (integratorActualC485SelectedBobPOVM
        G n S D b₀ P N m y) x y

theorem unconditionalActualFairSourceVerifier_born_nonnegative
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (j : Fin L) (x : X) (y : Y)
    (z : IntegratorActualC485BranchSpace
      1 P N
        (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
        L m j) :
    0 ≤ quadraticExpectation
      (integratorActualC485WinningEffect
        (P := P) (N := N) (m := m)
        G n S D a₀ b₀ j x y) z :=
  positive_quadraticExpectation_nonneg _
    (unconditionalActualFairSourceVerifier_isPositive
      G n S D a₀ b₀ j x y) z

theorem unconditionalActualFairSourceVerifier_born_le_mass
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ} (j : Fin L) (x : X) (y : Y)
    (z : IntegratorActualC485BranchSpace
      1 P N
        (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
        L m j) :
    quadraticExpectation
      (integratorActualC485WinningEffect
        (P := P) (N := N) (m := m)
        G n S D a₀ b₀ j x y) z ≤ ‖z‖ ^ 2 :=
  positive_complement_quadraticExpectation_le _
    (unconditionalActualFairSourceVerifier_complement_isPositive
      G n S D a₀ b₀ j x y) z

theorem unconditionalActualFairSourceVerifier_historyBorn_bounds
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ}
    (actual : (h : ExactLocallySampleableTuple X Y A B D) →
      (j : Fin L) →
      IntegratorActualC485BranchSpace
        1 P N
          (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
          L m j)
    (actual_row_mass :
      ∀ h : ExactLocallySampleableTuple X Y A B D,
        (∑ j : Fin L, ‖actual h j‖ ^ 2) ≤ 1)
    (h : ExactLocallySampleableTuple X Y A B D) :
    0 ≤
      (∑ j : Fin L,
        quadraticExpectation
          (integratorActualC485WinningEffect
            (P := P) (N := N) (m := m)
            G n S D a₀ b₀ j h.2.1 h.2.2.1)
          (actual h j)) ∧
      (∑ j : Fin L,
        quadraticExpectation
          (integratorActualC485WinningEffect
            (P := P) (N := N) (m := m)
            G n S D a₀ b₀ j h.2.1 h.2.2.1)
          (actual h j)) ≤ 1 := by
  constructor
  · apply Finset.sum_nonneg
    intro j _
    exact unconditionalActualFairSourceVerifier_born_nonnegative
      G n S D a₀ b₀ j h.2.1 h.2.2.1 (actual h j)
  · calc
      _ ≤ ∑ j : Fin L, ‖actual h j‖ ^ 2 := by
        apply Finset.sum_le_sum
        intro j _
        exact unconditionalActualFairSourceVerifier_born_le_mass
          G n S D a₀ b₀ j h.2.1 h.2.2.1 (actual h j)
      _ ≤ 1 := actual_row_mass h

theorem unconditionalActualFairSourceVerifier_historyBorn_nonnegative
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ}
    (actual : (h : ExactLocallySampleableTuple X Y A B D) →
      (j : Fin L) →
      IntegratorActualC485BranchSpace
        1 P N
          (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
          L m j)
    (actual_row_mass :
      ∀ h : ExactLocallySampleableTuple X Y A B D,
        (∑ j : Fin L, ‖actual h j‖ ^ 2) ≤ 1)
    (h : ExactLocallySampleableTuple X Y A B D) :
    0 ≤
      (∑ j : Fin L,
        quadraticExpectation
          (integratorActualC485WinningEffect
            (P := P) (N := N) (m := m)
            G n S D a₀ b₀ j h.2.1 h.2.2.1)
          (actual h j)) :=
  (unconditionalActualFairSourceVerifier_historyBorn_bounds
    G n S D a₀ b₀ actual actual_row_mass h).1

theorem unconditionalActualFairSourceVerifier_historyBorn_bounded
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (a₀ : A) (b₀ : B)
    {P N L m : ℕ}
    (actual : (h : ExactLocallySampleableTuple X Y A B D) →
      (j : Fin L) →
      IntegratorActualC485BranchSpace
        1 P N
          (Fintype.card (ExactGlobalHistoryLocalIndex G n S D))
          L m j)
    (actual_row_mass :
      ∀ h : ExactLocallySampleableTuple X Y A B D,
        (∑ j : Fin L, ‖actual h j‖ ^ 2) ≤ 1)
    (h : ExactLocallySampleableTuple X Y A B D) :
    (∑ j : Fin L,
      quadraticExpectation
        (integratorActualC485WinningEffect
          (P := P) (N := N) (m := m)
          G n S D a₀ b₀ j h.2.1 h.2.2.1)
        (actual h j)) ≤ 1 :=
  (unconditionalActualFairSourceVerifier_historyBorn_bounds
    G n S D a₀ b₀ actual actual_row_mass h).2

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

namespace UnconditionalActualFairSourceRoundingContext

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable {G : Game X Y A B} {n : ℕ} {S : Strategy (G.repeat n)}
variable {D : Finset (Fin n)} {alpha gamma : ℝ}

theorem dimension_pos
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) : 0 < d c :=
  exactGlobalHistoryLocalIndex_card_pos G n S D

end UnconditionalActualFairSourceRoundingContext

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

open QuantumParallelRepetition.ClassicalSampling
open UnconditionalActualFairSourceRoundingContext

attribute [local instance] Classical.propDecidable

theorem unconditionalActualFairSourceRoundingContext_actualRow
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {G : Game X Y A B} {n : ℕ} {S : Strategy (G.repeat n)}
    {D : Finset (Fin n)} {alpha gamma : ℝ}
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma)
    (h : ExactLocallySampleableTuple X Y A B D) :
    (∑ j : Fin c.stopping.L, ‖actual c (h, j)‖ ^ 2) ≤ 1 := by
  exact unconditionalActualFairCleanedRow_le_one
    c.stopping.phases c.stopping.grid (dimension_pos c)
    c.stopping.harmonic (width c) (width_all c) (schedule c)
    (gammaVector c h) (phiVector c h)
    c.stopping.Q c.stopping.UA c.stopping.UB

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
open QuantumParallelRepetition.ClassicalSampling
attribute [local instance] Classical.propDecidable

theorem solution
    {X Y A B : Type}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    {G : Game X Y A B} {n : ℕ} {S : Strategy (G.repeat n)}
    {D : Finset (Fin n)} {alpha gamma : ℝ}
    (c : UnconditionalActualFairSourceRoundingContext
      G n S D alpha gamma) :
    UnconditionalActualFairCachedSourceVerifierLedger
      G n S D c.operator c.actual c.source := by
  classical
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro p
    exact unconditionalActualFairSourceVerifier_norm_le_one
      G n S D c.aliceDefault c.bobDefault
      p.2 p.1.2.1 p.1.2.2.1
  · intro h supported j
    change
      quadraticExpectation
          (integratorActualC485WinningEffect
            (P := c.stopping.P) (N := c.stopping.N)
            (m := c.stopping.m)
            G n S D c.aliceDefault c.bobDefault
            j h.2.1 h.2.2.1)
          (integratorActualC485SourceVector
            (S := 1) (B := c.stopping.P) (N := c.stopping.N)
            (d := c.d) (L := c.stopping.L) (m := c.stopping.m)
            c.width c.schedule
            (unconditionalExactFairGammaUnit G n S D h)
            (exactGlobalHistoryFinPhi
              G n S D h.2.2.2 h.2.2.1)
            (exactSourceTuplePsi G n S D h) j) =
        ‖integratorActualC485SourceVector
            (S := 1) (B := c.stopping.P) (N := c.stopping.N)
            (d := c.d) (L := c.stopping.L) (m := c.stopping.m)
            c.width c.schedule
            (unconditionalExactFairGammaUnit G n S D h)
            (exactGlobalHistoryFinPhi
              G n S D h.2.2.2 h.2.2.1)
            (exactSourceTuplePsi G n S D h) j‖ ^ 2 *
          exactSourceConditionalWinningProbability G n S D h
    rw [unconditionalExactFairGammaUnit_eq_global]
    exact unconditionalActualFairSourceSupportedBorn
      G n S D c.positive c.aliceDefault c.bobDefault h supported
      c.stopping.phases c.stopping.grid c.stopping.harmonic
      c.width c.schedule j
  · intro h
    exact unconditionalActualFairSourceVerifier_historyBorn_nonnegative
      G n S D c.aliceDefault c.bobDefault
      (fun h j => c.actual (h, j))
      (unconditionalActualFairSourceRoundingContext_actualRow c) h
  · intro h
    exact unconditionalActualFairSourceVerifier_historyBorn_bounded
      G n S D c.aliceDefault c.bobDefault
      (fun h j => c.actual (h, j))
      (unconditionalActualFairSourceRoundingContext_actualRow c) h
