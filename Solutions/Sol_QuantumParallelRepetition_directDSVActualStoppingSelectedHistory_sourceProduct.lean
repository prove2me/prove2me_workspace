import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Sub.Defs
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Defs
import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Operator.LinearIsometry
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Fin.SuccPred
import Mathlib.Data.Fin.Tuple.Basic
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Init
import Mathlib.Data.Nat.SuccPred
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Sigma.Basic
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Prod
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Order.Nat
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVUniformDensityIndependentSharedState_apply
    (L N d : ℕ)
    (alice bob :
      DSVUniformDensityIndependentHistoryLocalIndex L N d) :
    dSVUniformDensityIndependentSharedState L N d
        (alice, bob) =
      ∏ j : Fin L,
        dSVUniformDensityThresholdSharedState N d
          (alice j, bob j) := by
  simp [dSVUniformDensityIndependentSharedState,
    dSVUniformDensityIndependentHistoryPairReindex,
    LinearIsometryEquiv.piLpCongrLeft_apply,
    finiteTensorVector,
    bilateralWorkPairEquiv]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

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

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteStoppedOptionalOutcome_some_some
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) (alice bob : Bool) :
    dSVDensityRationalCompleteStoppedOptionalOutcome
        w N ξ ζ (some alice) (some bob) =
      dSVDensityRationalCompleteProjectiveOutcome
        w N ξ ζ alice bob := by
  rw [dSVDensityRationalCompleteProjectiveOutcome_eq_block_action]
  simp [dSVDensityRationalCompleteStoppedOptionalOutcome,
    dSVDensityRationalCompleteStoppedOptionalLocalEffect,
    dSVDensityRationalCompleteProjectiveBinaryPOVM_effect]

theorem dSVDensityRationalCompleteStoppedOptionalOutcome_none_none
    {d : ℕ} (w : ℝ) (N : ℕ)
    (ξ ζ : BipartiteUnitVector d) :
    dSVDensityRationalCompleteStoppedOptionalOutcome
        w N ξ ζ none none =
      dSVUniformDensityThresholdSharedState N d := by
  simp [dSVDensityRationalCompleteStoppedOptionalOutcome,
    dSVDensityRationalCompleteStoppedOptionalLocalEffect]

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_hit
    {L : ℕ} (j : Fin L) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ j.castSucc = some true := by
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    j.isLt]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_before
    {L : ℕ} (j : Fin L) (i : Fin (L + 1))
    (earlier : i.val < j.val) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i = some false := by
  have attempted : i.val < L := lt_trans earlier j.isLt
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    attempted, Fin.succ_ne_zero, earlier]

theorem dSVDensityRationalCompleteStoppedOptionalLocalSchedule_after
    {L : ℕ} (j : Fin L) (i : Fin (L + 1))
    (later : j.val < i.val) :
    dSVDensityRationalCompleteStoppedOptionalLocalSchedule
      L j.succ i = none := by
  have not_before : ¬ i.val < j.val := by omega
  have not_equal : i.val ≠ j.val := by omega
  simp [dSVDensityRationalCompleteStoppedOptionalLocalSchedule,
    Fin.succ_ne_zero, not_before, not_equal]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

attribute [local instance] Classical.propDecidable

theorem
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_before
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (i : Fin (L + 1))
    (before : i.val < j.val) :
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
        width schedule ξ ζ j i =
      dSVDensityRationalCompleteProjectiveOutcome
        (width (schedule
          ⟨i.val, lt_trans before j.isLt⟩))
        N ξ ζ false false := by
  unfold dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
  rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_before
    j i before]
  rw [dSVDensityRationalCompleteStoppedOptionalOutcome_some_some]
  simp [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth,
    lt_trans before j.isLt]

theorem
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_hit
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L) :
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
        width schedule ξ ζ j j.castSucc =
      dSVDensityRationalCompleteProjectiveOutcome
        (width (schedule j)) N ξ ζ true true := by
  unfold dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
  rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_hit]
  rw [dSVDensityRationalCompleteStoppedOptionalOutcome_some_some]
  simp [dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth]

