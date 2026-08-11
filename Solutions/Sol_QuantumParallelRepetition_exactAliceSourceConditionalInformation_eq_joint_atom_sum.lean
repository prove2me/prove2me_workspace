import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_nonneg
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_normalized
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.ZeroLEOne
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
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
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.InformationTheory.KullbackLeibler.KLFun
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
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

theorem conditionalYGivenX_sum
    (G : Game X Y A B) (x : X)
    (hx : 0 < G.marginalX x) :
    (∑ y : Y, G.conditionalYGivenX x y) = 1 := by
  unfold conditionalYGivenX
  rw [← Finset.sum_div]
  change G.marginalX x / G.marginalX x = 1
  exact div_self hx.ne'

end Game

end

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

namespace Pinsker

theorem finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
    {ι : Type*} [Fintype ι]
    (p q : ι → ℝ)
    (hq : ∀ i, 0 ≤ q i)
    (absolute_continuity : ∀ i, q i = 0 → p i = 0)
    (hp_normalized : (∑ i, p i) = 1)
    (hq_normalized : (∑ i, q i) = 1) :
    finiteRelativeEntropy p q =
      ∑ i, p i * Real.log (p i / q i) := by
  unfold finiteRelativeEntropy
  calc
    (∑ i, q i * InformationTheory.klFun (p i / q i)) =
        ∑ i, (p i * Real.log (p i / q i) + q i - p i) := by
      apply Finset.sum_congr rfl
      intro i _
      by_cases hqi : q i = 0
      · simp [hqi, absolute_continuity i hqi]
      · unfold InformationTheory.klFun
        have hqpos : 0 < q i := lt_of_le_of_ne (hq i) (Ne.symm hqi)
        field_simp [hqpos.ne']
    _ = ∑ i, p i * Real.log (p i / q i) := by
      rw [Finset.sum_sub_distrib, Finset.sum_add_distrib,
        hp_normalized, hq_normalized]
      ring

end Pinsker

namespace ClassicalInformation

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

section JointChainRule

variable {κ : Type*} [Fintype κ]

theorem jointFirstMarginal_nonneg
    (joint : ι × κ → ℝ)
    (nonnegative : ∀ point, 0 ≤ joint point) (i : ι) :
    0 ≤ jointFirstMarginal joint i := by
  exact Finset.sum_nonneg (fun j _ => nonnegative (i, j))

theorem jointFirstMarginal_sum (joint : ι × κ → ℝ) :
    (∑ i : ι, jointFirstMarginal joint i) =
      ∑ point : ι × κ, joint point := by
  exact (Fintype.sum_prod_type joint).symm

theorem jointFirstMarginal_absolute_continuity
    (p q : ι × κ → ℝ)
    (hq : ∀ point, 0 ≤ q point)
    (absolute_continuity : ∀ point, q point = 0 → p point = 0)
    (i : ι) :
    jointFirstMarginal q i = 0 → jointFirstMarginal p i = 0 := by
  intro hzero
  change (∑ j : κ, q (i, j)) = 0 at hzero
  have hcoordinates : ∀ j : κ, q (i, j) = 0 := by
    intro j
    exact (Finset.sum_eq_zero_iff_of_nonneg
      (fun j _ => hq (i, j))).mp hzero j (Finset.mem_univ j)
  change (∑ j : κ, p (i, j)) = 0
  exact Finset.sum_eq_zero
    (fun j _ => absolute_continuity (i, j) (hcoordinates j))

theorem jointConditional_sum
    (joint : ι × κ → ℝ) (i : ι)
    (nonzero : jointFirstMarginal joint i ≠ 0) :
    (∑ j : κ, jointConditional joint i j) = 1 := by
  unfold jointConditional
  rw [← Finset.sum_div]
  exact div_self nonzero

theorem finite_relative_entropy_joint_chain_rule
    (p q : ι × κ → ℝ)
    (hp : ∀ point, 0 ≤ p point)
    (hq : ∀ point, 0 ≤ q point)
    (absolute_continuity : ∀ point, q point = 0 → p point = 0)
    (hp_normalized : (∑ point, p point) = 1)
    (hq_normalized : (∑ point, q point) = 1) :
    finiteRelativeEntropy p q =
      finiteRelativeEntropy (jointFirstMarginal p)
        (jointFirstMarginal q) +
      ∑ i : ι, jointFirstMarginal p i *
        finiteRelativeEntropy (jointConditional p i)
          (jointConditional q i) := by
  have hp_marginal : (∑ i : ι, jointFirstMarginal p i) = 1 :=
    (jointFirstMarginal_sum p).trans hp_normalized
  have hq_marginal : (∑ i : ι, jointFirstMarginal q i) = 1 :=
    (jointFirstMarginal_sum q).trans hq_normalized
  have h_marginal_absolute :
      ∀ i : ι, jointFirstMarginal q i = 0 →
        jointFirstMarginal p i = 0 :=
    jointFirstMarginal_absolute_continuity p q hq absolute_continuity
  have h_joint_log :
      finiteRelativeEntropy p q =
        ∑ point : ι × κ,
          p point * Real.log (p point / q point) :=
    finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
      p q hq absolute_continuity hp_normalized hq_normalized
  have h_marginal_log :
      finiteRelativeEntropy (jointFirstMarginal p)
        (jointFirstMarginal q) =
        ∑ i : ι, jointFirstMarginal p i *
          Real.log (jointFirstMarginal p i /
            jointFirstMarginal q i) :=
    finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
      (jointFirstMarginal p) (jointFirstMarginal q)
      (jointFirstMarginal_nonneg q hq)
      h_marginal_absolute hp_marginal hq_marginal
  calc
    finiteRelativeEntropy p q =
      ∑ point : ι × κ,
        p point * Real.log (p point / q point) := h_joint_log
    _ = ∑ i : ι, ∑ j : κ,
        p (i, j) * Real.log (p (i, j) / q (i, j)) :=
          Fintype.sum_prod_type _
    _ = ∑ i : ι,
        (jointFirstMarginal p i *
          Real.log (jointFirstMarginal p i /
            jointFirstMarginal q i) +
          jointFirstMarginal p i *
            finiteRelativeEntropy (jointConditional p i)
              (jointConditional q i)) := by
      apply Finset.sum_congr rfl
      intro i _
      by_cases hpzero : jointFirstMarginal p i = 0
      · have hcoordinates : ∀ j : κ, p (i, j) = 0 := by
          intro j
          apply (Finset.sum_eq_zero_iff_of_nonneg
            (fun j _ => hp (i, j))).mp
              (show (∑ j : κ, p (i, j)) = 0 from hpzero)
              j (Finset.mem_univ j)
        simp [hpzero, hcoordinates]
      · have hqzero : jointFirstMarginal q i ≠ 0 := by
          intro hzero
          exact hpzero (h_marginal_absolute i hzero)
        have hconditional_absolute :
            ∀ j : κ, jointConditional q i j = 0 →
              jointConditional p i j = 0 := by
          intro j hzero
          change q (i, j) / jointFirstMarginal q i = 0 at hzero
          have hpoint : q (i, j) = 0 := by
            rcases (div_eq_zero_iff.mp hzero) with hpoint | hmarginal
            · exact hpoint
            · exact (hqzero hmarginal).elim
          simp [jointConditional, absolute_continuity (i, j) hpoint]
        have hconditional_log :
            finiteRelativeEntropy (jointConditional p i)
              (jointConditional q i) =
              ∑ j : κ,
                jointConditional p i j *
                  Real.log (jointConditional p i j /
                    jointConditional q i j) := by
          apply finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
          · intro j
            exact div_nonneg (hq (i, j))
              (jointFirstMarginal_nonneg q hq i)
          · exact hconditional_absolute
          · exact jointConditional_sum p i hpzero
          · exact jointConditional_sum q i hqzero
        rw [hconditional_log]
        calc
          (∑ j : κ,
            p (i, j) * Real.log (p (i, j) / q (i, j))) =
            ∑ j : κ,
              (p (i, j) *
                Real.log (jointFirstMarginal p i /
                  jointFirstMarginal q i) +
                jointFirstMarginal p i *
                  (jointConditional p i j *
                    Real.log (jointConditional p i j /
                      jointConditional q i j))) := by
              apply Finset.sum_congr rfl
              intro j _
              by_cases hpj : p (i, j) = 0
              · simp [hpj, jointConditional]
              · have hqj : q (i, j) ≠ 0 := by
                  intro hzero
                  exact hpj (absolute_continuity (i, j) hzero)
                have hfactorization :
                    p (i, j) / q (i, j) =
                      (jointFirstMarginal p i /
                        jointFirstMarginal q i) *
                        (jointConditional p i j /
                          jointConditional q i j) := by
                  unfold jointConditional
                  field_simp [hpzero, hqzero, hqj]
                have hfirst :
                    jointFirstMarginal p i /
                      jointFirstMarginal q i ≠ 0 :=
                  div_ne_zero hpzero hqzero
                have hsecond :
                    jointConditional p i j /
                      jointConditional q i j ≠ 0 := by
                  unfold jointConditional
                  exact div_ne_zero
                    (div_ne_zero hpj hpzero)
                    (div_ne_zero hqj hqzero)
                rw [hfactorization, Real.log_mul hfirst hsecond]
                unfold jointConditional
                field_simp [hpzero]
          _ = jointFirstMarginal p i *
              Real.log (jointFirstMarginal p i /
                jointFirstMarginal q i) +
              jointFirstMarginal p i *
                (∑ j : κ,
                  jointConditional p i j *
                    Real.log (jointConditional p i j /
                      jointConditional q i j)) := by
                rw [Finset.sum_add_distrib, ← Finset.sum_mul,
                  ← Finset.mul_sum]
                rfl
    _ = (∑ i : ι,
          jointFirstMarginal p i *
            Real.log (jointFirstMarginal p i /
              jointFirstMarginal q i)) +
        ∑ i : ι, jointFirstMarginal p i *
          finiteRelativeEntropy (jointConditional p i)
            (jointConditional q i) := by
      rw [Finset.sum_add_distrib]
    _ = finiteRelativeEntropy (jointFirstMarginal p)
          (jointFirstMarginal q) +
        ∑ i : ι, jointFirstMarginal p i *
          finiteRelativeEntropy (jointConditional p i)
            (jointConditional q i) := by
      rw [h_marginal_log]

end JointChainRule

end ClassicalInformation

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

theorem groupedMass_first
    {Ω Z : Type*} [Fintype Ω] [Fintype Z]
    [DecidableEq Ω]
    (joint : Ω × Z → ℝ) :
    groupedMass Prod.fst joint = jointFirstMarginal joint := by
  funext ω
  classical
  simp only [groupedMass, jointFirstMarginal,
    Finset.sum_filter, Fintype.sum_prod_type]
  rw [Finset.sum_comm]
  simp

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

theorem exactAliceLocalConditional_sum
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (i : SourceRemainingCoordinate D) (x : X) :
    (∑ r : ExactHistoryFlag X Y A B D,
      exactAliceLocalConditional D base Q i x r) = 1 := by
  unfold exactAliceLocalConditional
  split_ifs with hmass
  · simp
  · rw [← Finset.sum_div]
    exact div_self hmass

theorem exactLocallySampleableJA_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (t : ExactLocallySampleableTuple X Y A B D) :
    0 ≤ exactLocallySampleableJA G n S D base t := by
  unfold exactLocallySampleableJA
  exact div_nonneg
    (mul_nonneg (G.weight_nonneg t.2.1 t.2.2.1)
      (exactAliceLocalConditional_nonneg D base
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableLaw_nonneg G n S D positive)
        t.1 t.2.1 t.2.2.2))
    (Nat.cast_nonneg _)

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

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactAliceInformationReference_firstMarginal
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (i : SourceRemainingCoordinate D) (x : X) :
    jointFirstMarginal
        (exactAliceInformationReference G n S D base)
        (i, x) =
      exactAliceQuestionPriorMarginal G x /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
  unfold jointFirstMarginal
  rw [Fintype.sum_prod_type]
  change
    (∑ r : ExactHistoryFlag X Y A B D,
      ∑ y : Y,
        G.questionWeight x y *
          exactAliceLocalConditional D base
            (exactLocallySampleableLaw G n S D) i x r /
          (Fintype.card (SourceRemainingCoordinate D) : ℝ)) =
      (∑ y : Y, G.questionWeight x y) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ)
  rw [Finset.sum_comm]
  simp_rw [← Finset.sum_div, ← Finset.mul_sum,
    exactAliceLocalConditional_sum, mul_one]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem finiteRelativeEntropy_self
    {I : Type*} [Fintype I] (mass : I → ℝ) :
    finiteRelativeEntropy mass mass = 0 := by
  unfold finiteRelativeEntropy
  apply Finset.sum_eq_zero
  intro i _
  by_cases hi : mass i = 0
  · simp [hi]
  · simp [hi, InformationTheory.klFun]

