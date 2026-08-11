import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_exactLeft_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactRight_coordinate_not_mem
import Theorems.Thm_QuantumParallelRepetition_exactFixedAliceQuestionMass_eq_product
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceContext_prefix_before_marked
import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceMarkerDecode_rightInverse
import Theorems.Thm_QuantumParallelRepetition_exactBobQuestionFilter_eq_jointPrefixOperatorFilter
import Theorems.Thm_QuantumParallelRepetition_exactAliceQuestionFilter_eq_fullJointPrefixOperatorFilter
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.GroupWithZero.Action
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.BigOperators
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Nat
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.Matrix.HermitianFunctionalCalculus
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Erase
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.SuccPred
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Function.Basic
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Order.Nat
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Ring.Real
import Mathlib.Topology.Algebra.Star.Real
import Mathlib.Topology.Defs.Filter
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.MetricSpace.Basic
import Mathlib.Topology.MetricSpace.Defs
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

open scoped BigOperators Kronecker

namespace Game

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem questionWeight_le_marginalY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.single_le_sum
    (fun x _ => G.weight_nonneg x y)
    (Finset.mem_univ x)

theorem marginalY_mul_conditionalXGivenY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.marginalY y * G.conditionalXGivenY y x =
      G.questionWeight x y := by
  unfold conditionalXGivenY
  by_cases hy : G.marginalY y = 0
  · have hzero : G.questionWeight x y = 0 := by
      have hle := G.questionWeight_le_marginalY x y
      have hnonneg := G.weight_nonneg x y
      rw [hy] at hle
      linarith
    simp [hy, hzero]
  · field_simp

end Game

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

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
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFixedAliceQuestionMass_insert
    (G : Game X Y A B) (n : ℕ)
    (fixed : Finset (Fin n)) (j : Fin n) (fresh : j ∉ fixed)
    (known : Fin n → X) (ys : Fin n → Y) (x : X) :
    exactFixedAliceQuestionMass
        G n (insert j fixed) (Function.update known j x) ys =
      G.conditionalXGivenY (ys j) x *
        exactFixedAliceQuestionMass G n fixed known ys := by
  classical
  rw [exactFixedAliceQuestionMass_eq_product,
    exactFixedAliceQuestionMass_eq_product]
  have tails :
      (∏ k ∈ (Finset.univ : Finset (Fin n)).erase j,
        if k ∈ insert j fixed then
          G.questionWeight
            (Function.update known j x k) (ys k)
        else G.marginalY (ys k)) =
      ∏ k ∈ (Finset.univ : Finset (Fin n)).erase j,
        if k ∈ fixed then
          G.questionWeight (known k) (ys k)
        else G.marginalY (ys k) := by
    apply Finset.prod_congr rfl
    intro k hk
    have hkj : k ≠ j := (Finset.mem_erase.mp hk).1
    simp [hkj]
  rw [← Finset.mul_prod_erase Finset.univ
        (fun k : Fin n =>
          if k ∈ insert j fixed then
            G.questionWeight
              (Function.update known j x k) (ys k)
          else G.marginalY (ys k)) (Finset.mem_univ j),
      ← Finset.mul_prod_erase Finset.univ
        (fun k : Fin n =>
          if k ∈ fixed then
            G.questionWeight (known k) (ys k)
          else G.marginalY (ys k)) (Finset.mem_univ j),
      tails]
  simp only [Finset.mem_insert_self, ↓reduceIte,
    Function.update_self, fresh]
  rw [← G.marginalY_mul_conditionalXGivenY x (ys j)]
  ring

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

@[simp] theorem exactReverseAliceContext_otherPrefix
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseContextOtherPrefix
        (exactReverseAliceContext seed) =
      exactRightPrefix seed := by
  rfl

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

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