theorem
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_after
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (i : Fin (L + 1))
    (after : j.val < i.val) :
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
        width schedule ξ ζ j i =
      dSVUniformDensityThresholdSharedState N d := by
  unfold dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
  rw [dSVDensityRationalCompleteStoppedOptionalLocalSchedule_after
    j i after]
  exact dSVDensityRationalCompleteStoppedOptionalOutcome_none_none
    (dSVDensityRationalHeterogeneousActualPhysicalFlagBornCopyWidth
      width schedule i) N ξ ζ

theorem
    dSVDensityRationalHeterogeneousActualCommonStopPhysicalState_eq_outcomeProduct
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d) (j : Fin L)
    (alice bob :
      DSVUniformDensityIndependentHistoryLocalIndex
        (L + 1) N d) :
    dSVDensityRationalHeterogeneousActualPhysicalState
        N width schedule ξ ζ
        (⟨j.succ, alice⟩, ⟨j.succ, bob⟩) =
      ∏ i : Fin (L + 1),
        dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j i (alice i, bob i) := by
  exact
    dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags
      width schedule ξ ζ j.succ j.succ alice bob

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder

theorem
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy_eq_actual
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L) (i : Fin j.val) :
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy
        (N := N) width schedule ξ ζ j i =
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
        width schedule ξ ζ j
        ⟨i.val, by omega⟩ := by
  symm
  exact
    dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_before
      width schedule ξ ζ j ⟨i.val, by omega⟩ i.isLt

theorem
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector_apply
    {S N d L : ℕ} (width : Fin S → ℝ)
    (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L)
    (q : Fin j.val →
      (DSVUniformDensityThresholdLocalIndex N d ×
       DSVUniformDensityThresholdLocalIndex N d)) :
    dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
        width schedule ξ ζ j q =
      ∏ i : Fin j.val,
        dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          ⟨i.val, by omega⟩ (q i) := by
  change
    (∏ i : Fin j.val,
      dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy
        width schedule ξ ζ j i (q i)) = _
  apply Finset.prod_congr rfl
  intro i _
  rw [dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureCopy_eq_actual]

end

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

@[simp] theorem directDSVSelectedCopyLocalHistoryEquiv_hit
    {L : ℕ} {β : Type*} (j : Fin L)
    (selected : β) (before : Fin j.val → β)
    (after : Fin (L - j.val) → β) :
    directDSVSelectedCopyLocalHistoryEquiv j
        (selected, (before, after)) j.castSucc = selected := by
  simp [directDSVSelectedCopyLocalHistoryEquiv]

@[simp] theorem directDSVSelectedCopyLocalHistoryEquiv_before
    {L : ℕ} {β : Type*} (j : Fin L)
    (selected : β) (before : Fin j.val → β)
    (after : Fin (L - j.val) → β) (i : Fin j.val) :
    directDSVSelectedCopyLocalHistoryEquiv j
        (selected, (before, after))
        ⟨i.val, by omega⟩ = before i := by
  let k : Fin L := ⟨i.val, by omega⟩
  have earlier : k < j := by
    change i.val < j.val
    exact i.isLt
  have selected_index :
      j.castSucc.succAbove k =
        (⟨i.val, by omega⟩ : Fin (L + 1)) := by
    rw [Fin.succAbove_castSucc_of_lt j k earlier]
    rfl
  unfold directDSVSelectedCopyLocalHistoryEquiv
  simp only [Equiv.trans_apply, Equiv.prodCongr_apply,
    Fin.insertNthEquiv_apply]
  rw [← selected_index, Fin.insertNth_apply_succAbove]
  change
    (if h : k.val < j.val
      then before ⟨k.val, h⟩
      else after ⟨k.val - j.val, by omega⟩) = before i
  simp only [k, i.isLt, ↓reduceDIte]

