import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_17
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.BigOperators
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Ring.Defs
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
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
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

end

noncomputable section

open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFiberQuestionWeight_sum_bobQuestion
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (xs : Fin n → X) (ys : Fin n → Y) :
    (∑ y : Y,
      exactFiberQuestionWeight
        G n D seed history x y xs ys) =
      if exactRevealCode D seed (xs, ys) = history ∧
        xs seed.coordinate.val = x
      then exactPriorQuestionWeight G n (xs, ys)
      else 0 := by
  classical
  let y := ys seed.coordinate.val
  calc
    (∑ yy : Y,
      exactFiberQuestionWeight
        G n D seed history x yy xs ys) =
      exactFiberQuestionWeight
        G n D seed history x y xs ys := by
      apply Fintype.sum_eq_single y
      intro yy hyy
      unfold exactFiberQuestionWeight
      split_ifs with h
      · exact (hyy (show yy = y from h.2.2.2.2.symm)).elim
      · rfl
    _ = _ := by
      have hcompatible :
          (exactAliceQuestionCompatible
              D seed history x xs ∧
            exactBobQuestionCompatible
              D seed history y ys) ↔
            (exactRevealCode D seed (xs, ys) = history ∧
              xs seed.coordinate.val = x) := by
        simpa [y] using
          (exactRevealCode_compatible_iff
            D seed history x y xs ys).symm
      simp [exactFiberQuestionWeight,
        exactPriorQuestionWeight, hcompatible]

theorem exactAliceQuestionMass_eq_sum_fiberMass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) :
    exactAliceQuestionMass G n D seed history x =
      ∑ y : Y,
        exactFiberQuestionMass G n D seed history x y := by
  classical
  unfold exactAliceQuestionMass
  rw [Fintype.sum_prod_type]
  calc
    (∑ xs : Fin n → X, ∑ ys : Fin n → Y,
      if exactRevealCode D seed (xs, ys) = history ∧
        xs seed.coordinate.val = x
      then exactPriorQuestionWeight G n (xs, ys)
      else 0) =
      ∑ xs : Fin n → X, ∑ ys : Fin n → Y, ∑ y : Y,
        exactFiberQuestionWeight
          G n D seed history x y xs ys := by
      apply Finset.sum_congr rfl
      intro xs _
      apply Finset.sum_congr rfl
      intro ys _
      exact (exactFiberQuestionWeight_sum_bobQuestion
        G n D seed history x xs ys).symm
    _ = ∑ xs : Fin n → X, ∑ y : Y, ∑ ys : Fin n → Y,
        exactFiberQuestionWeight
          G n D seed history x y xs ys := by
      apply Finset.sum_congr rfl
      intro xs _
      rw [Finset.sum_comm]
    _ = ∑ y : Y, ∑ xs : Fin n → X, ∑ ys : Fin n → Y,
        exactFiberQuestionWeight
          G n D seed history x y xs ys := by
      rw [Finset.sum_comm]
    _ = _ := by
      rfl