theorem finiteConditionalHistoryRelativeEntropy_eq
    {I R V : Type*} [Fintype I] [Fintype R] [Fintype V]
    (p q : I × (R × V) → ℝ)
    (p_nonnegative : ∀ point, 0 ≤ p point)
    (q_nonnegative : ∀ point, 0 ≤ q point)
    (absolute_continuity : ∀ point, q point = 0 → p point = 0)
    (reference : I → R → V → ℝ)
    (same_history : ∀ i,
      jointFirstMarginal p i ≠ 0 →
        jointFirstMarginal (jointConditional p i) =
          jointFirstMarginal (jointConditional q i))
    (next_reference : ∀ i r,
      jointFirstMarginal p i ≠ 0 →
      jointFirstMarginal (jointConditional p i) r ≠ 0 →
        jointConditional (jointConditional q i) r = reference i r) :
    (∑ i : I,
      jointFirstMarginal p i *
        finiteRelativeEntropy
          (jointConditional p i)
          (jointConditional q i)) =
      ∑ i : I,
        jointFirstMarginal p i *
          (∑ r : R,
            jointFirstMarginal (jointConditional p i) r *
              finiteRelativeEntropy
                (jointConditional (jointConditional p i) r)
                (reference i r)) := by
  apply Finset.sum_congr rfl
  intro i _
  by_cases hpi : jointFirstMarginal p i = 0
  · simp [hpi]
  · have hqi : jointFirstMarginal q i ≠ 0 := by
      intro hz
      exact hpi
        (jointFirstMarginal_absolute_continuity
          p q q_nonnegative absolute_continuity i hz)
    have hpconditional :
        ∀ t : R × V, 0 ≤ jointConditional p i t := by
      intro t
      exact div_nonneg (p_nonnegative (i, t))
        (jointFirstMarginal_nonneg p p_nonnegative i)
    have hqconditional :
        ∀ t : R × V, 0 ≤ jointConditional q i t := by
      intro t
      exact div_nonneg (q_nonnegative (i, t))
        (jointFirstMarginal_nonneg q q_nonnegative i)
    have hconditional_absolute :
        ∀ t : R × V,
          jointConditional q i t = 0 →
            jointConditional p i t = 0 := by
      intro t hz
      have hqzero : q (i, t) = 0 := by
        change q (i, t) / jointFirstMarginal q i = 0 at hz
        exact (div_eq_zero_iff.mp hz).resolve_right hqi
      simp [jointConditional,
        absolute_continuity (i, t) hqzero]
    have hchain := finite_relative_entropy_joint_chain_rule
      (jointConditional p i) (jointConditional q i)
      hpconditional hqconditional hconditional_absolute
      (jointConditional_sum p i hpi)
      (jointConditional_sum q i hqi)
    have hhistory_entropy :
        finiteRelativeEntropy
          (jointFirstMarginal (jointConditional p i))
          (jointFirstMarginal (jointConditional q i)) = 0 := by
      rw [← same_history i hpi]
      exact finiteRelativeEntropy_self _
    rw [hhistory_entropy, zero_add] at hchain
    rw [hchain]
    congr 1
    apply Finset.sum_congr rfl
    intro r _
    by_cases hr : jointFirstMarginal (jointConditional p i) r = 0
    · simp [hr]
    · rw [next_reference i r hpi hr]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem finiteSupportedConditionalHistoryReferenceFirstMarginal_eq
    {I R V : Type*} [Fintype I] [Fintype R] [Fintype V]
    (p q : I × (R × V) → ℝ)
    (q_nonnegative : ∀ point, 0 ≤ q point)
    (absolute_continuity : ∀ point, q point = 0 → p point = 0)
    (reference : I → R → V → ℝ)
    (reference_normalized : ∀ i,
      jointFirstMarginal p i ≠ 0 →
        ∀ r, (∑ v : V, reference i r v) = 1)
    (factor : ∀ i,
      jointFirstMarginal p i ≠ 0 →
        ∀ r v,
          q (i, (r, v)) =
            jointFirstMarginal q i *
              jointFirstMarginal (jointConditional p i) r *
              reference i r v)
    (i : I) (supported : jointFirstMarginal p i ≠ 0) :
    jointFirstMarginal (jointConditional q i) =
      jointFirstMarginal (jointConditional p i) := by
  have hqi : jointFirstMarginal q i ≠ 0 := by
    intro hz
    exact supported
      (jointFirstMarginal_absolute_continuity
        p q q_nonnegative absolute_continuity i hz)
  funext r
  change
    (∑ v : V,
      q (i, (r, v)) / jointFirstMarginal q i) =
      jointFirstMarginal (jointConditional p i) r
  simp_rw [factor i supported r]
  calc
    (∑ v : V,
      (jointFirstMarginal q i *
        jointFirstMarginal (jointConditional p i) r *
        reference i r v) / jointFirstMarginal q i) =
      ∑ v : V,
        jointFirstMarginal (jointConditional p i) r *
          reference i r v := by
        apply Finset.sum_congr rfl
        intro v _
        field_simp [hqi]
    _ = jointFirstMarginal (jointConditional p i) r := by
      rw [← Finset.mul_sum, reference_normalized i supported r]
      ring

