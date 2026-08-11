import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_nonneg
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_normalized
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
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

theorem groupedMass_nonneg
    {Ω κ : Type*} [Fintype Ω] [Fintype κ] [DecidableEq κ]
    (f : Ω → κ) (p : Ω → ℝ)
    (hp : ∀ ω, 0 ≤ p ω) (a : κ) :
    0 ≤ groupedMass f p a := by
  unfold groupedMass
  exact Finset.sum_nonneg (fun ω _ => hp ω)

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

theorem exactPostselectedJointLaw_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (q : ExactJointOutcome X Y A B D) :
    0 ≤ exactPostselectedJointLaw G n S D q := by
  apply mul_nonneg (exactSeedWeight_nonneg q.1)
  exact conditionedEventDistribution_nonneg
    (strategyEventLaw (G.repeat n) S)
    (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
    positive q.2

theorem exactSourcePushforward_nonneg
    {K : Type*} [Fintype K]
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (projection : ExactJointOutcome X Y A B D → K)
    (k : K) :
    0 ≤ exactSourcePushforward G n S D projection k := by
  exact groupedMass_nonneg projection
    (exactPostselectedJointLaw G n S D)
    (exactPostselectedJointLaw_nonneg G n S D positive) k

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

theorem exactLocallySampleableLaw_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    0 ≤ exactLocallySampleableLaw G n S D t :=
  exactSourcePushforward_nonneg G n S D positive
    (exactLocallySampleableCode D) t

theorem exactLocallySampleableLaw_eq_zero_of_question_zero
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (i : SourceRemainingCoordinate D) (x : X) (y : Y)
    (r : ExactHistoryFlag X Y A B D)
    (zero : G.questionWeight x y = 0) :
    exactLocallySampleableLaw G n S D (i, x, y, r) = 0 := by
  classical
  unfold exactLocallySampleableLaw
    exactSourcePushforward groupedMass
  apply Finset.sum_eq_zero
  intro q hq
  have hcode :
      exactLocallySampleableCode D q = (i, x, y, r) := by
    exact ((@Finset.mem_filter
      (ExactJointOutcome X Y A B D)
      (fun a => exactLocallySampleableCode D a = (i, x, y, r))
      (fun _ => Classical.propDecidable _)
      Finset.univ q).mp hq).2
  have hx : q.2.1 q.1.coordinate.val = x :=
    congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D =>
        t.2.1) hcode
  have hy : q.2.2.1 q.1.coordinate.val = y :=
    congrArg
      (fun t : ExactLocallySampleableTuple X Y A B D =>
        t.2.2.1) hcode
  have hproduct :
      (G.repeat n).questionWeight q.2.1 q.2.2.1 = 0 := by
    rw [Game.repeat_questionWeight]
    apply Finset.prod_eq_zero
      (Finset.mem_univ q.1.coordinate.val)
    simpa [hx, hy] using zero
  have hprod :
      (∏ j : Fin n,
        G.questionWeight (q.2.1 j) (q.2.2.1 j)) = 0 := by
    simpa only [Game.repeat_questionWeight] using hproduct
  simp [exactPostselectedJointLaw,
    repeatedConditionedOutcomeLaw,
    conditionedEventDistribution,
    strategyEventLaw, hprod]

theorem exactAliceLocalMass_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X) :
    0 ≤ exactAliceLocalMass D Q i x := by
  unfold exactAliceLocalMass
  exact Finset.sum_nonneg
    (fun r _ => Finset.sum_nonneg (fun y _ => nonnegative (i, x, y, r)))

theorem exactAliceLocalConditional_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (r : ExactHistoryFlag X Y A B D) :
    0 ≤ exactAliceLocalConditional D base Q i x r := by
  unfold exactAliceLocalConditional
  split_ifs with hmass hbase
  · exact zero_le_one
  · exact le_rfl
  · exact div_nonneg
      (Finset.sum_nonneg (fun y _ => nonnegative (i, x, y, r)))
      (exactAliceLocalMass_nonneg D Q nonnegative i x)

theorem exactAliceLocalMass_zero_apply
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (y : Y) (r : ExactHistoryFlag X Y A B D)
    (zero : exactAliceLocalMass D Q i x = 0) :
    Q (i, x, y, r) = 0 := by
  change
    (∑ r : ExactHistoryFlag X Y A B D,
      ∑ y : Y, Q (i, x, y, r)) = 0 at zero
  have hr : (∑ y : Y, Q (i, x, y, r)) = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg
      (fun r _ => Finset.sum_nonneg
        (fun y _ => nonnegative (i, x, y, r)))).mp
          zero r (Finset.mem_univ r)
  exact (Finset.sum_eq_zero_iff_of_nonneg
    (fun y _ => nonnegative (i, x, y, r))).mp
      hr y (Finset.mem_univ y)

