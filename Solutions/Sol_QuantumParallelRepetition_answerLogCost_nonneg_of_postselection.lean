import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_17
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_fullSubsetHistory_mass_eq_postselection
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharP.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.BigOperators
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.NatInt
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Module.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.Order
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.InnerProductSpace.Defs
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Attach
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Int.Cast.Lemmas
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.RelClasses
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Module
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
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

theorem marginalX_nonneg (G : Game X Y A B) (x : X) :
    0 ≤ G.marginalX x := by
  unfold marginalX
  exact Finset.sum_nonneg fun y _ => G.weight_nonneg x y

theorem marginalY_nonneg (G : Game X Y A B) (y : Y) :
    0 ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.sum_nonneg fun x _ => G.weight_nonneg x y

theorem marginalX_normalized (G : Game X Y A B) :
    (∑ x : X, G.marginalX x) = 1 := by
  simpa [marginalX] using G.weight_normalized

theorem marginalY_normalized (G : Game X Y A B) :
    (∑ y : Y, G.marginalY y) = 1 := by
  unfold marginalY
  rw [Finset.sum_comm]
  exact G.weight_normalized

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

theorem conditionalYGivenX_sum
    (G : Game X Y A B) (x : X)
    (hx : 0 < G.marginalX x) :
    (∑ y : Y, G.conditionalYGivenX x y) = 1 := by
  unfold conditionalYGivenX
  rw [← Finset.sum_div]
  change G.marginalX x / G.marginalX x = 1
  exact div_self hx.ne'

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

