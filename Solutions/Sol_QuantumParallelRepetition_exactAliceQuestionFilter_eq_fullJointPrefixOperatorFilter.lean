import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_exactLeft_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.GroupWithZero.Action
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.BigOperators
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Erase
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Function.Basic
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

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

open scoped BigOperators Kronecker

namespace Game

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem questionWeight_le_marginalX
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalX x := by
  unfold marginalX
  exact Finset.single_le_sum
    (fun y _ => G.weight_nonneg x y)
    (Finset.mem_univ y)

theorem marginalX_mul_conditionalYGivenX
    (G : Game X Y A B) (x : X) (y : Y) :
    G.marginalX x * G.conditionalYGivenX x y =
      G.questionWeight x y := by
  unfold conditionalYGivenX
  by_cases hx : G.marginalX x = 0
  · have hzero : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalX x y
      have hnonneg := G.weight_nonneg x y
      rw [hx] at hle
      linarith
    simp [hx, hzero]
  · field_simp

end Game

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

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

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFixedBobQuestionMass_eq_product
    (G : Game X Y A B) (n : ℕ)
    (fixed : Finset (Fin n))
    (xs : Fin n → X) (known : Fin n → Y) :
    exactFixedBobQuestionMass G n fixed xs known =
      ∏ j : Fin n,
        if j ∈ fixed then G.questionWeight (xs j) (known j)
        else G.marginalX (xs j) := by
  classical
  unfold exactFixedBobQuestionMass
  simp only [Game.repeat_questionWeight]
  calc
    (∑ ys : Fin n → Y,
      if ∀ j : Fin n, j ∈ fixed → ys j = known j then
        ∏ j : Fin n, G.questionWeight (xs j) (ys j)
      else 0) =
      ∑ ys : Fin n → Y,
        ∏ j : Fin n,
          if j ∈ fixed then
            if ys j = known j then
              G.questionWeight (xs j) (ys j)
            else 0
          else G.questionWeight (xs j) (ys j) := by
            apply Finset.sum_congr rfl
            intro ys _
            calc
              (if ∀ j : Fin n,
                  j ∈ fixed → ys j = known j then
                  ∏ j : Fin n,
                    G.questionWeight (xs j) (ys j)
                else 0) =
                ∏ j : Fin n,
                  if j ∈ fixed → ys j = known j then
                    G.questionWeight (xs j) (ys j)
                  else 0 :=
                  by
                    simp only [Fintype.prod_ite_zero]
                    split <;> simp_all
              _ = _ := by
                apply Finset.prod_congr rfl
                intro j _
                by_cases hj : j ∈ fixed <;>
                  by_cases he : ys j = known j <;>
                    simp [hj, he]
    _ = ∏ j : Fin n,
        ∑ y : Y,
          if j ∈ fixed then
            if y = known j then G.questionWeight (xs j) y else 0
          else G.questionWeight (xs j) y :=
      (Fintype.prod_sum
        (fun (j : Fin n) (y : Y) =>
          if j ∈ fixed then
            if y = known j then G.questionWeight (xs j) y else 0
          else G.questionWeight (xs j) y)).symm
    _ = _ := by
      apply Finset.prod_congr rfl
      intro j _
      by_cases hj : j ∈ fixed
      · simp [hj]
      · simp [hj, Game.marginalX]

