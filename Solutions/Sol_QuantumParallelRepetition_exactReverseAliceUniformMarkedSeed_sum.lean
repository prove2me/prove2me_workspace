import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_coordinate_mem
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_card
import Theorems.Thm_QuantumParallelRepetition_exactReverseLeftSide_complement
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharP.Defs
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Star
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Fin.SuccPred
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Powerset
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.IsEmpty.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Eq
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

variable {α : Type*} [Fintype α] [DecidableEq α]

omit [DecidableEq α] in
theorem fairPartitionWeight_pos : 0 < fairPartitionWeight α := by
  unfold fairPartitionWeight
  positivity

theorem reversePartitionWeight_pos_iff
    (hα : 0 < Fintype.card α) (s : Finset α) :
    0 < reversePartitionWeight s ↔ s.Nonempty := by
  constructor
  · intro hs
    apply Finset.card_pos.mp
    by_contra hcard
    have hzero : s.card = 0 := Nat.eq_zero_of_not_pos hcard
    simp [reversePartitionWeight, hzero] at hs
  · intro hs
    unfold reversePartitionWeight
    have hcard : 0 < s.card := Finset.card_pos.mpr hs
    exact mul_pos fairPartitionWeight_pos
      (div_pos
        (mul_pos (by norm_num) (by exact_mod_cast hcard))
        (by exact_mod_cast hα))

theorem reverseMarkedPartitionWeight_eq_forward
    {s : Finset α} {i : α} (hi : i ∈ s) :
    reverseMarkedPartitionWeight s i =
      forwardMarkedPartitionWeight α := by
  have hs : (s.card : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt (Finset.card_pos.mpr ⟨i, hi⟩))
  simp only [reverseMarkedPartitionWeight, if_pos hi,
    reversePartitionWeight, forwardMarkedPartitionWeight]
  field_simp

end

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