theorem finiteSupportedConditionalHistoryReferenceConditional_eq
    {I R V : Type*} [Fintype I] [Fintype R] [Fintype V]
    (p q : I × (R × V) → ℝ)
    (q_nonnegative : ∀ point, 0 ≤ q point)
    (absolute_continuity : ∀ point, q point = 0 → p point = 0)
    (reference : I → R → V → ℝ)
    (reference_normalized : ∀ i,
      jointFirstMarginal p i ≠ 0 →
        ∀ r, (∑ v : V, reference i r v) = 1)
    (factor : ∀ i,
      jointFirstMarginal p i ≠ 0 →
        ∀ r v,
          q (i, (r, v)) =
            jointFirstMarginal q i *
              jointFirstMarginal (jointConditional p i) r *
              reference i r v)
    (i : I) (r : R)
    (supported : jointFirstMarginal p i ≠ 0)
    (history_supported :
      jointFirstMarginal (jointConditional p i) r ≠ 0) :
    jointConditional (jointConditional q i) r = reference i r := by
  have hqi : jointFirstMarginal q i ≠ 0 := by
    intro hz
    exact supported
      (jointFirstMarginal_absolute_continuity
        p q q_nonnegative absolute_continuity i hz)
  have hhistory :=
    finiteSupportedConditionalHistoryReferenceFirstMarginal_eq
      p q q_nonnegative absolute_continuity
      reference reference_normalized factor i supported
  funext v
  change
    (q (i, (r, v)) / jointFirstMarginal q i) /
        jointFirstMarginal (jointConditional q i) r =
      reference i r v
  rw [factor i supported r v, congrFun hhistory r]
  field_simp [hqi, history_supported]