theorem exactFixedBobQuestionMass_insert
    (G : Game X Y A B) (n : ℕ)
    (fixed : Finset (Fin n)) (j : Fin n) (fresh : j ∉ fixed)
    (xs : Fin n → X) (known : Fin n → Y) (y : Y) :
    exactFixedBobQuestionMass
        G n (insert j fixed) xs (Function.update known j y) =
      G.conditionalYGivenX (xs j) y *
        exactFixedBobQuestionMass G n fixed xs known := by
  classical
  rw [exactFixedBobQuestionMass_eq_product,
    exactFixedBobQuestionMass_eq_product]
  have tails :
      (∏ k ∈ (Finset.univ : Finset (Fin n)).erase j,
        if k ∈ insert j fixed then
          G.questionWeight (xs k)
            (Function.update known j y k)
        else G.marginalX (xs k)) =
      ∏ k ∈ (Finset.univ : Finset (Fin n)).erase j,
        if k ∈ fixed then
          G.questionWeight (xs k) (known k)
        else G.marginalX (xs k) := by
    apply Finset.prod_congr rfl
    intro k hk
    have hkj : k ≠ j := (Finset.mem_erase.mp hk).1
    simp [hkj]
  rw [← Finset.mul_prod_erase Finset.univ
        (fun k : Fin n =>
          if k ∈ insert j fixed then
            G.questionWeight (xs k)
              (Function.update known j y k)
          else G.marginalX (xs k)) (Finset.mem_univ j),
      ← Finset.mul_prod_erase Finset.univ
        (fun k : Fin n =>
          if k ∈ fixed then
            G.questionWeight (xs k) (known k)
          else G.marginalX (xs k)) (Finset.mem_univ j),
      tails]
  simp only [Finset.mem_insert_self, ↓reduceIte,
    Function.update_self, fresh]
  rw [← G.marginalX_mul_conditionalYGivenX (xs j) y]
  ring

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactJointPrefixQuestionMass_eq_sum_bob
    (G : Game X Y A B) (n : ℕ)
    (fixedX fixedY : Finset (Fin n))
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    exactJointPrefixQuestionMass
        G n fixedX fixedY knownX knownY =
      ∑ xs : Fin n → X,
        if ∀ j : Fin n, j ∈ fixedX → xs j = knownX j then
          exactFixedBobQuestionMass
            G n fixedY xs knownY
        else 0 := by
  classical
  unfold exactJointPrefixQuestionMass
  apply Finset.sum_congr rfl
  intro xs _
  unfold exactFixedBobQuestionMass
  by_cases compatible :
      ∀ j : Fin n, j ∈ fixedX → xs j = knownX j
  · rw [if_pos compatible]
    apply Finset.sum_congr rfl
    intro ys _
    by_cases bob_compatible :
        ∀ j : Fin n, j ∈ fixedY → ys j = knownY j
    · rw [if_pos ⟨compatible, bob_compatible⟩,
        if_pos bob_compatible]
    · rw [if_neg (fun h => bob_compatible h.2),
        if_neg bob_compatible]
  · rw [if_neg compatible]
    apply Finset.sum_eq_zero
    intro ys _
    rw [if_neg]
    exact fun h => compatible h.1

theorem exactJointPrefixQuestionMass_insert_bob
    (G : Game X Y A B) (n : ℕ)
    (fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (opposite_fixed : j ∈ fixedX) (fresh : j ∉ fixedY)
    (knownX : Fin n → X) (knownY : Fin n → Y) (y : Y) :
    exactJointPrefixQuestionMass G n
        fixedX (insert j fixedY)
        knownX (Function.update knownY j y) =
      G.conditionalYGivenX (knownX j) y *
        exactJointPrefixQuestionMass G n
          fixedX fixedY knownX knownY := by
  classical
  rw [exactJointPrefixQuestionMass_eq_sum_bob,
    exactJointPrefixQuestionMass_eq_sum_bob,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro xs _
  by_cases compatible :
      ∀ k : Fin n, k ∈ fixedX → xs k = knownX k
  · rw [if_pos compatible, if_pos compatible,
      exactFixedBobQuestionMass_insert
        G n fixedY j fresh xs knownY y,
      compatible j opposite_fixed]
  · simp [compatible]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactRevealCode_eq_iff_fair_question_masks
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q q' : ExactFullQuestion X Y n) :
    exactRevealCode D seed q' =
        exactRevealCode D seed q ↔
      (∀ j : Fin n,
        j ∈ exactFairAliceQuestionMask D seed →
          q'.1 j = q.1 j) ∧
      (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          q'.2 j = q.2 j) := by
  classical
  constructor
  · intro same
    have aliceD := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.aliceConditioned) same
    have bobD := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.bobConditioned) same
    have aliceL := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.aliceLeft) same
    have bobR := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.bobRight) same
    have bobLP := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.bobLeftPrefix) same
    have aliceRP := congrArg
      (fun h : ExactRevealHistory X Y D seed =>
        h.aliceRightPrefix) same
    constructor
    · intro j hj
      change j ∈ (D ∪
        (exactLeft seed.coordinate seed.partition).image
          Subtype.val) ∪
        (exactRightPrefix seed).image Subtype.val at hj
      rcases Finset.mem_union.mp hj with hmain | hprefix
      · rcases Finset.mem_union.mp hmain with hD | hleft
        · exact congrFun aliceD ⟨j, hD⟩
        · obtain ⟨k, hk, samej⟩ := Finset.mem_image.mp hleft
          subst j
          exact congrFun aliceL ⟨k, hk⟩
      · obtain ⟨k, hk, samej⟩ := Finset.mem_image.mp hprefix
        subst j
        exact congrFun aliceRP ⟨k, hk⟩
    · intro j hj
      change j ∈ (D ∪
        (exactRight seed.coordinate seed.partition).image
          Subtype.val) ∪
        (exactLeftPrefix seed).image Subtype.val at hj
      rcases Finset.mem_union.mp hj with hmain | hprefix
      · rcases Finset.mem_union.mp hmain with hD | hright
        · exact congrFun bobD ⟨j, hD⟩
        · obtain ⟨k, hk, samej⟩ := Finset.mem_image.mp hright
          subst j
          exact congrFun bobR ⟨k, hk⟩
      · obtain ⟨k, hk, samej⟩ := Finset.mem_image.mp hprefix
        subst j
        exact congrFun bobLP ⟨k, hk⟩
  · rintro ⟨alice, bob⟩
    unfold exactRevealCode
    congr 1
    · funext j
      exact alice j.val <|
        Finset.mem_union_left _ <|
          Finset.mem_union_left _ j.property
    · funext j
      exact bob j.val <|
        Finset.mem_union_left _ <|
          Finset.mem_union_left _ j.property
    · funext j
      exact alice j.val.val <|
        Finset.mem_union_left _ <|
          Finset.mem_union_right _ <|
            Finset.mem_image.mpr ⟨j.val, j.property, rfl⟩
    · funext j
      exact bob j.val.val <|
        Finset.mem_union_left _ <|
          Finset.mem_union_right _ <|
            Finset.mem_image.mpr ⟨j.val, j.property, rfl⟩
    · funext j
      exact bob j.val.val <|
        Finset.mem_union_right _ <|
          Finset.mem_image.mpr ⟨j.val, j.property, rfl⟩
    · funext j
      exact alice j.val.val <|
        Finset.mem_union_right _ <|
          Finset.mem_image.mpr ⟨j.val, j.property, rfl⟩

