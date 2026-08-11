import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_22
import Theorems.Thm_QuantumParallelRepetition_trace_mul_posSemidef_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactAliceQuestionFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactBobQuestionFilter_posSemidef
import Theorems.Thm_QuantumParallelRepetition_exactFairBobMeanBornMass_eq_fullOutcome_sum
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
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.BigOperators
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Module.LinearMap.Defs
import Mathlib.Algebra.Module.NatInt
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.BigOperators.Group.Finset
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
import Mathlib.Analysis.Convex.Jensen
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
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Attach
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
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
import Mathlib.Data.Int.Cast.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Int.Cast.Lemmas
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.Set.Defs
import Mathlib.Data.SetLike.Basic
import Mathlib.GroupTheory.GroupAction.Hom
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.LinearAlgebra.Matrix.Defs
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Logic.IsEmpty.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Flat.TorsionFree
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.Module
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
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

theorem marginalX_nonneg (G : Game X Y A B) (x : X) :
    0 ≤ G.marginalX x := by
  unfold marginalX
  exact Finset.sum_nonneg fun y _ => G.weight_nonneg x y

theorem marginalX_normalized (G : Game X Y A B) :
    (∑ x : X, G.marginalX x) = 1 := by
  simpa [marginalX] using G.weight_normalized

end Game

end

noncomputable section

open scoped BigOperators

variable {ι : Type*}

theorem negMulLog_rescale
    {W p : ℝ} (hW : 0 < W) (hp : 0 < p) :
    W * Real.negMulLog (p / W) = p * Real.log (W / p) := by
  unfold Real.negMulLog
  rw [Real.log_div hp.ne' hW.ne', Real.log_div hW.ne' hp.ne']
  field_simp
  ring

theorem finite_weighted_entropy_le
    (s : Finset ι) (w h : ι → ℝ) {W p : ℝ}
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hh : ∀ i ∈ s, 0 ≤ h i)
    (hW : 0 < W)
    (hp : 0 < p)
    (hw_sum : (∑ i ∈ s, w i) = W)
    (hp_sum : (∑ i ∈ s, w i * h i) = p) :
    (∑ i ∈ s, w i * Real.negMulLog (h i))
      ≤ p * Real.log (W / p) := by
  classical
  have h_normalized :
      (∑ i ∈ s, w i / W) = 1 := by
    calc
      (∑ i ∈ s, w i / W) = (∑ i ∈ s, w i) / W := by
        rw [Finset.sum_div]
      _ = W / W := by rw [hw_sum]
      _ = 1 := div_self hW.ne'
  have h_mean :
      (∑ i ∈ s, (w i / W) * h i) = p / W := by
    calc
      (∑ i ∈ s, (w i / W) * h i) =
          ∑ i ∈ s, (w i * h i) / W := by
            apply Finset.sum_congr rfl
            intro i hi
            ring
      _ = (∑ i ∈ s, w i * h i) / W := by
            rw [Finset.sum_div]
      _ = p / W := by rw [hp_sum]
  have h_jensen :
      (∑ i ∈ s, (w i / W) * Real.negMulLog (h i))
        ≤ Real.negMulLog (∑ i ∈ s, (w i / W) * h i) := by
    simpa only [smul_eq_mul] using
      (Real.concaveOn_negMulLog.le_map_sum
        (t := s) (w := fun i => w i / W) (p := h)
        (fun i hi => div_nonneg (hw i hi) hW.le)
        h_normalized
        (fun i hi => show h i ∈ Set.Ici (0 : ℝ) from hh i hi))
  calc
    (∑ i ∈ s, w i * Real.negMulLog (h i)) =
        W * (∑ i ∈ s, (w i / W) * Real.negMulLog (h i)) := by
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro i hi
          field_simp
    _ ≤ W * Real.negMulLog (∑ i ∈ s, (w i / W) * h i) :=
          mul_le_mul_of_nonneg_left h_jensen hW.le
    _ = W * Real.negMulLog (p / W) := by rw [h_mean]
    _ = p * Real.log (W / p) := negMulLog_rescale hW hp

