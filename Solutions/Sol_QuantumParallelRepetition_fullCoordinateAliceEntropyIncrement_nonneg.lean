import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_15
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_fullHistoryRemaining_insert_subset
import Theorems.Thm_QuantumParallelRepetition_matrixLogEntropy_weighted_jensen_posSemidef
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.GroupWithZero.Action
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Module.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Star.SelfAdjoint
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Order
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
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Option
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Subtype
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.RelClasses
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

theorem marginalX_nonneg (G : Game X Y A B) (x : X) :
    0 ≤ G.marginalX x := by
  unfold marginalX
  exact Finset.sum_nonneg fun y _ => G.weight_nonneg x y

theorem marginalY_nonneg (G : Game X Y A B) (y : Y) :
    0 ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.sum_nonneg fun x _ => G.weight_nonneg x y

end Game

end

noncomputable section

open scoped BigOperators Kronecker

namespace Game

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionalYGivenX_nonneg
    (G : Game X Y A B) (x : X) (y : Y) :
    0 ≤ G.conditionalYGivenX x y := by
  exact div_nonneg (G.weight_nonneg x y)
    (G.marginalX_nonneg x)

theorem conditionalXGivenY_nonneg
    (G : Game X Y A B) (y : Y) (x : X) :
    0 ≤ G.conditionalXGivenY y x := by
  exact div_nonneg (G.weight_nonneg x y)
    (G.marginalY_nonneg y)

theorem conditionalXGivenY_sum
    (G : Game X Y A B) (y : Y)
    (hy : 0 < G.marginalY y) :
    (∑ x : X, G.conditionalXGivenY y x) = 1 := by
  unfold conditionalXGivenY
  rw [← Finset.sum_div]
  change G.marginalY y / G.marginalY y = 1
  exact div_self hy.ne'

end Game

section RepeatedQuantumFilters