theorem exactAliceQuestionMass_eq_jointPrefixQuestionMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q : ExactFullQuestion X Y n) :
    exactAliceQuestionMass G n D seed
        (exactRevealCode D seed q)
        (q.1 seed.coordinate.val) =
      exactJointPrefixQuestionMass G n
        (insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed))
        (exactFairBobQuestionMask D seed) q.1 q.2 := by
  classical
  unfold exactAliceQuestionMass
    exactJointPrefixQuestionMass
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  have same :
      (exactRevealCode D seed (xs, ys) =
          exactRevealCode D seed q ∧
        xs seed.coordinate.val = q.1 seed.coordinate.val) ↔
      ((∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed) →
          xs j = q.1 j) ∧
       (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          ys j = q.2 j)) := by
    constructor
    · rintro ⟨history, distinguished⟩
      obtain ⟨alice, bob⟩ :=
        (exactRevealCode_eq_iff_fair_question_masks
          D seed q (xs, ys)).mp history
      refine ⟨?_, bob⟩
      intro j hj
      rcases Finset.mem_insert.mp hj with samej | hj
      · subst j
        exact distinguished
      · exact alice j hj
    · rintro ⟨alice, bob⟩
      refine ⟨(exactRevealCode_eq_iff_fair_question_masks
        D seed q (xs, ys)).mpr ⟨?_, bob⟩, ?_⟩
      · intro j hj
        exact alice j (Finset.mem_insert_of_mem hj)
      · exact alice seed.coordinate.val
          (Finset.mem_insert_self _ _)
  by_cases compatible :
      (∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed) →
          xs j = q.1 j) ∧
      (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          ys j = q.2 j)
  · rw [if_pos (same.mpr compatible), if_pos compatible]
    rfl
  · rw [if_neg (fun h => compatible (same.mp h)),
      if_neg compatible]