theorem finiteSupportedConditionalHistoryRelativeEntropy_eq_of_factor
    {I R V : Type*} [Fintype I] [Fintype R] [Fintype V]
    (p q : I × (R × V) → ℝ)
    (p_nonnegative : ∀ point, 0 ≤ p point)
    (q_nonnegative : ∀ point, 0 ≤ q point)
    (absolute_continuity : ∀ point, q point = 0 → p point = 0)
    (reference : I → R → V → ℝ)
    (reference_normalized : ∀ i,
      jointFirstMarginal p i ≠ 0 →
        ∀ r, (∑ v : V, reference i r v) = 1)
    (factor : ∀ i,
      jointFirstMarginal p i ≠ 0 →
        ∀ r v,
          q (i, (r, v)) =
            jointFirstMarginal q i *
              jointFirstMarginal (jointConditional p i) r *
              reference i r v) :
    (∑ i : I,
      jointFirstMarginal p i *
        finiteRelativeEntropy
          (jointConditional p i)
          (jointConditional q i)) =
      ∑ i : I,
        jointFirstMarginal p i *
          (∑ r : R,
            jointFirstMarginal (jointConditional p i) r *
              finiteRelativeEntropy
                (jointConditional (jointConditional p i) r)
                (reference i r)) := by
  apply finiteConditionalHistoryRelativeEntropy_eq
    p q p_nonnegative q_nonnegative absolute_continuity reference
  · intro i hi
    exact
      (finiteSupportedConditionalHistoryReferenceFirstMarginal_eq
        p q q_nonnegative absolute_continuity
        reference reference_normalized factor i hi).symm
  · intro i r hi hr
    exact
      finiteSupportedConditionalHistoryReferenceConditional_eq
        p q q_nonnegative absolute_continuity
        reference reference_normalized factor i r hi hr

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