theorem conditionedAliceEffect_complement_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (α : {i : Fin n // i ∈ D} → A)
    (xs : Fin n → X) :
    (1 - conditionedAliceEffect G n S D α xs).PosSemidef := by
  classical
  have hsplit :
      1 - conditionedAliceEffect G n S D α xs =
        ∑ answers : Fin n → A,
          if ∀ (i : Fin n) (hi : i ∈ D),
            answers i = α ⟨i, hi⟩
          then 0
          else (S.aliceMeasurement xs).operator answers := by
    unfold conditionedAliceEffect
    rw [← (S.aliceMeasurement xs).complete,
      ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro answers _
    split_ifs <;> simp
  rw [hsplit]
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact Matrix.PosSemidef.zero
  · exact (S.aliceMeasurement xs).positive answers

theorem conditionedBobEffect_complement_positive
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (β : {i : Fin n // i ∈ D} → B)
    (ys : Fin n → Y) :
    (1 - conditionedBobEffect G n S D β ys).PosSemidef := by
  classical
  have hsplit :
      1 - conditionedBobEffect G n S D β ys =
        ∑ answers : Fin n → B,
          if ∀ (i : Fin n) (hi : i ∈ D),
            answers i = β ⟨i, hi⟩
          then 0
          else (S.bobMeasurement ys).operator answers := by
    unfold conditionedBobEffect
    rw [← (S.bobMeasurement ys).complete,
      ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro answers _
    split_ifs <;> simp
  rw [hsplit]
  apply Matrix.posSemidef_sum Finset.univ
  intro answers _
  split_ifs
  · exact Matrix.PosSemidef.zero
  · exact (S.bobMeasurement ys).positive answers

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

theorem fullHistoryWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L) :
    0 ≤ fullHistoryWeight G h := by
  unfold fullHistoryWeight
  apply mul_nonneg
  · apply mul_nonneg
    · exact Finset.prod_nonneg fun i _ =>
        G.weight_nonneg (h.aliceConditioned i) (h.bobConditioned i)
    · exact Finset.prod_nonneg fun i _ =>
        G.marginalX_nonneg (h.aliceRevealed i)
  · exact Finset.prod_nonneg fun i _ =>
      G.marginalY_nonneg (h.bobRemaining i)

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

theorem fullHistoryWinIndicator_nonneg
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B) :
    0 ≤ fullHistoryWinIndicator G h α β := by
  classical
  unfold fullHistoryWinIndicator
  split <;> norm_num

end ActualHistoryWeights

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 600000

section HistoryContractions

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem Game.conditionalYGivenX_sum_le_one
    (G : Game X Y A B) (x : X) :
    (∑ y : Y, G.conditionalYGivenX x y) ≤ 1 := by
  by_cases hx : G.marginalX x = 0
  · simp [Game.conditionalYGivenX, hx]
  · have hpos : 0 < G.marginalX x :=
      lt_of_le_of_ne (G.marginalX_nonneg x) (Ne.symm hx)
    rw [G.conditionalYGivenX_sum x hpos]

theorem Game.conditionalXGivenY_sum_le_one
    (G : Game X Y A B) (y : Y) :
    (∑ x : X, G.conditionalXGivenY y x) ≤ 1 := by
  by_cases hy : G.marginalY y = 0
  · simp [Game.conditionalXGivenY, hy]
  · have hpos : 0 < G.marginalY y :=
      lt_of_le_of_ne (G.marginalY_nonneg y) (Ne.symm hy)
    rw [G.conditionalXGivenY_sum y hpos]

theorem fullHistoryHiddenAliceWeight_sum_le_one
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L) :
    (∑ hidden : {i : Fin n // i ∈ fullHistoryRemaining n D L} → X,
      fullHistoryHiddenAliceWeight G h hidden) ≤ 1 := by
  unfold fullHistoryHiddenAliceWeight
  rw [← Fintype.prod_sum]
  apply Finset.prod_le_one
  · intro i _
    exact Finset.sum_nonneg fun x _ =>
      G.conditionalXGivenY_nonneg (h.bobRemaining i) x
  · intro i _
    exact G.conditionalXGivenY_sum_le_one (h.bobRemaining i)

theorem fullHistoryHiddenBobWeight_sum_le_one
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L) :
    (∑ hidden : {i : Fin n // i ∈ L} → Y,
      fullHistoryHiddenBobWeight G h hidden) ≤ 1 := by
  unfold fullHistoryHiddenBobWeight
  rw [← Fintype.prod_sum]
  apply Finset.prod_le_one
  · intro i _
    exact Finset.sum_nonneg fun y _ =>
      G.conditionalYGivenX_nonneg (h.aliceRevealed i) y
  · intro i _
    exact G.conditionalYGivenX_sum_le_one (h.aliceRevealed i)

theorem fullHistoryAliceFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A) :
    (1 - fullHistoryAliceFilter G n S D L h α).PosSemidef := by
  classical
  let w : ({i : Fin n // i ∈ fullHistoryRemaining n D L} → X) → ℝ :=
    fullHistoryHiddenAliceWeight G h
  let E : ({i : Fin n // i ∈ fullHistoryRemaining n D L} → X) →
      Matrix S.Alice S.Alice ℂ := fun x =>
    conditionedAliceEffect G n S D α (fullHistoryAliceQuestion h x)
  have hsum : (∑ x, w x) ≤ 1 :=
    fullHistoryHiddenAliceWeight_sum_le_one G h
  have hsplit :
      1 - (∑ x, w x • E x) =
        (1 - (∑ x, w x)) • (1 : Matrix S.Alice S.Alice ℂ) +
          ∑ x, w x • (1 - E x) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  change (1 - ∑ x, w x • E x).PosSemidef
  rw [hsplit]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr hsum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro x _
    exact (conditionedAliceEffect_complement_positive G n S D α
      (fullHistoryAliceQuestion h x)).smul
        (fullHistoryHiddenAliceWeight_nonneg G h x)

theorem fullHistoryBobFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (h : FullSubsetHistory X Y n D L)
    (β : {i : Fin n // i ∈ D} → B) :
    (1 - fullHistoryBobFilter G n S D L h β).PosSemidef := by
  classical
  let w : ({i : Fin n // i ∈ L} → Y) → ℝ :=
    fullHistoryHiddenBobWeight G h
  let E : ({i : Fin n // i ∈ L} → Y) → Matrix S.Bob S.Bob ℂ :=
    fun y => conditionedBobEffect G n S D β (fullHistoryBobQuestion h y)
  have hsum : (∑ y, w y) ≤ 1 :=
    fullHistoryHiddenBobWeight_sum_le_one G h
  have hsplit :
      1 - (∑ y, w y • E y) =
        (1 - (∑ y, w y)) • (1 : Matrix S.Bob S.Bob ℂ) +
          ∑ y, w y • (1 - E y) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  change (1 - ∑ y, w y • E y).PosSemidef
  rw [hsplit]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr hsum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro y _
    exact (conditionedBobEffect_complement_positive G n S D β
      (fullHistoryBobQuestion h y)).smul
        (fullHistoryHiddenBobWeight_nonneg G h y)

end HistoryContractions

theorem bornTracePairing_one_one
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB)) :
    bornTracePairing ρ.matrix
      (1 : Matrix dA dA ℂ) (1 : Matrix dB dB ℂ) = 1 := by
  simp [bornTracePairing, ρ.trace_one]

theorem bornTracePairing_one_le_one
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (G : Matrix dB dB ℂ)
    (hGcomplement : (1 - G).PosSemidef) :
    bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G ≤ 1 := by
  have hpositive : 0 ≤ bornTracePairing ρ.matrix
      (1 : Matrix dA dA ℂ) (1 - G) :=
    trace_mul_posSemidef_nonneg ρ.positive
      (Matrix.PosSemidef.one.kronecker hGcomplement)
  have hdiff : bornTracePairing ρ.matrix
      (1 : Matrix dA dA ℂ) (1 - G) =
      bornTracePairing ρ.matrix
        (1 : Matrix dA dA ℂ) (1 : Matrix dB dB ℂ) -
      bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G :=
    (bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ)).map_sub 1 G
  rw [hdiff, bornTracePairing_one_one] at hpositive
  linarith

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 800000

section HistoryNormalization

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullHistoryWeight_sum
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) :
    (∑ h : FullSubsetHistory X Y n D L,
      fullHistoryWeight G h) = 1 := by
  classical
  let Dsub := {i : Fin n // i ∈ D}
  let Lsub := {i : Fin n // i ∈ L}
  let Rsub := {i : Fin n // i ∈ fullHistoryRemaining n D L}
  have hD :
      (∑ q : Dsub → X × Y,
        ∏ i : Dsub, G.questionWeight (q i).1 (q i).2) = 1 := by
    calc
      (∑ q : Dsub → X × Y,
        ∏ i : Dsub, G.questionWeight (q i).1 (q i).2) =
        ∏ _i : Dsub, ∑ z : X × Y,
          G.questionWeight z.1 z.2 := by
          exact (Fintype.prod_sum
            (fun _i : Dsub => fun z : X × Y =>
              G.questionWeight z.1 z.2)).symm
      _ = ∏ _i : Dsub, (1 : ℝ) := by
        apply Finset.prod_congr rfl
        intro i _
        rw [Fintype.sum_prod_type]
        exact G.weight_normalized
      _ = 1 := by simp
  have hL :
      (∑ x : Lsub → X,
        ∏ i : Lsub, G.marginalX (x i)) = 1 := by
    calc
      (∑ x : Lsub → X,
        ∏ i : Lsub, G.marginalX (x i)) =
        ∏ _i : Lsub, ∑ z : X, G.marginalX z := by
          exact (Fintype.prod_sum
            (fun _i : Lsub => fun z : X => G.marginalX z)).symm
      _ = 1 := by simp [G.marginalX_normalized]
  have hR :
      (∑ y : Rsub → Y,
        ∏ i : Rsub, G.marginalY (y i)) = 1 := by
    calc
      (∑ y : Rsub → Y,
        ∏ i : Rsub, G.marginalY (y i)) =
        ∏ _i : Rsub, ∑ z : Y, G.marginalY z := by
          exact (Fintype.prod_sum
            (fun _i : Rsub => fun z : Y => G.marginalY z)).symm
      _ = 1 := by simp [G.marginalY_normalized]
  let f : (Dsub → X × Y) × (Lsub → X) × (Rsub → Y) → ℝ :=
    fun t =>
      (∏ i : Dsub, G.questionWeight (t.1 i).1 (t.1 i).2) *
      (∏ i : Lsub, G.marginalX (t.2.1 i)) *
      (∏ i : Rsub, G.marginalY (t.2.2 i))
  calc
    (∑ h : FullSubsetHistory X Y n D L,
      fullHistoryWeight G h) =
      ∑ q : Dsub → X × Y,
      ∑ x : Lsub → X,
      ∑ y : Rsub → Y,
        (∏ i : Dsub, G.questionWeight (q i).1 (q i).2) *
        (∏ i : Lsub, G.marginalX (x i)) *
        (∏ i : Rsub, G.marginalY (y i)) := by
        simpa only [fullHistoryWeight, fullSubsetHistoryFieldEquiv,
          Equiv.coe_fn_mk, Fintype.sum_prod_type,
          f, Dsub, Lsub, Rsub] using
          (fullSubsetHistoryFieldEquiv (X := X) (Y := Y) D L).sum_comp f
    _ =
      (∑ q : Dsub → X × Y,
        ∏ i : Dsub, G.questionWeight (q i).1 (q i).2) *
      (∑ x : Lsub → X,
        ∏ i : Lsub, G.marginalX (x i)) *
      (∑ y : Rsub → Y,
        ∏ i : Rsub, G.marginalY (y i)) := by
      simp_rw [← Finset.mul_sum, ← Finset.sum_mul]
      congr 1
      simp_rw [← Finset.mul_sum]
      rw [← Finset.sum_mul]
    _ = 1 := by rw [hD, hL, hR]; norm_num

theorem fullHistoryWinIndicator_le_one
    (G : Game X Y A B) {n : ℕ}
    {D L : Finset (Fin n)}
    (h : FullSubsetHistory X Y n D L)
    (α : {i : Fin n // i ∈ D} → A)
    (β : {i : Fin n // i ∈ D} → B) :
    fullHistoryWinIndicator G h α β ≤ 1 := by
  classical
  unfold fullHistoryWinIndicator
  split <;> norm_num

end HistoryNormalization

end

noncomputable section

open Matrix
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 800000

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem fullHistoryAnswerCount_eq
    {A B : Type*} [Fintype A] [Fintype B]
    {n : ℕ} (D : Finset (Fin n)) :
    fullHistoryAnswerCount (A := A) (B := B) D =
      (Fintype.card A : ℝ) ^ D.card *
        (Fintype.card B : ℝ) ^ D.card := by
  classical
  simp [fullHistoryAnswerCount]

theorem fullHistoryAtomCountingWeight_nonneg
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n))
    (t : FullHistoryEntropyAtom X Y A B n D L) :
    0 ≤ fullHistoryAtomCountingWeight G D L t := by
  exact mul_nonneg (fullHistoryWeight_nonneg G t.1)
    (fullHistoryWinIndicator_nonneg G t.1 t.2.1 t.2.2)

theorem bornTracePairing_contractions_le_one
    {dA dB : Type*}
    [Fintype dA] [Fintype dB]
    [DecidableEq dA] [DecidableEq dB]
    (ρ : DensityMatrix (dA × dB))
    (F : Matrix dA dA ℂ)
    (hFcomplement : (1 - F).PosSemidef)
    (G : Matrix dB dB ℂ) (hG : G.PosSemidef)
    (hGcomplement : (1 - G).PosSemidef) :
    bornTracePairing ρ.matrix F G ≤ 1 := by
  have hpositive : 0 ≤
      bornTracePairing ρ.matrix (1 - F) G :=
    trace_mul_posSemidef_nonneg ρ.positive
      (hFcomplement.kronecker hG)
  have hdiff : bornTracePairing ρ.matrix (1 - F) G =
      bornTracePairing ρ.matrix (1 : Matrix dA dA ℂ) G -
        bornTracePairing ρ.matrix F G := by
    simp
  rw [hdiff] at hpositive
  have hone := bornTracePairing_one_le_one ρ G hGcomplement
  linarith

theorem fullHistoryAtomBornMass_le_one
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (t : FullHistoryEntropyAtom X Y A B n D L) :
    fullHistoryAtomBornMass G n S D L t ≤ 1 := by
  exact bornTracePairing_contractions_le_one S.state
    (fullHistoryAliceFilter G n S D L t.1 t.2.1)
    (fullHistoryAliceFilter_complement_posSemidef G n S D L t.1 t.2.1)
    (fullHistoryBobFilter G n S D L t.1 t.2.2)
    (fullHistoryBobFilter_posSemidef G n S D L t.1 t.2.2)
    (fullHistoryBobFilter_complement_posSemidef G n S D L t.1 t.2.2)

theorem fullHistoryAtomCountingWeight_sum_le
    (G : Game X Y A B) {n : ℕ}
    (D L : Finset (Fin n)) :
    (∑ t : FullHistoryEntropyAtom X Y A B n D L,
      fullHistoryAtomCountingWeight G D L t) ≤
      fullHistoryAnswerCount (A := A) (B := B) D := by
  classical
  calc
    (∑ t : FullHistoryEntropyAtom X Y A B n D L,
      fullHistoryAtomCountingWeight G D L t) =
      ∑ h : FullSubsetHistory X Y n D L,
      ∑ α : {i : Fin n // i ∈ D} → A,
      ∑ β : {i : Fin n // i ∈ D} → B,
        fullHistoryWeight G h * fullHistoryWinIndicator G h α β := by
        simp [fullHistoryAtomCountingWeight, Fintype.sum_prod_type]
    _ ≤ ∑ h : FullSubsetHistory X Y n D L,
        ∑ _α : {i : Fin n // i ∈ D} → A,
        ∑ _β : {i : Fin n // i ∈ D} → B,
          fullHistoryWeight G h := by
      apply Finset.sum_le_sum
      intro h _
      apply Finset.sum_le_sum
      intro α _
      apply Finset.sum_le_sum
      intro β _
      exact mul_le_of_le_one_right
        (fullHistoryWeight_nonneg G h)
        (fullHistoryWinIndicator_le_one G h α β)
    _ = fullHistoryAnswerCount (A := A) (B := B) D *
        (∑ h : FullSubsetHistory X Y n D L,
          fullHistoryWeight G h) := by
      simp [fullHistoryAnswerCount, Finset.mul_sum,
        mul_assoc]
    _ = fullHistoryAnswerCount (A := A) (B := B) D := by
      rw [fullHistoryWeight_sum G D L]
      ring

theorem fullHistoryAtomBornMass_sum
    [DecidableEq A] [DecidableEq B]
    (G : Game X Y A B) (n : ℕ)
    (S : Strategy (G.repeat n))
    (D L : Finset (Fin n))
    (hL : L ⊆ Finset.univ \ D) :
    (∑ t : FullHistoryEntropyAtom X Y A B n D L,
      fullHistoryAtomCountingWeight G D L t *
        fullHistoryAtomBornMass G n S D L t) =
      (strategyEventLaw (G.repeat n) S).eventMass
        (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D) := by
  classical
  simpa [fullHistoryAtomCountingWeight, fullHistoryAtomBornMass,
    Fintype.sum_prod_type] using
    fullSubsetHistory_mass_eq_postselection G n S D L hL

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

section ActualFilters

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem answerCount_pos_of_postselection
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (hp : 0 < repeatedPostselectionMass G n S D) :
    0 < fullHistoryAnswerCount (A := A) (B := B) D := by
  classical
  have hmass := fullHistoryAtomBornMass_sum G n S D ∅
    (Finset.empty_subset _)
  have hfirst :
      (∑ z : FullHistoryEntropyAtom X Y A B n D ∅,
        fullHistoryAtomCountingWeight G D ∅ z *
          fullHistoryAtomBornMass G n S D ∅ z) ≤
        ∑ z : FullHistoryEntropyAtom X Y A B n D ∅,
          fullHistoryAtomCountingWeight G D ∅ z := by
    apply Finset.sum_le_sum
    intro z _
    exact mul_le_of_le_one_right
      (fullHistoryAtomCountingWeight_nonneg G D ∅ z)
      (fullHistoryAtomBornMass_le_one G n S D ∅ z)
  have hsecond := fullHistoryAtomCountingWeight_sum_le G D ∅
  change 0 <
    (strategyEventLaw (G.repeat n) S).eventMass
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D) at hp
  linarith

end ActualFilters

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    0 ≤ answerLogCost (A := A) (B := B) D := by
  classical
  by_cases empty : D.card = 0
  · simp [answerLogCost, empty]
  have count_positive :=
    answerCount_pos_of_postselection G n S D positive
  rw [fullHistoryAnswerCount_eq, ← mul_pow] at count_positive
  have alphabet_nonnegative :
      0 ≤ (Fintype.card A : ℝ) * (Fintype.card B : ℝ) := by
    positivity
  have alphabet_positive :
      0 < (Fintype.card A : ℝ) * (Fintype.card B : ℝ) := by
    by_contra not_positive
    have zero :
        (Fintype.card A : ℝ) * (Fintype.card B : ℝ) = 0 :=
      le_antisymm (le_of_not_gt not_positive) alphabet_nonnegative
    simp [zero, empty] at count_positive
  have natural_positive :
      0 < Fintype.card A * Fintype.card B := by
    exact_mod_cast alphabet_positive
  have alphabet_at_least_one :
      (1 : ℝ) ≤ (Fintype.card A : ℝ) * (Fintype.card B : ℝ) := by
    exact_mod_cast natural_positive
  unfold answerLogCost
  exact mul_nonneg (Nat.cast_nonneg _)
    (Real.log_nonneg alphabet_at_least_one)