theorem exactAliceQuestionFilter_eq_jointPrefixOperatorFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q : ExactFullQuestion X Y n)
    (answer : {j : Fin n // j ∈ D} → A) :
    exactAliceQuestionFilter G n S D seed
        (exactRevealCode D seed q) answer
        (q.1 seed.coordinate.val) =
      exactJointPrefixAliceOperatorFilter G n S D
        (insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed))
        (exactFairBobQuestionMask D seed)
        answer q.1 q.2 := by
  classical
  unfold exactAliceQuestionFilter
  rw [exactAliceQuestionMass_eq_jointPrefixQuestionMass
    G n D seed q]
  unfold exactJointPrefixAliceOperatorFilter
    exactJointPrefixAliceOperatorMass
  rw [Fintype.sum_prod_type]
  simp only [Finset.smul_sum]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  have same :
      (exactRevealCode D seed (xs, ys) =
          exactRevealCode D seed q ∧
        xs seed.coordinate.val = q.1 seed.coordinate.val) ↔
      ((∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed) →
          xs j = q.1 j) ∧
       (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          ys j = q.2 j)) := by
    constructor
    · rintro ⟨history, distinguished⟩
      obtain ⟨alice, bob⟩ :=
        (exactRevealCode_eq_iff_fair_question_masks
          D seed q (xs, ys)).mp history
      refine ⟨?_, bob⟩
      intro j hj
      rcases Finset.mem_insert.mp hj with samej | hj
      · subst j
        exact distinguished
      · exact alice j hj
    · rintro ⟨alice, bob⟩
      refine ⟨(exactRevealCode_eq_iff_fair_question_masks
        D seed q (xs, ys)).mpr ⟨?_, bob⟩, ?_⟩
      · intro j hj
        exact alice j (Finset.mem_insert_of_mem hj)
      · exact alice seed.coordinate.val
          (Finset.mem_insert_self _ _)
  by_cases compatible :
      (∀ j : Fin n,
        j ∈ insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed) →
          xs j = q.1 j) ∧
      (∀ j : Fin n,
        j ∈ exactFairBobQuestionMask D seed →
          ys j = q.2 j)
  · rw [if_pos (same.mpr compatible), if_pos compatible,
      smul_smul]
    unfold exactPriorQuestionWeight
    rw [div_eq_mul_inv]
    congr 1
    ring
  · rw [if_neg (fun h => compatible (same.mp h)),
      if_neg compatible, smul_zero]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactJointPrefixAliceOperatorMass_eq_sum_bobMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n))
    (answer : {j : Fin n // j ∈ D} → A)
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    exactJointPrefixAliceOperatorMass
        G n S D fixedX fixedY answer knownX knownY =
      ∑ xs : Fin n → X,
        if ∀ j : Fin n, j ∈ fixedX → xs j = knownX j then
          exactFixedBobQuestionMass
              G n fixedY xs knownY •
            conditionedAliceEffect G n S D answer xs
        else 0 := by
  classical
  unfold exactJointPrefixAliceOperatorMass
  apply Finset.sum_congr rfl
  intro xs _
  by_cases compatible :
      ∀ j : Fin n, j ∈ fixedX → xs j = knownX j
  · rw [if_pos compatible]
    unfold exactFixedBobQuestionMass
    rw [Finset.sum_smul]
    apply Finset.sum_congr rfl
    intro ys _
    by_cases bob_compatible :
        ∀ j : Fin n, j ∈ fixedY → ys j = knownY j
    · rw [if_pos ⟨compatible, bob_compatible⟩,
        if_pos bob_compatible]
    · rw [if_neg (fun h => bob_compatible h.2),
        if_neg bob_compatible, zero_smul]
  · rw [if_neg compatible]
    apply Finset.sum_eq_zero
    intro ys _
    rw [if_neg]
    exact fun h => compatible h.1

theorem exactJointPrefixAliceOperatorMass_insert_bob
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (opposite_fixed : j ∈ fixedX) (fresh : j ∉ fixedY)
    (answer : {k : Fin n // k ∈ D} → A)
    (knownX : Fin n → X) (knownY : Fin n → Y) (y : Y) :
    exactJointPrefixAliceOperatorMass G n S D
        fixedX (insert j fixedY) answer
        knownX (Function.update knownY j y) =
      G.conditionalYGivenX (knownX j) y •
        exactJointPrefixAliceOperatorMass G n S D
          fixedX fixedY answer knownX knownY := by
  classical
  rw [exactJointPrefixAliceOperatorMass_eq_sum_bobMass,
    exactJointPrefixAliceOperatorMass_eq_sum_bobMass,
    Finset.smul_sum]
  apply Finset.sum_congr rfl
  intro xs _
  by_cases compatible :
      ∀ k : Fin n, k ∈ fixedX → xs k = knownX k
  · rw [if_pos compatible, if_pos compatible,
      exactFixedBobQuestionMass_insert
        G n fixedY j fresh xs knownY y,
      compatible j opposite_fixed, smul_smul]
  · rw [if_neg compatible, if_neg compatible, smul_zero]

theorem exactJointPrefixAliceOperatorFilter_insert_bob
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (opposite_fixed : j ∈ fixedX) (fresh : j ∉ fixedY)
    (answer : {k : Fin n // k ∈ D} → A)
    (knownX : Fin n → X) (knownY : Fin n → Y) (y : Y)
    (edge : G.conditionalYGivenX (knownX j) y ≠ 0) :
    exactJointPrefixAliceOperatorFilter G n S D
        fixedX (insert j fixedY) answer
        knownX (Function.update knownY j y) =
      exactJointPrefixAliceOperatorFilter G n S D
        fixedX fixedY answer knownX knownY := by
  unfold exactJointPrefixAliceOperatorFilter
  rw [exactJointPrefixQuestionMass_insert_bob
      G n fixedX fixedY j opposite_fixed fresh knownX knownY y,
    exactJointPrefixAliceOperatorMass_insert_bob
      G n S D fixedX fixedY j opposite_fixed fresh answer
      knownX knownY y,
    smul_smul]
  have coefficient :
      (G.conditionalYGivenX (knownX j) y *
        exactJointPrefixQuestionMass G n
          fixedX fixedY knownX knownY)⁻¹ *
        G.conditionalYGivenX (knownX j) y =
      (exactJointPrefixQuestionMass G n
        fixedX fixedY knownX knownY)⁻¹ := by
    by_cases zero :
        exactJointPrefixQuestionMass
          G n fixedX fixedY knownX knownY = 0
    · simp [zero]
    · field_simp
  rw [coefficient]

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairBobQuestionMask_coordinate_not_mem
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    seed.coordinate.val ∉ exactFairBobQuestionMask D seed := by
  classical
  intro member
  change seed.coordinate.val ∈
    (D ∪ (exactRight seed.coordinate seed.partition).image
      Subtype.val) ∪
      (exactLeftPrefix seed).image Subtype.val at member
  rcases Finset.mem_union.mp member with main | exposed
  · rcases Finset.mem_union.mp main with conditioned | right
    · exact (Finset.mem_sdiff.mp seed.coordinate.property).2 conditioned
    · obtain ⟨a, ha, same⟩ := Finset.mem_image.mp right
      have equal : a = seed.coordinate := Subtype.ext same
      exact exactRight_coordinate_not_mem
        seed.coordinate seed.partition (equal ▸ ha)
  · obtain ⟨a, ha, same⟩ := Finset.mem_image.mp exposed
    have equal : a = seed.coordinate := Subtype.ext same
    have belongs := exactLeftPrefix_subset seed ha
    exact exactLeft_coordinate_not_mem
      seed.coordinate seed.partition (equal ▸ belongs)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactPriorQuestion_coordinate_weight_ne_zero
    (G : Game X Y A B) (n : ℕ)
    (q : ExactFullQuestion X Y n)
    (supported : exactPriorQuestionWeight G n q ≠ 0)
    (j : Fin n) :
    G.questionWeight (q.1 j) (q.2 j) ≠ 0 := by
  intro zero
  apply supported
  unfold exactPriorQuestionWeight
  rw [Game.repeat_questionWeight]
  exact Finset.prod_eq_zero (Finset.mem_univ j) zero

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q : ExactFullQuestion X Y n)
    (answer : {j : Fin n // j ∈ D} → A)
    (supported : exactPriorQuestionWeight G n q ≠ 0) :
    exactAliceQuestionFilter G n S D seed
        (exactRevealCode D seed q) answer
        (q.1 seed.coordinate.val) =
      exactJointPrefixAliceOperatorFilter G n S D
        (insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed))
        (insert seed.coordinate.val
          (exactFairBobQuestionMask D seed))
        answer q.1 q.2 := by
  classical
  have edge := exactPriorQuestion_coordinate_weight_ne_zero
    G n q supported seed.coordinate.val
  have conditional :
      G.conditionalYGivenX
        (q.1 seed.coordinate.val) (q.2 seed.coordinate.val) ≠ 0 := by
    intro zero
    have factor := G.marginalX_mul_conditionalYGivenX
      (q.1 seed.coordinate.val) (q.2 seed.coordinate.val)
    rw [zero, mul_zero] at factor
    exact edge factor.symm
  rw [exactAliceQuestionFilter_eq_jointPrefixOperatorFilter
    G n S D seed q answer]
  have stable :=
    exactJointPrefixAliceOperatorFilter_insert_bob
      G n S D
      (insert seed.coordinate.val
        (exactFairAliceQuestionMask D seed))
      (exactFairBobQuestionMask D seed)
      seed.coordinate.val
      (Finset.mem_insert_self _ _)
      (exactFairBobQuestionMask_coordinate_not_mem D seed)
      answer q.1 q.2 (q.2 seed.coordinate.val) conditional
  simpa only [Function.update_eq_self] using stable.symm