theorem exactAliceInformationPosterior_firstMarginal_eq_localMass
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (i : SourceRemainingCoordinate D) (x : X) :
    jointFirstMarginal
        (exactAliceInformationPosterior G n S D) (i, x) =
      exactAliceLocalMass D
        (exactLocallySampleableLaw G n S D) i x := by
  unfold jointFirstMarginal
  rw [Fintype.sum_prod_type]
  rfl

theorem exactAliceSupportedQuestion_marginal_pos
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    (i : SourceRemainingCoordinate D) (x : X)
    (supported : jointFirstMarginal
      (exactAliceInformationPosterior G n S D) (i, x) ≠ 0) :
    0 < G.marginalX x := by
  let p := exactAliceInformationPosterior G n S D
  let q := exactAliceInformationReference G n S D base
  have hqnonnegative : ∀ t, 0 ≤ q t := by
    intro t
    exact exactLocallySampleableJA_nonneg
      G n S D positive base
      ((exactAliceInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D).symm t)
  have hac : ∀ t, q t = 0 → p t = 0 := by
    intro t hz
    exact exactLocallySampleableLaw_absolute_continuous_JA
      G n S D remaining positive base
      ((exactAliceInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D).symm t) hz
  have hqmass : jointFirstMarginal q (i, x) ≠ 0 := by
    intro hz
    exact supported
      (jointFirstMarginal_absolute_continuity
        p q hqnonnegative hac (i, x) hz)
  rw [exactAliceInformationReference_firstMarginal
    G n S D base i x] at hqmass
  have hx : G.marginalX x ≠ 0 := by
    intro hz
    apply hqmass
    change G.marginalX x /
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) = 0
    rw [hz]
    simp
  exact lt_of_le_of_ne (G.marginalX_nonneg x) (Ne.symm hx)

theorem exactAliceInformationPosterior_historyMarginal
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (i : SourceRemainingCoordinate D) (x : X)
    (supported : jointFirstMarginal
      (exactAliceInformationPosterior G n S D) (i, x) ≠ 0)
    (r : ExactHistoryFlag X Y A B D) :
    jointFirstMarginal
        (jointConditional
          (exactAliceInformationPosterior G n S D) (i, x)) r =
      exactAliceLocalConditional D base
        (exactLocallySampleableLaw G n S D) i x r := by
  have hmass :=
    exactAliceInformationPosterior_firstMarginal_eq_localMass
      G n S D i x
  have hlocal :
      exactAliceLocalMass D
        (exactLocallySampleableLaw G n S D) i x ≠ 0 := by
    rw [← hmass]
    exact supported
  unfold jointFirstMarginal jointConditional
  change
    (∑ y : Y,
      exactLocallySampleableLaw G n S D (i, x, y, r) /
        jointFirstMarginal
          (exactAliceInformationPosterior G n S D) (i, x)) =
      exactAliceLocalConditional D base
        (exactLocallySampleableLaw G n S D) i x r
  rw [← Finset.sum_div, hmass]
  simp [exactAliceLocalConditional, hlocal]