@[simp] theorem directDSVSelectedCopyLocalHistoryEquiv_after
    {L : ℕ} {β : Type*} (j : Fin L)
    (selected : β) (before : Fin j.val → β)
    (after : Fin (L - j.val) → β) (i : Fin (L - j.val)) :
    directDSVSelectedCopyLocalHistoryEquiv j
        (selected, (before, after))
        ⟨j.val + 1 + i.val, by omega⟩ = after i := by
  let k : Fin L := ⟨j.val + i.val, by omega⟩
  have later : j ≤ k := by
    change j.val ≤ j.val + i.val
    omega
  have selected_index :
      j.castSucc.succAbove k =
        (⟨j.val + 1 + i.val, by omega⟩ : Fin (L + 1)) := by
    rw [Fin.succAbove_castSucc_of_le j k later]
    apply Fin.ext
    change j.val + i.val + 1 = j.val + 1 + i.val
    omega
  unfold directDSVSelectedCopyLocalHistoryEquiv
  simp only [Equiv.trans_apply, Equiv.prodCongr_apply,
    Fin.insertNthEquiv_apply]
  rw [← selected_index, Fin.insertNth_apply_succAbove]
  change
    (if h : k.val < j.val
      then before ⟨k.val, h⟩
      else after ⟨k.val - j.val, by omega⟩) = after i
  have not_before : ¬ j.val + i.val < j.val := by omega
  simp [k, not_before]

