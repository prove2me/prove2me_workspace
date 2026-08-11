import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_21
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_fullSubsetHistory_mass_eq_postselection
import Theorems.Thm_QuantumParallelRepetition_martingale_log_cost_eq
import Theorems.Thm_QuantumParallelRepetition_reweightedSeed_flagged_projection_relativeEntropy_le
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Fin
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
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
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
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.Lattice.Basic
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
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.InformationTheory.KullbackLeibler.KLFun
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
import Mathlib.Order.Lattice
import Mathlib.Tactic.CancelDenoms.Core
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Linarith.Preprocessing
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

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem finiteUniformWeight_pos
    {Z : Type*} [Fintype Z]
    (positive : 0 < Fintype.card Z) :
    0 < finiteUniformWeight Z := by
  unfold finiteUniformWeight
  exact one_div_pos.mpr (by exact_mod_cast positive)

theorem uniformFlagReference_nonneg
    {Ω Z : Type*} [Fintype Ω] [Fintype Z]
    (prior : Ω → ℝ)
    (nonnegative : ∀ ω, 0 ≤ prior ω)
    (positive : 0 < Fintype.card Z)
    (t : Ω × Z) :
    0 ≤ uniformFlagReference (Z := Z) prior t := by
  exact mul_nonneg (nonnegative t.1)
    (finiteUniformWeight_pos positive).le

theorem finiteRelativeEntropy_nonneg
    {Ω : Type*} [Fintype Ω]
    (p q : Ω → ℝ)
    (hp : ∀ ω, 0 ≤ p ω)
    (hq : ∀ ω, 0 ≤ q ω) :
    0 ≤ finiteRelativeEntropy p q := by
  unfold finiteRelativeEntropy
  apply Finset.sum_nonneg
  intro ω _
  exact mul_nonneg (hq ω)
    (InformationTheory.klFun_nonneg (div_nonneg (hp ω) (hq ω)))

theorem groupedMass_nonneg
    {Ω κ : Type*} [Fintype Ω] [Fintype κ] [DecidableEq κ]
    (f : Ω → κ) (p : Ω → ℝ)
    (hp : ∀ ω, 0 ≤ p ω) (a : κ) :
    0 ≤ groupedMass f p a := by
  unfold groupedMass
  exact Finset.sum_nonneg (fun ω _ => hp ω)

theorem groupedMass_id
    {Ω : Type*} [Fintype Ω] [DecidableEq Ω]
    (p : Ω → ℝ) :
    groupedMass id p = p := by
  funext ω
  have hfilter :
      (Finset.univ.filter fun a : Ω => a = ω) = {ω} := by
    ext a
    simp
  unfold groupedMass
  change
    (∑ a ∈ (Finset.univ.filter fun a : Ω => a = ω), p a) = p ω
  rw [hfilter]
  simp

theorem finitePrefixMask_last
    {Ω Y : Type*} {h : ℕ} (base : Y) :
    finitePrefixMask (Ω := Ω) base (Fin.last h) = id := by
  funext t
  rcases t with ⟨ω, values⟩
  apply Prod.ext
  · rfl
  · funext j
    simp [finitePrefixMask]

theorem finitePrefixRelativeEntropy_telescope
    {Ω Y : Type*} [Fintype Ω] [Fintype Y] {h : ℕ}
    (joint prior : Ω × (Fin h → Y) → ℝ)
    (base : Y) :
    (∑ k : Fin h,
      (finitePrefixRelativeEntropy joint prior base k.succ -
        finitePrefixRelativeEntropy joint prior base k.castSucc)) =
      finiteRelativeEntropy joint prior -
        finitePrefixRelativeEntropy joint prior base 0 := by
  have hfirst := Fin.sum_univ_succ
    (fun k : Fin (h + 1) =>
      finitePrefixRelativeEntropy joint prior base k)
  have hlast := Fin.sum_univ_castSucc
    (fun k : Fin (h + 1) =>
      finitePrefixRelativeEntropy joint prior base k)
  have hendpoint :
      finitePrefixRelativeEntropy joint prior base
          (Fin.last h) =
        finiteRelativeEntropy joint prior := by
    simp only [finitePrefixRelativeEntropy,
      finitePrefixMask_last, groupedMass_id]
  rw [Finset.sum_sub_distrib]
  linarith