theorem exactReverseLeftSide_markedWeight
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    reverseMarkedPartitionWeight
        (exactReverseLeftSide seed) seed.coordinate =
      forwardMarkedPartitionWeight M :=
  reverseMarkedPartitionWeight_eq_forward
    (exactReverseLeftSide_coordinate_mem seed)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseLeftPermutation_card
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    Fintype.card
        (Equiv.Perm
          {j : M // j ∈ exactReverseLeftSide seed}) =
      Fintype.card
          (Equiv.Perm
            {j : M // j ∈
              exactLeft seed.coordinate seed.partition}) *
        ((exactLeft
          seed.coordinate seed.partition).card + 1) := by
  rw [Fintype.card_perm, Fintype.card_perm]
  simp [exactReverseLeftSide_card,
    Nat.factorial_succ, Nat.mul_comm]

theorem exactReverseLeftSeedWeight_eq_forward
    {M : Type*} [Fintype M] [DecidableEq M]
    (seed : ExactForwardSeed M) :
    exactReverseLeftSeedWeight seed =
      exactSeedWeight seed := by
  rw [exactReverseLeftSeedWeight,
    exactReverseLeftSide_markedWeight,
    exactReverseLeftPermutation_card]
  simp only [exactSeedWeight,
    forwardMarkedPartitionWeight,
    fairPartitionWeight,
    Fintype.card_fun, Fintype.card_bool,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one,
    Nat.cast_pow]
  field_simp
  ring

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseAliceConditionalSeedWeight_cancel
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (side : Finset M) (seed : ExactForwardSeed M) :
    reversePartitionWeight side *
        exactReverseAliceConditionalSeedWeight side seed =
      if exactReverseLeftSide seed = side
      then exactSeedWeight seed else 0 := by
  by_cases hs : exactReverseLeftSide seed = side
  · subst side
    have hpositive :
        0 < reversePartitionWeight
          (exactReverseLeftSide seed) :=
      (reversePartitionWeight_pos_iff nonempty
        (exactReverseLeftSide seed)).mpr
          ⟨seed.coordinate,
            exactReverseLeftSide_coordinate_mem seed⟩
    simp only [exactReverseAliceConditionalSeedWeight,
      ↓reduceIte]
    field_simp [hpositive.ne']
  · simp [exactReverseAliceConditionalSeedWeight, hs]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseAliceConditionalSeedWeight_eq_context_div_card
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (seed : ExactForwardSeed M) :
    exactReverseAliceConditionalSeedWeight
        (exactReverseLeftSide seed) seed =
      exactReverseSideContextWeight
        (exactReverseAliceContext seed) /
        ((exactReverseLeftSide seed).card : ℝ) := by
  have hside :
      0 < reversePartitionWeight
        (exactReverseLeftSide seed) :=
    (reversePartitionWeight_pos_iff nonempty
      (exactReverseLeftSide seed)).mpr
      ⟨seed.coordinate,
        exactReverseLeftSide_coordinate_mem seed⟩
  unfold exactReverseAliceConditionalSeedWeight
  rw [if_pos rfl]
  rw [← exactReverseLeftSeedWeight_eq_forward seed]
  unfold exactReverseLeftSeedWeight
    exactReverseSideContextWeight
    exactReverseAliceContext
    reverseMarkedPartitionWeight
  rw [if_pos (exactReverseLeftSide_coordinate_mem seed)]
  field_simp [hside.ne']

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem exactReverseAliceOriginalSeedWeight_factor
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (seed : ExactForwardSeed M) :
    exactSeedWeight seed =
      reversePartitionWeight (exactReverseLeftSide seed) *
        (exactReverseSideContextWeight
          (exactReverseAliceContext seed) /
            ((exactReverseLeftSide seed).card : ℝ)) := by
  calc
    exactSeedWeight seed =
        reversePartitionWeight (exactReverseLeftSide seed) *
          exactReverseAliceConditionalSeedWeight
            (exactReverseLeftSide seed) seed := by
      symm
      simpa using
        (exactReverseAliceConditionalSeedWeight_cancel
          nonempty (exactReverseLeftSide seed) seed)
    _ = _ := by
      rw [exactReverseAliceConditionalSeedWeight_eq_context_div_card
        nonempty seed]

theorem exactUniformFiniteMarkedAverage_sum
    (n : ℕ) (weight : ℝ) (statistic : Fin n → ℝ) :
    (∑ _marker : Fin n,
      weight * ((∑ position : Fin n, statistic position) / (n : ℝ))) =
      ∑ marker : Fin n, weight * statistic marker := by
  by_cases empty : n = 0
  · subst n
    simp
  · have nonzero : (n : ℝ) ≠ 0 := by
      exact_mod_cast empty
    simp [Finset.mul_sum, nonzero, div_eq_mul_inv, mul_left_comm]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 5000000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable

theorem solution
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M)
    (statistic : (side : Finset M) →
      ExactReverseSideContext M side → Fin side.card → ℝ) :
    (∑ seed : ExactForwardSeed M,
      exactSeedWeight seed *
        ((∑ marker : Fin (exactReverseLeftSide seed).card,
          statistic (exactReverseLeftSide seed)
            (exactReverseAliceContext seed) marker) /
          ((exactReverseLeftSide seed).card : ℝ))) =
      ∑ seed : ExactForwardSeed M,
        exactSeedWeight seed *
          statistic (exactReverseLeftSide seed)
            (exactReverseAliceContext seed)
            ((exactReverseAliceContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseLeftSide_coordinate_mem seed⟩) := by
  classical
  let markerWeight :
      (Σ side : Finset M,
        ExactReverseSideContext M side × Fin side.card) → ℝ :=
    fun marker =>
      reversePartitionWeight marker.1 *
        (exactReverseSideContextWeight marker.2.1 /
          (marker.1.card : ℝ))
  let markerAverage :
      (Σ side : Finset M,
        ExactReverseSideContext M side × Fin side.card) → ℝ :=
    fun marker =>
      (∑ position : Fin marker.1.card,
        statistic marker.1 marker.2.1 position) /
        (marker.1.card : ℝ)
  let markerValue :
      (Σ side : Finset M,
        ExactReverseSideContext M side × Fin side.card) → ℝ :=
    fun marker => statistic marker.1 marker.2.1 marker.2.2
  calc
    (∑ seed : ExactForwardSeed M,
      exactSeedWeight seed *
        ((∑ marker : Fin (exactReverseLeftSide seed).card,
          statistic (exactReverseLeftSide seed)
            (exactReverseAliceContext seed) marker) /
          ((exactReverseLeftSide seed).card : ℝ))) =
        ∑ marker : Σ side : Finset M,
          ExactReverseSideContext M side × Fin side.card,
            markerWeight marker * markerAverage marker := by
      apply Fintype.sum_equiv
        (exactReverseAliceWeightedMarkerEquiv (M := M))
      intro seed
      change
        exactSeedWeight seed *
          ((∑ marker : Fin (exactReverseLeftSide seed).card,
            statistic (exactReverseLeftSide seed)
              (exactReverseAliceContext seed) marker) /
            ((exactReverseLeftSide seed).card : ℝ)) =
          (reversePartitionWeight (exactReverseLeftSide seed) *
            (exactReverseSideContextWeight
              (exactReverseAliceContext seed) /
                ((exactReverseLeftSide seed).card : ℝ))) *
            ((∑ marker : Fin (exactReverseLeftSide seed).card,
              statistic (exactReverseLeftSide seed)
                (exactReverseAliceContext seed) marker) /
              ((exactReverseLeftSide seed).card : ℝ))
      rw [exactReverseAliceOriginalSeedWeight_factor nonempty]
    _ = ∑ marker : Σ side : Finset M,
          ExactReverseSideContext M side × Fin side.card,
            markerWeight marker * markerValue marker := by
      simp only [Fintype.sum_sigma, Fintype.sum_prod_type]
      apply Finset.sum_congr rfl
      intro side _
      apply Finset.sum_congr rfl
      intro context _
      exact exactUniformFiniteMarkedAverage_sum
        side.card
        (reversePartitionWeight side *
          (exactReverseSideContextWeight context /
            (side.card : ℝ)))
        (statistic side context)
    _ = ∑ seed : ExactForwardSeed M,
        exactSeedWeight seed *
          statistic (exactReverseLeftSide seed)
            (exactReverseAliceContext seed)
            ((exactReverseAliceContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseLeftSide_coordinate_mem seed⟩) := by
      symm
      apply Fintype.sum_equiv
        (exactReverseAliceWeightedMarkerEquiv (M := M))
      intro seed
      change
        exactSeedWeight seed *
          statistic (exactReverseLeftSide seed)
            (exactReverseAliceContext seed)
            ((exactReverseAliceContext seed).sideRank
              ⟨seed.coordinate,
                exactReverseLeftSide_coordinate_mem seed⟩) =
          (reversePartitionWeight (exactReverseLeftSide seed) *
            (exactReverseSideContextWeight
              (exactReverseAliceContext seed) /
                ((exactReverseLeftSide seed).card : ℝ))) *
            statistic (exactReverseLeftSide seed)
              (exactReverseAliceContext seed)
              ((exactReverseAliceContext seed).sideRank
                ⟨seed.coordinate,
                  exactReverseLeftSide_coordinate_mem seed⟩)
      rw [exactReverseAliceOriginalSeedWeight_factor nonempty]
