import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_exactLeft_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactAlicePurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobPurificationFamily_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactFairConditionedAnswerBornMass_eq_fiber_norm
import Theorems.Thm_QuantumParallelRepetition_exactLocallySampleableLaw_eq_fair_born
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Module.Submodule.LinearMap
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.Complex.Order
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
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Erase
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Dimension.Finrank
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Logic.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Prod
import Mathlib.Logic.IsEmpty.Defs
import Mathlib.MeasureTheory.Function.AEEqFun
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.MeasureTheory.Measure.MeasureSpaceDef
import Mathlib.MeasureTheory.Measure.Restrict
import Mathlib.Order.Basic
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Order.RelClasses
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Group.Defs
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.MetricSpace.Algebra
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Topology.UniformSpace.Defs

namespace QuantumParallelRepetition

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix

variable {X Y A B : Type*}

namespace Game

variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

@[simp] theorem repeat_questionWeight (G : Game X Y A B) (n : ℕ)
    (xs : Fin n → X) (ys : Fin n → Y) :
    (G.repeat n).questionWeight xs ys =
      ∏ i : Fin n, G.questionWeight (xs i) (ys i) := rfl

end Game

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section ActualHistoryWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedEffects_born_expansion
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B)
    (xs : Fin n → X) (ys : Fin n → Y) :
    bornTracePairing S.state.matrix
        (conditionedAliceEffect G n S D α xs)
        (conditionedBobEffect G n S D β ys) =
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        if ∀ (i : Fin n) (hi : i ∈ D), aa i = α ⟨i, hi⟩ then
          if ∀ (i : Fin n) (hi : i ∈ D), bb i = β ⟨i, hi⟩ then
            S.outcomeProbability xs ys aa bb
          else 0
        else 0 := by
  classical
  simp only [conditionedAliceEffect, conditionedBobEffect,
    map_sum, LinearMap.sum_apply]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro aa _
  split_ifs with ha
  · apply Finset.sum_congr rfl
    intro bb _
    split_ifs with hb
    · rfl
    · exact map_zero _
  · simp

end ActualHistoryWeights

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinate_three_sum_rotate
    {I J K T : Type*}
    [Fintype I] [Fintype J] [Fintype K] [AddCommMonoid T]
    (f : I → J → K → T) :
    (∑ i : I, ∑ j : J, ∑ k : K, f i j k) =
      ∑ j : J, ∑ k : K, ∑ i : I, f i j k := by
  calc
    (∑ i : I, ∑ j : J, ∑ k : K, f i j k) =
      ∑ j : J, ∑ i : I, ∑ k : K, f i j k := by
        rw [Finset.sum_comm]
    _ = ∑ j : J, ∑ k : K, ∑ i : I, f i j k := by
      apply Finset.sum_congr rfl
      intro j _
      rw [Finset.sum_comm]

end

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

theorem exactLeftPrefix_subset
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactLeftPrefix seed ⊆
      exactLeft seed.coordinate seed.partition := by
  intro j hj
  obtain ⟨a, _, ha⟩ := Finset.mem_image.mp hj
  exact ha ▸ a.property