theorem finite_weighted_entropy_le_of_weight_bound
    (s : Finset ι) (w h : ι → ℝ) {W N p : ℝ}
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hh : ∀ i ∈ s, 0 ≤ h i)
    (hW : 0 < W)
    (hp : 0 < p)
    (hw_sum : (∑ i ∈ s, w i) = W)
    (hp_sum : (∑ i ∈ s, w i * h i) = p)
    (hWN : W ≤ N) :
    (∑ i ∈ s, w i * Real.negMulLog (h i))
      ≤ p * Real.log (N / p) := by
  have hquot : W / p ≤ N / p := by
    exact (div_le_div_iff_of_pos_right hp).mpr hWN
  have hlog : Real.log (W / p) ≤ Real.log (N / p) :=
    Real.log_le_log (div_pos hW hp) hquot
  exact
    (finite_weighted_entropy_le s w h hw hh hW hp hw_sum hp_sum).trans
      (mul_le_mul_of_nonneg_left hlog hp.le)

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

theorem conditionalYGivenX_sum
    (G : Game X Y A B) (x : X)
    (hx : 0 < G.marginalX x) :
    (∑ y : Y, G.conditionalYGivenX x y) = 1 := by
  unfold conditionalYGivenX
  rw [← Finset.sum_div]
  change G.marginalX x / G.marginalX x = 1
  exact div_self hx.ne'

end Game

section RepeatedQuantumFilters

open scoped ComplexOrder MatrixOrder

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

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

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

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

theorem exactPriorQuestionWeight_nonneg
    (G : Game X Y A B) (n : ℕ)
    (q : ExactFullQuestion X Y n) :
    0 ≤ exactPriorQuestionWeight G n q :=
  (G.repeat n).weight_nonneg q.1 q.2

theorem exactPriorQuestionWeight_sum
    (G : Game X Y A B) (n : ℕ) :
    (∑ q : ExactFullQuestion X Y n,
      exactPriorQuestionWeight G n q) = 1 := by
  simpa [exactPriorQuestionWeight,
    Fintype.sum_prod_type] using (G.repeat n).weight_normalized

theorem exactRevealMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed) :
    0 ≤ exactRevealMass G n D seed history := by
  unfold exactRevealMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPriorQuestionWeight_nonneg G n q
  · exact le_rfl

theorem exactRevealMass_sum
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    (∑ history : ExactRevealHistory X Y D seed,
      exactRevealMass G n D seed history) = 1 := by
  classical
  unfold exactRevealMass
  rw [Finset.sum_comm]
  simp_rw [Fintype.sum_ite_eq]
  exact exactPriorQuestionWeight_sum G n

theorem exactAliceQuestionMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) :
    0 ≤ exactAliceQuestionMass G n D seed history x := by
  unfold exactAliceQuestionMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPriorQuestionWeight_nonneg G n q
  · exact le_rfl

theorem exactBobQuestionMass_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (y : Y) :
    0 ≤ exactBobQuestionMass G n D seed history y := by
  unfold exactBobQuestionMass
  apply Finset.sum_nonneg
  intro q _
  split
  · exact exactPriorQuestionWeight_nonneg G n q
  · exact le_rfl

theorem exactBobMeanFilter_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {j : Fin n // j ∈ D} → B)
    (x : X) :
    (exactBobMeanFilter
      G n S D seed history answer x).PosSemidef := by
  unfold exactBobMeanFilter
  apply Matrix.posSemidef_sum Finset.univ
  intro y _
  exact (exactBobQuestionFilter_posSemidef
    G n S D seed history answer y).smul
    (G.conditionalYGivenX_nonneg x y)

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
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactAliceQuestionConditionalWeight_sum
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (x : X) :
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.1 seed.coordinate.val = x then
        exactPriorQuestionWeight G n q /
          exactAliceQuestionMass G n D seed history x
      else 0) =
      if exactAliceQuestionMass G n D seed history x = 0
      then 0 else 1 := by
  classical
  calc
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.1 seed.coordinate.val = x then
        exactPriorQuestionWeight G n q /
          exactAliceQuestionMass G n D seed history x
      else 0) =
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.1 seed.coordinate.val = x then
          exactPriorQuestionWeight G n q
        else 0) /
          exactAliceQuestionMass G n D seed history x := by
            rw [Finset.sum_div]
            apply Finset.sum_congr rfl
            intro q _
            split <;> simp_all
    _ = exactAliceQuestionMass G n D seed history x /
          exactAliceQuestionMass G n D seed history x := by
            rfl
    _ = _ := by
      split_ifs with zero
      · simp [zero]
      · exact div_self zero