theorem exactCompatible_aliceMixed_coordinate_eq_or
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y y' : Y)
    (xs xs' : Fin n → X) (ys ys' : Fin n → Y)
    (ha : exactAliceQuestionCompatible
      D seed history x xs)
    (ha' : exactAliceQuestionCompatible
      D seed history x xs')
    (hb : exactBobQuestionCompatible
      D seed history y ys)
    (hb' : exactBobQuestionCompatible
      D seed history y' ys')
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

theorem exactQuestionWeight_aliceMixed_rectangle
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y y' : Y)
    (xs xs' : Fin n → X) (ys ys' : Fin n → Y)
    (ha : exactAliceQuestionCompatible
      D seed history x xs)
    (ha' : exactAliceQuestionCompatible
      D seed history x xs')
    (hb : exactBobQuestionCompatible
      D seed history y ys)
    (hb' : exactBobQuestionCompatible
      D seed history y' ys') :
    (G.repeat n).questionWeight xs ys *
        (G.repeat n).questionWeight xs' ys' =
      (G.repeat n).questionWeight xs ys' *
        (G.repeat n).questionWeight xs' ys := by
  simp only [Game.repeat_questionWeight]
  rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
  apply Finset.prod_congr rfl
  intro j _
  rcases exactCompatible_aliceMixed_coordinate_eq_or
    D seed history x y y' xs xs' ys ys'
    ha ha' hb hb' j with hAlice | hBob
  · simp [hAlice, mul_comm]
  · simp [hBob]

theorem exactFiberQuestionWeight_aliceMixed_rectangle
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y y' : Y)
    (xs xs' : Fin n → X) (ys ys' : Fin n → Y) :
    exactFiberQuestionWeight
        G n D seed history x y xs ys *
      exactFiberQuestionWeight
        G n D seed history x y' xs' ys' =
    exactFiberQuestionWeight
        G n D seed history x y' xs ys' *
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
      D seed history y' ys' <;>
    simp [exactFiberQuestionWeight,
      ha, ha', hb, hb']
  simpa only [Game.repeat_questionWeight] using
    (exactQuestionWeight_aliceMixed_rectangle
      G n D seed history x y y' xs xs' ys ys'
      ha ha' hb hb')

theorem exactMixedRowMarginal_mul_total
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (left right : ι → κ → ℝ)
    (rectangle : ∀ i i' j j',
      left i j * right i' j' = right i j' * left i' j)
    (i : ι) :
    (∑ j : κ, left i j) *
        (∑ i' : ι, ∑ j' : κ, right i' j') =
      (∑ j' : κ, right i j') *
        (∑ i' : ι, ∑ j : κ, left i' j) := by
  classical
  calc
    (∑ j : κ, left i j) *
        (∑ i' : ι, ∑ j' : κ, right i' j') =
      ∑ j : κ, ∑ i' : ι, ∑ j' : κ,
        left i j * right i' j' := by
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro j _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i' _
      rw [Finset.mul_sum]
    _ = ∑ j : κ, ∑ i' : ι, ∑ j' : κ,
        right i j' * left i' j := by
      apply Finset.sum_congr rfl
      intro j _
      apply Finset.sum_congr rfl
      intro i' _
      apply Finset.sum_congr rfl
      intro j' _
      exact rectangle i i' j j'
    _ = ∑ j : κ, ∑ i' : ι,
        (∑ j' : κ, right i j') * left i' j := by
      apply Finset.sum_congr rfl
      intro j _
      apply Finset.sum_congr rfl
      intro i' _
      rw [Finset.sum_mul]
    _ = ∑ i' : ι, ∑ j : κ,
        (∑ j' : κ, right i j') * left i' j := by
      rw [Finset.sum_comm]
    _ = (∑ j' : κ, right i j') *
        (∑ i' : ι, ∑ j : κ, left i' j) := by
      simp only [Finset.mul_sum]

theorem exactFiberAliceMarginal_mul_cross_mass
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y y' : Y) (xs : Fin n → X) :
    exactFiberAliceMarginal
        G n D seed history x y xs *
      exactFiberQuestionMass
        G n D seed history x y' =
    exactFiberAliceMarginal
        G n D seed history x y' xs *
      exactFiberQuestionMass
        G n D seed history x y := by
  apply exactMixedRowMarginal_mul_total
    (exactFiberQuestionWeight G n D seed history x y)
    (exactFiberQuestionWeight G n D seed history x y')
  intro u v s t
  exact exactFiberQuestionWeight_aliceMixed_rectangle
    G n D seed history x y y' u v s t

theorem exactFiberQuestionWeight_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (xs : Fin n → X) (ys : Fin n → Y) :
    0 ≤ exactFiberQuestionWeight
      G n D seed history x y xs ys := by
  unfold exactFiberQuestionWeight
  split
  · exact (G.repeat n).weight_nonneg xs ys
  · exact le_rfl

theorem exactFiberQuestionMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) :
    0 ≤ exactFiberQuestionMass
      G n D seed history x y := by
  unfold exactFiberQuestionMass
  exact Finset.sum_nonneg (fun xs _ =>
    Finset.sum_nonneg (fun ys _ =>
      exactFiberQuestionWeight_nonneg
        G n D seed history x y xs ys))

theorem exactAliceFiberNormalizedRow
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y) (xs : Fin n → X)
    (nonzero : exactFiberQuestionMass
      G n D seed history x y ≠ 0) :
    exactFiberAliceMarginal
        G n D seed history x y xs /
      exactFiberQuestionMass
        G n D seed history x y =
      (∑ yy : Y,
        exactFiberAliceMarginal
          G n D seed history x yy xs) /
      exactAliceQuestionMass
        G n D seed history x := by
  classical
  rw [exactAliceQuestionMass_eq_sum_fiberMass]
  have hypos : 0 < exactFiberQuestionMass
      G n D seed history x y :=
    lt_of_le_of_ne
      (exactFiberQuestionMass_nonneg
        G n D seed history x y) (Ne.symm nonzero)
  have hsum :
      (∑ yy : Y,
        exactFiberQuestionMass
          G n D seed history x yy) ≠ 0 := by
    apply ne_of_gt
    exact lt_of_lt_of_le hypos
      (Finset.single_le_sum
        (fun yy _ => exactFiberQuestionMass_nonneg
          G n D seed history x yy)
        (Finset.mem_univ y))
  apply (div_eq_div_iff nonzero hsum).mpr
  calc
    exactFiberAliceMarginal
        G n D seed history x y xs *
      (∑ yy : Y,
        exactFiberQuestionMass
          G n D seed history x yy) =
      ∑ yy : Y,
        exactFiberAliceMarginal
          G n D seed history x y xs *
        exactFiberQuestionMass
          G n D seed history x yy := by
      rw [Finset.mul_sum]
    _ = ∑ yy : Y,
        exactFiberAliceMarginal
          G n D seed history x yy xs *
        exactFiberQuestionMass
          G n D seed history x y := by
      apply Finset.sum_congr rfl
      intro yy _
      exact exactFiberAliceMarginal_mul_cross_mass
        G n D seed history x y yy xs
    _ = (∑ yy : Y,
        exactFiberAliceMarginal
          G n D seed history x yy xs) *
        exactFiberQuestionMass
          G n D seed history x y := by
      rw [Finset.sum_mul]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open WithLp
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    {d : Type*} [Fintype d]
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) (y : Y)
    (nonzero : exactFiberQuestionMass
      G n D seed history x y ≠ 0)
    (E : (Fin n → X) → Matrix d d ℂ) :
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.1 seed.coordinate.val = x
      then
        (exactPriorQuestionWeight G n q /
          exactAliceQuestionMass
            G n D seed history x) • E q.1
      else 0) =
      ∑ xs : Fin n → X,
        (exactFiberAliceMarginal
          G n D seed history x y xs /
          exactFiberQuestionMass
            G n D seed history x y) • E xs := by
  classical
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro xs _
  calc
    (∑ ys : Fin n → Y,
      if exactRevealCode D seed (xs, ys) = history ∧
        xs seed.coordinate.val = x
      then
        (exactPriorQuestionWeight G n (xs, ys) /
          exactAliceQuestionMass
            G n D seed history x) • E xs
      else 0) =
      (∑ ys : Fin n → Y,
        ((if exactRevealCode D seed (xs, ys) = history ∧
          xs seed.coordinate.val = x
        then exactPriorQuestionWeight G n (xs, ys)
        else 0) /
          exactAliceQuestionMass
            G n D seed history x) • E xs) := by
      apply Finset.sum_congr rfl
      intro ys _
      split_ifs <;> simp
    _ = ((∑ ys : Fin n → Y,
        if exactRevealCode D seed (xs, ys) = history ∧
          xs seed.coordinate.val = x
        then exactPriorQuestionWeight G n (xs, ys)
        else 0) /
          exactAliceQuestionMass
            G n D seed history x) • E xs := by
      rw [Finset.sum_div, Finset.sum_smul]
    _ = ((∑ yy : Y,
        exactFiberAliceMarginal
          G n D seed history x yy xs) /
          exactAliceQuestionMass
            G n D seed history x) • E xs := by
      congr 2
      calc
        (∑ ys : Fin n → Y,
          if exactRevealCode D seed (xs, ys) = history ∧
            xs seed.coordinate.val = x
          then exactPriorQuestionWeight G n (xs, ys)
          else 0) =
          ∑ ys : Fin n → Y, ∑ yy : Y,
            exactFiberQuestionWeight
              G n D seed history x yy xs ys := by
          apply Finset.sum_congr rfl
          intro ys _
          exact (exactFiberQuestionWeight_sum_bobQuestion
            G n D seed history x xs ys).symm
        _ = ∑ yy : Y, ∑ ys : Fin n → Y,
            exactFiberQuestionWeight
              G n D seed history x yy xs ys := by
          rw [Finset.sum_comm]
        _ = _ := by
          rfl
    _ = _ := by
      rw [← exactAliceFiberNormalizedRow
        G n D seed history x y xs nonzero]
