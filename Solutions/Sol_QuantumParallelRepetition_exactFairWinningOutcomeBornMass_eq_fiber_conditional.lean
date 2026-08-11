import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
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
import Mathlib.Data.Finset.Attach
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.GroupTheory.GroupAction.Ring
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.IsEmpty.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
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

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section ActualHistoryWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

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

end ActualHistoryWeights

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

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

theorem exactCompatible_coordinate_eq_or
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (xs xs' : Fin n → X) (ys ys' : Fin n → Y)
    (ha : exactAliceQuestionCompatible
      D seed history x xs)
    (ha' : exactAliceQuestionCompatible
      D seed history x xs')
    (hb : exactBobQuestionCompatible
      D seed history y ys)
    (hb' : exactBobQuestionCompatible
      D seed history y ys')
    (j : Fin n) :
    xs j = xs' j ∨ ys j = ys' j := by
  by_cases hj : j ∈ D
  · left
    exact (ha.1 ⟨j, hj⟩).trans (ha'.1 ⟨j, hj⟩).symm
  · let jr : SourceRemainingCoordinate D :=
      ⟨j, by simp [hj]⟩
    by_cases hcoordinate : jr = seed.coordinate
    · left
      have hval : j = seed.coordinate.val :=
        congrArg Subtype.val hcoordinate
      rw [hval]
      exact ha.2.2.2.trans ha'.2.2.2.symm
    · cases hbit : seed.partition jr with
      | false =>
          left
          have hleft :
              jr ∈ exactLeft
                seed.coordinate seed.partition := by
            simp [exactLeft, hcoordinate, hbit]
          exact (ha.2.1 ⟨jr, hleft⟩).trans
            (ha'.2.1 ⟨jr, hleft⟩).symm
      | true =>
          right
          have hright :
              jr ∈ exactRight
                seed.coordinate seed.partition := by
            simp [exactRight, hcoordinate, hbit]
          exact (hb.2.1 ⟨jr, hright⟩).trans
            (hb'.2.1 ⟨jr, hright⟩).symm

theorem exactQuestionWeight_rectangle
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (xs xs' : Fin n → X) (ys ys' : Fin n → Y)
    (ha : exactAliceQuestionCompatible
      D seed history x xs)
    (ha' : exactAliceQuestionCompatible
      D seed history x xs')
    (hb : exactBobQuestionCompatible
      D seed history y ys)
    (hb' : exactBobQuestionCompatible
      D seed history y ys') :
    (G.repeat n).questionWeight xs ys *
        (G.repeat n).questionWeight xs' ys' =
      (G.repeat n).questionWeight xs ys' *
        (G.repeat n).questionWeight xs' ys := by
  simp only [Game.repeat_questionWeight]
  rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
  apply Finset.prod_congr rfl
  intro j _
  rcases exactCompatible_coordinate_eq_or
    D seed history x y xs xs' ys ys'
    ha ha' hb hb' j with hAlice | hBob
  · simp [hAlice, mul_comm]
  · simp [hBob]

theorem exactFiberQuestionWeight_rectangle
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (xs xs' : Fin n → X) (ys ys' : Fin n → Y) :
    exactFiberQuestionWeight
        G n D seed history x y xs ys *
      exactFiberQuestionWeight
        G n D seed history x y xs' ys' =
    exactFiberQuestionWeight
        G n D seed history x y xs ys' *
      exactFiberQuestionWeight
        G n D seed history x y xs' ys := by
  classical
  by_cases ha : exactAliceQuestionCompatible
      D seed history x xs <;>
    by_cases ha' : exactAliceQuestionCompatible
      D seed history x xs' <;>
    by_cases hb : exactBobQuestionCompatible
      D seed history y ys <;>
    by_cases hb' : exactBobQuestionCompatible
      D seed history y ys' <;>
    simp [exactFiberQuestionWeight,
      ha, ha', hb, hb']
  simpa only [Game.repeat_questionWeight] using
    (exactQuestionWeight_rectangle
      G n D seed history x y xs xs' ys ys'
      ha ha' hb hb')

theorem exactFiberQuestionWeight_mul_mass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (xs : Fin n → X) (ys : Fin n → Y) :
    exactFiberQuestionWeight
        G n D seed history x y xs ys *
      exactFiberQuestionMass G n D seed history x y =
    exactFiberAliceMarginal
        G n D seed history x y xs *
      exactFiberBobMarginal
        G n D seed history x y ys := by
  classical
  symm
  calc
    exactFiberAliceMarginal
        G n D seed history x y xs *
      exactFiberBobMarginal
        G n D seed history x y ys =
      ∑ u : Fin n → Y, ∑ v : Fin n → X,
        exactFiberQuestionWeight
          G n D seed history x y xs u *
        exactFiberQuestionWeight
          G n D seed history x y v ys := by
      unfold exactFiberAliceMarginal
        exactFiberBobMarginal
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro u _
      rw [Finset.mul_sum]
    _ = ∑ u : Fin n → Y, ∑ v : Fin n → X,
        exactFiberQuestionWeight
          G n D seed history x y xs ys *
        exactFiberQuestionWeight
          G n D seed history x y v u := by
      apply Finset.sum_congr rfl
      intro u _
      apply Finset.sum_congr rfl
      intro v _
      exact exactFiberQuestionWeight_rectangle
        G n D seed history x y xs v u ys
    _ = ∑ v : Fin n → X, ∑ u : Fin n → Y,
        exactFiberQuestionWeight
          G n D seed history x y xs ys *
        exactFiberQuestionWeight
          G n D seed history x y v u := by
      rw [Finset.sum_comm]
    _ = exactFiberQuestionWeight
        G n D seed history x y xs ys *
      exactFiberQuestionMass
        G n D seed history x y := by
      unfold exactFiberQuestionMass
      simp only [Finset.mul_sum]

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedCoordinateEffects_born_expansion
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {j : Fin n // j ∈ D} → A)
    (β : {j : Fin n // j ∈ D} → B)
    (xs : Fin n → X) (ys : Fin n → Y)
    (i : Fin n) (a : A) (b : B) :
    bornTracePairing S.state.matrix
        (conditionedAliceCoordinateEffect G n S D α xs i a)
        (conditionedBobCoordinateEffect G n S D β ys i b) =
      ∑ aa : Fin n → A, ∑ bb : Fin n → B,
        if (∀ (j : Fin n) (hj : j ∈ D), aa j = α ⟨j, hj⟩) ∧
          aa i = a then
          if (∀ (j : Fin n) (hj : j ∈ D), bb j = β ⟨j, hj⟩) ∧
            bb i = b then S.outcomeProbability xs ys aa bb else 0
        else 0 := by
  classical
  simp only [conditionedAliceCoordinateEffect,
    conditionedBobCoordinateEffect,
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

theorem exactFiber_born_of_rank_one
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (nonzero : exactFiberQuestionMass
      G n D seed history x y ≠ 0)
    (EA : (Fin n → X) → Matrix S.Alice S.Alice ℂ)
    (EB : (Fin n → Y) → Matrix S.Bob S.Bob ℂ) :
    bornTracePairing S.state.matrix
        (∑ xs : Fin n → X,
          (exactFiberAliceMarginal
            G n D seed history x y xs /
            exactFiberQuestionMass
              G n D seed history x y) • EA xs)
        (∑ ys : Fin n → Y,
          (exactFiberBobMarginal
            G n D seed history x y ys /
            exactFiberQuestionMass
              G n D seed history x y) • EB ys) =
      ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
        exactConditionalQuestionWeight
          G n D seed history x y xs ys *
          bornTracePairing S.state.matrix (EA xs) (EB ys) := by
  classical
  simp only [map_sum, LinearMap.sum_apply,
    map_smul, LinearMap.smul_apply, smul_eq_mul,
    exactConditionalQuestionWeight]
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  have hrank := exactFiberQuestionWeight_mul_mass
    G n D seed history x y xs ys
  have hborn := congrArg
    (fun z : ℝ => z *
      bornTracePairing S.state.matrix (EA xs) (EB ys)) hrank
  field_simp [nonzero]
  nlinarith [hborn]

theorem exactJointCoordinateFilter_born
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (aliceAnswer : {j : Fin n // j ∈ D} → A)
    (bobAnswer : {j : Fin n // j ∈ D} → B)
    (x : X) (y : Y) (a : A) (b : B)
    (nonzero : exactFiberQuestionMass
      G n D seed history x y ≠ 0) :
    bornTracePairing S.state.matrix
        (exactJointAliceCoordinateFilter
          G n S D seed history aliceAnswer x y a)
        (exactJointBobCoordinateFilter
          G n S D seed history bobAnswer x y b) =
      ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
        exactConditionalQuestionWeight
          G n D seed history x y xs ys *
        bornTracePairing S.state.matrix
          (conditionedAliceCoordinateEffect
            G n S D aliceAnswer xs seed.coordinate.val a)
          (conditionedBobCoordinateEffect
            G n S D bobAnswer ys seed.coordinate.val b) := by
  exact exactFiber_born_of_rank_one
    G n S D seed history x y nonzero
    (fun xs => conditionedAliceCoordinateEffect
      G n S D aliceAnswer xs seed.coordinate.val a)
    (fun ys => conditionedBobCoordinateEffect
      G n S D bobAnswer ys seed.coordinate.val b)

theorem exactJointConditionalWinningMass_born
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (aliceAnswer : {j : Fin n // j ∈ D} → A)
    (bobAnswer : {j : Fin n // j ∈ D} → B)
    (x : X) (y : Y)
    (nonzero : exactFiberQuestionMass
      G n D seed history x y ≠ 0) :
    exactJointConditionalWinningMass
        G n S D seed history aliceAnswer bobAnswer x y =
      ∑ a : A, ∑ b : B,
        if G.predicate x y a b = true then
          ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
            exactConditionalQuestionWeight
              G n D seed history x y xs ys *
            bornTracePairing S.state.matrix
              (conditionedAliceCoordinateEffect
                G n S D aliceAnswer xs seed.coordinate.val a)
              (conditionedBobCoordinateEffect
                G n S D bobAnswer ys seed.coordinate.val b)
        else 0 := by
  classical
  unfold exactJointConditionalWinningMass
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  split_ifs
  · exact exactJointCoordinateFilter_born
      G n S D seed history aliceAnswer bobAnswer x y a b nonzero
  · rfl

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

theorem exactFineCoordinateWinningBorn_collapse
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (aliceAnswer : {j : Fin n // j ∈ D} → A)
    (bobAnswer : {j : Fin n // j ∈ D} → B)
    (xs : Fin n → X) (ys : Fin n → Y)
    (coordinate : Fin n) (x : X) (y : Y) :
    (∑ a : A, ∑ b : B,
      if G.predicate x y a b = true then
        bornTracePairing S.state.matrix
          (conditionedAliceCoordinateEffect
            G n S D aliceAnswer xs coordinate a)
          (conditionedBobCoordinateEffect
            G n S D bobAnswer ys coordinate b)
      else 0) =
    ∑ aa : Fin n → A, ∑ bb : Fin n → B,
      if
        (∀ (j : Fin n) (member : j ∈ D),
          aa j = aliceAnswer ⟨j, member⟩) ∧
        (∀ (j : Fin n) (member : j ∈ D),
          bb j = bobAnswer ⟨j, member⟩) ∧
        G.predicate x y (aa coordinate) (bb coordinate) = true
      then S.outcomeProbability xs ys aa bb
      else 0 := by
  classical
  simp_rw [conditionedCoordinateEffects_born_expansion G n S D]
  let f : A → B → (Fin n → A) → (Fin n → B) → ℝ :=
    fun a b aa bb =>
      if G.predicate x y a b = true then
        if
          (∀ (j : Fin n) (member : j ∈ D),
            aa j = aliceAnswer ⟨j, member⟩) ∧ aa coordinate = a
        then
          if
            (∀ (j : Fin n) (member : j ∈ D),
              bb j = bobAnswer ⟨j, member⟩) ∧ bb coordinate = b
          then S.outcomeProbability xs ys aa bb
          else 0
        else 0
      else 0
  calc
    (∑ a : A, ∑ b : B,
      if G.predicate x y a b = true then
        ∑ aa : Fin n → A, ∑ bb : Fin n → B,
          if
            (∀ (j : Fin n) (member : j ∈ D),
              aa j = aliceAnswer ⟨j, member⟩) ∧ aa coordinate = a
          then
            if
              (∀ (j : Fin n) (member : j ∈ D),
                bb j = bobAnswer ⟨j, member⟩) ∧ bb coordinate = b
            then S.outcomeProbability xs ys aa bb
            else 0
          else 0
      else 0) =
      ∑ a : A, ∑ b : B,
        ∑ aa : Fin n → A, ∑ bb : Fin n → B, f a b aa bb := by
          apply Finset.sum_congr rfl
          intro a _
          apply Finset.sum_congr rfl
          intro b _
          by_cases wins : G.predicate x y a b = true
          · simp [f, wins]
          · simp [f, wins]
    _ = ∑ aa : Fin n → A, ∑ bb : Fin n → B,
      ∑ a : A, ∑ b : B, f a b aa bb :=
        finite_sum_four_swap f
    _ = ∑ aa : Fin n → A, ∑ bb : Fin n → B,
      if
        (∀ (j : Fin n) (member : j ∈ D),
          aa j = aliceAnswer ⟨j, member⟩) ∧
        (∀ (j : Fin n) (member : j ∈ D),
          bb j = bobAnswer ⟨j, member⟩) ∧
        G.predicate x y (aa coordinate) (bb coordinate) = true
      then S.outcomeProbability xs ys aa bb
      else 0 := by
        apply Finset.sum_congr rfl
        intro aa _
        apply Finset.sum_congr rfl
        intro bb _
        by_cases alice_matches :
          ∀ (j : Fin n) (member : j ∈ D),
            aa j = aliceAnswer ⟨j, member⟩
        · by_cases bob_matches :
            ∀ (j : Fin n) (member : j ∈ D),
              bb j = bobAnswer ⟨j, member⟩
          · rw [Finset.sum_eq_single (aa coordinate)]
            · rw [Finset.sum_eq_single (bb coordinate)]
              · dsimp only [f]
                by_cases wins :
                  G.predicate x y (aa coordinate) (bb coordinate) = true
                · rw [if_pos wins,
                    if_pos ⟨alice_matches, rfl⟩,
                    if_pos ⟨bob_matches, rfl⟩,
                    if_pos ⟨alice_matches, bob_matches, wins⟩]
                · rw [if_neg wins,
                    if_neg (fun h => wins h.2.2)]
              · intro b _ different
                simp [f, Ne.symm different]
              · simp
            · intro a _ different
              simp [f, Ne.symm different]
            · simp
          · simp [f, bob_matches]
        · simp [f, alice_matches]

theorem exactFairWinningOutcomeBornMass_eq_refined
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (history : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y) :
    exactFairWinningOutcomeBornMass
      G n S D history x y =
        exactFairCoordinateRefinedWinningBornMass
          G n S D history x y := by
  classical
  unfold exactFairWinningOutcomeBornMass
    exactFairCoordinateRefinedWinningBornMass
  simp only [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  apply Finset.sum_congr rfl
  intro ys _
  have compatibility :
      (exactAliceQuestionCompatible
        D history.seed history.history x xs ∧
       exactBobQuestionCompatible
        D history.seed history.history y ys) ↔
      exactRevealCode D history.seed (xs, ys) = history.history ∧
        xs history.seed.coordinate.val = x ∧
        ys history.seed.coordinate.val = y :=
    (exactRevealCode_compatible_iff
      D history.seed history.history x y xs ys).symm
  by_cases compatible :
      exactAliceQuestionCompatible
        D history.seed history.history x xs ∧
      exactBobQuestionCompatible
        D history.seed history.history y ys
  · have actual := compatibility.mp compatible
    rw [exactFiberQuestionWeight, if_pos compatible,
      exactFineCoordinateWinningBorn_collapse
        G n S D history.aliceAnswer history.bobAnswer xs ys
        history.seed.coordinate.val x y]
    calc
      (∑ aa : Fin n → A, ∑ bb : Fin n → B,
        if exactLocallySampleableCode D
            (history.seed, (xs, ys, aa, bb)) =
            (history.seed.coordinate, x, y, history) ∧
          repeatedCoordinateWin G n history.seed.coordinate.val
            (xs, ys, aa, bb) = true
        then (strategyEventLaw (G.repeat n) S).weight
          (xs, ys, aa, bb)
        else 0) =
        ∑ aa : Fin n → A, ∑ bb : Fin n → B,
          (G.repeat n).questionWeight xs ys *
            if
              (∀ (j : Fin n) (member : j ∈ D),
                aa j = history.aliceAnswer ⟨j, member⟩) ∧
              (∀ (j : Fin n) (member : j ∈ D),
                bb j = history.bobAnswer ⟨j, member⟩) ∧
              G.predicate x y
                (aa history.seed.coordinate.val)
                (bb history.seed.coordinate.val) = true
            then S.outcomeProbability xs ys aa bb
            else 0 := by
          apply Finset.sum_congr rfl
          intro aa _
          apply Finset.sum_congr rfl
          intro bb _
          have fiber :=
            exactLocallySampleableCode_fixedSeed_fiber_iff
              D history x y (xs, ys, aa, bb)
          have event :
              (exactLocallySampleableCode D
                  (history.seed, (xs, ys, aa, bb)) =
                    (history.seed.coordinate, x, y, history) ∧
                repeatedCoordinateWin G n history.seed.coordinate.val
                  (xs, ys, aa, bb) = true) ↔
              ((∀ (j : Fin n) (member : j ∈ D),
                aa j = history.aliceAnswer ⟨j, member⟩) ∧
               (∀ (j : Fin n) (member : j ∈ D),
                bb j = history.bobAnswer ⟨j, member⟩) ∧
               G.predicate x y
                (aa history.seed.coordinate.val)
                (bb history.seed.coordinate.val) = true) := by
            rw [fiber]
            simp [actual.1, actual.2.1, actual.2.2,
              repeatedCoordinateWin, and_assoc]
          by_cases wins :
              (∀ (j : Fin n) (member : j ∈ D),
                aa j = history.aliceAnswer ⟨j, member⟩) ∧
              (∀ (j : Fin n) (member : j ∈ D),
                bb j = history.bobAnswer ⟨j, member⟩) ∧
              G.predicate x y
                (aa history.seed.coordinate.val)
                (bb history.seed.coordinate.val) = true
          · have selected := event.mpr wins
            rw [if_pos selected, if_pos wins]
            rfl
          · have rejected :
              ¬ (exactLocallySampleableCode D
                    (history.seed, (xs, ys, aa, bb)) =
                  (history.seed.coordinate, x, y, history) ∧
                repeatedCoordinateWin G n history.seed.coordinate.val
                  (xs, ys, aa, bb) = true) := by
              intro selected
              exact wins (event.mp selected)
            rw [if_neg rejected, if_neg wins]
            simp
      _ = (G.repeat n).questionWeight xs ys *
        (∑ aa : Fin n → A, ∑ bb : Fin n → B,
          if
            (∀ (j : Fin n) (member : j ∈ D),
              aa j = history.aliceAnswer ⟨j, member⟩) ∧
            (∀ (j : Fin n) (member : j ∈ D),
              bb j = history.bobAnswer ⟨j, member⟩) ∧
            G.predicate x y
              (aa history.seed.coordinate.val)
              (bb history.seed.coordinate.val) = true
          then S.outcomeProbability xs ys aa bb
          else 0) := by
          simp only [Finset.mul_sum]
  · rw [exactFiberQuestionWeight, if_neg compatible,
      zero_mul]
    apply Finset.sum_eq_zero
    intro aa _
    apply Finset.sum_eq_zero
    intro bb _
    have no_code :
        exactLocallySampleableCode D
          (history.seed, (xs, ys, aa, bb)) ≠
            (history.seed.coordinate, x, y, history) := by
      intro code
      have conditions :=
        (exactLocallySampleableCode_fixedSeed_fiber_iff
          D history x y (xs, ys, aa, bb)).mp code
      exact compatible
        (compatibility.mpr
          ⟨conditions.1, conditions.2.1, conditions.2.2.1⟩)
    simp [no_code]

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
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (history : ExactHistoryFlag X Y A B D)
    (x : X) (y : Y)
    (supported : exactFiberQuestionMass
      G n D history.seed history.history x y ≠ 0) :
    exactFairWinningOutcomeBornMass G n S D history x y =
      exactFiberQuestionMass
          G n D history.seed history.history x y *
        exactJointConditionalWinningMass
          G n S D history.seed history.history
          history.aliceAnswer history.bobAnswer x y := by
  classical
  rw [exactFairWinningOutcomeBornMass_eq_refined,
    exactJointConditionalWinningMass_born
      G n S D history.seed history.history
      history.aliceAnswer history.bobAnswer x y supported]
  unfold exactFairCoordinateRefinedWinningBornMass
  let summand : (Fin n → X) → (Fin n → Y) → A → B → ℝ :=
    fun xs ys a b =>
      if G.predicate x y a b = true then
        exactFiberQuestionWeight
            G n D history.seed history.history x y xs ys *
          bornTracePairing S.state.matrix
            (conditionedAliceCoordinateEffect
              G n S D history.aliceAnswer xs
              history.seed.coordinate.val a)
            (conditionedBobCoordinateEffect
              G n S D history.bobAnswer ys
              history.seed.coordinate.val b)
      else 0
  calc
    (∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      exactFiberQuestionWeight
          G n D history.seed history.history x y xs ys *
        (∑ a : A, ∑ b : B,
          if G.predicate x y a b = true then
            bornTracePairing S.state.matrix
              (conditionedAliceCoordinateEffect
                G n S D history.aliceAnswer xs
                history.seed.coordinate.val a)
              (conditionedBobCoordinateEffect
                G n S D history.bobAnswer ys
                history.seed.coordinate.val b)
          else 0)) =
        ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
          ∑ a : A, ∑ b : B, summand xs ys a b := by
            simp only [summand, Finset.mul_sum, mul_ite, mul_zero]
    _ = ∑ a : A, ∑ b : B,
          ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
            summand xs ys a b :=
      finite_sum_four_swap summand
    _ = exactFiberQuestionMass
          G n D history.seed history.history x y *
        (∑ a : A, ∑ b : B,
          if G.predicate x y a b = true then
            ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
              exactConditionalQuestionWeight
                  G n D history.seed history.history x y xs ys *
                bornTracePairing S.state.matrix
                  (conditionedAliceCoordinateEffect
                    G n S D history.aliceAnswer xs
                    history.seed.coordinate.val a)
                  (conditionedBobCoordinateEffect
                    G n S D history.bobAnswer ys
                    history.seed.coordinate.val b)
          else 0) := by
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro a _
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro b _
            by_cases wins : G.predicate x y a b = true
            · simp only [if_pos wins]
              rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro xs _
              rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro ys _
              dsimp only [summand]
              rw [if_pos wins]
              unfold exactConditionalQuestionWeight
              field_simp [supported]
            · simp [summand, wins]