theorem exactBobQuestionConditionalWeight_sum
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (y : Y) :
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.2 seed.coordinate.val = y then
        exactPriorQuestionWeight G n q /
          exactBobQuestionMass G n D seed history y
      else 0) =
      if exactBobQuestionMass G n D seed history y = 0
      then 0 else 1 := by
  classical
  calc
    (∑ q : ExactFullQuestion X Y n,
      if exactRevealCode D seed q = history ∧
        q.2 seed.coordinate.val = y then
        exactPriorQuestionWeight G n q /
          exactBobQuestionMass G n D seed history y
      else 0) =
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.2 seed.coordinate.val = y then
          exactPriorQuestionWeight G n q
        else 0) /
          exactBobQuestionMass G n D seed history y := by
            rw [Finset.sum_div]
            apply Finset.sum_congr rfl
            intro q _
            split <;> simp_all
    _ = exactBobQuestionMass G n D seed history y /
          exactBobQuestionMass G n D seed history y := by
            rfl
    _ = _ := by
      split_ifs with zero
      · simp [zero]
      · exact div_self zero

theorem exactAliceQuestionFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {i : Fin n // i ∈ D} → A)
    (x : X) :
    (1 - exactAliceQuestionFilter
      G n S D seed history answer x).PosSemidef := by
  classical
  let w : ExactFullQuestion X Y n → ℝ := fun q =>
    if exactRevealCode D seed q = history ∧
      q.1 seed.coordinate.val = x then
      exactPriorQuestionWeight G n q /
        exactAliceQuestionMass G n D seed history x
    else 0
  let E : ExactFullQuestion X Y n →
      Matrix S.Alice S.Alice ℂ := fun q =>
    conditionedAliceEffect G n S D answer q.1
  have weights_nonnegative (q : ExactFullQuestion X Y n) :
      0 ≤ w q := by
    dsimp [w]
    split
    · exact div_nonneg
        (exactPriorQuestionWeight_nonneg G n q)
        (exactAliceQuestionMass_nonneg G n D seed history x)
    · exact le_rfl
  have weights_sum : (∑ q, w q) ≤ 1 := by
    change
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.1 seed.coordinate.val = x then
          exactPriorQuestionWeight G n q /
            exactAliceQuestionMass G n D seed history x
        else 0) ≤ 1
    rw [exactAliceQuestionConditionalWeight_sum
      G n D seed history x]
    split <;> norm_num
  have filter_eq :
      exactAliceQuestionFilter
          G n S D seed history answer x =
        ∑ q, w q • E q := by
    unfold exactAliceQuestionFilter
    apply Finset.sum_congr rfl
    intro q _
    dsimp [w, E]
    split <;> simp_all
  have split :
      1 - (∑ q, w q • E q) =
        (1 - (∑ q, w q)) •
            (1 : Matrix S.Alice S.Alice ℂ) +
          ∑ q, w q • (1 - E q) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  rw [filter_eq, split]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr weights_sum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro q _
    exact (conditionedAliceEffect_complement_positive
      G n S D answer q.1).smul (weights_nonnegative q)