theorem directDSVRemainingCopyProductSplit
    {M : Type*} [CommMonoid M]
    {L : ℕ} (j : Fin L) (f : Fin L → M) :
    (∏ i : Fin L, f i) =
      (∏ i : Fin j.val, f ⟨i.val, by omega⟩) *
      (∏ i : Fin (L - j.val),
        f ⟨j.val + i.val, by omega⟩) := by
  classical
  have length : j.val + (L - j.val) = L := by omega
  calc
    (∏ i : Fin L, f i) =
        ∏ i : Fin (j.val + (L - j.val)), f (i.cast length) :=
      (Fin.prod_congr' f length).symm
    _ =
        (∏ i : Fin j.val, f ⟨i.val, by omega⟩) *
        (∏ i : Fin (L - j.val),
          f ⟨j.val + i.val, by omega⟩) := by
      rw [Fin.prod_univ_add]
      congr 1

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

theorem solution
    {S N d L : ℕ}
    (width : Fin S → ℝ) (schedule : Fin L → Fin S)
    (ξ ζ : BipartiteUnitVector d)
    (j : Fin L)
    (selectedA selectedB : DSVUniformDensityThresholdLocalIndex N d)
    (beforeA beforeB : Fin j.val →
      DSVUniformDensityThresholdLocalIndex N d)
    (afterA afterB : Fin (L - j.val) →
      DSVUniformDensityThresholdLocalIndex N d) :
    dSVDensityRationalHeterogeneousActualPhysicalState
        N width schedule ξ ζ
        (⟨j.succ,
          directDSVSelectedCopyLocalHistoryEquiv j
            (selectedA, (beforeA, afterA))⟩,
         ⟨j.succ,
          directDSVSelectedCopyLocalHistoryEquiv j
            (selectedB, (beforeB, afterB))⟩) =
      dSVDensityRationalCompleteProjectiveOutcome
          (width (schedule j)) N ξ ζ true true
          (selectedA, selectedB) *
        dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector
          (N := N) width schedule ξ ζ j
          (fun i => (beforeA i, beforeB i)) *
        dSVUniformDensityIndependentSharedState
          (L - j.val) N d (afterA, afterB) := by
  classical
  let a := directDSVSelectedCopyLocalHistoryEquiv j
    (selectedA, (beforeA, afterA))
  let b := directDSVSelectedCopyLocalHistoryEquiv j
    (selectedB, (beforeB, afterB))
  rw [dSVDensityRationalHeterogeneousActualCommonStopPhysicalState_eq_outcomeProduct]
  rw [Fin.prod_univ_succAbove _ j.castSucc]
  rw [directDSVRemainingCopyProductSplit j]
  rw [dSVDensityRationalHeterogeneousStoppedCommonPrefixFailureVector_apply]
  rw [dSVUniformDensityIndependentSharedState_apply]
  have hitA : a j.castSucc = selectedA :=
    directDSVSelectedCopyLocalHistoryEquiv_hit j
      selectedA beforeA afterA
  have hitB : b j.castSucc = selectedB :=
    directDSVSelectedCopyLocalHistoryEquiv_hit j
      selectedB beforeB afterB
  have selected :
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j j.castSucc
          (a j.castSucc, b j.castSucc) =
        dSVDensityRationalCompleteProjectiveOutcome
          (width (schedule j)) N ξ ζ true true
          (selectedA, selectedB) := by
    rw [dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_hit,
      hitA, hitB]
  rw [selected]
  simp only [mul_assoc]
  apply congrArg (fun t : ℂ =>
    dSVDensityRationalCompleteProjectiveOutcome
      (width (schedule j)) N ξ ζ true true
      (selectedA, selectedB) * t)
  apply congrArg₂ (fun x y : ℂ => x * y)
  · apply Finset.prod_congr rfl
    intro i _
    let k : Fin L := ⟨i.val, by omega⟩
    have earlier : k < j := by
      change i.val < j.val
      exact i.isLt
    have index : j.castSucc.succAbove k =
        (⟨i.val, by omega⟩ : Fin (L + 1)) := by
      rw [Fin.succAbove_castSucc_of_lt j k earlier]
      rfl
    change
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          (j.castSucc.succAbove k)
          (a (j.castSucc.succAbove k),
           b (j.castSucc.succAbove k)) = _
    rw [index]
    change
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          (⟨i.val, by omega⟩ : Fin (L + 1))
          (a ⟨i.val, by omega⟩,
           b ⟨i.val, by omega⟩) = _
    change
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          (⟨i.val, by omega⟩ : Fin (L + 1))
          (directDSVSelectedCopyLocalHistoryEquiv j
             (selectedA, (beforeA, afterA)) ⟨i.val, by omega⟩,
           directDSVSelectedCopyLocalHistoryEquiv j
             (selectedB, (beforeB, afterB)) ⟨i.val, by omega⟩) = _
    rw [directDSVSelectedCopyLocalHistoryEquiv_before,
      directDSVSelectedCopyLocalHistoryEquiv_before]
  · apply Finset.prod_congr rfl
    intro i _
    let k : Fin L := ⟨j.val + i.val, by omega⟩
    have later : j ≤ k := by
      change j.val ≤ j.val + i.val
      omega
    have index : j.castSucc.succAbove k =
        (⟨j.val + 1 + i.val, by omega⟩ : Fin (L + 1)) := by
      rw [Fin.succAbove_castSucc_of_le j k later]
      apply Fin.ext
      change j.val + i.val + 1 = j.val + 1 + i.val
      omega
    change
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          (j.castSucc.succAbove k)
          (a (j.castSucc.succAbove k),
           b (j.castSucc.succAbove k)) = _
    rw [index]
    change
      dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome
          width schedule ξ ζ j
          (⟨j.val + 1 + i.val, by omega⟩ : Fin (L + 1))
          (directDSVSelectedCopyLocalHistoryEquiv j
             (selectedA, (beforeA, afterA))
               ⟨j.val + 1 + i.val, by omega⟩,
           directDSVSelectedCopyLocalHistoryEquiv j
             (selectedB, (beforeB, afterB))
               ⟨j.val + 1 + i.val, by omega⟩) = _
    rw [directDSVSelectedCopyLocalHistoryEquiv_after,
      directDSVSelectedCopyLocalHistoryEquiv_after]
    have is_after :
        j.val <
          (⟨j.val + 1 + i.val, by omega⟩ : Fin (L + 1)).val := by
      change j.val < j.val + 1 + i.val
      omega
    rw [dSVDensityRationalHeterogeneousActualCommonStopScheduledOutcome_after
      width schedule ξ ζ j
      (⟨j.val + 1 + i.val, by omega⟩ : Fin (L + 1)) is_after]