theorem exactJointPrefixQuestionMass_eq_sum_alice
    (G : Game X Y A B) (n : ℕ)
    (fixedX fixedY : Finset (Fin n))
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    exactJointPrefixQuestionMass
        G n fixedX fixedY knownX knownY =
      ∑ ys : Fin n → Y,
        if ∀ j : Fin n, j ∈ fixedY → ys j = knownY j then
          exactFixedAliceQuestionMass
            G n fixedX knownX ys
        else 0 := by
  classical
  unfold exactJointPrefixQuestionMass
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro ys _
  unfold exactFixedAliceQuestionMass
  by_cases compatible :
      ∀ j : Fin n, j ∈ fixedY → ys j = knownY j
  · rw [if_pos compatible]
    apply Finset.sum_congr rfl
    intro xs _
    by_cases alice_compatible :
        ∀ j : Fin n, j ∈ fixedX → xs j = knownX j
    · rw [if_pos ⟨alice_compatible, compatible⟩,
        if_pos alice_compatible]
    · rw [if_neg (fun h => alice_compatible h.1),
        if_neg alice_compatible]
  · rw [if_neg compatible]
    apply Finset.sum_eq_zero
    intro xs _
    rw [if_neg]
    exact fun h => compatible h.2

theorem exactJointPrefixQuestionMass_insert_alice
    (G : Game X Y A B) (n : ℕ)
    (fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (fresh : j ∉ fixedX) (opposite_fixed : j ∈ fixedY)
    (knownX : Fin n → X) (knownY : Fin n → Y) (x : X) :
    exactJointPrefixQuestionMass G n
        (insert j fixedX) fixedY
        (Function.update knownX j x) knownY =
      G.conditionalXGivenY (knownY j) x *
        exactJointPrefixQuestionMass G n
          fixedX fixedY knownX knownY := by
  classical
  rw [exactJointPrefixQuestionMass_eq_sum_alice,
    exactJointPrefixQuestionMass_eq_sum_alice,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro ys _
  by_cases compatible :
      ∀ k : Fin n, k ∈ fixedY → ys k = knownY k
  · rw [if_pos compatible, if_pos compatible,
      exactFixedAliceQuestionMass_insert
        G n fixedX j fresh knownX ys x,
      compatible j opposite_fixed]
  · simp [compatible]

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

theorem exactJointPrefixBobOperatorMass_eq_sum_aliceMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n))
    (answer : {j : Fin n // j ∈ D} → B)
    (knownX : Fin n → X) (knownY : Fin n → Y) :
    exactJointPrefixBobOperatorMass
        G n S D fixedX fixedY answer knownX knownY =
      ∑ ys : Fin n → Y,
        if ∀ j : Fin n, j ∈ fixedY → ys j = knownY j then
          exactFixedAliceQuestionMass
              G n fixedX knownX ys •
            conditionedBobEffect G n S D answer ys
        else 0 := by
  classical
  unfold exactJointPrefixBobOperatorMass
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro ys _
  by_cases compatible :
      ∀ j : Fin n, j ∈ fixedY → ys j = knownY j
  · rw [if_pos compatible]
    unfold exactFixedAliceQuestionMass
    rw [Finset.sum_smul]
    apply Finset.sum_congr rfl
    intro xs _
    by_cases alice_compatible :
        ∀ j : Fin n, j ∈ fixedX → xs j = knownX j
    · rw [if_pos ⟨alice_compatible, compatible⟩,
        if_pos alice_compatible]
    · rw [if_neg (fun h => alice_compatible h.1),
        if_neg alice_compatible, zero_smul]
  · rw [if_neg compatible]
    apply Finset.sum_eq_zero
    intro xs _
    rw [if_neg]
    exact fun h => compatible h.2

theorem exactJointPrefixBobOperatorMass_insert_alice
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (fresh : j ∉ fixedX) (opposite_fixed : j ∈ fixedY)
    (answer : {k : Fin n // k ∈ D} → B)
    (knownX : Fin n → X) (knownY : Fin n → Y) (x : X) :
    exactJointPrefixBobOperatorMass G n S D
        (insert j fixedX) fixedY answer
        (Function.update knownX j x) knownY =
      G.conditionalXGivenY (knownY j) x •
        exactJointPrefixBobOperatorMass G n S D
          fixedX fixedY answer knownX knownY := by
  classical
  rw [exactJointPrefixBobOperatorMass_eq_sum_aliceMass,
    exactJointPrefixBobOperatorMass_eq_sum_aliceMass,
    Finset.smul_sum]
  apply Finset.sum_congr rfl
  intro ys _
  by_cases compatible :
      ∀ k : Fin n, k ∈ fixedY → ys k = knownY k
  · rw [if_pos compatible, if_pos compatible,
      exactFixedAliceQuestionMass_insert
        G n fixedX j fresh knownX ys x,
      compatible j opposite_fixed, smul_smul]
  · rw [if_neg compatible, if_neg compatible, smul_zero]

theorem exactJointPrefixBobOperatorFilter_insert_alice
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D fixedX fixedY : Finset (Fin n)) (j : Fin n)
    (fresh : j ∉ fixedX) (opposite_fixed : j ∈ fixedY)
    (answer : {k : Fin n // k ∈ D} → B)
    (knownX : Fin n → X) (knownY : Fin n → Y) (x : X)
    (edge : G.conditionalXGivenY (knownY j) x ≠ 0) :
    exactJointPrefixBobOperatorFilter G n S D
        (insert j fixedX) fixedY answer
        (Function.update knownX j x) knownY =
      exactJointPrefixBobOperatorFilter G n S D
        fixedX fixedY answer knownX knownY := by
  unfold exactJointPrefixBobOperatorFilter
  rw [exactJointPrefixQuestionMass_insert_alice
      G n fixedX fixedY j fresh opposite_fixed knownX knownY x,
    exactJointPrefixBobOperatorMass_insert_alice
      G n S D fixedX fixedY j fresh opposite_fixed answer
      knownX knownY x,
    smul_smul]
  have coefficient :
      (G.conditionalXGivenY (knownY j) x *
        exactJointPrefixQuestionMass G n
          fixedX fixedY knownX knownY)⁻¹ *
        G.conditionalXGivenY (knownY j) x =
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
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseContextQuestionPrefix_eq_image
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseContextQuestionPrefix
        D side context marker.val =
      (exactReverseContextPrefixBefore
        context marker).image Subtype.val := by
  classical
  unfold exactReverseContextQuestionPrefix
    exactReverseContextPrefixBefore
    exactOrderedSidePrefix
  rw [Finset.image_image]
  rfl

theorem exactReverseBobFixedXMask_eq_insert_fair
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    exactReverseBobFixedXMask D
        (exactReverseLeftSide seed)
        (exactReverseAliceContext seed) =
      insert seed.coordinate.val
        (exactFairAliceQuestionMask D seed) := by
  classical
  unfold exactReverseBobFixedXMask
    exactFairAliceQuestionMask
  rw [exactReverseAliceContext_otherPrefix]
  unfold exactReverseLeftSide
  rw [Finset.image_insert]
  ext j
  simp only [Finset.mem_union, Finset.mem_insert]
  tauto

theorem exactReverseBobPrefixYMask_eq_fair
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    exactReverseBobPrefixYMask D
        (exactReverseLeftSide seed)
        (exactReverseAliceContext seed)
        (((exactReverseAliceContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩).val) =
      exactFairBobQuestionMask D seed := by
  classical
  unfold exactReverseBobPrefixYMask
    exactFairBobQuestionMask
  rw [exactReverseContextQuestionPrefix_eq_image,
    exactReverseAliceContext_prefix_before_marked]
  rfl

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

theorem exactReverseContextQuestionPrefix_succ
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseContextQuestionPrefix
        D side context (marker.val + 1) =
      insert (context.sideRank.symm marker).val.val
        (exactReverseContextQuestionPrefix
          D side context marker.val) := by
  classical
  ext j
  constructor
  · intro member
    obtain ⟨a, ha, equation⟩ := Finset.mem_image.mp member
    have lower := (Finset.mem_filter.mp ha).2
    have below : (context.sideRank a).val ≤ marker.val :=
      Nat.lt_succ_iff.mp (by simpa [Nat.succ_eq_add_one] using lower)
    rcases Nat.lt_or_eq_of_le below with earlier | same_rank
    · apply Finset.mem_insert_of_mem
      exact Finset.mem_image.mpr
        ⟨a, Finset.mem_filter.mpr
          ⟨Finset.mem_univ a, earlier⟩, equation⟩
    · have same : context.sideRank a = marker :=
        Fin.ext same_rank
      have position : a = context.sideRank.symm marker := by
        apply context.sideRank.injective
        simpa using same
      subst a
      exact Finset.mem_insert.mpr (Or.inl equation.symm)
  · intro member
    rcases Finset.mem_insert.mp member with marked | earlier
    · subst j
      apply Finset.mem_image.mpr
      refine ⟨context.sideRank.symm marker, ?_, rfl⟩
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_univ _, ?_⟩
      simp
    · obtain ⟨a, ha, equation⟩ := Finset.mem_image.mp earlier
      apply Finset.mem_image.mpr
      refine ⟨a, ?_, equation⟩
      apply Finset.mem_filter.mpr
      exact ⟨Finset.mem_univ a,
        Nat.lt_trans (Finset.mem_filter.mp ha).2
          (Nat.lt_succ_self marker.val)⟩

theorem exactFairAliceQuestionMask_coordinate_not_mem
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    seed.coordinate.val ∉ exactFairAliceQuestionMask D seed := by
  classical
  intro member
  change seed.coordinate.val ∈
    (D ∪ (exactLeft seed.coordinate seed.partition).image
      Subtype.val) ∪
      (exactRightPrefix seed).image Subtype.val at member
  rcases Finset.mem_union.mp member with main | exposed
  · rcases Finset.mem_union.mp main with conditioned | left
    · exact (Finset.mem_sdiff.mp seed.coordinate.property).2 conditioned
    · obtain ⟨a, ha, same⟩ := Finset.mem_image.mp left
      have equal : a = seed.coordinate := Subtype.ext same
      exact exactLeft_coordinate_not_mem
        seed.coordinate seed.partition (equal ▸ ha)
  · obtain ⟨a, ha, same⟩ := Finset.mem_image.mp exposed
    have equal : a = seed.coordinate := Subtype.ext same
    have belongs := exactRightPrefix_subset seed ha
    exact exactRight_coordinate_not_mem
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

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactReverseAliceMarker_induction
    {n : ℕ} (D : Finset (Fin n))
    (P : (side : Finset (SourceRemainingCoordinate D)) →
      ExactReverseSideContext
        (SourceRemainingCoordinate D) side → Fin side.card → Prop)
    (allSeeds : ∀ seed : ExactRemainingSeed D,
      P (exactReverseLeftSide seed)
        (exactReverseAliceContext seed)
        ((exactReverseAliceContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩)) :
    ∀ (side : Finset (SourceRemainingCoordinate D))
      (context : ExactReverseSideContext
        (SourceRemainingCoordinate D) side)
      (marker : Fin side.card), P side context marker := by
  intro side context marker
  let seed := exactReverseAliceMarkerDecode side context marker
  let motive :
      (Σ side : Finset (SourceRemainingCoordinate D),
        ExactReverseSideContext
          (SourceRemainingCoordinate D) side × Fin side.card) → Prop :=
    fun code => P code.1 code.2.1 code.2.2
  have actual : motive (exactReverseAliceMarkerCode seed) :=
    allSeeds seed
  have inverse : exactReverseAliceMarkerCode seed =
      ⟨side, context, marker⟩ := by
    exact exactReverseAliceMarkerDecode_rightInverse
      side context marker
  rw [inverse] at actual
  exact actual

theorem exactReverseBobPrefixYMask_succ
    {n : ℕ} (D : Finset (Fin n))
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseBobPrefixYMask D side context
        (marker.val + 1) =
      insert (context.sideRank.symm marker).val.val
        (exactReverseBobPrefixYMask D side context
          marker.val) := by
  classical
  unfold exactReverseBobPrefixYMask
  rw [exactReverseContextQuestionPrefix_succ]
  ext j
  simp only [Finset.mem_union, Finset.mem_insert]
  tauto

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactBobQuestionFilter_eq_fullJointPrefixOperatorFilter
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (q : ExactFullQuestion X Y n)
    (answer : {j : Fin n // j ∈ D} → B)
    (supported : exactPriorQuestionWeight G n q ≠ 0) :
    exactBobQuestionFilter G n S D seed
        (exactRevealCode D seed q) answer
        (q.2 seed.coordinate.val) =
      exactJointPrefixBobOperatorFilter G n S D
        (insert seed.coordinate.val
          (exactFairAliceQuestionMask D seed))
        (insert seed.coordinate.val
          (exactFairBobQuestionMask D seed))
        answer q.1 q.2 := by
  classical
  have edge := exactPriorQuestion_coordinate_weight_ne_zero
    G n q supported seed.coordinate.val
  have conditional :
      G.conditionalXGivenY
        (q.2 seed.coordinate.val) (q.1 seed.coordinate.val) ≠ 0 := by
    intro zero
    have factor := G.marginalY_mul_conditionalXGivenY
      (q.1 seed.coordinate.val) (q.2 seed.coordinate.val)
    rw [zero, mul_zero] at factor
    exact edge factor.symm
  rw [exactBobQuestionFilter_eq_jointPrefixOperatorFilter
    G n S D seed q answer]
  have stable :=
    exactJointPrefixBobOperatorFilter_insert_alice
      G n S D
      (exactFairAliceQuestionMask D seed)
      (insert seed.coordinate.val
        (exactFairBobQuestionMask D seed))
      seed.coordinate.val
      (exactFairAliceQuestionMask_coordinate_not_mem D seed)
      (Finset.mem_insert_self _ _)
      answer q.1 q.2 (q.1 seed.coordinate.val) conditional
  simpa only [Function.update_eq_self] using stable.symm

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
    (side : Finset (SourceRemainingCoordinate D))
    (context : ExactReverseSideContext
      (SourceRemainingCoordinate D) side)
    (marker : Fin side.card) :
    exactReverseBobHighQuestionPotential
        G n S D side context marker =
      exactReverseBobAlignedCfcPrefixPotential
        G n S D side context (marker.val + 1) := by
  classical
  apply exactReverseAliceMarker_induction D
    (fun side context marker =>
      exactReverseBobHighQuestionPotential
          G n S D side context marker =
        exactReverseBobAlignedCfcPrefixPotential
          G n S D side context (marker.val + 1))
  intro seed
  have decoded :=
    (exactReverseAliceWeightedMarkerEquiv
      (M := SourceRemainingCoordinate D)).left_inv seed
  change
    exactReverseAliceMarkerDecode
        (exactReverseLeftSide seed)
        (exactReverseAliceContext seed)
        ((exactReverseAliceContext seed).sideRank
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩) = seed
    at decoded
  unfold exactReverseBobHighQuestionPotential
    exactReverseBobAlignedCfcPrefixPotential
  dsimp only
  rw [decoded, exactReverseBobPrefixYMask_succ,
    Equiv.symm_apply_apply,
    exactReverseBobFixedXMask_eq_insert_fair,
    exactReverseBobPrefixYMask_eq_fair]
  apply Finset.sum_congr rfl
  intro q _
  by_cases supported : exactPriorQuestionWeight G n q = 0
  · simp [supported]
  · congr 1
    apply Finset.sum_congr rfl
    intro aliceAnswer _
    apply Finset.sum_congr rfl
    intro bobAnswer _
    by_cases accepted : ∀ j : {j : Fin n // j ∈ D},
      G.predicate (q.1 j.val) (q.2 j.val)
        (aliceAnswer j) (bobAnswer j) = true
    · have sourceAccepted : exactHistoryAccepted G n D
          ⟨seed, exactRevealCode D seed q,
            aliceAnswer, bobAnswer⟩ := by
        exact accepted
      simp only [if_pos sourceAccepted, if_pos accepted]
      rw [exactAliceQuestionFilter_eq_fullJointPrefixOperatorFilter
          G n S D seed q aliceAnswer supported,
        exactBobQuestionFilter_eq_fullJointPrefixOperatorFilter
          G n S D seed q bobAnswer supported]
    · have sourceRejected : ¬ exactHistoryAccepted G n D
          ⟨seed, exactRevealCode D seed q,
            aliceAnswer, bobAnswer⟩ := by
        exact accepted
      simp only [if_neg sourceRejected, if_neg accepted]