theorem finitePrefixRelativeEntropy_budget
    {Ω Y : Type*} [Fintype Ω] [Fintype Y] {h : ℕ}
    (joint prior : Ω × (Fin h → Y) → ℝ)
    (hjoint : ∀ t, 0 ≤ joint t)
    (hprior : ∀ t, 0 ≤ prior t)
    (base : Y) :
    (∑ k : Fin h,
      (finitePrefixRelativeEntropy joint prior base k.succ -
        finitePrefixRelativeEntropy joint prior base k.castSucc)) ≤
      finiteRelativeEntropy joint prior := by
  rw [finitePrefixRelativeEntropy_telescope]
  have hzero :
      0 ≤ finitePrefixRelativeEntropy joint prior base 0 :=
    finiteRelativeEntropy_nonneg
      (groupedMass (finitePrefixMask base 0) joint)
      (groupedMass (finitePrefixMask base 0) prior)
      (groupedMass_nonneg
        (finitePrefixMask base 0) joint hjoint)
      (groupedMass_nonneg
        (finitePrefixMask base 0) prior hprior)
  linarith

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

theorem conditionedAnswerFlag_card
    {n : ℕ} (D : Finset (Fin n)) :
    (Fintype.card (ConditionedAnswerFlag A B D) : ℝ) =
      fullHistoryAnswerCount (A := A) (B := B) D := by
  simp [fullHistoryAnswerCount]

theorem conditionedAnswerFlag_card_pos
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (hp : 0 < repeatedPostselectionMass G n S D) :
    0 < Fintype.card (ConditionedAnswerFlag A B D) := by
  have hreal :
      0 < (Fintype.card (ConditionedAnswerFlag A B D) : ℝ) := by
    rw [conditionedAnswerFlag_card]
    exact answerCount_pos_of_postselection G n S D hp
  exact_mod_cast hreal

theorem conditionedAnswerFlag_log_card
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (hp : 0 < repeatedPostselectionMass G n S D) :
    Real.log (Fintype.card (ConditionedAnswerFlag A B D) : ℝ) =
      answerLogCost (A := A) (B := B) D := by
  rw [conditionedAnswerFlag_card]
  have hanswer := answerCount_pos_of_postselection G n S D hp
  have hcost := martingale_log_cost_eq G n S D hp
  have hsplit := Real.log_div hanswer.ne' hp.ne'
  have hpost :
      postselectionLogCost G n S D =
        -Real.log (repeatedPostselectionMass G n S D) := by
    simp [postselectionLogCost, one_div, Real.log_inv]
  linarith

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

theorem exactFiniteRelativeEntropy_equiv
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (e : ι ≃ κ) (p q : ι → ℝ) :
    finiteRelativeEntropy
        (fun k : κ => p (e.symm k))
        (fun k : κ => q (e.symm k)) =
      finiteRelativeEntropy p q := by
  unfold finiteRelativeEntropy
  exact e.symm.sum_comp
    (fun i => q i * InformationTheory.klFun (p i / q i))

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactGroupedMass_decidableEq_irrel
    {Ω κ : Type*} [Fintype Ω]
    (first second : DecidableEq κ)
    (projection : Ω → κ) (mass : Ω → ℝ) :
    @groupedMass Ω _ κ first projection mass =
      @groupedMass Ω _ κ second projection mass := by
  have h : first = second := Subsingleton.elim first second
  subst second
  rfl

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem reweightedSeedWinEventMass
    {K : Type*} [Fintype K]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    (reweightedSeedPriorEventLaw seedLaw G n S).eventMass
        (reweightedSeedWinEvent (K := K) G n D) =
      repeatedPostselectionMass G n S D := by
  classical
  let event := FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D
  let original := strategyEventLaw (G.repeat n) S
  change
    (∑ q ∈ (Finset.univ.filter
      (fun q : K × ExactOutcome X Y A B n => q.2 ∈ event)),
        seedLaw.weight q.1 * original.weight q.2) =
      ∑ outcome ∈ event, original.weight outcome
  simp only [Finset.sum_filter]
  rw [Fintype.sum_prod_type]
  have hinner (k : K) :
      (∑ outcome : ExactOutcome X Y A B n,
        if outcome ∈ event
        then seedLaw.weight k * original.weight outcome
        else 0) =
      seedLaw.weight k *
        (∑ outcome : ExactOutcome X Y A B n,
          if outcome ∈ event then original.weight outcome else 0) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro outcome _
    split_ifs <;> simp
  simp_rw [hinner]
  rw [← Finset.sum_mul, seedLaw.weight_sum]
  simp