theorem exactBobQuestionFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {i : Fin n // i ∈ D} → B)
    (y : Y) :
    (1 - exactBobQuestionFilter
      G n S D seed history answer y).PosSemidef := by
  classical
  let w : ExactFullQuestion X Y n → ℝ := fun q =>
    if exactRevealCode D seed q = history ∧
      q.2 seed.coordinate.val = y then
      exactPriorQuestionWeight G n q /
        exactBobQuestionMass G n D seed history y
    else 0
  let E : ExactFullQuestion X Y n →
      Matrix S.Bob S.Bob ℂ := fun q =>
    conditionedBobEffect G n S D answer q.2
  have weights_nonnegative (q : ExactFullQuestion X Y n) :
      0 ≤ w q := by
    dsimp [w]
    split
    · exact div_nonneg
        (exactPriorQuestionWeight_nonneg G n q)
        (exactBobQuestionMass_nonneg G n D seed history y)
    · exact le_rfl
  have weights_sum : (∑ q, w q) ≤ 1 := by
    change
      (∑ q : ExactFullQuestion X Y n,
        if exactRevealCode D seed q = history ∧
          q.2 seed.coordinate.val = y then
          exactPriorQuestionWeight G n q /
            exactBobQuestionMass G n D seed history y
        else 0) ≤ 1
    rw [exactBobQuestionConditionalWeight_sum
      G n D seed history y]
    split <;> norm_num
  have filter_eq :
      exactBobQuestionFilter
          G n S D seed history answer y =
        ∑ q, w q • E q := by
    unfold exactBobQuestionFilter
    apply Finset.sum_congr rfl
    intro q _
    dsimp [w, E]
    split <;> simp_all
  have split :
      1 - (∑ q, w q • E q) =
        (1 - (∑ q, w q)) •
            (1 : Matrix S.Bob S.Bob ℂ) +
          ∑ q, w q • (1 - E q) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  rw [filter_eq, split]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr weights_sum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro q _
    exact (conditionedBobEffect_complement_positive
      G n S D answer q.2).smul (weights_nonnegative q)

theorem exactBobMeanFilter_complement_posSemidef
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (answer : {i : Fin n // i ∈ D} → B)
    (x : X) :
    (1 - exactBobMeanFilter
      G n S D seed history answer x).PosSemidef := by
  classical
  let w : Y → ℝ := G.conditionalYGivenX x
  let E : Y → Matrix S.Bob S.Bob ℂ := fun y =>
    exactBobQuestionFilter G n S D seed history answer y
  have weights_sum : (∑ y, w y) ≤ 1 :=
    G.conditionalYGivenX_sum_le_one x
  have split :
      1 - (∑ y, w y • E y) =
        (1 - (∑ y, w y)) •
            (1 : Matrix S.Bob S.Bob ℂ) +
          ∑ y, w y • (1 - E y) := by
    simp_rw [smul_sub]
    rw [Finset.sum_sub_distrib, ← Finset.sum_smul]
    module
  change (1 - ∑ y, w y • E y).PosSemidef
  rw [split]
  apply Matrix.PosSemidef.add
  · exact Matrix.PosSemidef.one.smul (sub_nonneg.mpr weights_sum)
  · apply Matrix.posSemidef_sum Finset.univ
    intro y _
    exact (exactBobQuestionFilter_complement_posSemidef
      G n S D seed history answer y).smul
        (G.conditionalYGivenX_nonneg x y)

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem groupedMass_expectation
    {Ω T : Type*} [Fintype Ω] [Fintype T] [DecidableEq T]
    (code : Ω → T) (weight : Ω → ℝ) (f : T → ℝ) :
    (∑ t : T, groupedMass code weight t * f t) =
      ∑ outcome : Ω, weight outcome * f (code outcome) := by
  classical
  unfold groupedMass
  simp only [Finset.sum_filter, Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro outcome _
  rw [Finset.sum_eq_single (code outcome)]
  · simp
  · intro t _ different
    simp [different.symm]
  · simp

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 6000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFixedSeedOutcomeCode_fiber_iff
    {n : ℕ} (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (aliceAnswer : {j : Fin n // j ∈ D} → A)
    (bobAnswer : {j : Fin n // j ∈ D} → B)
    (x : X) (y : Y)
    (outcome : ExactOutcome X Y A B n) :
    exactFixedSeedOutcomeCode D seed outcome =
        (history, aliceAnswer, bobAnswer, x, y) ↔
      exactLocallySampleableCode D (seed, outcome) =
        (seed.coordinate, x, y,
          (⟨seed, history, aliceAnswer, bobAnswer⟩ :
            ExactHistoryFlag X Y A B D)) := by
  rw [exactLocallySampleableCode_fixedSeed_fiber_iff
    D (⟨seed, history, aliceAnswer, bobAnswer⟩ :
      ExactHistoryFlag X Y A B D) x y outcome]
  constructor
  · intro same
    have hh := congrArg
      (fun t : ExactFixedSeedOutcomeTuple X Y A B D seed => t.1)
      same
    have ha := congrArg
      (fun t : ExactFixedSeedOutcomeTuple X Y A B D seed =>
        t.2.1) same
    have hb := congrArg
      (fun t : ExactFixedSeedOutcomeTuple X Y A B D seed =>
        t.2.2.1) same
    have hx := congrArg
      (fun t : ExactFixedSeedOutcomeTuple X Y A B D seed =>
        t.2.2.2.1) same
    have hy := congrArg
      (fun t : ExactFixedSeedOutcomeTuple X Y A B D seed =>
        t.2.2.2.2) same
    refine ⟨hh, hx, hy, ?_, ?_⟩
    · intro j
      exact congrFun ha j
    · intro j
      exact congrFun hb j
  · rintro ⟨hh, hx, hy, ha, hb⟩
    apply Prod.ext
    · exact hh
    · apply Prod.ext
      · exact funext ha
      · apply Prod.ext
        · exact funext hb
        · exact Prod.ext hx hy

theorem exactFixedSeedGroupedBornMass_eq
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (history : ExactRevealHistory X Y D seed)
    (aliceAnswer : {j : Fin n // j ∈ D} → A)
    (bobAnswer : {j : Fin n // j ∈ D} → B)
    (x : X) (y : Y) :
    groupedMass
        (exactFixedSeedOutcomeCode
          (X := X) (Y := Y) (A := A) (B := B) D seed)
        (strategyEventLaw (G.repeat n) S).weight
        (history, aliceAnswer, bobAnswer, x, y) =
      exactFairFullOutcomeBornMass G n S D
        ⟨seed, history, aliceAnswer, bobAnswer⟩ x y := by
  classical
  unfold groupedMass exactFairFullOutcomeBornMass
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro outcome _
  by_cases compatible :
      exactFixedSeedOutcomeCode D seed outcome =
        (history, aliceAnswer, bobAnswer, x, y)
  · rw [if_pos compatible,
      if_pos ((exactFixedSeedOutcomeCode_fiber_iff
        D seed history aliceAnswer bobAnswer x y outcome).mp compatible)]
  · rw [if_neg compatible, if_neg]
    intro incompatible
    exact compatible
      ((exactFixedSeedOutcomeCode_fiber_iff
        D seed history aliceAnswer bobAnswer x y outcome).mpr
        incompatible)

theorem exactFixedSeedOutcomeCode_accepted_iff
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (outcome : ExactOutcome X Y A B n) :
    exactHistoryAccepted G n D
        ⟨seed,
          (exactFixedSeedOutcomeCode
            (X := X) (Y := Y) (A := A) (B := B) D seed outcome).1,
          (exactFixedSeedOutcomeCode
            (X := X) (Y := Y) (A := A) (B := B) D seed outcome).2.1,
          (exactFixedSeedOutcomeCode
            (X := X) (Y := Y) (A := A) (B := B) D seed outcome).2.2.1⟩ ↔
      outcome ∈ FiniteEventLaw.winEvent
        (repeatedCoordinateWin G n) D := by
  classical
  simp only [exactHistoryAccepted,
    exactFixedSeedOutcomeCode,
    exactRevealCode,
    FiniteEventLaw.winEvent,
    Finset.mem_filter, Finset.mem_univ, true_and,
    repeatedCoordinateWin]
  constructor
  · intro accepted j member
    exact accepted ⟨j, member⟩
  · intro accepted j
    exact accepted j.val j.property

theorem exactFairFullOutcomeBornMass_accepted_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    (∑ history : ExactRevealHistory X Y D seed,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, history, aliceAnswer, bobAnswer⟩ then
          ∑ x : X, ∑ y : Y,
            exactFairFullOutcomeBornMass G n S D
              ⟨seed, history, aliceAnswer, bobAnswer⟩ x y
        else 0) = repeatedPostselectionMass G n S D := by
  classical
  let code := exactFixedSeedOutcomeCode
    (X := X) (Y := Y) (A := A) (B := B) D seed
  let payoff : ExactFixedSeedOutcomeTuple X Y A B D seed → ℝ :=
    fun t =>
      if exactHistoryAccepted G n D
        ⟨seed, t.1, t.2.1, t.2.2.1⟩ then 1 else 0
  have push := groupedMass_expectation
    code (strategyEventLaw (G.repeat n) S).weight payoff
  simp only [Fintype.sum_prod_type] at push
  calc
    (∑ history : ExactRevealHistory X Y D seed,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, history, aliceAnswer, bobAnswer⟩ then
          ∑ x : X, ∑ y : Y,
            exactFairFullOutcomeBornMass G n S D
              ⟨seed, history, aliceAnswer, bobAnswer⟩ x y
        else 0) =
      ∑ history : ExactRevealHistory X Y D seed,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
      ∑ x : X, ∑ y : Y,
        groupedMass code (strategyEventLaw (G.repeat n) S).weight
          (history, aliceAnswer, bobAnswer, x, y) *
            payoff (history, aliceAnswer, bobAnswer, x, y) := by
        apply Finset.sum_congr rfl
        intro history _
        apply Finset.sum_congr rfl
        intro aliceAnswer _
        apply Finset.sum_congr rfl
        intro bobAnswer _
        by_cases accepted : exactHistoryAccepted G n D
          ⟨seed, history, aliceAnswer, bobAnswer⟩
        · simp only [if_pos accepted, payoff, mul_one]
          apply Finset.sum_congr rfl
          intro x _
          apply Finset.sum_congr rfl
          intro y _
          exact (exactFixedSeedGroupedBornMass_eq
            G n S D seed history aliceAnswer bobAnswer x y).symm
        · simp [accepted, payoff]
    _ = ∑ outcome : ExactOutcome X Y A B n,
        (strategyEventLaw (G.repeat n) S).weight outcome *
          payoff (code outcome) := by
        simpa only [Fintype.sum_prod_type] using push
    _ = ∑ outcome : ExactOutcome X Y A B n,
        if outcome ∈ FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n) D then
          (strategyEventLaw (G.repeat n) S).weight outcome
        else 0 := by
        apply Finset.sum_congr rfl
        intro outcome _
        have acceptance := exactFixedSeedOutcomeCode_accepted_iff
          G n D seed outcome
        by_cases winning : outcome ∈ FiniteEventLaw.winEvent
          (repeatedCoordinateWin G n) D
        · have accepted := acceptance.mpr winning
          simp [payoff, code, accepted, winning]
        · have rejected : ¬ exactHistoryAccepted G n D
              ⟨seed,
                (exactFixedSeedOutcomeCode
                  (X := X) (Y := Y) (A := A) (B := B)
                  D seed outcome).1,
                (exactFixedSeedOutcomeCode
                  (X := X) (Y := Y) (A := A) (B := B)
                  D seed outcome).2.1,
                (exactFixedSeedOutcomeCode
                  (X := X) (Y := Y) (A := A) (B := B)
                  D seed outcome).2.2.1⟩ := by
            intro accepted
            exact winning (acceptance.mp accepted)
          simp [payoff, code, rejected, winning]
    _ = repeatedPostselectionMass G n S D := by
      change
        (∑ outcome : ExactOutcome X Y A B n,
          if outcome ∈ FiniteEventLaw.winEvent
            (repeatedCoordinateWin G n) D then
            (strategyEventLaw (G.repeat n) S).weight outcome
          else 0) =
          (strategyEventLaw (G.repeat n) S).eventMass
            (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
      simp [FiniteEventLaw.eventMass]

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

theorem exactFairBobMeanAcceptedBornMass_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    (∑ history : ExactRevealHistory X Y D seed,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D seed history *
            (∑ x : X, G.marginalX x *
              bornTracePairing S.state.matrix
                (exactAliceQuestionFilter
                  G n S D seed history aliceAnswer x)
                (exactBobMeanFilter
                  G n S D seed history bobAnswer x))
        else 0) = repeatedPostselectionMass G n S D := by
  classical
  calc
    _ = ∑ history : ExactRevealHistory X Y D seed,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, history, aliceAnswer, bobAnswer⟩ then
          ∑ x : X, ∑ y : Y,
            exactFairFullOutcomeBornMass G n S D
              ⟨seed, history, aliceAnswer, bobAnswer⟩ x y
        else 0 := by
      apply Finset.sum_congr rfl
      intro history _
      apply Finset.sum_congr rfl
      intro aliceAnswer _
      apply Finset.sum_congr rfl
      intro bobAnswer _
      split
      · exact exactFairBobMeanBornMass_eq_fullOutcome_sum
          G n S D ⟨seed, history, aliceAnswer, bobAnswer⟩
      · rfl
    _ = _ := exactFairFullOutcomeBornMass_accepted_sum
      G n S D seed

end

noncomputable section

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 7000000
set_option maxRecDepth 2048

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactFairBobScalarCountingWeight_nonneg
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (atom : ExactFairBobScalarAtom X Y A B D seed) :
    0 ≤ exactFairBobScalarCountingWeight G n D seed atom := by
  unfold exactFairBobScalarCountingWeight
  split
  · exact mul_nonneg (exactRevealMass_nonneg G n D seed atom.1)
      (G.marginalX_nonneg atom.2.2.2)
  · exact le_rfl

theorem exactFairBobScalarBornMass_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (atom : ExactFairBobScalarAtom X Y A B D seed) :
    0 ≤ exactFairBobScalarBornMass G n S D seed atom := by
  exact trace_mul_posSemidef_nonneg S.state.positive
    ((exactAliceQuestionFilter_posSemidef
      G n S D seed atom.1 atom.2.1 atom.2.2.2).kronecker
      (exactBobMeanFilter_posSemidef
        G n S D seed atom.1 atom.2.2.1 atom.2.2.2))

theorem exactFairBobScalarCountingWeight_sum_le
    (G : Game X Y A B) (n : ℕ)
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    (∑ atom : ExactFairBobScalarAtom X Y A B D seed,
      exactFairBobScalarCountingWeight G n D seed atom) ≤
      fullHistoryAnswerCount (A := A) (B := B) D := by
  classical
  simp only [Fintype.sum_prod_type]
  calc
    (∑ history : ExactRevealHistory X Y D seed,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
      ∑ x : X,
        exactFairBobScalarCountingWeight G n D seed
          (history, aliceAnswer, bobAnswer, x)) ≤
      ∑ history : ExactRevealHistory X Y D seed,
      ∑ _aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ _bobAnswer : {j : Fin n // j ∈ D} → B,
      ∑ x : X,
        exactRevealMass G n D seed history * G.marginalX x := by
      apply Finset.sum_le_sum
      intro history _
      apply Finset.sum_le_sum
      intro aliceAnswer _
      apply Finset.sum_le_sum
      intro bobAnswer _
      apply Finset.sum_le_sum
      intro x _
      unfold exactFairBobScalarCountingWeight
      split
      · exact le_rfl
      · exact mul_nonneg
          (exactRevealMass_nonneg G n D seed history)
          (G.marginalX_nonneg x)
    _ = fullHistoryAnswerCount (A := A) (B := B) D *
        (∑ history : ExactRevealHistory X Y D seed,
          exactRevealMass G n D seed history) *
        (∑ x : X, G.marginalX x) := by
      simp [fullHistoryAnswerCount, Finset.mul_sum,         mul_assoc, mul_comm]
    _ = _ := by
      rw [exactRevealMass_sum, G.marginalX_normalized]
      ring

theorem exactFairBobScalarBornMass_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    (∑ atom : ExactFairBobScalarAtom X Y A B D seed,
      exactFairBobScalarCountingWeight G n D seed atom *
        exactFairBobScalarBornMass G n S D seed atom) =
      repeatedPostselectionMass G n S D := by
  classical
  calc
    (∑ atom : ExactFairBobScalarAtom X Y A B D seed,
      exactFairBobScalarCountingWeight G n D seed atom *
        exactFairBobScalarBornMass G n S D seed atom) =
      ∑ history : ExactRevealHistory X Y D seed,
      ∑ aliceAnswer : {j : Fin n // j ∈ D} → A,
      ∑ bobAnswer : {j : Fin n // j ∈ D} → B,
        if exactHistoryAccepted G n D
          ⟨seed, history, aliceAnswer, bobAnswer⟩ then
          exactRevealMass G n D seed history *
            (∑ x : X, G.marginalX x *
              bornTracePairing S.state.matrix
                (exactAliceQuestionFilter
                  G n S D seed history aliceAnswer x)
                (exactBobMeanFilter
                  G n S D seed history bobAnswer x))
        else 0 := by
      simp only [Fintype.sum_prod_type]
      apply Finset.sum_congr rfl
      intro history _
      apply Finset.sum_congr rfl
      intro aliceAnswer _
      apply Finset.sum_congr rfl
      intro bobAnswer _
      by_cases accepted : exactHistoryAccepted G n D
        ⟨seed, history, aliceAnswer, bobAnswer⟩
      · simp only [exactFairBobScalarCountingWeight,
          exactFairBobScalarBornMass,
          if_pos accepted, Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro x _
        ring
      · simp [exactFairBobScalarCountingWeight, accepted]
    _ = _ := exactFairBobMeanAcceptedBornMass_sum
      G n S D seed

theorem exactFairBobScalarBornMass_le_one
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D)
    (atom : ExactFairBobScalarAtom X Y A B D seed) :
    exactFairBobScalarBornMass G n S D seed atom ≤ 1 := by
  exact bornTracePairing_contractions_le_one S.state
    (exactAliceQuestionFilter
      G n S D seed atom.1 atom.2.1 atom.2.2.2)
    (exactAliceQuestionFilter_complement_posSemidef
      G n S D seed atom.1 atom.2.1 atom.2.2.2)
    (exactBobMeanFilter
      G n S D seed atom.1 atom.2.2.1 atom.2.2.2)
    (exactBobMeanFilter_posSemidef
      G n S D seed atom.1 atom.2.2.1 atom.2.2.2)
    (exactBobMeanFilter_complement_posSemidef
      G n S D seed atom.1 atom.2.2.1 atom.2.2.2)

theorem exactFairBobSeedScalarEntropy_eq_weighted
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (seed : ExactRemainingSeed D) :
    exactFairBobSeedScalarEntropy G n S D seed =
      ∑ atom : ExactFairBobScalarAtom X Y A B D seed,
        exactFairBobScalarCountingWeight G n D seed atom *
          Real.negMulLog
            (exactFairBobScalarBornMass G n S D seed atom) := by
  classical
  unfold exactFairBobSeedScalarEntropy
  simp only [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro history _
  apply Finset.sum_congr rfl
  intro aliceAnswer _
  apply Finset.sum_congr rfl
  intro bobAnswer _
  by_cases accepted : exactHistoryAccepted G n D
    ⟨seed, history, aliceAnswer, bobAnswer⟩
  · simp only [if_pos accepted,
      exactFairBobScalarCountingWeight,
      exactFairBobScalarBornMass,
      Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro x _
    ring
  · simp [exactFairBobScalarCountingWeight, accepted]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 7000000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (seed : ExactRemainingSeed D) :
    exactFairBobSeedScalarEntropy G n S D seed ≤
      repeatedPostselectionMass G n S D *
        Real.log (fullHistoryAnswerCount (A := A) (B := B) D /
          repeatedPostselectionMass G n S D) := by
  classical
  let w := exactFairBobScalarCountingWeight G n D seed
  let mass := exactFairBobScalarBornMass G n S D seed
  let W : ℝ := ∑ atom : ExactFairBobScalarAtom X Y A B D seed,
    w atom
  have moment :
      (∑ atom : ExactFairBobScalarAtom X Y A B D seed,
        w atom * mass atom) = repeatedPostselectionMass G n S D :=
    exactFairBobScalarBornMass_sum G n S D seed
  have lower : repeatedPostselectionMass G n S D ≤ W := by
    rw [← moment]
    apply Finset.sum_le_sum
    intro atom _
    exact mul_le_of_le_one_right
      (exactFairBobScalarCountingWeight_nonneg G n D seed atom)
      (exactFairBobScalarBornMass_le_one G n S D seed atom)
  have count : W ≤ fullHistoryAnswerCount (A := A) (B := B) D :=
    exactFairBobScalarCountingWeight_sum_le G n D seed
  have estimate := finite_weighted_entropy_le_of_weight_bound
    (Finset.univ : Finset (ExactFairBobScalarAtom X Y A B D seed))
    w mass
    (W := W)
    (N := fullHistoryAnswerCount (A := A) (B := B) D)
    (p := repeatedPostselectionMass G n S D)
    (fun atom _ =>
      exactFairBobScalarCountingWeight_nonneg G n D seed atom)
    (fun atom _ =>
      exactFairBobScalarBornMass_nonneg G n S D seed atom)
    (lt_of_lt_of_le positive lower)
    positive rfl moment count
  rw [exactFairBobSeedScalarEntropy_eq_weighted]
  exact estimate