theorem exactRightPrefix_subset
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactRightPrefix seed ⊆
      exactRight seed.coordinate seed.partition := by
  intro j hj
  obtain ⟨a, _, ha⟩ := Finset.mem_image.mp hj
  exact ha ▸ a.property

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactRevealCode_compatible_iff
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (xs : Fin n → X) (ys : Fin n → Y) :
    (exactRevealCode D seed (xs, ys) = history ∧
      xs seed.coordinate.val = x ∧ ys seed.coordinate.val = y) ↔
      exactAliceQuestionCompatible
        D seed history x xs ∧
      exactBobQuestionCompatible
        D seed history y ys := by
  constructor
  · rintro ⟨h, hx, hy⟩
    subst history
    exact ⟨⟨fun _ => rfl, fun _ => rfl, fun _ => rfl, hx⟩,
      ⟨fun _ => rfl, fun _ => rfl, fun _ => rfl, hy⟩⟩
  · rintro ⟨⟨hxc, hxl, hxr, hx⟩,
      ⟨hyc, hyr, hyl, hy⟩⟩
    refine ⟨?_, hx, hy⟩
    cases history with
    | mk ac bc al br bl ar =>
      have hac :
          (fun j : {j : Fin n // j ∈ D} => xs j.val) = ac :=
        funext hxc
      have hbc :
          (fun j : {j : Fin n // j ∈ D} => ys j.val) = bc :=
        funext hyc
      have hal :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactLeft seed.coordinate seed.partition} =>
            xs j.val.val) = al :=
        funext hxl
      have hbr :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactRight seed.coordinate seed.partition} =>
            ys j.val.val) = br :=
        funext hyr
      have hbl :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactLeftPrefix seed} =>
            ys j.val.val) = bl :=
        funext hyl
      have har :
          (fun j : {j : SourceRemainingCoordinate D //
            j ∈ exactRightPrefix seed} =>
            xs j.val.val) = ar :=
        funext hxr
      cases hac
      cases hbc
      cases hal
      cases hbr
      cases hbl
      cases har
      rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedEventDistribution_nonneg
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω)
    (positive : 0 < law.eventMass event) (ω : Ω) :
    0 ≤ conditionedEventDistribution law event ω := by
  unfold conditionedEventDistribution
  split_ifs
  · exact div_nonneg (law.weight_nonneg ω) positive.le
  · exact le_rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactPostselectedJointLaw_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (q : ExactJointOutcome X Y A B D) :
    0 ≤ exactPostselectedJointLaw G n S D q := by
  apply mul_nonneg (exactSeedWeight_nonneg q.1)
  exact conditionedEventDistribution_nonneg
    (strategyEventLaw (G.repeat n) S)
    (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
    positive q.2

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFiberQuestionMass_eq_jointQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactFiberQuestionMass G n D seed history x y =
      exactJointQuestionMass G n D seed history x y := by
  classical
  unfold exactFiberQuestionMass
    exactFiberQuestionWeight
    exactJointQuestionMass
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  simp [exactPriorQuestionWeight,
    exactRevealCode_compatible_iff]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactHistoryCode_accepted_iff
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (q : ExactJointOutcome X Y A B D) :
    exactHistoryAccepted G n D
        (exactHistoryCode D q) ↔
      q.2 ∈ FiniteEventLaw.winEvent
        (repeatedCoordinateWin G n) D := by
  classical
  simp only [FiniteEventLaw.winEvent,
    Finset.mem_filter, Finset.mem_univ, true_and,
    repeatedCoordinateWin,
    exactHistoryAccepted,
    exactHistoryCode,
    exactRevealCode]
  constructor
  · intro h j hj
    exact h ⟨j, hj⟩
  · intro h j
    exact h j.val j.property

theorem exactLocallySampleableLaw_zero_of_not_accepted
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (i : SourceRemainingCoordinate D) (x : X) (y : Y)
    (r : ExactHistoryFlag X Y A B D)
    (not_accepted : ¬ exactHistoryAccepted G n D r) :
    exactLocallySampleableLaw G n S D (i, x, y, r) = 0 := by
  classical
  unfold exactLocallySampleableLaw
    exactSourcePushforward
    groupedMass
  apply Finset.sum_eq_zero
  intro q hq
  have hcode :
      exactLocallySampleableCode D q = (i, x, y, r) := by
    exact ((@Finset.mem_filter
      (ExactJointOutcome X Y A B D)
      (fun a => exactLocallySampleableCode D a = (i, x, y, r))
      (fun _ => Classical.propDecidable _)
      Finset.univ q).mp hq).2
  have hhistory : exactHistoryCode D q = r :=
    congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D =>
        t.2.2.2) hcode
  have hnot :
      q.2 ∉ FiniteEventLaw.winEvent
        (repeatedCoordinateWin G n) D := by
    intro hw
    apply not_accepted
    rw [← hhistory]
    exact (exactHistoryCode_accepted_iff
      G n D q).mpr hw
  simp [exactPostselectedJointLaw,
    repeatedConditionedOutcomeLaw,
    conditionedEventDistribution, hnot]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactRevealCode_splitAt_independent
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (x x' : X) (y y' : Y)
    (tailX : {j : Fin n // j ≠ seed.coordinate.val} → X)
    (tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y) :
    exactRevealCode D seed
      ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
       (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
    exactRevealCode D seed
      ((Equiv.funSplitAt seed.coordinate.val X).symm (x', tailX),
       (Equiv.funSplitAt seed.coordinate.val Y).symm (y', tailY)) := by
  unfold exactRevealCode
  congr 1
  · funext j
    have hiD : seed.coordinate.val ∉ D :=
      (Finset.mem_sdiff.mp seed.coordinate.property).2
    have different : j.val ≠ seed.coordinate.val := by
      intro h
      exact hiD (h ▸ j.property)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have hiD : seed.coordinate.val ∉ D :=
      (Finset.mem_sdiff.mp seed.coordinate.property).2
    have different : j.val ≠ seed.coordinate.val := by
      intro h
      exact hiD (h ▸ j.property)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have mem : seed.coordinate ∈
          exactLeft seed.coordinate seed.partition := by
        simpa [same] using j.property
      exact exactLeft_coordinate_not_mem
        seed.coordinate seed.partition mem
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have mem : seed.coordinate ∈
          exactRight seed.coordinate seed.partition := by
        simpa [same] using j.property
      exact exactRight_coordinate_not_mem
        seed.coordinate seed.partition mem
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have hleft := exactLeftPrefix_subset seed j.property
      exact exactLeft_coordinate_not_mem
        seed.coordinate seed.partition (same ▸ hleft)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]
  · funext j
    have different : j.val.val ≠ seed.coordinate.val := by
      intro h
      have same : j.val = seed.coordinate := Subtype.ext h
      have hright := exactRightPrefix_subset seed j.property
      exact exactRight_coordinate_not_mem
        seed.coordinate seed.partition (same ▸ hright)
    simp [Equiv.funSplitAt, Equiv.piSplitAt, different]

theorem exactRepeatedQuestionWeight_splitAt_joint
    (G : Game X Y A B) (n : ℕ) (i : Fin n)
    (x : X) (y : Y)
    (tailX : {j : Fin n // j ≠ i} → X)
    (tailY : {j : Fin n // j ≠ i} → Y) :
    (G.repeat n).questionWeight
        ((Equiv.funSplitAt i X).symm (x, tailX))
        ((Equiv.funSplitAt i Y).symm (y, tailY)) =
      G.questionWeight x y *
        ∏ j : {j : Fin n // j ≠ i},
          G.questionWeight (tailX j) (tailY j) := by
  classical
  rw [Game.repeat_questionWeight]
  rw [← Finset.mul_prod_erase
    (Finset.univ : Finset (Fin n))
    (fun j : Fin n => G.questionWeight
      ((Equiv.funSplitAt i X).symm (x, tailX) j)
      ((Equiv.funSplitAt i Y).symm (y, tailY) j))
    (Finset.mem_univ i)]
  simp only [Equiv.funSplitAt, Equiv.piSplitAt,
    Equiv.coe_fn_symm_mk, dite_true]
  congr 1
  let e : {j : Fin n // j ∈ (Finset.univ : Finset (Fin n)).erase i} ≃
      {j : Fin n // j ≠ i} :=
    { toFun := fun j => ⟨j.val, (Finset.mem_erase.mp j.property).1⟩
      invFun := fun j => ⟨j.val,
        Finset.mem_erase.mpr ⟨j.property, Finset.mem_univ _⟩⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }
  rw [← Finset.prod_coe_sort, ← e.prod_comp]
  apply Finset.prod_congr rfl
  intro j _
  have different : j.val ≠ i := (Finset.mem_erase.mp j.property).1
  simp [different, e]

theorem exactFairQuestionTailWeight_independent
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x x' : X) (y y' : Y) :
    exactFairQuestionTailWeight
        G n D seed history x y =
      exactFairQuestionTailWeight
        G n D seed history x' y' := by
  unfold exactFairQuestionTailWeight
  apply Finset.sum_congr rfl
  intro tailX _
  apply Finset.sum_congr rfl
  intro tailY _
  rw [exactRevealCode_splitAt_independent
    D seed x x' y y' tailX tailY]

theorem exactJointQuestionMass_eq_question_mul_tail
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactJointQuestionMass G n D seed history x y =
      G.questionWeight x y *
        exactFairQuestionTailWeight
          G n D seed history x y := by
  classical
  let e := Equiv.prodCongr
    (Equiv.funSplitAt seed.coordinate.val X)
    (Equiv.funSplitAt seed.coordinate.val Y)
  calc
    exactJointQuestionMass G n D seed history x y =
      ∑ t : (X × ({j : Fin n // j ≠ seed.coordinate.val} → X)) ×
          (Y × ({j : Fin n // j ≠ seed.coordinate.val} → Y)),
        if exactRevealCode D seed (e.symm t) = history ∧
          (e.symm t).1 seed.coordinate.val = x ∧
          (e.symm t).2 seed.coordinate.val = y
        then exactPriorQuestionWeight G n (e.symm t)
        else 0 := by
          unfold exactJointQuestionMass
          exact (e.symm.sum_comp (fun q =>
            if exactRevealCode D seed q = history ∧
              q.1 seed.coordinate.val = x ∧
              q.2 seed.coordinate.val = y
            then exactPriorQuestionWeight G n q
            else 0)).symm
    _ = ∑ tailX : {j : Fin n // j ≠ seed.coordinate.val} → X,
        ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
          if exactRevealCode D seed
             ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
              (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
                history
          then exactPriorQuestionWeight G n
             ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
              (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY))
          else 0 := by
            simp only [Fintype.sum_prod_type, e, Equiv.prodCongr,
              Equiv.coe_fn_symm_mk, Prod.map, Equiv.funSplitAt,
              Equiv.piSplitAt, dite_true]
            change
              (∑ xx : X,
                ∑ tailX : {j : Fin n // j ≠ seed.coordinate.val} → X,
                ∑ yy : Y,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0) = _
            rw [Finset.sum_comm]
            apply Finset.sum_congr rfl
            intro tailX _
            calc
              (∑ xx : X,
                ∑ yy : Y,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0) =
                ∑ xx : X,
                ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                ∑ yy : Y,
                  if exactRevealCode D seed
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY)) = history ∧
                    xx = x ∧ yy = y then
                    exactPriorQuestionWeight G n
                      ((Equiv.funSplitAt seed.coordinate.val X).symm
                         (xx, tailX),
                       (Equiv.funSplitAt seed.coordinate.val Y).symm
                         (yy, tailY))
                  else 0 := by
                    apply Finset.sum_congr rfl
                    intro xx _
                    rw [Finset.sum_comm]
              _ = ∑ tailY : {j : Fin n // j ≠ seed.coordinate.val} → Y,
                  ∑ xx : X, ∑ yy : Y,
                    if exactRevealCode D seed
                        ((Equiv.funSplitAt seed.coordinate.val X).symm
                           (xx, tailX),
                         (Equiv.funSplitAt seed.coordinate.val Y).symm
                           (yy, tailY)) = history ∧
                      xx = x ∧ yy = y then
                      exactPriorQuestionWeight G n
                        ((Equiv.funSplitAt seed.coordinate.val X).symm
                           (xx, tailX),
                         (Equiv.funSplitAt seed.coordinate.val Y).symm
                           (yy, tailY))
                    else 0 := by
                      rw [Finset.sum_comm]
              _ = _ := by
                    apply Finset.sum_congr rfl
                    intro tailY _
                    have hcondition (xx : X) (yy : Y) :
                        (exactRevealCode D seed
                            ((Equiv.funSplitAt seed.coordinate.val X).symm
                               (xx, tailX),
                             (Equiv.funSplitAt seed.coordinate.val Y).symm
                               (yy, tailY)) = history ∧
                          xx = x ∧ yy = y) =
                        (xx = x ∧ yy = y ∧
                          exactRevealCode D seed
                            ((Equiv.funSplitAt seed.coordinate.val X).symm
                               (xx, tailX),
                             (Equiv.funSplitAt seed.coordinate.val Y).symm
                               (yy, tailY)) = history) := by
                          apply propext
                          tauto
                    simp_rw [hcondition, ite_and]
                    simp [Equiv.funSplitAt, Equiv.piSplitAt]
    _ = G.questionWeight x y *
        exactFairQuestionTailWeight G n D seed history x y := by
          unfold exactFairQuestionTailWeight
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro tailX _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro tailY _
          by_cases h : exactRevealCode D seed
              ((Equiv.funSplitAt seed.coordinate.val X).symm (x, tailX),
               (Equiv.funSplitAt seed.coordinate.val Y).symm (y, tailY)) =
                history
          · rw [if_pos h, if_pos h]
            exact exactRepeatedQuestionWeight_splitAt_joint
              G n seed.coordinate.val x y tailX tailY
          · simp [h]

theorem exactJointQuestionMass_sum
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed) :
    (∑ x : X, ∑ y : Y,
      exactJointQuestionMass G n D seed history x y) =
      exactRevealMass G n D seed history := by
  classical
  unfold exactJointQuestionMass exactRevealMass
  calc
    (∑ x : X, ∑ y : Y,
      ∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.1 seed.coordinate.val = x ∧
          q.2 seed.coordinate.val = y
        then exactPriorQuestionWeight G n q
        else 0) =
      ∑ q : ExactFullQuestion X Y n,
        ∑ x : X, ∑ y : Y,
          if exactRevealCode D seed q = history ∧
            q.1 seed.coordinate.val = x ∧
            q.2 seed.coordinate.val = y
          then exactPriorQuestionWeight G n q
          else 0 := by
            calc
              (∑ x : X, ∑ y : Y,
                ∑ q : ExactFullQuestion X Y n,
                  if exactRevealCode D seed q = history ∧
                    q.1 seed.coordinate.val = x ∧
                    q.2 seed.coordinate.val = y
                  then exactPriorQuestionWeight G n q
                  else 0) =
                ∑ y : Y, ∑ q : ExactFullQuestion X Y n,
                ∑ x : X,
                  if exactRevealCode D seed q = history ∧
                    q.1 seed.coordinate.val = x ∧
                    q.2 seed.coordinate.val = y
                  then exactPriorQuestionWeight G n q
                  else 0 :=
                    fullCoordinate_three_sum_rotate _
              _ = _ := fullCoordinate_three_sum_rotate _
    _ = ∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history
        then exactPriorQuestionWeight G n q
        else 0 := by
          apply Finset.sum_congr rfl
          intro q _
          by_cases h : exactRevealCode D seed q = history
          · have hsum :
                (∑ xx : X, ∑ yy : Y,
                  if q.1 seed.coordinate.val = xx ∧
                    q.2 seed.coordinate.val = yy
                  then exactPriorQuestionWeight G n q
                  else 0) = exactPriorQuestionWeight G n q := by
                  calc
                    (∑ xx : X, ∑ yy : Y,
                      if q.1 seed.coordinate.val = xx ∧
                        q.2 seed.coordinate.val = yy
                      then exactPriorQuestionWeight G n q
                      else 0) =
                      ∑ xx : X,
                        if q.1 seed.coordinate.val = xx
                        then exactPriorQuestionWeight G n q
                        else 0 := by
                          apply Finset.sum_congr rfl
                          intro xx _
                          by_cases hx : q.1 seed.coordinate.val = xx
                          · simp [hx]
                          · simp [hx]
                    _ = _ := by simp
            simpa [h] using hsum
          · simp [h]

theorem exactJointQuestionMass_eq_reveal_mul_question
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    exactJointQuestionMass G n D seed history x y =
      exactRevealMass G n D seed history *
        G.questionWeight x y := by
  have htotal := exactJointQuestionMass_sum
    G n D seed history
  have htail :
      exactRevealMass G n D seed history =
        exactFairQuestionTailWeight
          G n D seed history x y := by
    calc
      exactRevealMass G n D seed history =
        ∑ xx : X, ∑ yy : Y,
          exactJointQuestionMass
            G n D seed history xx yy := htotal.symm
      _ = ∑ xx : X, ∑ yy : Y,
          G.questionWeight xx yy *
            exactFairQuestionTailWeight
              G n D seed history x y := by
            apply Finset.sum_congr rfl
            intro xx _
            apply Finset.sum_congr rfl
            intro yy _
            rw [exactJointQuestionMass_eq_question_mul_tail]
            rw [exactFairQuestionTailWeight_independent
              G n D seed history xx x yy y]
      _ = (∑ xx : X, ∑ yy : Y,
          G.questionWeight xx yy) *
            exactFairQuestionTailWeight
              G n D seed history x y := by
            simp [Finset.sum_mul]
      _ = exactFairQuestionTailWeight
          G n D seed history x y := by
            rw [G.weight_normalized]
            simp
  rw [exactJointQuestionMass_eq_question_mul_tail,
    ← htail]
  ring

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairConditionedAnswerBornMass_eq_reveal_question_norm
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    exactFairConditionedAnswerBornMass G n S D r x y =
      exactRevealMass G n D r.seed r.history *
        G.questionWeight x y *
        ‖exactUnnormalizedPsi G n S D r x y‖ ^ 2 := by
  rw [exactFairConditionedAnswerBornMass_eq_fiber_norm,
    exactFiberQuestionMass_eq_jointQuestionMass,
    exactJointQuestionMass_eq_reveal_mul_question]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactLocallySampleableCode_fixedSeed_fiber_iff
    {n : ℕ} (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y)
    (o : ExactOutcome X Y A B n) :
    exactLocallySampleableCode D (r.seed, o) =
        (r.seed.coordinate, x, y, r) ↔
      exactRevealCode D r.seed (o.1, o.2.1) = r.history ∧
      o.1 r.seed.coordinate.val = x ∧
      o.2.1 r.seed.coordinate.val = y ∧
      (∀ j : {j : Fin n // j ∈ D},
        o.2.2.1 j.val = r.aliceAnswer j) ∧
      (∀ j : {j : Fin n // j ∈ D},
        o.2.2.2 j.val = r.bobAnswer j) := by
  constructor
  · intro h
    have hx := congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D => t.2.1) h
    have hy := congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D => t.2.2.1) h
    have hr := congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D => t.2.2.2) h
    have hh0 := congrArg
      (fun z : ExactHistoryFlag X Y A B D =>
        if hs : z.seed = r.seed then hs ▸ z.history else r.history) hr
    have hh :
        exactRevealCode D r.seed (o.1, o.2.1) = r.history := by
      simpa [exactLocallySampleableCode,
        exactHistoryCode] using hh0
    refine ⟨hh, hx, hy, ?_, ?_⟩
    · have ha := congrArg ExactHistoryFlag.aliceAnswer hr
      intro j
      exact congrFun ha j
    · have hb := congrArg ExactHistoryFlag.bobAnswer hr
      intro j
      exact congrFun hb j
  · rintro ⟨hh, hx, hy, ha, hb⟩
    have hr : exactHistoryCode D (r.seed, o) = r := by
      apply ExactHistoryFlag.ext
      · rfl
      · exact heq_of_eq hh
      · funext j
        exact ha j
      · funext j
        exact hb j
    change
      (r.seed.coordinate,
        o.1 r.seed.coordinate.val,
        o.2.1 r.seed.coordinate.val,
        exactHistoryCode D (r.seed, o)) =
      (r.seed.coordinate, x, y, r)
    rw [hx, hy, hr]

theorem exactFairFullOutcomeBornMass_eq_conditioned
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    exactFairFullOutcomeBornMass G n S D r x y =
      exactFairConditionedAnswerBornMass G n S D r x y := by
  classical
  unfold exactFairFullOutcomeBornMass
    exactFairConditionedAnswerBornMass
  simp only [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  have hq :
      (exactAliceQuestionCompatible
        D r.seed r.history x xs ∧
        exactBobQuestionCompatible
          D r.seed r.history y ys) ↔
        exactRevealCode D r.seed (xs, ys) = r.history ∧
        xs r.seed.coordinate.val = x ∧
        ys r.seed.coordinate.val = y :=
    (exactRevealCode_compatible_iff
      D r.seed r.history x y xs ys).symm
  by_cases compatible :
      exactAliceQuestionCompatible
        D r.seed r.history x xs ∧
      exactBobQuestionCompatible
        D r.seed r.history y ys
  · have hc := hq.mp compatible
    rw [exactFiberQuestionWeight]
    simp only [if_pos compatible]
    rw [conditionedEffects_born_expansion]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro aa _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro bb _
    have hf := exactLocallySampleableCode_fixedSeed_fiber_iff
      D r x y (xs, ys, aa, bb)
    have ha :
        (∀ (j : Fin n) (hj : j ∈ D),
          aa j = r.aliceAnswer ⟨j, hj⟩) ↔
        (∀ j : {j : Fin n // j ∈ D},
          aa j.val = r.aliceAnswer j) := by
      constructor
      · intro h j
        exact h j.val j.property
      · intro h j hj
        exact h ⟨j, hj⟩
    have hb :
        (∀ (j : Fin n) (hj : j ∈ D),
          bb j = r.bobAnswer ⟨j, hj⟩) ↔
        (∀ j : {j : Fin n // j ∈ D},
          bb j.val = r.bobAnswer j) := by
      constructor
      · intro h j
        exact h j.val j.property
      · intro h j hj
        exact h ⟨j, hj⟩
    by_cases aok : ∀ (j : Fin n) (hj : j ∈ D),
      aa j = r.aliceAnswer ⟨j, hj⟩
    · by_cases bok : ∀ (j : Fin n) (hj : j ∈ D),
          bb j = r.bobAnswer ⟨j, hj⟩
      · have code :
            exactLocallySampleableCode D
              (r.seed, (xs, ys, aa, bb)) =
                (r.seed.coordinate, x, y, r) :=
          hf.mpr ⟨hc.1, hc.2.1, hc.2.2,
            ha.mp aok, hb.mp bok⟩
        simp only [if_pos code, if_pos aok, if_pos bok]
        rfl
      · have notcode :
            exactLocallySampleableCode D
              (r.seed, (xs, ys, aa, bb)) ≠
                (r.seed.coordinate, x, y, r) := by
          intro code
          exact bok (hb.mpr (hf.mp code).2.2.2.2)
        simp [notcode, bok]
    · have notcode :
          exactLocallySampleableCode D
            (r.seed, (xs, ys, aa, bb)) ≠
              (r.seed.coordinate, x, y, r) := by
        intro code
        exact aok (ha.mpr (hf.mp code).2.2.2.1)
      simp [notcode, aok]
  · have notfiber :
        ¬ (exactRevealCode D r.seed (xs, ys) = r.history ∧
          xs r.seed.coordinate.val = x ∧
          ys r.seed.coordinate.val = y) := by
      intro h
      exact compatible (hq.mpr h)
    rw [exactFiberQuestionWeight]
    simp only [if_neg compatible, zero_mul]
    apply Finset.sum_eq_zero
    intro aa _
    apply Finset.sum_eq_zero
    intro bb _
    have notcode :
        exactLocallySampleableCode D
          (r.seed, (xs, ys, aa, bb)) ≠
            (r.seed.coordinate, x, y, r) := by
      intro code
      have h := (exactLocallySampleableCode_fixedSeed_fiber_iff
        D r x y (xs, ys, aa, bb)).mp code
      exact notfiber ⟨h.1, h.2.1, h.2.2.1⟩
    simp [notcode]

theorem exactFairFullOutcomeBornMass_eq_reveal_question_norm
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (r : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    exactFairFullOutcomeBornMass G n S D r x y =
      exactRevealMass G n D r.seed r.history *
        G.questionWeight x y *
        ‖exactUnnormalizedPsi G n S D r x y‖ ^ 2 := by
  rw [exactFairFullOutcomeBornMass_eq_conditioned,
    exactFairConditionedAnswerBornMass_eq_reveal_question_norm]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceAcceptedCoordinateMass_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    0 ≤ exactSourceAcceptedCoordinateMass G n S D t := by
  unfold exactSourceAcceptedCoordinateMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPostselectedJointLaw_nonneg
      G n S D positive q
  · exact le_rfl

theorem exactSourceAcceptedCoordinateMass_le_law
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    exactSourceAcceptedCoordinateMass G n S D t ≤
      exactLocallySampleableLaw G n S D t := by
  classical
  unfold exactSourceAcceptedCoordinateMass
    exactLocallySampleableLaw exactSourcePushforward
    groupedMass
  rw [Finset.sum_filter]
  apply Finset.sum_le_sum
  intro q _
  by_cases history : exactLocallySampleableCode D q = t
  · by_cases winning :
      repeatedCoordinateWin G n q.1.coordinate.val q.2 = true
    · simp [history, winning]
    · simp [history, winning,
        exactPostselectedJointLaw_nonneg
          G n S D positive q]
  · simp [history]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactSourceAcceptedCoordinateMass_eq_seeded_fair_born
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (history : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    exactSourceAcceptedCoordinateMass G n S D
        (history.seed.coordinate, x, y, history) =
      if exactHistoryAccepted G n D history then
        (exactSeedWeight history.seed *
          exactFairWinningOutcomeBornMass
            G n S D history x y) /
          repeatedPostselectionMass G n S D
      else 0 := by
  classical
  by_cases accepted : exactHistoryAccepted G n D history
  · rw [if_pos accepted]
    unfold exactSourceAcceptedCoordinateMass
    rw [Fintype.sum_prod_type]
    rw [Finset.sum_eq_single history.seed]
    · unfold exactFairWinningOutcomeBornMass
      rw [Finset.mul_sum, Finset.sum_div]
      apply Finset.sum_congr rfl
      intro outcome _
      by_cases code :
          exactLocallySampleableCode D
            (history.seed, outcome) =
              (history.seed.coordinate, x, y, history)
      · by_cases winning :
          repeatedCoordinateWin G n history.seed.coordinate.val
            outcome = true
        · have same_history :
              exactHistoryCode D (history.seed, outcome) =
                history :=
            congrArg
              (fun t : ExactLocallySampleableTuple
                X Y A B D => t.2.2.2) code
          have conditioned :
              outcome ∈ FiniteEventLaw.winEvent
                (repeatedCoordinateWin G n) D := by
            apply (exactHistoryCode_accepted_iff
              G n D (history.seed, outcome)).mp
            rw [same_history]
            exact accepted
          simp [code, winning, exactPostselectedJointLaw,
            repeatedConditionedOutcomeLaw,
            conditionedEventDistribution,
            repeatedPostselectionMass, postselectionMass, conditioned]
          ring
        · simp [code, winning]
      · simp [code]
    · intro seed _ distinct
      apply Finset.sum_eq_zero
      intro outcome _
      have not_code :
          exactLocallySampleableCode D (seed, outcome) ≠
            (history.seed.coordinate, x, y, history) := by
        intro code
        have same := congrArg
          (fun t : ExactLocallySampleableTuple X Y A B D =>
            t.2.2.2.seed) code
        exact distinct same
      simp [not_code]
    · simp
  · rw [if_neg accepted]
    have law_zero :=
      exactLocallySampleableLaw_zero_of_not_accepted
        G n S D history.seed.coordinate x y history accepted
    exact le_antisymm
      (by
        simpa [law_zero] using
          exactSourceAcceptedCoordinateMass_le_law
            G n S D positive
            (history.seed.coordinate, x, y, history))
      (exactSourceAcceptedCoordinateMass_nonneg
        G n S D positive
        (history.seed.coordinate, x, y, history))

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (history : ExactHistoryFlag X Y A B D)
    (accepted : exactHistoryAccepted G n D history)
    (x : X) (y : Y) :
    exactSourceConditionalWinningProbability G n S D
        (history.seed.coordinate, x, y, history) =
      exactFairWinningOutcomeBornMass G n S D history x y /
        exactFairFullOutcomeBornMass G n S D history x y := by
  have seed_positive : 0 < exactSeedWeight history.seed := by
    unfold exactSeedWeight
    have coordinate_positive :
        0 < Fintype.card (SourceRemainingCoordinate D) :=
      Fintype.card_pos_iff.mpr ⟨history.seed.coordinate⟩
    positivity
  have posterior :
      exactLocallySampleableLaw G n S D
        (history.seed.coordinate, x, y, history) =
        (exactSeedWeight history.seed *
          exactFairFullOutcomeBornMass
            G n S D history x y) /
          repeatedPostselectionMass G n S D := by
    rw [exactLocallySampleableLaw_eq_fair_born,
      if_pos accepted,
      exactFairFullOutcomeBornMass_eq_reveal_question_norm]
    ring
  unfold exactSourceConditionalWinningProbability
  rw [exactSourceAcceptedCoordinateMass_eq_seeded_fair_born
    G n S D positive history x y, if_pos accepted, posterior]
  by_cases mass_zero :
      exactFairFullOutcomeBornMass G n S D history x y = 0
  · simp [mass_zero]
  · field_simp [positive.ne', seed_positive.ne', mass_zero]