theorem reweightedSeed_source_equation_twenty_five
    {K U : Type*} [Fintype K] [Fintype U]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (projection : K × ExactOutcome X Y A B n → U) :
    finiteRelativeEntropy
        (reweightedSeedFlaggedProjectionLaw
          seedLaw G n S D projection
          (fun q =>
            repeatedConditionedAnswerFlag G n S D q.2))
        (uniformFlagReference
          (Z := ConditionedAnswerFlag A B D)
          (groupedMass projection
            (reweightedSeedPriorEventLaw seedLaw G n S).weight)) ≤
      postselectionLogCost G n S D +
        answerLogCost (A := A) (B := B) D := by
  have h := reweightedSeed_flagged_projection_relativeEntropy_le
    seedLaw G n S D positive
    (conditionedAnswerFlag_card_pos G n S D positive)
    projection
    (fun q => repeatedConditionedAnswerFlag G n S D q.2)
  rw [conditionedAnswerFlag_log_card
    G n S D positive] at h
  exact h

theorem reweightedSeedPrefixJoint_nonneg
    {K Ω V : Type*} [Fintype K] [Fintype Ω] [Fintype V]
    {h : ℕ} (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (projection : K × ExactOutcome X Y A B n →
      Ω × (Fin h → V))
    (t : (Ω × ConditionedAnswerFlag A B D) ×
      (Fin h → V)) :
    0 ≤ reweightedSeedPrefixJoint
      seedLaw G n S D projection t := by
  unfold reweightedSeedPrefixJoint
    reweightedSeedFlaggedProjectionLaw groupedMass
  apply Finset.sum_nonneg
  intro q _
  unfold reweightedSeedPosterior
  apply conditionedEventDistribution_nonneg
  rw [reweightedSeedWinEventMass]
  exact positive

theorem reweightedSeedPrefixPrior_nonneg
    {K Ω V : Type*} [Fintype K] [Fintype Ω] [Fintype V]
    {h : ℕ} (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (projection : K × ExactOutcome X Y A B n →
      Ω × (Fin h → V))
    (t : (Ω × ConditionedAnswerFlag A B D) ×
      (Fin h → V)) :
    0 ≤ reweightedSeedPrefixPrior
      seedLaw G n S D projection t := by
  unfold reweightedSeedPrefixPrior
  apply uniformFlagReference_nonneg
  · exact groupedMass_nonneg projection
      (reweightedSeedPriorEventLaw seedLaw G n S).weight
      (reweightedSeedPriorEventLaw seedLaw G n S).weight_nonneg
  · exact conditionedAnswerFlag_card_pos G n S D positive

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2200000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    {K Ω V : Type*} [Fintype K] [Fintype Ω] [Fintype V]
    {h : ℕ} (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (projection : K × ExactOutcome X Y A B n →
      Ω × (Fin h → V))
    (default : V) :
    (∑ k : Fin h,
      reweightedSeedPrefixEntropyIncrement
        seedLaw G n S D projection default k) ≤
      postselectionLogCost G n S D +
        answerLogCost (A := A) (B := B) D := by
  let e := exactSourcePrefixFlagEquiv
    (Ω := Ω) (V := V) (h := h)
    (Z := ConditionedAnswerFlag A B D)
  let joint := reweightedSeedPrefixJoint
    seedLaw G n S D projection
  let prior := reweightedSeedPrefixPrior
    seedLaw G n S D projection
  calc
    (∑ k : Fin h,
      reweightedSeedPrefixEntropyIncrement
        seedLaw G n S D projection default k) ≤
      finiteRelativeEntropy joint prior := by
        exact finitePrefixRelativeEntropy_budget joint prior
          (reweightedSeedPrefixJoint_nonneg
            seedLaw G n S D positive projection)
          (reweightedSeedPrefixPrior_nonneg
            seedLaw G n S D positive projection)
          default
    _ = finiteRelativeEntropy
      (reweightedSeedFlaggedProjectionLaw
        seedLaw G n S D projection
        (fun q =>
          repeatedConditionedAnswerFlag G n S D q.2))
      (uniformFlagReference
        (Z := ConditionedAnswerFlag A B D)
        (groupedMass projection
          (reweightedSeedPriorEventLaw seedLaw G n S).weight)) := by
        exact exactFiniteRelativeEntropy_equiv e
          (reweightedSeedFlaggedProjectionLaw
            seedLaw G n S D projection
            (fun q =>
              repeatedConditionedAnswerFlag G n S D q.2))
          (uniformFlagReference
            (Z := ConditionedAnswerFlag A B D)
            (groupedMass projection
              (reweightedSeedPriorEventLaw seedLaw G n S).weight))
    _ ≤ postselectionLogCost G n S D +
        answerLogCost (A := A) (B := B) D := by
      convert reweightedSeed_source_equation_twenty_five
        seedLaw G n S D positive projection using 1
      congr 1
      congr 1
      exact exactGroupedMass_decidableEq_irrel _ _
        projection
        (reweightedSeedPriorEventLaw seedLaw G n S).weight
