import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_02
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.Submodule.LinearMap
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
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
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Disjoint
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
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
import Mathlib.Data.Subtype
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.GroupTheory.GroupAction.Ring
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Disjoint
import Mathlib.Order.Lattice
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
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

theorem questionWeight_le_marginalY
    (G : Game X Y A B) (x : X) (y : Y) :
    G.questionWeight x y ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.single_le_sum
    (fun x _ => G.weight_nonneg x y)
    (Finset.mem_univ x)

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

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section ActualHistoryWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullHistoryWeight_mul_hidden
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n))
    (hL : L ⊆ Finset.univ \ D)
    (h : FullSubsetHistory X Y n D L)
    (hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X)
    (hy : {i : Fin n // i ∈ L} → Y) :
    fullHistoryWeight G h *
        fullHistoryHiddenAliceWeight G h hx *
        fullHistoryHiddenBobWeight G h hy =
      (G.repeat n).questionWeight
        (fullHistoryAliceQuestion h hx)
        (fullHistoryBobQuestion h hy) := by
  classical
  let q : Fin n → ℝ := fun i =>
    G.questionWeight
      (fullHistoryAliceQuestion h hx i)
      (fullHistoryBobQuestion h hy i)
  have hDprod :
      (∏ i : {i : Fin n // i ∈ D},
        G.questionWeight
          (h.aliceConditioned i) (h.bobConditioned i)) =
        ∏ i ∈ D, q i := by
    calc
      (∏ i : {i : Fin n // i ∈ D},
        G.questionWeight
          (h.aliceConditioned i) (h.bobConditioned i)) =
        ∏ i : {i : Fin n // i ∈ D}, q i := by
          apply Finset.prod_congr rfl
          intro i _
          simp [q, fullHistoryAliceQuestion,
            fullHistoryBobQuestion, i.property]
      _ = ∏ i ∈ D, q i := Finset.prod_coe_sort D q
  have hLprod :
      (∏ i : {i : Fin n // i ∈ L},
        G.marginalX (h.aliceRevealed i)) *
      (∏ i : {i : Fin n // i ∈ L},
        G.conditionalYGivenX
          (h.aliceRevealed i) (hy i)) =
        ∏ i ∈ L, q i := by
    rw [← Finset.prod_mul_distrib]
    calc
      (∏ i : {i : Fin n // i ∈ L},
        G.marginalX (h.aliceRevealed i) *
          G.conditionalYGivenX (h.aliceRevealed i) (hy i)) =
        ∏ i : {i : Fin n // i ∈ L}, q i := by
          apply Finset.prod_congr rfl
          intro i _
          have hiD : (i : Fin n) ∉ D :=
            (Finset.mem_sdiff.mp (hL i.property)).2
          simpa [q, fullHistoryAliceQuestion,
            fullHistoryBobQuestion, hiD, i.property] using
              G.marginalX_mul_conditionalYGivenX
                (h.aliceRevealed i) (hy i)
      _ = ∏ i ∈ L, q i := Finset.prod_coe_sort L q
  have hRprod :
      (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
        G.marginalY (h.bobRemaining i)) *
      (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
        G.conditionalXGivenY
          (h.bobRemaining i) (hx i)) =
        ∏ i ∈ fullHistoryRemaining n D L, q i := by
    rw [← Finset.prod_mul_distrib]
    calc
      (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
        G.marginalY (h.bobRemaining i) *
          G.conditionalXGivenY (h.bobRemaining i) (hx i)) =
        ∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L}, q i := by
          apply Finset.prod_congr rfl
          intro i _
          have hiD : (i : Fin n) ∉ D :=
            (Finset.mem_sdiff.mp
              (Finset.mem_sdiff.mp i.property).1).2
          have hiL : (i : Fin n) ∉ L :=
            (Finset.mem_sdiff.mp i.property).2
          simpa [q, fullHistoryAliceQuestion,
            fullHistoryBobQuestion, hiD, hiL] using
              G.marginalY_mul_conditionalXGivenY
                (hx i) (h.bobRemaining i)
      _ = ∏ i ∈ fullHistoryRemaining n D L, q i :=
        Finset.prod_coe_sort (fullHistoryRemaining n D L) q
  have hDL : Disjoint D L := by
    apply Finset.disjoint_left.mpr
    intro i hiD hiL
    exact (Finset.mem_sdiff.mp (hL hiL)).2 hiD
  have hDR : Disjoint (D ∪ L) (fullHistoryRemaining n D L) := by
    apply Finset.disjoint_left.mpr
    intro i hiUnion hiR
    have hiD : i ∉ D :=
      (Finset.mem_sdiff.mp (Finset.mem_sdiff.mp hiR).1).2
    have hiL : i ∉ L := (Finset.mem_sdiff.mp hiR).2
    rcases Finset.mem_union.mp hiUnion with hi | hi
    · exact hiD hi
    · exact hiL hi
  have hcover : D ∪ L ∪ fullHistoryRemaining n D L =
      (Finset.univ : Finset (Fin n)) := by
    ext i
    simp [fullHistoryRemaining]
    tauto
  rw [Game.repeat_questionWeight]
  change fullHistoryWeight G h *
      fullHistoryHiddenAliceWeight G h hx *
      fullHistoryHiddenBobWeight G h hy =
    ∏ i : Fin n, q i
  unfold fullHistoryWeight fullHistoryHiddenAliceWeight
    fullHistoryHiddenBobWeight
  calc
    ((∏ i : {i : Fin n // i ∈ D},
        G.questionWeight
          (h.aliceConditioned i) (h.bobConditioned i)) *
      (∏ i : {i : Fin n // i ∈ L},
        G.marginalX (h.aliceRevealed i)) *
      (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
        G.marginalY (h.bobRemaining i))) *
      (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
        G.conditionalXGivenY
          (h.bobRemaining i) (hx i)) *
      (∏ i : {i : Fin n // i ∈ L},
        G.conditionalYGivenX
          (h.aliceRevealed i) (hy i)) =
      (∏ i : {i : Fin n // i ∈ D},
        G.questionWeight
          (h.aliceConditioned i) (h.bobConditioned i)) *
        ((∏ i : {i : Fin n // i ∈ L},
          G.marginalX (h.aliceRevealed i)) *
          (∏ i : {i : Fin n // i ∈ L},
            G.conditionalYGivenX
              (h.aliceRevealed i) (hy i))) *
        ((∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
          G.marginalY (h.bobRemaining i)) *
          (∏ i : {i : Fin n // i ∈ fullHistoryRemaining n D L},
            G.conditionalXGivenY
              (h.bobRemaining i) (hx i))) := by ring
    _ = (∏ i ∈ D, q i) *
          (∏ i ∈ L, q i) *
          (∏ i ∈ fullHistoryRemaining n D L, q i) := by
            rw [hDprod, hLprod, hRprod]
    _ = ∏ i : Fin n, q i := by
      rw [← Finset.prod_union hDL,
        ← Finset.prod_union hDR, hcover]

theorem conditionedAnswerMatches_iff
    {T : Type*} {n : ℕ}
    (D : Finset (Fin n))
    (answer : Fin n → T)
    (α : {i : Fin n // i ∈ D} → T) :
    (∀ (i : Fin n) (hi : i ∈ D), answer i = α ⟨i, hi⟩) ↔
      α = fun i : {i : Fin n // i ∈ D} => answer (i : Fin n) := by
  constructor
  · intro h
    funext i
    exact (h i i.property).symm
  · intro h i hi
    subst α
    rfl

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

theorem finite_sum_four_swap
    {I J K T : Type*}
    [Fintype I] [Fintype J] [Fintype K] [Fintype T]
    (f : I → J → K → T → ℝ) :
    (∑ i : I, ∑ j : J, ∑ k : K, ∑ t : T, f i j k t) =
      ∑ k : K, ∑ t : T, ∑ i : I, ∑ j : J, f i j k t := by
  classical
  calc
    (∑ i : I, ∑ j : J, ∑ k : K, ∑ t : T, f i j k t) =
      ∑ i : I, ∑ k : K, ∑ j : J, ∑ t : T, f i j k t := by
        apply Finset.sum_congr rfl
        intro i _
        rw [Finset.sum_comm]
    _ = ∑ k : K, ∑ i : I, ∑ j : J, ∑ t : T, f i j k t := by
      rw [Finset.sum_comm]
    _ = ∑ k : K, ∑ i : I, ∑ t : T, ∑ j : J, f i j k t := by
      apply Finset.sum_congr rfl
      intro k _
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.sum_comm]
    _ = ∑ k : K, ∑ t : T, ∑ i : I, ∑ j : J, f i j k t := by
      apply Finset.sum_congr rfl
      intro k _
      rw [Finset.sum_comm]

theorem fullHistoryWinIndicator_eq_question
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X)
    (hy : {i : Fin n // i ∈ L} → Y)
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B) :
    fullHistoryWinIndicator G h α β =
      fullQuestionWinIndicator G D
        (fullHistoryAliceQuestion h hx)
        (fullHistoryBobQuestion h hy) α β := by
  classical
  unfold fullHistoryWinIndicator fullQuestionWinIndicator
  congr 1
  apply propext
  constructor
  · intro hw i
    simpa [fullHistoryAliceQuestion,
      fullHistoryBobQuestion, i.property] using hw i
  · intro hw i
    simpa [fullHistoryAliceQuestion,
      fullHistoryBobQuestion, i.property] using hw i

theorem conditionedEffects_postselection_sum
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (xs : Fin n → X) (ys : Fin n → Y) :
    (∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullQuestionWinIndicator G D xs ys α β *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α xs)
            (conditionedBobEffect G n S D β ys)) =
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        if ∀ i : {i : Fin n // i ∈ D},
          G.predicate (xs i) (ys i) (aa i) (bb i) = true
        then S.outcomeProbability xs ys aa bb else 0 := by
  classical
  simp_rw [conditionedEffects_born_expansion G n S D]
  calc
    (∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullQuestionWinIndicator G D xs ys α β *
          (∑ aa : Fin n → A, ∑ bb : Fin n → B,
            if ∀ (i : Fin n) (hi : i ∈ D), aa i = α ⟨i, hi⟩ then
              if ∀ (i : Fin n) (hi : i ∈ D), bb i = β ⟨i, hi⟩ then
                S.outcomeProbability xs ys aa bb else 0
            else 0)) =
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        fullQuestionWinIndicator G D xs ys α β *
          (if ∀ (i : Fin n) (hi : i ∈ D), aa i = α ⟨i, hi⟩ then
            if ∀ (i : Fin n) (hi : i ∈ D), bb i = β ⟨i, hi⟩ then
              S.outcomeProbability xs ys aa bb else 0
          else 0) := by
            simp only [Finset.mul_sum]
    _ = ∑ aa : Fin n → A, ∑ bb : Fin n → B,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullQuestionWinIndicator G D xs ys α β *
          (if ∀ (i : Fin n) (hi : i ∈ D), aa i = α ⟨i, hi⟩ then
            if ∀ (i : Fin n) (hi : i ∈ D), bb i = β ⟨i, hi⟩ then
              S.outcomeProbability xs ys aa bb else 0
          else 0) := finite_sum_four_swap _
    _ = ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        if ∀ i : {i : Fin n // i ∈ D},
          G.predicate (xs i) (ys i) (aa i) (bb i) = true
        then S.outcomeProbability xs ys aa bb else 0 := by
      apply Finset.sum_congr rfl
      intro aa _
      apply Finset.sum_congr rfl
      intro bb _
      simp [conditionedAnswerMatches_iff,
        fullQuestionWinIndicator, mul_ite]

theorem repeated_partialWinMass_expansion
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n) D) =
      ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        (G.repeat n).questionWeight xs ys *
          (if ∀ i : {i : Fin n // i ∈ D},
            G.predicate (xs i) (ys i) (aa i) (bb i) = true
          then S.outcomeProbability xs ys aa bb else 0) := by
  classical
  unfold FiniteEventLaw.eventMass FiniteEventLaw.winEvent
  simp only [Finset.sum_filter]
  simp only [repeatedCoordinateWin, strategyEventLaw]
  change
    (∑ ω : (Fin n → X) × (Fin n → Y) ×
      (Fin n → A) × (Fin n → B),
      if ∀ i ∈ D,
        G.predicate (ω.1 i) (ω.2.1 i)
          (ω.2.2.1 i) (ω.2.2.2 i) = true
      then (G.repeat n).questionWeight ω.1 ω.2.1 *
        S.outcomeProbability ω.1 ω.2.1 ω.2.2.1 ω.2.2.2
      else 0) = _
  simp_rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  apply Finset.sum_congr rfl
  intro aa _
  apply Finset.sum_congr rfl
  intro bb _
  have hiff :
      (∀ i ∈ D, G.predicate (xs i) (ys i) (aa i) (bb i) = true) ↔
        (∀ i : {i : Fin n // i ∈ D},
          G.predicate (xs i) (ys i) (aa i) (bb i) = true) := by
    constructor
    · intro h i
      exact h i i.property
    · intro h i hi
      exact h ⟨i, hi⟩
  by_cases hw : ∀ i : {i : Fin n // i ∈ D},
    G.predicate (xs i) (ys i) (aa i) (bb i) = true
  · rw [if_pos (hiff.mpr hw), if_pos hw]
  · rw [if_neg (mt hiff.mp hw), if_neg hw, mul_zero]

theorem fullQuestionConditionedBornMass_eq
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        (G.repeat n).questionWeight xs ys *
          fullQuestionWinIndicator G D xs ys α β *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α xs)
            (conditionedBobEffect G n S D β ys)) =
      (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n) D) := by
  classical
  calc
    (∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        (G.repeat n).questionWeight xs ys *
          fullQuestionWinIndicator G D xs ys α β *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α xs)
            (conditionedBobEffect G n S D β ys)) =
      ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
        (G.repeat n).questionWeight xs ys *
          (∑ α : {i : Fin n // i ∈ D} → A,
            ∑ β : {i : Fin n // i ∈ D} → B,
              fullQuestionWinIndicator G D xs ys α β *
                bornTracePairing S.state.matrix
                  (conditionedAliceEffect G n S D α xs)
                  (conditionedBobEffect G n S D β ys)) := by
        apply Finset.sum_congr rfl
        intro xs _
        apply Finset.sum_congr rfl
        intro ys _
        simp only [Finset.mul_sum, mul_assoc]
    _ = ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        (G.repeat n).questionWeight xs ys *
          (if ∀ i : {i : Fin n // i ∈ D},
            G.predicate (xs i) (ys i) (aa i) (bb i) = true
          then S.outcomeProbability xs ys aa bb else 0) := by
        apply Finset.sum_congr rfl
        intro xs _
        apply Finset.sum_congr rfl
        intro ys _
        rw [conditionedEffects_postselection_sum G n S D xs ys]
        simp only [Finset.mul_sum]
    _ = _ := (repeated_partialWinMass_expansion G n S D).symm

theorem fullHistoryFilters_born_expansion
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B) :
    bornTracePairing S.state.matrix
        (fullHistoryAliceFilter G n S D L h α)
        (fullHistoryBobFilter G n S D L h β) =
      ∑ hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X,
      ∑ hy : {i : Fin n // i ∈ L} → Y,
        fullHistoryHiddenAliceWeight G h hx *
          fullHistoryHiddenBobWeight G h hy *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α
              (fullHistoryAliceQuestion h hx))
            (conditionedBobEffect G n S D β
              (fullHistoryBobQuestion h hy)) := by
  classical
  unfold fullHistoryAliceFilter fullHistoryBobFilter
  simp only [map_sum, LinearMap.sum_apply,
    map_smul, LinearMap.smul_apply, smul_eq_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro hx _
  apply Finset.sum_congr rfl
  intro hy _
  ring

end ActualHistoryWeights

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (hL : L ⊆ Finset.univ \ D) :
    (∑ h : FullSubsetHistory X Y n D L,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          bornTracePairing S.state.matrix
            (fullHistoryAliceFilter G n S D L h α)
            (fullHistoryBobFilter G n S D L h β)) =
      (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n) D) := by
  classical
  calc
    (∑ h : FullSubsetHistory X Y n D L,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          bornTracePairing S.state.matrix
            (fullHistoryAliceFilter G n S D L h α)
            (fullHistoryBobFilter G n S D L h β)) =
      ∑ h : FullSubsetHistory X Y n D L,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
      ∑ hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X,
      ∑ hy : {i : Fin n // i ∈ L} → Y,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          fullHistoryHiddenAliceWeight G h hx *
          fullHistoryHiddenBobWeight G h hy *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α
              (fullHistoryAliceQuestion h hx))
            (conditionedBobEffect G n S D β
              (fullHistoryBobQuestion h hy)) := by
        apply Finset.sum_congr rfl
        intro h _
        apply Finset.sum_congr rfl
        intro α _
        apply Finset.sum_congr rfl
        intro β _
        rw [fullHistoryFilters_born_expansion G n S D L h α β]
        simp only [Finset.mul_sum, mul_assoc]
    _ = ∑ h : FullSubsetHistory X Y n D L,
      ∑ hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X,
      ∑ hy : {i : Fin n // i ∈ L} → Y,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β *
          fullHistoryHiddenAliceWeight G h hx *
          fullHistoryHiddenBobWeight G h hy *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α
              (fullHistoryAliceQuestion h hx))
            (conditionedBobEffect G n S D β
              (fullHistoryBobQuestion h hy)) := by
        apply Finset.sum_congr rfl
        intro h _
        exact finite_sum_four_swap _
    _ = ∑ h : FullSubsetHistory X Y n D L,
      ∑ hx : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X,
      ∑ hy : {i : Fin n // i ∈ L} → Y,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        (G.repeat n).questionWeight
          (fullHistoryAliceQuestion h hx)
          (fullHistoryBobQuestion h hy) *
        fullQuestionWinIndicator G D
          (fullHistoryAliceQuestion h hx)
          (fullHistoryBobQuestion h hy) α β *
        bornTracePairing S.state.matrix
          (conditionedAliceEffect G n S D α
            (fullHistoryAliceQuestion h hx))
          (conditionedBobEffect G n S D β
            (fullHistoryBobQuestion h hy)) := by
        apply Finset.sum_congr rfl
        intro h _
        apply Finset.sum_congr rfl
        intro hx _
        apply Finset.sum_congr rfl
        intro hy _
        apply Finset.sum_congr rfl
        intro α _
        apply Finset.sum_congr rfl
        intro β _
        rw [fullHistoryWinIndicator_eq_question G D L h hx hy α β]
        rw [← fullHistoryWeight_mul_hidden G D L hL h hx hy]
        ring
    _ = ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        (G.repeat n).questionWeight xs ys *
          fullQuestionWinIndicator G D xs ys α β *
          bornTracePairing S.state.matrix
            (conditionedAliceEffect G n S D α xs)
            (conditionedBobEffect G n S D β ys) := by
      let f : ((Fin n → X) × (Fin n → Y)) → ℝ := fun q =>
        ∑ α : {i : Fin n // i ∈ D} → A,
        ∑ β : {i : Fin n // i ∈ D} → B,
          (G.repeat n).questionWeight q.1 q.2 *
            fullQuestionWinIndicator G D q.1 q.2 α β *
            bornTracePairing S.state.matrix
              (conditionedAliceEffect G n S D α q.1)
              (conditionedBobEffect G n S D β q.2)
      simpa only [f, fullHistoryQuestionEquiv, Equiv.coe_fn_mk,
        Fintype.sum_prod_type] using
        (fullHistoryQuestionEquiv
          (X := X) (Y := Y) D L hL).sum_comp f
    _ = _ := fullQuestionConditionedBornMass_eq G n S D