theorem exactAliceInformationReference_supported_factor
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (i : SourceRemainingCoordinate D) (x : X)
    (supported : jointFirstMarginal
      (exactAliceInformationPosterior G n S D) (i, x) ≠ 0)
    (r : ExactHistoryFlag X Y A B D) (y : Y) :
    exactAliceInformationReference G n S D base
        ((i, x), (r, y)) =
      jointFirstMarginal
          (exactAliceInformationReference G n S D base) (i, x) *
        jointFirstMarginal
          (jointConditional
            (exactAliceInformationPosterior G n S D) (i, x)) r *
        G.conditionalYGivenX x y := by
  rw [exactAliceInformationReference_firstMarginal
    G n S D base i x,
    exactAliceInformationPosterior_historyMarginal
      G n S D base i x supported r]
  change
    G.questionWeight x y *
        exactAliceLocalConditional D base
          (exactLocallySampleableLaw G n S D) i x r /
          (Fintype.card (SourceRemainingCoordinate D) : ℝ) =
      (G.marginalX x /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        exactAliceLocalConditional D base
          (exactLocallySampleableLaw G n S D) i x r *
        G.conditionalYGivenX x y
  rw [← G.marginalX_mul_conditionalYGivenX x y]
  ring

theorem exactAliceSourceConditionalInformation_eq_question
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D) :
    exactAliceSourceConditionalInformation G n S D base =
      ∑ ix : SourceRemainingCoordinate D × X,
        jointFirstMarginal
          (exactAliceInformationPosterior G n S D) ix *
          (∑ r : ExactHistoryFlag X Y A B D,
            jointFirstMarginal
                (jointConditional
                  (exactAliceInformationPosterior G n S D) ix) r *
              finiteRelativeEntropy
                (jointConditional
                  (jointConditional
                    (exactAliceInformationPosterior G n S D) ix) r)
                (G.conditionalYGivenX ix.2)) := by
  let p := exactAliceInformationPosterior G n S D
  let q := exactAliceInformationReference G n S D base
  have hp : ∀ t, 0 ≤ p t := by
    intro t
    exact exactLocallySampleableLaw_nonneg
      G n S D positive
      ((exactAliceInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D).symm t)
  have hq : ∀ t, 0 ≤ q t := by
    intro t
    exact exactLocallySampleableJA_nonneg
      G n S D positive base
      ((exactAliceInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D).symm t)
  have hac : ∀ t, q t = 0 → p t = 0 := by
    intro t hz
    exact exactLocallySampleableLaw_absolute_continuous_JA
      G n S D remaining positive base
      ((exactAliceInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D).symm t) hz
  unfold exactAliceSourceConditionalInformation
  apply finiteSupportedConditionalHistoryRelativeEntropy_eq_of_factor
    p q hp hq hac
    (fun ix _ => G.conditionalYGivenX ix.2)
  · intro ix hix r
    exact G.conditionalYGivenX_sum ix.2
      (exactAliceSupportedQuestion_marginal_pos
        G n S D remaining positive base ix.1 ix.2 hix)
  · intro ix hix r y
    exact exactAliceInformationReference_supported_factor
      G n S D base ix.1 ix.2 hix r y

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem finiteGroupedExpectation_eq_atom_sum
    {Ω C : Type*} [Fintype Ω] [Fintype C] [DecidableEq C]
    (code : Ω → C) (mass : Ω → ℝ) (value : C → ℝ) :
    (∑ target : C, groupedMass code mass target * value target) =
      ∑ outcome : Ω, mass outcome * value (code outcome) := by
  classical
  unfold groupedMass
  calc
    (∑ target : C,
      (∑ outcome ∈
        (Finset.univ.filter fun outcome : Ω =>
          code outcome = target), mass outcome) * value target) =
      ∑ target : C,
        ∑ outcome ∈
          (Finset.univ.filter fun outcome : Ω =>
            code outcome = target),
          mass outcome * value (code outcome) := by
        apply Finset.sum_congr rfl
        intro target _
        rw [Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro outcome houtcome
        have hcode : code outcome = target :=
          (Finset.mem_filter.mp houtcome).2
        rw [hcode]
    _ = ∑ outcome : Ω, mass outcome * value (code outcome) :=
      Finset.sum_fiberwise Finset.univ code
        (fun outcome => mass outcome * value (code outcome))

theorem jointAtom_eq_zero_of_firstMarginal_zero
    {I V : Type*} [Fintype I] [Fintype V]
    (mass : I × V → ℝ)
    (nonnegative : ∀ point, 0 ≤ mass point)
    (index : I)
    (zero : jointFirstMarginal mass index = 0)
    (value : V) :
    mass (index, value) = 0 := by
  unfold jointFirstMarginal at zero
  exact
    (Finset.sum_eq_zero_iff_of_nonneg
      (fun value _ => nonnegative (index, value))).mp
      zero value (Finset.mem_univ value)

theorem nestedFirstMarginal_mul_conditional
    {I R V : Type*} [Fintype I] [Fintype R] [Fintype V]
    (mass : I × (R × V) → ℝ)
    (nonnegative : ∀ point, 0 ≤ mass point)
    (index : I) (history : R) :
    jointFirstMarginal mass index *
        jointFirstMarginal (jointConditional mass index) history =
    jointFirstMarginal
        (fun point : (I × R) × V =>
          mass (point.1.1, (point.1.2, point.2)))
        (index, history) := by
  unfold jointFirstMarginal jointConditional
  change
    (∑ point : R × V, mass (index, point)) *
        (∑ value : V,
          mass (index, (history, value)) /
            (∑ point : R × V, mass (index, point))) =
      ∑ value : V, mass (index, (history, value))
  rw [← Finset.sum_div]
  by_cases houter : (∑ point : R × V, mass (index, point)) = 0
  · have hinner : (∑ value : V, mass (index, (history, value))) = 0 := by
      apply Finset.sum_eq_zero
      intro value _
      exact jointAtom_eq_zero_of_firstMarginal_zero
        mass nonnegative index houter (history, value)
    simp [houter, hinner]
  · field_simp [houter]

theorem nestedConditional_eq_flat
    {I R V : Type*} [Fintype I] [Fintype R] [Fintype V]
    (mass : I × (R × V) → ℝ)
    (nonnegative : ∀ point, 0 ≤ mass point)
    (index : I) (history : R) :
    jointConditional (jointConditional mass index) history =
      jointConditional
        (fun point : (I × R) × V =>
          mass (point.1.1, (point.1.2, point.2)))
        (index, history) := by
  funext value
  unfold jointConditional jointFirstMarginal
  rw [← Finset.sum_div]
  by_cases houter : (∑ point : R × V, mass (index, point)) = 0
  · have hatom : mass (index, (history, value)) = 0 :=
      jointAtom_eq_zero_of_firstMarginal_zero
        mass nonnegative index houter (history, value)
    simp [houter, hatom]
  · by_cases hhistory : (∑ v : V, mass (index, (history, v))) = 0
    · have hatom : mass (index, (history, value)) = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg
          (fun v _ => nonnegative (index, (history, v)))).mp
          hhistory value (Finset.mem_univ value)
      simp [hatom, hhistory]
    · field_simp [houter, hhistory]