open scoped ComplexOrder MatrixOrder

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionedAliceEffect_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {i : Fin n // i ∈ D} → A)
    (xs : Fin n → X) :
    (conditionedAliceEffect G n S D α xs).PosSemidef := by
  classical
  unfold conditionedAliceEffect
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact (S.aliceMeasurement xs).positive answers
  · exact Matrix.PosSemidef.zero

theorem conditionedBobEffect_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (β : {i : Fin n // i ∈ D} → B)
    (ys : Fin n → Y) :
    (conditionedBobEffect G n S D β ys).PosSemidef := by
  classical
  unfold conditionedBobEffect
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact (S.bobMeasurement ys).positive answers
  · exact Matrix.PosSemidef.zero

end RepeatedQuantumFilters

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section ActualHistoryWeights

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullHistoryHiddenAliceWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L)
    (hidden : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X) :
    0 ≤ fullHistoryHiddenAliceWeight G h hidden := by
  unfold fullHistoryHiddenAliceWeight
  exact Finset.prod_nonneg fun i _ =>
    G.conditionalXGivenY_nonneg (h.bobRemaining i) (hidden i)

theorem fullHistoryHiddenBobWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L)
    (hidden : {i : Fin n // i ∈ L} → Y) :
    0 ≤ fullHistoryHiddenBobWeight G h hidden := by
  unfold fullHistoryHiddenBobWeight
  exact Finset.prod_nonneg fun i _ =>
    G.conditionalYGivenX_nonneg (h.aliceRevealed i) (hidden i)

theorem fullHistoryAliceFilter_posSemidef
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A) :
    (fullHistoryAliceFilter G n S D L h α).PosSemidef := by
  unfold fullHistoryAliceFilter
  apply Matrix.posSemidef_sum Finset.univ
  intro hidden _
  exact (conditionedAliceEffect_positive G n S D α
    (fullHistoryAliceQuestion h hidden)).smul
      (fullHistoryHiddenAliceWeight_nonneg G h hidden)

theorem fullHistoryBobFilter_posSemidef
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (β : {i : Fin n // i ∈ D} → B) :
    (fullHistoryBobFilter G n S D L h β).PosSemidef := by
  unfold fullHistoryBobFilter
  apply Matrix.posSemidef_sum Finset.univ
  intro hidden _
  exact (conditionedBobEffect_positive G n S D β
    (fullHistoryBobQuestion h hidden)).smul
      (fullHistoryHiddenBobWeight_nonneg G h hidden)

end ActualHistoryWeights

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1000000

theorem fullHistoryRemaining_prod_split
    {n : ℕ} {T : Type*} [CommMonoid T]
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (f : {j : Fin n // j ∈ fullHistoryRemaining n D L} → T) :
    (∏ j : {j : Fin n // j ∈ fullHistoryRemaining n D L}, f j) =
      f ⟨i, by simp [fullHistoryRemaining, hiD, hiL]⟩ *
        ∏ j : {j : Fin n //
          j ∈ fullHistoryRemaining n D (insert i L)},
          f ⟨j, fullHistoryRemaining_insert_subset D L i j.property⟩ := by
  classical
  let e := fullHistoryRemainingCoordinateEquiv D L i hiD hiL
  let g : Option {j : Fin n //
      j ∈ fullHistoryRemaining n D (insert i L)} → T
    | none => f ⟨i, by simp [fullHistoryRemaining, hiD, hiL]⟩
    | some j =>
      f ⟨j, fullHistoryRemaining_insert_subset D L i j.property⟩
  have hcomp (j : {j : Fin n //
      j ∈ fullHistoryRemaining n D L}) :
      g (e j) = f j := by
    by_cases hj : (j : Fin n) = i
    · have hjsub :
          j = (⟨i, by simp [fullHistoryRemaining, hiD, hiL]⟩ :
            {j : Fin n // j ∈ fullHistoryRemaining n D L}) :=
        Subtype.ext hj
      subst j
      simp [e, g, fullHistoryRemainingCoordinateEquiv]
    · simp [e, g, fullHistoryRemainingCoordinateEquiv, hj]
  calc
    (∏ j : {j : Fin n // j ∈ fullHistoryRemaining n D L}, f j) =
      ∏ j : {j : Fin n // j ∈ fullHistoryRemaining n D L},
        g (e j) := by
          apply Finset.prod_congr rfl
          intro j _
          exact (hcomp j).symm
    _ = ∏ j : Option {j : Fin n //
        j ∈ fullHistoryRemaining n D (insert i L)}, g j :=
      e.prod_comp g
    _ = g none * ∏ j : {j : Fin n //
        j ∈ fullHistoryRemaining n D (insert i L)}, g (some j) :=
      Fintype.prod_option g
    _ = _ := rfl

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000

section CoordinateFilters

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullCoordinateAliceQuestion_eq
    {n : ℕ} (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y)
    (hidden : {j : Fin n //
      j ∈ fullHistoryRemaining n D (insert i L)} → X) :
    fullHistoryAliceQuestion
        (fullCoordinateOldHistory D L i r y)
        (fullCoordinateAssembleHiddenAlice D L i x hidden) =
      fullHistoryAliceQuestion
        (fullCoordinateNewHistory D L i r x) hidden := by
  classical
  funext j
  by_cases hjD : j ∈ D
  · simp [fullHistoryAliceQuestion, fullCoordinateOldHistory,
      fullCoordinateNewHistory, hjD]
  · by_cases hjL : j ∈ L
    · have hji : j ≠ i := by
        intro he
        exact hiL (he ▸ hjL)
      simp [fullHistoryAliceQuestion, fullCoordinateOldHistory,
        fullCoordinateNewHistory, hjD, hjL, hji]
    · by_cases hji : j = i
      · subst j
        simp [fullHistoryAliceQuestion,
          fullCoordinateAssembleHiddenAlice,
          fullCoordinateNewHistory,
          hiD, hiL]
      · simp [fullHistoryAliceQuestion,
          fullCoordinateAssembleHiddenAlice,
                    hjD, hjL, hji]

theorem fullCoordinateHiddenAliceWeight_split
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (x : X) (y : Y)
    (hidden : {j : Fin n //
      j ∈ fullHistoryRemaining n D (insert i L)} → X) :
    fullHistoryHiddenAliceWeight G
        (fullCoordinateOldHistory D L i r y)
        (fullCoordinateAssembleHiddenAlice D L i x hidden) =
      G.conditionalXGivenY y x *
        fullHistoryHiddenAliceWeight G
          (fullCoordinateNewHistory D L i r x) hidden := by
  classical
  unfold fullHistoryHiddenAliceWeight
  rw [fullHistoryRemaining_prod_split D L i hiD hiL]
  simp only [fullCoordinateOldHistory,
    fullCoordinateAssembleHiddenAlice, dite_true]
  congr 1
  apply Finset.prod_congr rfl
  intro j _
  have hj : (j : Fin n) ≠ i := by
    intro he
    have hnot : (j : Fin n) ∉ insert i L :=
      (Finset.mem_sdiff.mp j.property).2
    apply hnot
    simp [he]
  simp [fullCoordinateNewHistory,
    hj]

theorem fullCoordinateAliceFilter_conditional_mean
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (α : {j : Fin n // j ∈ D} → A)
    (y : Y) :
    fullCoordinateAliceMeanFilter G n S D L i r α y =
      conditionalAliceAverage G
        (fullCoordinateAliceQuestionFilter G n S D L i r α) y := by
  classical
  let e := fullCoordinateHiddenAliceEquiv
    (X := X) D L i hiD hiL
  let f : X × ({j : Fin n //
      j ∈ fullHistoryRemaining n D (insert i L)} → X) →
      Matrix S.Alice S.Alice ℂ := fun t =>
    (G.conditionalXGivenY y t.1 *
      fullHistoryHiddenAliceWeight G
        (fullCoordinateNewHistory D L i r t.1) t.2) •
      conditionedAliceEffect G n S D α
        (fullHistoryAliceQuestion
          (fullCoordinateNewHistory D L i r t.1) t.2)
  unfold fullCoordinateAliceMeanFilter
    fullCoordinateAliceQuestionFilter
  calc
    fullHistoryAliceFilter G n S D L
      (fullCoordinateOldHistory D L i r y) α =
      ∑ hidden : ({j : Fin n //
        j ∈ fullHistoryRemaining n D L} → X), f (e hidden) := by
        unfold fullHistoryAliceFilter
        apply Finset.sum_congr rfl
        intro hidden _
        have he := e.symm_apply_apply hidden
        change fullCoordinateAssembleHiddenAlice
          D L i (e hidden).1 (e hidden).2 = hidden at he
        conv_lhs => rw [← he]
        rw [fullCoordinateHiddenAliceWeight_split
          G D L i hiD hiL r (e hidden).1 y (e hidden).2]
        rw [fullCoordinateAliceQuestion_eq
          D L i hiD hiL r (e hidden).1 y (e hidden).2]
    _ = ∑ t : X × ({j : Fin n //
        j ∈ fullHistoryRemaining n D (insert i L)} → X),
          f t := e.sum_comp f
    _ = conditionalAliceAverage G
        (fun x => fullHistoryAliceFilter G n S D (insert i L)
          (fullCoordinateNewHistory D L i r x) α) y := by
      simp [f, conditionalAliceAverage, fullHistoryAliceFilter,
        Fintype.sum_prod_type, Finset.smul_sum, smul_smul]

end CoordinateFilters

section ConditionalJensen

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem conditionalAlice_matrixLogEntropy_gap_posSemidef
    {d : Type*} [Fintype d] [DecidableEq d]
    (G : Game X Y A B)
    (H : X → Matrix d d ℂ)
    (hH : ∀ x, (H x).PosSemidef)
    (y : Y) (hy : 0 < G.marginalY y) :
    (conditionalAliceAverage G
        (fun x => cfc (fun z : ℝ => z * Real.log z) (H x)) y -
      cfc (fun z : ℝ => z * Real.log z)
        (conditionalAliceAverage G H y)).PosSemidef := by
  exact matrixLogEntropy_weighted_jensen_posSemidef
    (G.conditionalXGivenY y) H
    (conditionalAliceAverage G H y)
    (fun x => G.conditionalXGivenY_nonneg y x)
    (G.conditionalXGivenY_sum y hy)
    rfl hH

end ConditionalJensen

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D L : Finset (Fin n)) (i : Fin n)
    (hiD : i ∉ D) (hiL : i ∉ L)
    (r : FullCoordinateRevealHistory X Y n D L i)
    (α : {j : Fin n // j ∈ D} → A)
    (β : {j : Fin n // j ∈ D} → B) :
    0 ≤ fullCoordinateAliceEntropyIncrement G n S D L i r α β := by
  unfold fullCoordinateAliceEntropyIncrement
  apply Finset.sum_nonneg
  intro y _
  by_cases hy : G.marginalY y = 0
  · simp [hy]
  · have hypos : 0 < G.marginalY y :=
      lt_of_le_of_ne (G.marginalY_nonneg y) (Ne.symm hy)
    have hmean := fullCoordinateAliceFilter_conditional_mean
      G n S D L i hiD hiL r α y
    have hgap :
        (conditionalAliceAverage G
          (fun x => cfc (fun z : ℝ => z * Real.log z)
            (fullCoordinateAliceQuestionFilter G n S D L i r α x)) y -
          cfc (fun z : ℝ => z * Real.log z)
            (fullCoordinateAliceMeanFilter G n S D L i r α y)).PosSemidef := by
      rw [hmean]
      exact conditionalAlice_matrixLogEntropy_gap_posSemidef G
        (fullCoordinateAliceQuestionFilter G n S D L i r α)
        (fun x => fullHistoryAliceFilter_posSemidef G n S D
          (insert i L) (fullCoordinateNewHistory D L i r x) α)
        y hypos
    exact mul_nonneg (G.marginalY_nonneg y)
      (trace_mul_posSemidef_nonneg S.state.positive
        (hgap.kronecker
          (fullHistoryBobFilter_posSemidef G n S D L
            (fullCoordinateOldHistory D L i r y) β)))