theorem exactAliceLocalConditional_zero_apply
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X)
    (y : Y) (r : ExactHistoryFlag X Y A B D)
    (zero : exactAliceLocalConditional D base Q i x r = 0) :
    Q (i, x, y, r) = 0 := by
  by_cases hmass : exactAliceLocalMass D Q i x = 0
  · exact exactAliceLocalMass_zero_apply
      D Q nonnegative i x y r hmass
  · unfold exactAliceLocalConditional at zero
    rw [if_neg hmass] at zero
    have hfiber : (∑ y : Y, Q (i, x, y, r)) = 0 :=
      (div_eq_zero_iff.mp zero).resolve_right hmass
    exact (Finset.sum_eq_zero_iff_of_nonneg
      (fun y _ => nonnegative (i, x, y, r))).mp
        hfiber y (Finset.mem_univ y)

theorem exactLocallySampleableLaw_absolute_continuous_JA
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    exactLocallySampleableJA G n S D base t = 0 →
      exactLocallySampleableLaw G n S D t = 0 := by
  rcases t with ⟨i, x, y, r⟩
  intro zero
  have hcard :
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) ≠ 0 := by
    exact_mod_cast
      (Nat.ne_of_gt (exactRemainingCoordinate_card_pos D remaining))
  change
    G.questionWeight x y *
      exactAliceLocalConditional D base
        (exactLocallySampleableLaw G n S D) i x r /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) = 0 at zero
  have hproduct :
      G.questionWeight x y *
        exactAliceLocalConditional D base
          (exactLocallySampleableLaw G n S D) i x r = 0 :=
    (div_eq_zero_iff.mp zero).resolve_right hcard
  rcases mul_eq_zero.mp hproduct with hquestion | hconditional
  · exact exactLocallySampleableLaw_eq_zero_of_question_zero
      G n S D i x y r hquestion
  · exact exactAliceLocalConditional_zero_apply D base
      (exactLocallySampleableLaw G n S D)
      (exactLocallySampleableLaw_nonneg G n S D positive)
      i x y r hconditional

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (denominator : ℕ) (denominator_positive : 0 < denominator)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (preserves : ∀ index history,
      0 < exactLocalConditionalFamily D base
          (exactLocallySampleableLaw G n S D) index history →
        0 < numerator index history)
    (history : ExactLocallySampleableTuple X Y A B D) :
    exactLocallySampleableJARounded
      G n D denominator numerator history = 0 →
        exactLocallySampleableLaw G n S D history = 0 := by
  classical
  intro rounded_zero
  apply exactLocallySampleableLaw_absolute_continuous_JA
    G n S D remaining positive base history
  rcases history with ⟨coordinate, x, y, flag⟩
  have card_nonzero :
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt
      (exactRemainingCoordinate_card_pos D remaining))
  have denominator_nonzero : (denominator : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt denominator_positive)
  change
    G.questionWeight x y *
      ((numerator (.inl (coordinate, x)) flag : ℝ) /
        denominator) /
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) = 0
    at rounded_zero
  have product_zero :
      G.questionWeight x y *
        ((numerator (.inl (coordinate, x)) flag : ℝ) /
          denominator) = 0 :=
    (div_eq_zero_iff.mp rounded_zero).resolve_right card_nonzero
  rcases mul_eq_zero.mp product_zero with question_zero | numerator_zero
  · change
      G.questionWeight x y *
        exactAliceLocalConditional D base
          (exactLocallySampleableLaw G n S D)
          coordinate x flag /
          (Fintype.card (SourceRemainingCoordinate D) : ℝ) = 0
    simp [question_zero]
  · have cast_zero :
        (numerator (.inl (coordinate, x)) flag : ℝ) = 0 :=
      (div_eq_zero_iff.mp numerator_zero).resolve_right
        denominator_nonzero
    have natural_zero : numerator (.inl (coordinate, x)) flag = 0 := by
      exact_mod_cast cast_zero
    have conditional_nonnegative :
        0 ≤ exactAliceLocalConditional D base
          (exactLocallySampleableLaw G n S D)
          coordinate x flag :=
      exactAliceLocalConditional_nonneg D base
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableLaw_nonneg G n S D positive)
        coordinate x flag
    have conditional_zero :
        exactAliceLocalConditional D base
          (exactLocallySampleableLaw G n S D)
          coordinate x flag = 0 := by
      by_contra nonzero
      have strictly_positive :=
        lt_of_le_of_ne conditional_nonnegative (Ne.symm nonzero)
      have retained := preserves (.inl (coordinate, x)) flag
        strictly_positive
      omega
    change
      G.questionWeight x y *
        exactAliceLocalConditional D base
          (exactLocallySampleableLaw G n S D)
          coordinate x flag /
          (Fintype.card (SourceRemainingCoordinate D) : ℝ) = 0
    simp [conditional_zero]