theorem finiteNestedNextInformation_eq_atom_sum
    {I R V : Type*} [Fintype I] [Fintype R] [Fintype V]
    (mass : I × (R × V) → ℝ)
    (nonnegative : ∀ point, 0 ≤ mass point)
    (reference : I → V → ℝ) :
    (∑ index : I,
      jointFirstMarginal mass index *
        (∑ history : R,
          jointFirstMarginal
              (jointConditional mass index) history *
            finiteRelativeEntropy
              (jointConditional
                (jointConditional mass index) history)
              (reference index))) =
      ∑ point : I × (R × V),
        mass point *
          finiteRelativeEntropy
            (jointConditional
              (fun atom : (I × R) × V =>
                mass (atom.1.1, (atom.1.2, atom.2)))
              (point.1, point.2.1))
            (reference point.1) := by
  classical
  simp_rw [Finset.mul_sum]
  simp_rw [← mul_assoc,
    nestedFirstMarginal_mul_conditional mass nonnegative,
    nestedConditional_eq_flat mass nonnegative]
  let flat : (I × R) × V → ℝ :=
    fun atom => mass (atom.1.1, (atom.1.2, atom.2))
  let score : I × R → ℝ :=
    fun target =>
      finiteRelativeEntropy
        (jointConditional flat target)
        (reference target.1)
  have h := finiteGroupedExpectation_eq_atom_sum
    (fun atom : (I × R) × V => atom.1) flat score
  have hfirst (target : I × R) :
      groupedMass
          (fun atom : (I × R) × V => atom.1)
          flat target =
        jointFirstMarginal flat target := by
    exact congrFun (groupedMass_first flat) target
  simp_rw [hfirst] at h
  change
    (∑ index : I, ∑ history : R,
      jointFirstMarginal flat (index, history) *
        score (index, history)) = _
  calc
    (∑ index : I, ∑ history : R,
      jointFirstMarginal flat (index, history) *
        score (index, history)) =
      ∑ target : I × R,
        jointFirstMarginal flat target * score target := by
          rw [Fintype.sum_prod_type]
    _ = ∑ atom : (I × R) × V,
        flat atom * score atom.1 := h
    _ = ∑ point : I × (R × V),
        mass point *
          finiteRelativeEntropy
            (jointConditional
              (fun atom : (I × R) × V =>
                mass (atom.1.1, (atom.1.2, atom.2)))
              (point.1, point.2.1))
            (reference point.1) := by
          simp only [flat, score, Fintype.sum_prod_type]

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactAliceSourceConditionalInformation_eq_atom_sum
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D) :
    exactAliceSourceConditionalInformation G n S D base =
      ∑ point : (SourceRemainingCoordinate D × X) ×
          (ExactHistoryFlag X Y A B D × Y),
        exactAliceInformationPosterior G n S D point *
          finiteRelativeEntropy
            (jointConditional
              (fun atom :
                ((SourceRemainingCoordinate D × X) ×
                    ExactHistoryFlag X Y A B D) × Y =>
                exactAliceInformationPosterior G n S D
                  (atom.1.1, (atom.1.2, atom.2)))
              (point.1, point.2.1))
            (G.conditionalYGivenX point.1.2) := by
  have hnonnegative :
      ∀ point,
        0 ≤ exactAliceInformationPosterior
          G n S D point := by
    intro point
    exact exactLocallySampleableLaw_nonneg
      G n S D positive
      ((exactAliceInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D).symm point)
  calc
    exactAliceSourceConditionalInformation G n S D base =
      ∑ index : SourceRemainingCoordinate D × X,
        jointFirstMarginal
          (exactAliceInformationPosterior G n S D) index *
          (∑ history : ExactHistoryFlag X Y A B D,
            jointFirstMarginal
                (jointConditional
                  (exactAliceInformationPosterior G n S D)
                  index) history *
              finiteRelativeEntropy
                (jointConditional
                  (jointConditional
                    (exactAliceInformationPosterior G n S D)
                    index) history)
                (G.conditionalYGivenX index.2)) :=
      exactAliceSourceConditionalInformation_eq_question
        G n S D remaining positive base
    _ = _ :=
      finiteNestedNextInformation_eq_atom_sum
        (exactAliceInformationPosterior G n S D)
        hnonnegative
        (fun index : SourceRemainingCoordinate D × X =>
          G.conditionalYGivenX index.2)

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactAliceInformationPosterior_eq_jointPushforward
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) :
    exactAliceInformationPosterior G n S D =
      groupedMass
        (exactAliceSourceAtomCode
          (X := X) (Y := Y) (A := A) (B := B) D)
        (exactPostselectedJointLaw G n S D) := by
  classical
  funext target
  unfold exactAliceInformationPosterior
    exactLocallySampleableLaw
    exactSourcePushforward groupedMass
  apply Finset.sum_congr
  · ext point
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    change
      (exactLocallySampleableCode D point =
        (exactAliceInformationEquiv
          (X := X) (Y := Y) (A := A) (B := B) D).symm target) ↔
      (exactAliceInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D)
          (exactLocallySampleableCode D point) = target
    exact
      ((exactAliceInformationEquiv
        (X := X) (Y := Y) (A := A) (B := B) D).apply_eq_iff_eq_symm_apply).symm
  · intro point _
    rfl

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 3600000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D) :
    exactAliceSourceConditionalInformation G n S D base =
      ∑ point : ExactJointOutcome X Y A B D,
        exactPostselectedJointLaw G n S D point *
          finiteRelativeEntropy
            (jointConditional
              (fun atom :
                ((SourceRemainingCoordinate D × X) ×
                  ExactHistoryFlag X Y A B D) × Y =>
                exactAliceInformationPosterior G n S D
                  (atom.1.1, (atom.1.2, atom.2)))
              ((point.1.coordinate,
                point.2.1 point.1.coordinate.val),
                exactHistoryCode D point))
            (G.conditionalYGivenX
              (point.2.1 point.1.coordinate.val)) := by
  classical
  let posterior := exactAliceInformationPosterior G n S D
  let code := exactAliceSourceAtomCode
    (X := X) (Y := Y) (A := A) (B := B) D
  let joint := exactPostselectedJointLaw G n S D
  let score : (SourceRemainingCoordinate D × X) ×
      (ExactHistoryFlag X Y A B D × Y) → ℝ :=
    fun point =>
      finiteRelativeEntropy
        (jointConditional
          (fun atom :
            ((SourceRemainingCoordinate D × X) ×
              ExactHistoryFlag X Y A B D) × Y =>
            posterior (atom.1.1, (atom.1.2, atom.2)))
          (point.1, point.2.1))
        (G.conditionalYGivenX point.1.2)
  have hsource := exactAliceSourceConditionalInformation_eq_atom_sum
    G n S D remaining positive base
  change
    exactAliceSourceConditionalInformation G n S D base =
      ∑ point, posterior point * score point at hsource
  have hposterior : posterior = groupedMass code joint :=
    exactAliceInformationPosterior_eq_jointPushforward
      G n S D
  calc
    exactAliceSourceConditionalInformation G n S D base =
      ∑ point, posterior point * score point := hsource
    _ = ∑ point : ExactJointOutcome X Y A B D,
        joint point * score (code point) := by
          rw [hposterior]
          exact finiteGroupedExpectation_eq_atom_sum
            code joint score
    _ = _ := rfl
