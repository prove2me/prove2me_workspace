import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_21
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Basic
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.Convex.Jensen
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Finset.BooleanAlgebra
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Star
import Mathlib.Data.Real.StarOrdered
import Mathlib.Data.Set.Defs
import Mathlib.Data.SetLike.Basic
import Mathlib.InformationTheory.KullbackLeibler.KLFun
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Order.RelClasses
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

namespace Pinsker

theorem finiteRelativeEntropy_eq_log_sum
    {ι : Type*} [Fintype ι]
    (p q : ι → ℝ)
    (hq : ∀ i, 0 < q i)
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
      unfold InformationTheory.klFun
      field_simp [(hq i).ne']
    _ = ∑ i, p i * Real.log (p i / q i) := by
      rw [Finset.sum_sub_distrib, Finset.sum_add_distrib,
        hp_normalized, hq_normalized]
      ring

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

theorem finite_log_sum_inequality
    (indices : Finset ι) (p q : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i)
    (hq : ∀ i, 0 ≤ q i)
    (absolute_continuity : ∀ i, q i = 0 → p i = 0)
    (positive_mass : 0 < ∑ i ∈ indices, q i) :
    (∑ i ∈ indices, q i) *
        InformationTheory.klFun
          ((∑ i ∈ indices, p i) / (∑ i ∈ indices, q i)) ≤
      ∑ i ∈ indices,
        q i * InformationTheory.klFun (p i / q i) := by
  let total : ℝ := ∑ i ∈ indices, q i
  have htotal : 0 < total := positive_mass
  have hnormalized :
      (∑ i ∈ indices, q i / total) = 1 := by
    rw [← Finset.sum_div]
    exact div_self htotal.ne'
  have hmean :
      (∑ i ∈ indices, (q i / total) * (p i / q i)) =
        (∑ i ∈ indices, p i) / total := by
    calc
      (∑ i ∈ indices, (q i / total) * (p i / q i)) =
          ∑ i ∈ indices, p i / total := by
        apply Finset.sum_congr rfl
        intro i _
        by_cases hqi : q i = 0
        · simp [hqi, absolute_continuity i hqi]
        · field_simp [hqi, htotal.ne']
      _ = (∑ i ∈ indices, p i) / total := by
        rw [Finset.sum_div]
  have hjensen :
      InformationTheory.klFun ((∑ i ∈ indices, p i) / total) ≤
        ∑ i ∈ indices,
          (q i / total) * InformationTheory.klFun (p i / q i) := by
    have h := InformationTheory.convexOn_klFun.map_sum_le
      (t := indices)
      (w := fun i => q i / total)
      (p := fun i => p i / q i)
      (fun i _ => div_nonneg (hq i) htotal.le)
      hnormalized
      (fun i _ => show p i / q i ∈ Set.Ici (0 : ℝ) from
        div_nonneg (hp i) (hq i))
    simpa only [smul_eq_mul, hmean] using h
  change
    total * InformationTheory.klFun
      ((∑ i ∈ indices, p i) / total) ≤
      ∑ i ∈ indices, q i * InformationTheory.klFun (p i / q i)
  calc
    total * InformationTheory.klFun
        ((∑ i ∈ indices, p i) / total) ≤
      total * (∑ i ∈ indices,
        (q i / total) * InformationTheory.klFun (p i / q i)) :=
      mul_le_mul_of_nonneg_left hjensen htotal.le
    _ = ∑ i ∈ indices,
        q i * InformationTheory.klFun (p i / q i) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      field_simp [htotal.ne']

section CoarseGraining

variable {κ : Type*} [Fintype κ] [DecidableEq κ]

theorem finite_relative_entropy_data_processing
    (map : ι → κ) (p q : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i)
    (hq : ∀ i, 0 ≤ q i)
    (absolute_continuity : ∀ i, q i = 0 → p i = 0) :
    finiteRelativeEntropy (groupedMass map p) (groupedMass map q) ≤
      finiteRelativeEntropy p q := by
  change
    (∑ j : κ, groupedMass map q j *
      InformationTheory.klFun
        (groupedMass map p j / groupedMass map q j)) ≤
      ∑ i : ι, q i * InformationTheory.klFun (p i / q i)
  calc
    (∑ j : κ, groupedMass map q j *
        InformationTheory.klFun
          (groupedMass map p j / groupedMass map q j)) ≤
      ∑ j : κ,
        ∑ i ∈ (Finset.univ.filter fun i => map i = j),
          q i * InformationTheory.klFun (p i / q i) := by
        apply Finset.sum_le_sum
        intro j _
        let indices : Finset ι :=
          Finset.univ.filter fun i => map i = j
        change
          (∑ i ∈ indices, q i) *
              InformationTheory.klFun
                ((∑ i ∈ indices, p i) / (∑ i ∈ indices, q i)) ≤
            ∑ i ∈ indices,
              q i * InformationTheory.klFun (p i / q i)
        have hreference : 0 ≤ ∑ i ∈ indices, q i :=
          Finset.sum_nonneg (fun i _ => hq i)
        by_cases hzero : (∑ i ∈ indices, q i) = 0
        · rw [hzero, zero_mul]
          apply Finset.sum_nonneg
          intro i _
          exact mul_nonneg (hq i)
            (InformationTheory.klFun_nonneg
              (div_nonneg (hp i) (hq i)))
        · exact finite_log_sum_inequality indices p q hp hq
            absolute_continuity (lt_of_le_of_ne hreference (Ne.symm hzero))
    _ = ∑ i : ι,
        q i * InformationTheory.klFun (p i / q i) := by
      simpa only [] using
        (Finset.sum_fiberwise (Finset.univ : Finset ι) map
          (fun i => q i * InformationTheory.klFun (p i / q i)))

end CoarseGraining

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

theorem conditionedEventDistribution_sum
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω)
    (positive : 0 < law.eventMass event) :
    (∑ ω : Ω, conditionedEventDistribution law event ω) = 1 := by
  classical
  unfold conditionedEventDistribution
  calc
    (∑ ω : Ω,
      if ω ∈ event then law.weight ω / law.eventMass event else 0) =
      (∑ ω ∈ event, law.weight ω) / law.eventMass event := by
      rw [Finset.sum_div]
      simp
    _ = 1 := by
      change law.eventMass event / law.eventMass event = 1
      exact div_self positive.ne'

theorem conditionedEventDistribution_absolute_continuity
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω) (ω : Ω) :
    law.weight ω = 0 →
      conditionedEventDistribution law event ω = 0 := by
  intro hzero
  simp [conditionedEventDistribution, hzero]

theorem conditionedEventDistribution_relativeEntropy
    {Ω : Type*} [Fintype Ω]
    (law : FiniteEventLaw Ω) (event : Finset Ω)
    (positive : 0 < law.eventMass event) :
    finiteRelativeEntropy
        (conditionedEventDistribution law event)
        law.weight =
      Real.log (1 / law.eventMass event) := by
  rw [finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
    (conditionedEventDistribution law event)
    law.weight law.weight_nonneg
    (conditionedEventDistribution_absolute_continuity law event)
    (conditionedEventDistribution_sum law event positive)
    law.weight_sum]
  calc
    (∑ ω : Ω,
      conditionedEventDistribution law event ω *
        Real.log
          (conditionedEventDistribution law event ω /
            law.weight ω)) =
      ∑ ω : Ω,
        conditionedEventDistribution law event ω *
          Real.log (1 / law.eventMass event) := by
      apply Finset.sum_congr rfl
      intro ω _
      by_cases hmem : ω ∈ event
      · by_cases hweight : law.weight ω = 0
        · simp [conditionedEventDistribution, hmem, hweight]
        · have hratio :
              (law.weight ω / law.eventMass event) /
                  law.weight ω = 1 / law.eventMass event := by
                field_simp [hweight, positive.ne']
          simp only [conditionedEventDistribution,
            if_pos hmem, hratio]
      · simp [conditionedEventDistribution, hmem]
    _ = Real.log (1 / law.eventMass event) := by
      rw [← Finset.sum_mul,
        conditionedEventDistribution_sum law event positive]
      ring

theorem conditionedEventDistribution_projection_relativeEntropy_le
    {Ω κ : Type*} [Fintype Ω] [Fintype κ]
    (law : FiniteEventLaw Ω) (event : Finset Ω)
    (positive : 0 < law.eventMass event)
    (projection : Ω → κ) :
    finiteRelativeEntropy
        (groupedMass projection
          (conditionedEventDistribution law event))
        (groupedMass projection law.weight) ≤
      Real.log (1 / law.eventMass event) := by
  calc
    finiteRelativeEntropy
        (groupedMass projection
          (conditionedEventDistribution law event))
        (groupedMass projection law.weight) ≤
      finiteRelativeEntropy
        (conditionedEventDistribution law event)
        law.weight :=
      finite_relative_entropy_data_processing
        projection
        (conditionedEventDistribution law event)
        law.weight
        (conditionedEventDistribution_nonneg law event positive)
        law.weight_nonneg
        (conditionedEventDistribution_absolute_continuity
          law event)
    _ = Real.log (1 / law.eventMass event) :=
      conditionedEventDistribution_relativeEntropy
        law event positive

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

theorem finiteUniformWeight_sum
    {Z : Type*} [Fintype Z]
    (positive : 0 < Fintype.card Z) :
    (∑ _z : Z, finiteUniformWeight Z) = 1 := by
  have hcard : (Fintype.card Z : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt positive)
  unfold finiteUniformWeight
  simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  field_simp [hcard]

theorem finiteProbability_le_one
    {Z : Type*} [Fintype Z]
    (p : Z → ℝ)
    (nonnegative : ∀ z, 0 ≤ p z)
    (normalized : (∑ z, p z) = 1)
    (z : Z) :
    p z ≤ 1 := by
  calc
    p z ≤ ∑ a : Z, p a :=
      Finset.single_le_sum
        (fun a _ => nonnegative a) (Finset.mem_univ z)
    _ = 1 := normalized

theorem finiteRelativeEntropy_uniform_le_log_card
    {Z : Type*} [Fintype Z]
    (p : Z → ℝ)
    (nonnegative : ∀ z, 0 ≤ p z)
    (normalized : (∑ z, p z) = 1)
    (positive : 0 < Fintype.card Z) :
    finiteRelativeEntropy p
        (fun _ : Z => finiteUniformWeight Z) ≤
      Real.log (Fintype.card Z : ℝ) := by
  have hcardpos : 0 < (Fintype.card Z : ℝ) := by
    exact_mod_cast positive
  have hcardne : (Fintype.card Z : ℝ) ≠ 0 := hcardpos.ne'
  rw [finiteRelativeEntropy_eq_log_sum p
    (fun _ : Z => finiteUniformWeight Z)
    (fun _ => finiteUniformWeight_pos positive)
    normalized (finiteUniformWeight_sum positive)]
  calc
    (∑ z : Z, p z *
      Real.log (p z / finiteUniformWeight Z)) ≤
      ∑ z : Z, p z * Real.log (Fintype.card Z : ℝ) := by
      apply Finset.sum_le_sum
      intro z _
      by_cases hzero : p z = 0
      · simp [hzero]
      · have hp : 0 < p z :=
          lt_of_le_of_ne (nonnegative z) (Ne.symm hzero)
        have hpone : p z ≤ 1 :=
          finiteProbability_le_one p nonnegative normalized z
        have hratio :
            p z / finiteUniformWeight Z =
              p z * (Fintype.card Z : ℝ) := by
          unfold finiteUniformWeight
          field_simp [hcardne]
        rw [hratio]
        apply mul_le_mul_of_nonneg_left _ (nonnegative z)
        apply Real.log_le_log (mul_pos hp hcardpos)
        nlinarith
    _ = Real.log (Fintype.card Z : ℝ) := by
      rw [← Finset.sum_mul, normalized]
      ring

theorem uniformFlagReference_nonneg
    {Ω Z : Type*} [Fintype Ω] [Fintype Z]
    (prior : Ω → ℝ)
    (nonnegative : ∀ ω, 0 ≤ prior ω)
    (positive : 0 < Fintype.card Z)
    (t : Ω × Z) :
    0 ≤ uniformFlagReference (Z := Z) prior t := by
  exact mul_nonneg (nonnegative t.1)
    (finiteUniformWeight_pos positive).le

theorem uniformFlagReference_sum
    {Ω Z : Type*} [Fintype Ω] [Fintype Z]
    (prior : Ω → ℝ)
    (normalized : (∑ ω, prior ω) = 1)
    (positive : 0 < Fintype.card Z) :
    (∑ t : Ω × Z,
      uniformFlagReference (Z := Z) prior t) = 1 := by
  rw [Fintype.sum_prod_type]
  unfold uniformFlagReference
  simp_rw [← Finset.mul_sum,
    finiteUniformWeight_sum positive, mul_one]
  exact normalized

theorem uniformFlagReference_firstMarginal
    {Ω Z : Type*} [Fintype Ω] [Fintype Z]
    (prior : Ω → ℝ)
    (positive : 0 < Fintype.card Z) :
    jointFirstMarginal
        (uniformFlagReference (Z := Z) prior) = prior := by
  funext ω
  change
    (∑ z : Z, prior ω * finiteUniformWeight Z) = prior ω
  rw [← Finset.mul_sum, finiteUniformWeight_sum positive]
  ring

theorem uniformFlagReference_conditional
    {Ω Z : Type*} [Fintype Ω] [Fintype Z]
    (prior : Ω → ℝ)
    (positive : 0 < Fintype.card Z)
    (ω : Ω) (hprior : prior ω ≠ 0) :
    jointConditional
        (uniformFlagReference (Z := Z) prior) ω =
      fun _ : Z => finiteUniformWeight Z := by
  funext z
  unfold jointConditional
  rw [uniformFlagReference_firstMarginal prior positive]
  change
    prior ω * finiteUniformWeight Z / prior ω =
      finiteUniformWeight Z
  field_simp [hprior]

theorem uniformFlagReference_absolute_continuity
    {Ω Z : Type*} [Fintype Ω] [Fintype Z]
    (joint : Ω × Z → ℝ)
    (prior : Ω → ℝ)
    (hjoint : ∀ t, 0 ≤ joint t)
    (absolute_continuity :
      ∀ ω, prior ω = 0 → jointFirstMarginal joint ω = 0)
    (positive : 0 < Fintype.card Z)
    (t : Ω × Z) :
    uniformFlagReference (Z := Z) prior t = 0 →
      joint t = 0 := by
  rcases t with ⟨ω, z⟩
  intro hzero
  change prior ω * finiteUniformWeight Z = 0 at hzero
  have hflag : finiteUniformWeight Z ≠ 0 :=
    (finiteUniformWeight_pos positive).ne'
  have hprior : prior ω = 0 :=
    (mul_eq_zero.mp hzero).resolve_right hflag
  have hmarginal := absolute_continuity ω hprior
  change (∑ a : Z, joint (ω, a)) = 0 at hmarginal
  exact (Finset.sum_eq_zero_iff_of_nonneg
    (fun a _ => hjoint (ω, a))).mp
      hmarginal z (Finset.mem_univ z)

theorem uniformFlagRelativeEntropy_le
    {Ω Z : Type*} [Fintype Ω] [Fintype Z]
    (joint : Ω × Z → ℝ)
    (prior : Ω → ℝ)
    (hjoint : ∀ t, 0 ≤ joint t)
    (hprior : ∀ ω, 0 ≤ prior ω)
    (joint_normalized : (∑ t, joint t) = 1)
    (prior_normalized : (∑ ω, prior ω) = 1)
    (absolute_continuity :
      ∀ ω, prior ω = 0 → jointFirstMarginal joint ω = 0)
    (positive : 0 < Fintype.card Z) :
    finiteRelativeEntropy joint
        (uniformFlagReference (Z := Z) prior) ≤
      finiteRelativeEntropy (jointFirstMarginal joint) prior +
        Real.log (Fintype.card Z : ℝ) := by
  have hreference_nonneg :=
    uniformFlagReference_nonneg prior hprior positive
  have hreference_normalized :=
    uniformFlagReference_sum prior prior_normalized positive
  have hreference_absolute :=
    uniformFlagReference_absolute_continuity
      joint prior hjoint absolute_continuity positive
  have hmarginal_normalized :
      (∑ ω : Ω, jointFirstMarginal joint ω) = 1 :=
    (jointFirstMarginal_sum joint).trans joint_normalized
  have hmarginal_nonnegative :
      ∀ ω : Ω, 0 ≤ jointFirstMarginal joint ω :=
    jointFirstMarginal_nonneg joint hjoint
  rw [finite_relative_entropy_joint_chain_rule
    joint (uniformFlagReference (Z := Z) prior)
    hjoint hreference_nonneg hreference_absolute
    joint_normalized hreference_normalized,
    uniformFlagReference_firstMarginal prior positive]
  gcongr
  calc
    (∑ ω : Ω,
      jointFirstMarginal joint ω *
        finiteRelativeEntropy (jointConditional joint ω)
          (jointConditional
            (uniformFlagReference (Z := Z) prior) ω)) ≤
      ∑ ω : Ω,
        jointFirstMarginal joint ω *
          Real.log (Fintype.card Z : ℝ) := by
      apply Finset.sum_le_sum
      intro ω _
      by_cases hmass : jointFirstMarginal joint ω = 0
      · simp [hmass]
      · have hprior_ne : prior ω ≠ 0 := by
          intro hzero
          exact hmass (absolute_continuity ω hzero)
        rw [uniformFlagReference_conditional
          prior positive ω hprior_ne]
        apply mul_le_mul_of_nonneg_left _
          (hmarginal_nonnegative ω)
        apply finiteRelativeEntropy_uniform_le_log_card
        · intro z
          exact div_nonneg (hjoint (ω, z))
            (hmarginal_nonnegative ω)
        · exact jointConditional_sum joint ω hmass
        · exact positive
    _ = Real.log (Fintype.card Z : ℝ) := by
      rw [← Finset.sum_mul, hmarginal_normalized]
      ring

theorem groupedMass_nonneg
    {Ω κ : Type*} [Fintype Ω] [Fintype κ] [DecidableEq κ]
    (f : Ω → κ) (p : Ω → ℝ)
    (hp : ∀ ω, 0 ≤ p ω) (a : κ) :
    0 ≤ groupedMass f p a := by
  unfold groupedMass
  exact Finset.sum_nonneg (fun ω _ => hp ω)

theorem groupedMass_absolute_continuity
    {Ω κ : Type*} [Fintype Ω] [Fintype κ] [DecidableEq κ]
    (f : Ω → κ) (p q : Ω → ℝ)
    (hq : ∀ ω, 0 ≤ q ω)
    (absolute_continuity : ∀ ω, q ω = 0 → p ω = 0)
    (a : κ) :
    groupedMass f q a = 0 → groupedMass f p a = 0 := by
  intro hzero
  change
    (∑ ω ∈ (Finset.univ.filter fun ω => f ω = a), q ω) = 0 at hzero
  change
    (∑ ω ∈ (Finset.univ.filter fun ω => f ω = a), p ω) = 0
  apply Finset.sum_eq_zero
  intro ω hω
  have hqzero : q ω = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg
      (fun ω _ => hq ω)).mp hzero ω hω
  exact absolute_continuity ω hqzero

theorem groupedMass_comp
    {Ω κ θ : Type*} [Fintype Ω] [Fintype κ] [Fintype θ]
    [DecidableEq κ] [DecidableEq θ]
    (f : Ω → κ) (g : κ → θ) (p : Ω → ℝ) :
    groupedMass g (groupedMass f p) =
      groupedMass (g ∘ f) p := by
  funext a
  unfold groupedMass
  simpa only [Finset.mem_filter, Finset.mem_univ, true_and,
    Function.comp_apply] using
    (Finset.sum_fiberwise_eq_sum_filter
      (Finset.univ : Finset Ω)
      (Finset.univ.filter fun b : κ => g b = a)
      f p)

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

theorem groupedMass_sum
    {Ω κ : Type*} [Fintype Ω] [Fintype κ] [DecidableEq κ]
    (projection : Ω → κ) (mass : Ω → ℝ) :
    (∑ a : κ, groupedMass projection mass a) =
      ∑ ω : Ω, mass ω := by
  unfold groupedMass
  exact Finset.sum_fiberwise Finset.univ projection mass

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

theorem reweightedSeedProjection_relativeEntropy_le
    {K U : Type*} [Fintype K] [Fintype U]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (projection : K × ExactOutcome X Y A B n → U) :
    finiteRelativeEntropy
        (groupedMass projection
          (reweightedSeedPosterior seedLaw G n S D))
        (groupedMass projection
          (reweightedSeedPriorEventLaw seedLaw G n S).weight) ≤
      postselectionLogCost G n S D := by
  let law := reweightedSeedPriorEventLaw seedLaw G n S
  let event := reweightedSeedWinEvent (K := K) G n D
  have hpositive : 0 < law.eventMass event := by
    change
      0 < (reweightedSeedPriorEventLaw seedLaw G n S).eventMass
        (reweightedSeedWinEvent (K := K) G n D)
    rw [reweightedSeedWinEventMass]
    exact positive
  change
    finiteRelativeEntropy
      (groupedMass projection
        (conditionedEventDistribution law event))
      (groupedMass projection law.weight) ≤ _
  calc
    finiteRelativeEntropy
        (groupedMass projection
          (conditionedEventDistribution law event))
        (groupedMass projection law.weight) ≤
      Real.log (1 / law.eventMass event) :=
      conditionedEventDistribution_projection_relativeEntropy_le
        law event hpositive projection
    _ = postselectionLogCost G n S D := by
      change
        Real.log
          (1 / (reweightedSeedPriorEventLaw
            seedLaw G n S).eventMass
            (reweightedSeedWinEvent (K := K) G n D)) = _
      rw [reweightedSeedWinEventMass]
      rfl

theorem reweightedSeedFlaggedProjectionLaw_firstMarginal
    {K U Z : Type*} [Fintype K] [Fintype U] [Fintype Z]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (projection : K × ExactOutcome X Y A B n → U)
    (flag : K × ExactOutcome X Y A B n → Z) :
    jointFirstMarginal
      (reweightedSeedFlaggedProjectionLaw
        seedLaw G n S D projection flag) =
      groupedMass projection
        (reweightedSeedPosterior seedLaw G n S D) := by
  rw [← groupedMass_first]
  unfold reweightedSeedFlaggedProjectionLaw
  rw [groupedMass_comp]
  rfl

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
    {K U Z : Type*} [Fintype K] [Fintype U] [Fintype Z]
    (seedLaw : FiniteEventLaw K)
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (flag_positive : 0 < Fintype.card Z)
    (projection : K × ExactOutcome X Y A B n → U)
    (flag : K × ExactOutcome X Y A B n → Z) :
    finiteRelativeEntropy
        (reweightedSeedFlaggedProjectionLaw
          seedLaw G n S D projection flag)
        (uniformFlagReference (Z := Z)
          (groupedMass projection
            (reweightedSeedPriorEventLaw seedLaw G n S).weight)) ≤
      postselectionLogCost G n S D +
        Real.log (Fintype.card Z : ℝ) := by
  let law := reweightedSeedPriorEventLaw seedLaw G n S
  let event := reweightedSeedWinEvent (K := K) G n D
  let posterior := reweightedSeedPosterior seedLaw G n S D
  let joint := reweightedSeedFlaggedProjectionLaw
    seedLaw G n S D projection flag
  let projectedPrior := groupedMass projection law.weight
  have hevent : 0 < law.eventMass event := by
    change
      0 < (reweightedSeedPriorEventLaw seedLaw G n S).eventMass
        (reweightedSeedWinEvent (K := K) G n D)
    rw [reweightedSeedWinEventMass]
    exact positive
  have hposterior : ∀ q, 0 ≤ posterior q :=
    conditionedEventDistribution_nonneg law event hevent
  have hjoint : ∀ t, 0 ≤ joint t :=
    groupedMass_nonneg
      (fun q => (projection q, flag q)) posterior hposterior
  have hprojectedPrior : ∀ u, 0 ≤ projectedPrior u :=
    groupedMass_nonneg projection law.weight law.weight_nonneg
  have hjointnorm : (∑ t, joint t) = 1 := by
    change
      (∑ t,
        groupedMass (fun q => (projection q, flag q))
          (conditionedEventDistribution law event) t) = 1
    rw [groupedMass_sum]
    exact conditionedEventDistribution_sum law event hevent
  have hpriornorm : (∑ u, projectedPrior u) = 1 := by
    change (∑ u, groupedMass projection law.weight u) = 1
    rw [groupedMass_sum]
    exact law.weight_sum
  have hac :
      ∀ u, projectedPrior u = 0 →
        jointFirstMarginal joint u = 0 := by
    intro u hzero
    change
      jointFirstMarginal
        (reweightedSeedFlaggedProjectionLaw
          seedLaw G n S D projection flag) u = 0
    rw [reweightedSeedFlaggedProjectionLaw_firstMarginal]
    exact groupedMass_absolute_continuity
      projection
      (conditionedEventDistribution law event)
      law.weight law.weight_nonneg
      (conditionedEventDistribution_absolute_continuity
        law event) u hzero
  calc
    finiteRelativeEntropy
        (reweightedSeedFlaggedProjectionLaw
          seedLaw G n S D projection flag)
        (uniformFlagReference (Z := Z)
          (groupedMass projection
            (reweightedSeedPriorEventLaw seedLaw G n S).weight)) ≤
      finiteRelativeEntropy
        (jointFirstMarginal joint) projectedPrior +
          Real.log (Fintype.card Z : ℝ) :=
      uniformFlagRelativeEntropy_le
        joint projectedPrior hjoint hprojectedPrior
        hjointnorm hpriornorm hac flag_positive
    _ = finiteRelativeEntropy
        (groupedMass projection
          (reweightedSeedPosterior seedLaw G n S D))
        (groupedMass projection
          (reweightedSeedPriorEventLaw seedLaw G n S).weight) +
          Real.log (Fintype.card Z : ℝ) := by
      rw [reweightedSeedFlaggedProjectionLaw_firstMarginal]
    _ ≤ postselectionLogCost G n S D +
          Real.log (Fintype.card Z : ℝ) := by
      gcongr
      exact reweightedSeedProjection_relativeEntropy_le
        seedLaw G n S D positive projection
