import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_normalized
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
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Notation.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.IsBotOne
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Nat
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.Convex.Jensen
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
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
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sigma
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Nat.SuccPred
import Mathlib.Data.Real.Basic
import Mathlib.Data.Set.Defs
import Mathlib.Data.SetLike.Basic
import Mathlib.InformationTheory.KullbackLeibler.KLFun
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Order.Lattice
import Mathlib.Order.Nat
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

theorem marginalY_nonneg (G : Game X Y A B) (y : Y) :
    0 ≤ G.marginalY y := by
  unfold marginalY
  exact Finset.sum_nonneg fun x _ => G.weight_nonneg x y

theorem marginalY_normalized (G : Game X Y A B) :
    (∑ y : Y, G.marginalY y) = 1 := by
  unfold marginalY
  rw [Finset.sum_comm]
  exact G.weight_normalized

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

end ClassicalInformation

end

noncomputable section

open scoped BigOperators

attribute [local instance] Classical.propDecidable

@[simp] theorem exactSeedEquiv_symm_apply
    {M : Type*} [Fintype M] [DecidableEq M]
    (t : ExactSeedTuple M) :
    (exactSeedEquiv M).symm t =
      ⟨t.1, t.2.1, t.2.2.1, t.2.2.2.1,
        t.2.2.2.2.1, t.2.2.2.2.2⟩ := by
  rfl

theorem exactForwardSeed_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (f : ExactForwardSeed M → ℝ) :
    (∑ seed : ExactForwardSeed M, f seed) =
      ∑ i : M,
      ∑ partition : M → Bool,
      ∑ leftOrder : Equiv.Perm
        {j : M // j ∈ exactLeft i partition},
      ∑ rightOrder : Equiv.Perm
        {j : M // j ∈ exactRight i partition},
      ∑ leftCut : Fin ((exactLeft i partition).card + 1),
      ∑ rightCut : Fin ((exactRight i partition).card + 1),
        f ⟨i, partition, leftOrder, rightOrder, leftCut, rightCut⟩ := by
  classical
  calc
    (∑ seed : ExactForwardSeed M, f seed) =
        ∑ t : ExactSeedTuple M,
          f ((exactSeedEquiv M).symm t) :=
      ((exactSeedEquiv M).symm.sum_comp f).symm
    _ = _ := by
      simp [Fintype.sum_sigma, Fintype.sum_prod_type,
        exactSeedEquiv_symm_apply]

theorem exactUniform_sum
    {T : Type*} [Fintype T]
    (positive : 0 < Fintype.card T) :
    (∑ _t : T, (1 / (Fintype.card T : ℝ))) = 1 := by
  have hcard : (Fintype.card T : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt positive)
  simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  field_simp [hcard]

theorem exactUniform_sum_mul
    {T : Type*} [Fintype T]
    (positive : 0 < Fintype.card T) (value : ℝ) :
    (∑ _t : T,
      value * (1 / (Fintype.card T : ℝ))) = value := by
  rw [← Finset.mul_sum, exactUniform_sum positive]
  ring

theorem exactPrefixUniform_sum_mul
    (m : ℕ) (value : ℝ) :
    (∑ _k : Fin (m + 1),
      value * (1 / ((m : ℝ) + 1))) = value := by
  simpa only [Fintype.card_fin, Nat.cast_add, Nat.cast_one] using
    (exactUniform_sum_mul
      (T := Fin (m + 1)) (by simp) value)

theorem exactPermutationUniform_sum_mul
    {T : Type*} [Fintype T] (value : ℝ) :
    (∑ _π : Equiv.Perm T,
      value * (1 / (Fintype.card (Equiv.Perm T) : ℝ))) = value := by
  exact exactUniform_sum_mul
    (Fintype.card_pos_iff.mpr ⟨Equiv.refl T⟩) value

end

noncomputable section

open scoped BigOperators

set_option maxHeartbeats 1200000

attribute [local instance] Classical.propDecidable

theorem exactFintypeCard_eq
    {T : Type*} (first second : Fintype T) :
    @Fintype.card T first = @Fintype.card T second :=
  @Fintype.card_congr T T first second (Equiv.refl T)

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

theorem repeatedConditionedOutcomeLaw_relativeEntropy
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (hp : 0 < repeatedPostselectionMass G n S D) :
    finiteRelativeEntropy
        (repeatedConditionedOutcomeLaw G n S D)
        (strategyEventLaw (G.repeat n) S).weight =
      postselectionLogCost G n S D := by
  exact conditionedEventDistribution_relativeEntropy
    (strategyEventLaw (G.repeat n) S)
    (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D) hp

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

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
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation
open QuantumParallelRepetition.ClassicalSampling

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactBobLocalConditional_sum
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (i : SourceRemainingCoordinate D) (y : Y) :
    (∑ r : ExactHistoryFlag X Y A B D,
      exactBobLocalConditional D base Q i y r) = 1 := by
  unfold exactBobLocalConditional
  split_ifs with hmass
  · simp
  · rw [← Finset.sum_div]
    exact div_self hmass

end

noncomputable section

open scoped BigOperators

set_option maxHeartbeats 1600000

attribute [local instance] Classical.propDecidable

theorem exactSeedCoordinateFiber_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (coordinate : M) :
    (∑ partition : M → Bool,
      ∑ leftOrder : Equiv.Perm
        {j : M // j ∈ exactLeft coordinate partition},
      ∑ rightOrder : Equiv.Perm
        {j : M // j ∈ exactRight coordinate partition},
      ∑ leftCut : Fin
        ((exactLeft coordinate partition).card + 1),
      ∑ rightCut : Fin
        ((exactRight coordinate partition).card + 1),
        exactSeedWeight
          ⟨coordinate, partition, leftOrder,
            rightOrder, leftCut, rightCut⟩) =
      1 / (Fintype.card M : ℝ) := by
  classical
  have hbits : 0 < Fintype.card (M → Bool) :=
    Fintype.card_pos_iff.mpr ⟨fun _ => false⟩
  conv_rhs =>
    rw [← exactUniform_sum_mul hbits
      (1 / (Fintype.card M : ℝ))]
  apply Finset.sum_congr (by ext; simp)
  intro partition _
  letI : DecidableEq
      {j : M // j ∈ exactLeft coordinate partition} :=
    fun a b => Classical.propDecidable (a = b)
  letI : DecidableEq
      {j : M // j ∈ exactRight coordinate partition} :=
    fun a b => Classical.propDecidable (a = b)
  conv_rhs =>
    rw [← exactPermutationUniform_sum_mul
      (T := {j : M // j ∈ exactLeft coordinate partition})
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro leftOrder _
  conv_rhs =>
    rw [← exactPermutationUniform_sum_mul
      (T := {j : M // j ∈ exactRight coordinate partition})
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactLeft coordinate partition}) : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro rightOrder _
  conv_rhs =>
    rw [← exactPrefixUniform_sum_mul
      (exactLeft coordinate partition).card
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactLeft coordinate partition}) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactRight coordinate partition}) : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro leftCut _
  conv_rhs =>
    rw [← exactPrefixUniform_sum_mul
      (exactRight coordinate partition).card
      ((1 / (Fintype.card M : ℝ)) *
        (1 / (Fintype.card (M → Bool) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactLeft coordinate partition}) : ℝ)) *
        (1 / (Fintype.card
          (Equiv.Perm
            {j : M // j ∈ exactRight coordinate partition}) : ℝ)) *
        (1 / ((exactLeft coordinate partition).card + 1 : ℝ)))]
  apply Finset.sum_congr (by ext; simp)
  intro rightCut _
  simp only [exactSeedWeight]
  congr 2
  congr 3
  · apply congrArg (fun k : ℕ => (k : ℝ))
    exact exactFintypeCard_eq _ _
  · exact exactFintypeCard_eq _ _

theorem exactSeedWeight_coordinate_sum
    {M : Type*} [Fintype M] [DecidableEq M]
    (f : M → ℝ) :
    (∑ seed : ExactForwardSeed M,
      exactSeedWeight seed * f seed.coordinate) =
      ∑ i : M, (1 / (Fintype.card M : ℝ)) * f i := by
  classical
  rw [exactForwardSeed_sum]
  apply Finset.sum_congr (by ext; simp)
  intro i _
  simp_rw [← Finset.sum_mul]
  rw [exactSeedCoordinateFiber_sum i]

theorem exactSeedWeight_coordinate_marginal
    {M : Type*} [Fintype M] [DecidableEq M]
    (i : M) :
    (∑ seed : ExactForwardSeed M,
      if seed.coordinate = i then exactSeedWeight seed else 0) =
      1 / (Fintype.card M : ℝ) := by
  have h := exactSeedWeight_coordinate_sum
    (M := M) (fun j => if j = i then (1 : ℝ) else 0)
  simpa only [mul_ite, mul_one, mul_zero,
    Finset.sum_ite_eq', Finset.mem_univ, ↓reduceIte] using h

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

theorem exactBobInformationReference_firstMarginal
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (i : SourceRemainingCoordinate D) (y : Y) :
    jointFirstMarginal
        (exactBobInformationReference G n S D base)
        (i, y) =
      exactBobQuestionPriorMarginal G y /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
  unfold jointFirstMarginal
  rw [Fintype.sum_prod_type]
  change
    (∑ r : ExactHistoryFlag X Y A B D,
      ∑ x : X,
        G.questionWeight x y *
          exactBobLocalConditional D base
            (exactLocallySampleableLaw G n S D) i y r /
          (Fintype.card (SourceRemainingCoordinate D) : ℝ)) =
      (∑ x : X, G.questionWeight x y) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ)
  rw [Finset.sum_comm]
  simp_rw [← Finset.sum_div, ← Finset.mul_sum,
    exactBobLocalConditional_sum, mul_one]

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
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem finiteIndependentProductWeight_nonneg
    {ι V : Type*} [Fintype ι] [Fintype V]
    (q : ι → V → ℝ) (hq : ∀ i v, 0 ≤ q i v)
    (x : ι → V) :
    0 ≤ finiteIndependentProductWeight q x := by
  classical
  unfold finiteIndependentProductWeight
  exact Finset.prod_nonneg fun i _ => hq i (x i)

theorem finiteIndependentProductWeight_sum
    {ι V : Type*} [Fintype ι] [Fintype V]
    (q : ι → V → ℝ)
    (hq : ∀ i, (∑ v : V, q i v) = 1) :
    (∑ x : ι → V, finiteIndependentProductWeight q x) = 1 := by
  classical
  unfold finiteIndependentProductWeight
  calc
    (∑ x : ι → V, ∏ i : ι, q i (x i)) =
        ∏ i : ι, ∑ v : V, q i v :=
      (Fintype.prod_sum (fun i : ι => fun v : V => q i v)).symm
    _ = 1 := by simp [hq]

theorem finiteCoordinateMarginal_nonneg
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (hp : ∀ x, 0 ≤ p x)
    (i : ι) (v : V) :
    0 ≤ finiteCoordinateMarginal p i v := by
  classical
  unfold finiteCoordinateMarginal
  exact groupedMass_nonneg (fun x : ι → V => x i) p hp v

theorem finiteCoordinateMarginal_sum
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (i : ι) :
    (∑ v : V, finiteCoordinateMarginal p i v) =
      ∑ x : ι → V, p x := by
  classical
  unfold finiteCoordinateMarginal
  exact groupedMass_sum (fun x : ι → V => x i) p

theorem finiteJoint_le_coordinateMarginal
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (hp : ∀ x, 0 ≤ p x)
    (x : ι → V) (i : ι) :
    p x ≤ finiteCoordinateMarginal p i (x i) := by
  classical
  unfold finiteCoordinateMarginal groupedMass
  exact Finset.single_le_sum
    (fun a _ => hp a)
    (by simp)

theorem finiteCoordinateMarginal_absolute_continuity
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (q : ι → V → ℝ)
    (hac : ∀ x, finiteIndependentProductWeight q x = 0 → p x = 0)
    (i : ι) (v : V) :
    q i v = 0 → finiteCoordinateMarginal p i v = 0 := by
  classical
  intro hz
  unfold finiteCoordinateMarginal groupedMass
  apply Finset.sum_eq_zero
  intro x hx
  have hxi : x i = v := (Finset.mem_filter.mp hx).2
  apply hac x
  unfold finiteIndependentProductWeight
  apply Finset.prod_eq_zero (Finset.mem_univ i)
  simpa [hxi] using hz

theorem finiteJoint_absolute_continuous_product_marginals
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (hp : ∀ x, 0 ≤ p x)
    (x : ι → V) :
    finiteIndependentProductWeight
        (finiteCoordinateMarginal p) x = 0 → p x = 0 := by
  classical
  intro hz
  by_contra hpx
  have hpositive : 0 < p x :=
    lt_of_le_of_ne (hp x) (Ne.symm hpx)
  have hmarginal (i : ι) :
      0 < finiteCoordinateMarginal p i (x i) :=
    lt_of_lt_of_le hpositive
      (finiteJoint_le_coordinateMarginal p hp x i)
  have hproduct :
      0 < finiteIndependentProductWeight
        (finiteCoordinateMarginal p) x := by
    unfold finiteIndependentProductWeight
    exact Finset.prod_pos fun i _ => hmarginal i
  exact hproduct.ne' hz

theorem finiteCoordinateMarginal_sum_mul
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (i : ι) (f : V → ℝ) :
    (∑ x : ι → V, p x * f (x i)) =
      ∑ v : V, finiteCoordinateMarginal p i v * f v := by
  classical
  calc
    (∑ x : ι → V, p x * f (x i)) =
        ∑ v : V,
          groupedMass (fun x : ι → V => x i)
            (fun x => p x * f (x i)) v := by
      symm
      exact groupedMass_sum
        (fun x : ι → V => x i)
        (fun x => p x * f (x i))
    _ = ∑ v : V, finiteCoordinateMarginal p i v * f v := by
      apply Finset.sum_congr rfl
      intro v _
      unfold finiteCoordinateMarginal groupedMass
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro x hx
      have hxi : x i = v := (Finset.mem_filter.mp hx).2
      simp [hxi]

theorem finiteProductMarginal_relativeEntropy_le
    {ι V : Type*} [Fintype ι] [Fintype V]
    (p : (ι → V) → ℝ) (q : ι → V → ℝ)
    (hp : ∀ x, 0 ≤ p x)
    (hp_normalized : (∑ x : ι → V, p x) = 1)
    (hq : ∀ i v, 0 ≤ q i v)
    (hq_normalized : ∀ i, (∑ v : V, q i v) = 1)
    (absolute_continuity :
      ∀ x, finiteIndependentProductWeight q x = 0 → p x = 0) :
    (∑ i : ι,
      finiteRelativeEntropy (finiteCoordinateMarginal p i) (q i)) ≤
      finiteRelativeEntropy p (finiteIndependentProductWeight q) := by
  classical
  let marginal : ι → V → ℝ := finiteCoordinateMarginal p
  have hm_nonnegative (i : ι) (v : V) : 0 ≤ marginal i v :=
    finiteCoordinateMarginal_nonneg p hp i v
  have hm_normalized (i : ι) : (∑ v : V, marginal i v) = 1 := by
    change (∑ v : V, finiteCoordinateMarginal p i v) = 1
    rw [finiteCoordinateMarginal_sum, hp_normalized]
  have hm_absolute (x : ι → V) :
      finiteIndependentProductWeight marginal x = 0 → p x = 0 :=
    finiteJoint_absolute_continuous_product_marginals p hp x
  have hq_absolute (i : ι) (v : V) :
      q i v = 0 → marginal i v = 0 :=
    finiteCoordinateMarginal_absolute_continuity
      p q absolute_continuity i v
  have hpoint (x : ι → V) :
      p x * Real.log
        (p x / finiteIndependentProductWeight q x) =
        p x * Real.log
            (p x / finiteIndependentProductWeight marginal x) +
          ∑ i : ι,
            p x * Real.log (marginal i (x i) / q i (x i)) := by
    by_cases hpx : p x = 0
    · simp [hpx]
    · have hp_positive : 0 < p x :=
        lt_of_le_of_ne (hp x) (Ne.symm hpx)
      have hq_product :
          finiteIndependentProductWeight q x ≠ 0 := by
        intro hz
        exact hpx (absolute_continuity x hz)
      have hm_product :
          finiteIndependentProductWeight marginal x ≠ 0 := by
        intro hz
        exact hpx (hm_absolute x hz)
      have hq_factor (i : ι) : q i (x i) ≠ 0 := by
        intro hz
        apply hq_product
        unfold finiteIndependentProductWeight
        exact Finset.prod_eq_zero (Finset.mem_univ i) hz
      have hm_factor (i : ι) : marginal i (x i) ≠ 0 := by
        have hm_positive : 0 < marginal i (x i) :=
          lt_of_lt_of_le hp_positive
            (finiteJoint_le_coordinateMarginal p hp x i)
        exact hm_positive.ne'
      have hlogq :
          Real.log (finiteIndependentProductWeight q x) =
            ∑ i : ι, Real.log (q i (x i)) := by
        unfold finiteIndependentProductWeight
        exact Real.log_prod (fun i _ => hq_factor i)
      have hlogm :
          Real.log (finiteIndependentProductWeight marginal x) =
            ∑ i : ι, Real.log (marginal i (x i)) := by
        unfold finiteIndependentProductWeight
        exact Real.log_prod (fun i _ => hm_factor i)
      rw [Real.log_div hpx hq_product,
        Real.log_div hpx hm_product, hlogq, hlogm]
      simp_rw [Real.log_div (hm_factor _) (hq_factor _)]
      rw [← Finset.mul_sum, Finset.sum_sub_distrib]
      ring
  have hidentity :
      finiteRelativeEntropy p (finiteIndependentProductWeight q) =
        finiteRelativeEntropy p
            (finiteIndependentProductWeight marginal) +
          ∑ i : ι, finiteRelativeEntropy (marginal i) (q i) := by
    rw [finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
      p (finiteIndependentProductWeight q)
      (finiteIndependentProductWeight_nonneg q hq)
      absolute_continuity hp_normalized
      (finiteIndependentProductWeight_sum q hq_normalized)]
    rw [finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
      p (finiteIndependentProductWeight marginal)
      (finiteIndependentProductWeight_nonneg marginal hm_nonnegative)
      hm_absolute hp_normalized
      (finiteIndependentProductWeight_sum marginal hm_normalized)]
    simp_rw [finiteRelativeEntropy_eq_log_sum_of_absolute_continuity
      (marginal _) (q _) (hq _) (hq_absolute _)
      (hm_normalized _) (hq_normalized _)]
    calc
      (∑ x : ι → V, p x *
          Real.log (p x / finiteIndependentProductWeight q x)) =
        ∑ x : ι → V,
          (p x * Real.log
            (p x / finiteIndependentProductWeight marginal x) +
            ∑ i : ι,
              p x * Real.log (marginal i (x i) / q i (x i))) := by
          apply Finset.sum_congr rfl
          intro x _
          exact hpoint x
      _ = (∑ x : ι → V, p x *
            Real.log
              (p x / finiteIndependentProductWeight marginal x)) +
          ∑ i : ι,
            ∑ x : ι → V,
              p x * Real.log (marginal i (x i) / q i (x i)) := by
          rw [Finset.sum_add_distrib, Finset.sum_comm]
      _ = (∑ x : ι → V, p x *
            Real.log
              (p x / finiteIndependentProductWeight marginal x)) +
          ∑ i : ι,
            ∑ v : V,
              marginal i v * Real.log (marginal i v / q i v) := by
          congr 1
          apply Finset.sum_congr rfl
          intro i _
          exact finiteCoordinateMarginal_sum_mul
            p i (fun v => Real.log (marginal i v / q i v))
  rw [hidentity]
  have hnonnegative :
      0 ≤ finiteRelativeEntropy p
        (finiteIndependentProductWeight marginal) :=
    finiteRelativeEntropy_nonneg p
      (finiteIndependentProductWeight marginal)
      hp (finiteIndependentProductWeight_nonneg
        marginal hm_nonnegative)
  change (∑ i : ι, finiteRelativeEntropy (marginal i) (q i)) ≤ _
  linarith

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

theorem exactIndependentCoordinateQuestion_marginal
    {M Ω V : Type*} [Fintype M] [DecidableEq M]
    [Fintype Ω] [Fintype V]
    (outcome : Ω → ℝ) (question : Ω → M → V)
    (i : M) (v : V) :
    groupedMass
        (fun t : ExactForwardSeed M × Ω =>
          (t.1.coordinate, question t.2 t.1.coordinate))
        (fun t : ExactForwardSeed M × Ω =>
          exactSeedWeight t.1 * outcome t.2) (i, v) =
      (1 / (Fintype.card M : ℝ)) *
        groupedMass (fun ω : Ω => question ω i) outcome v := by
  classical
  let coordinateMass :=
    groupedMass (fun ω : Ω => question ω i) outcome v
  have hinner (seed : ExactForwardSeed M) :
      (∑ ω : Ω,
        if (seed.coordinate, question ω seed.coordinate) = (i, v)
        then exactSeedWeight seed * outcome ω
        else 0) =
      if seed.coordinate = i
      then exactSeedWeight seed * coordinateMass
      else 0 := by
    by_cases hc : seed.coordinate = i
    · subst i
      simp only [Prod.mk.injEq, true_and, ↓reduceIte]
      dsimp [coordinateMass]
      unfold groupedMass
      rw [Finset.sum_filter]
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro ω _
      split_ifs <;> simp_all
    · simp [hc]
  unfold groupedMass
  rw [Finset.sum_filter, Fintype.sum_prod_type]
  simp_rw [hinner]
  calc
    (∑ seed : ExactForwardSeed M,
      if seed.coordinate = i
      then exactSeedWeight seed * coordinateMass
      else 0) =
        (∑ seed : ExactForwardSeed M,
          if seed.coordinate = i
          then exactSeedWeight seed else 0) * coordinateMass := by
          rw [Finset.sum_mul]
          apply Finset.sum_congr rfl
          intro seed _
          split_ifs <;> simp
    _ = (1 / (Fintype.card M : ℝ)) * coordinateMass := by
      rw [exactSeedWeight_coordinate_marginal i]

theorem strategyBobQuestionPrior_marginal
    (G : Game X Y A B) (S : Strategy G) (y : Y) :
    groupedMass (fun ω : StrategyOutcome X Y A B => ω.2.1)
        (strategyEventLaw G S).weight y =
      G.marginalY y := by
  classical
  unfold groupedMass
  rw [Finset.sum_filter]
  simp only [Fintype.sum_prod_type]
  change
    (∑ x : X, ∑ y' : Y, ∑ a : A, ∑ b : B,
      if y' = y then
        G.questionWeight x y' * S.outcomeProbability x y' a b
      else 0) = G.marginalY y
  simp only [Finset.sum_ite_irrel, Finset.sum_const_zero,
    Finset.sum_ite_eq', Finset.mem_univ, ↓reduceIte]
  unfold Game.marginalY
  apply Finset.sum_congr rfl
  intro x _
  simp_rw [← Finset.mul_sum]
  rw [S.outcomeProbability_normalized x y]
  ring

theorem repeatedBobQuestionPrior_product
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (ys : Fin n → Y) :
    groupedMass
        (fun ω : ExactOutcome X Y A B n => ω.2.1)
        (strategyEventLaw (G.repeat n) S).weight ys =
      finiteIndependentProductWeight
        (fun _ : Fin n => G.marginalY) ys := by
  classical
  calc
    groupedMass
        (fun ω : ExactOutcome X Y A B n => ω.2.1)
        (strategyEventLaw (G.repeat n) S).weight ys =
      (G.repeat n).marginalY ys := by
        calc
          groupedMass
              (fun ω : ExactOutcome X Y A B n => ω.2.1)
              (strategyEventLaw (G.repeat n) S).weight ys =
            @groupedMass
              (ExactOutcome X Y A B n) inferInstance
              (Fin n → Y)
              (fun a b => Classical.propDecidable (a = b))
              (fun ω : ExactOutcome X Y A B n => ω.2.1)
              (strategyEventLaw (G.repeat n) S).weight ys := by
                exact congrFun
                  (exactGroupedMass_decidableEq_irrel _ _
                    (fun ω : ExactOutcome X Y A B n => ω.2.1)
                    (strategyEventLaw (G.repeat n) S).weight) ys
          _ = (G.repeat n).marginalY ys :=
            strategyBobQuestionPrior_marginal
              (G.repeat n) S ys
    _ = finiteIndependentProductWeight
        (fun _ : Fin n => G.marginalY) ys := by
      unfold Game.marginalY finiteIndependentProductWeight
      simp only [Game.repeat_questionWeight]
      exact (Fintype.prod_sum
        (fun i : Fin n => fun x : X => G.questionWeight x (ys i))).symm

theorem exactGroupedMass_equiv
    {Ω K V : Type*} [Fintype Ω] [Fintype K] [Fintype V]
    (equiv : Ω ≃ K) (projection : Ω → V) (mass : Ω → ℝ)
    (v : V) :
    groupedMass (fun k : K => projection (equiv.symm k))
        (fun k : K => mass (equiv.symm k)) v =
      groupedMass projection mass v := by
  classical
  unfold groupedMass
  rw [Finset.sum_filter, Finset.sum_filter]
  exact equiv.symm.sum_comp
    (fun ω : Ω => if projection ω = v then mass ω else 0)

theorem exactBobInformationPosterior_firstMarginal_pushforward
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (i : SourceRemainingCoordinate D) (y : Y) :
    jointFirstMarginal
        (exactBobInformationPosterior G n S D) (i, y) =
      groupedMass
        (fun t : ExactLocallySampleableTuple X Y A B D =>
          (t.1, t.2.2.1))
        (exactLocallySampleableLaw G n S D) (i, y) := by
  classical
  let equiv := exactBobInformationEquiv
    (X := X) (Y := Y) (A := A) (B := B) D
  let projection :=
    fun t : ExactLocallySampleableTuple X Y A B D =>
      (t.1, t.2.2.1)
  let mass := exactLocallySampleableLaw G n S D
  have hfirst := congrFun
    (groupedMass_first
      (exactBobInformationPosterior G n S D)) (i, y)
  have hreindex := exactGroupedMass_equiv
    equiv projection mass (i, y)
  have hprojection :
      (fun k :
        (SourceRemainingCoordinate D × Y) ×
          (ExactHistoryFlag X Y A B D × X) =>
        projection (equiv.symm k)) = Prod.fst := by
    funext k
    rcases k with ⟨⟨j, z⟩, r, w⟩
    rfl
  have hmass :
      (fun k :
        (SourceRemainingCoordinate D × Y) ×
          (ExactHistoryFlag X Y A B D × X) =>
        mass (equiv.symm k)) =
        exactBobInformationPosterior G n S D := by
    funext k
    rfl
  rw [hprojection, hmass] at hreindex
  calc
    jointFirstMarginal
        (exactBobInformationPosterior G n S D) (i, y) =
      groupedMass Prod.fst
        (exactBobInformationPosterior G n S D) (i, y) := by
          exact hfirst.symm
    _ = groupedMass projection mass (i, y) := by
      have hchange :
          groupedMass Prod.fst
              (exactBobInformationPosterior G n S D) (i, y) =
            @groupedMass
              ((SourceRemainingCoordinate D × Y) ×
                (ExactHistoryFlag X Y A B D × X))
              inferInstance (SourceRemainingCoordinate D × Y)
              (fun a b => Classical.propDecidable (a = b))
              Prod.fst
              (exactBobInformationPosterior G n S D) (i, y) := by
        exact congrFun
          (exactGroupedMass_decidableEq_irrel _ _ Prod.fst
            (exactBobInformationPosterior G n S D)) (i, y)
      have hreindex' :
          @groupedMass
              ((SourceRemainingCoordinate D × Y) ×
                (ExactHistoryFlag X Y A B D × X))
              inferInstance (SourceRemainingCoordinate D × Y)
              (fun a b => Classical.propDecidable (a = b))
              Prod.fst
              (exactBobInformationPosterior G n S D) (i, y) =
            @groupedMass
              (ExactLocallySampleableTuple X Y A B D)
              inferInstance (SourceRemainingCoordinate D × Y)
              (fun a b => Classical.propDecidable (a = b))
              projection mass (i, y) := by
        exact hreindex
      have hright :
          @groupedMass
              (ExactLocallySampleableTuple X Y A B D)
              inferInstance (SourceRemainingCoordinate D × Y)
              (fun a b => Classical.propDecidable (a = b))
              projection mass (i, y) =
            groupedMass projection mass (i, y) := by
        exact congrFun
          (exactGroupedMass_decidableEq_irrel _ _
            projection mass) (i, y)
      exact hchange.trans (hreindex'.trans hright)

theorem exactBobInformationPosterior_firstMarginal
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (i : SourceRemainingCoordinate D) (y : Y) :
    jointFirstMarginal
        (exactBobInformationPosterior G n S D) (i, y) =
      (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        groupedMass
          (fun ω : ExactOutcome X Y A B n => ω.2.1 i.val)
          (repeatedConditionedOutcomeLaw G n S D) y := by
  classical
  let code := exactLocallySampleableCode
    (X := X) (Y := Y) (A := A) (B := B) D
  let projection :=
    fun t : ExactLocallySampleableTuple X Y A B D =>
      (t.1, t.2.2.1)
  let joint := exactPostselectedJointLaw G n S D
  have hlaw :
      exactLocallySampleableLaw G n S D =
        groupedMass code joint := by
    unfold exactLocallySampleableLaw
      exactSourcePushforward
    exact exactGroupedMass_decidableEq_irrel _ _ _ _
  have hcomp := congrFun
    (groupedMass_comp code projection joint) (i, y)
  have hprojection :
      projection ∘ code =
        (fun q : ExactJointOutcome X Y A B D =>
          (q.1.coordinate, q.2.2.1 q.1.coordinate.val)) := by
    funext q
    rfl
  rw [hprojection] at hcomp
  calc
    jointFirstMarginal
        (exactBobInformationPosterior G n S D) (i, y) =
      groupedMass projection
        (exactLocallySampleableLaw G n S D) (i, y) :=
      exactBobInformationPosterior_firstMarginal_pushforward
        G n S D i y
    _ = groupedMass projection (groupedMass code joint) (i, y) := by
      rw [hlaw]
    _ = groupedMass
        (fun q : ExactJointOutcome X Y A B D =>
          (q.1.coordinate, q.2.2.1 q.1.coordinate.val)) joint (i, y) :=
      hcomp
    _ = (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        groupedMass
          (fun ω : ExactOutcome X Y A B n => ω.2.1 i.val)
          (repeatedConditionedOutcomeLaw G n S D) y := by
      exact exactIndependentCoordinateQuestion_marginal
        (repeatedConditionedOutcomeLaw G n S D)
        (fun ω : ExactOutcome X Y A B n =>
          fun j : SourceRemainingCoordinate D => ω.2.1 j.val) i y

theorem finiteProductMarginal_projection_relativeEntropy_le
    {Ω ι V : Type*} [Fintype Ω] [Fintype ι] [Fintype V]
    (posterior prior : Ω → ℝ) (projection : Ω → (ι → V))
    (q : ι → V → ℝ) (budget : ℝ)
    (posterior_nonnegative : ∀ ω, 0 ≤ posterior ω)
    (posterior_normalized : (∑ ω : Ω, posterior ω) = 1)
    (prior_nonnegative : ∀ ω, 0 ≤ prior ω)
    (absolute_continuity : ∀ ω, prior ω = 0 → posterior ω = 0)
    (coordinate_nonnegative : ∀ i v, 0 ≤ q i v)
    (coordinate_normalized : ∀ i, (∑ v : V, q i v) = 1)
    (actual_prior :
      groupedMass projection prior =
        finiteIndependentProductWeight q)
    (actual_budget : finiteRelativeEntropy posterior prior ≤ budget) :
    (∑ i : ι,
      finiteRelativeEntropy
        (finiteCoordinateMarginal
          (groupedMass projection posterior) i)
        (q i)) ≤ budget := by
  classical
  let projected := groupedMass projection posterior
  have hnonnegative (x : ι → V) : 0 ≤ projected x :=
    groupedMass_nonneg projection posterior
      posterior_nonnegative x
  have hnormalized : (∑ x : ι → V, projected x) = 1 := by
    dsimp [projected]
    rw [groupedMass_sum, posterior_normalized]
  have habsolute (x : ι → V) :
      finiteIndependentProductWeight q x = 0 → projected x = 0 := by
    intro hx
    have hprior : groupedMass projection prior x = 0 := by
      rw [actual_prior]
      exact hx
    exact groupedMass_absolute_continuity
      projection posterior prior prior_nonnegative
      absolute_continuity x hprior
  have htensor := finiteProductMarginal_relativeEntropy_le
    projected q hnonnegative hnormalized coordinate_nonnegative
    coordinate_normalized habsolute
  have hdpi := finite_relative_entropy_data_processing
    projection posterior prior posterior_nonnegative prior_nonnegative
    absolute_continuity
  rw [actual_prior] at hdpi
  exact htensor.trans (hdpi.trans actual_budget)

theorem repeatedBobCoordinateInformation_sum_le
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D) :
    (∑ j : Fin n,
      finiteRelativeEntropy
        (finiteCoordinateMarginal
          (repeatedBobPostselectedQuestionLaw G n S D) j)
        G.marginalY) ≤
      postselectionLogCost G n S D := by
  classical
  let posterior := repeatedConditionedOutcomeLaw G n S D
  let prior := (strategyEventLaw (G.repeat n) S).weight
  let projection :=
    fun ω : ExactOutcome X Y A B n => ω.2.1
  let q := fun _ : Fin n => G.marginalY
  have hposterior (ω : ExactOutcome X Y A B n) :
      0 ≤ posterior ω :=
    conditionedEventDistribution_nonneg
      (strategyEventLaw (G.repeat n) S)
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
      positive ω
  have hnormalized :
      (∑ ω : ExactOutcome X Y A B n, posterior ω) = 1 :=
    conditionedEventDistribution_sum
      (strategyEventLaw (G.repeat n) S)
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
      positive
  have hac (ω : ExactOutcome X Y A B n) :
      prior ω = 0 → posterior ω = 0 :=
    conditionedEventDistribution_absolute_continuity
      (strategyEventLaw (G.repeat n) S)
      (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D) ω
  have hprior :
      groupedMass projection prior =
        finiteIndependentProductWeight q := by
    funext ys
    exact repeatedBobQuestionPrior_product G n S ys
  have hbudget :
      finiteRelativeEntropy posterior prior ≤
        postselectionLogCost G n S D := by
    exact le_of_eq
      (repeatedConditionedOutcomeLaw_relativeEntropy
        G n S D positive)
  have h := finiteProductMarginal_projection_relativeEntropy_le
    posterior prior projection q
    (postselectionLogCost G n S D)
    hposterior hnormalized
    (strategyEventLaw (G.repeat n) S).weight_nonneg hac
    (fun j y => G.marginalY_nonneg y)
    (fun j => G.marginalY_normalized)
    hprior hbudget
  have hprojected :
      groupedMass projection posterior =
        repeatedBobPostselectedQuestionLaw G n S D := by
    unfold repeatedBobPostselectedQuestionLaw
    exact exactGroupedMass_decidableEq_irrel _ _ _ _
  rw [hprojected] at h
  exact h

theorem finiteCoordinateMarginal_groupedMass
    {Ω ι V : Type*} [Fintype Ω] [Fintype ι] [Fintype V]
    (projection : Ω → (ι → V)) (mass : Ω → ℝ)
    (i : ι) (v : V) :
    finiteCoordinateMarginal
        (groupedMass projection mass) i v =
      groupedMass (fun ω : Ω => projection ω i) mass v := by
  classical
  let eval : (ι → V) → V := fun x => x i
  have h := congrFun
    (groupedMass_comp projection eval mass) v
  unfold finiteCoordinateMarginal
  have hleft :
      groupedMass (fun x : ι → V => x i)
          (groupedMass projection mass) v =
        @groupedMass (ι → V) inferInstance V
          (fun a b => Classical.propDecidable (a = b))
          eval (groupedMass projection mass) v := by
    exact congrFun
      (exactGroupedMass_decidableEq_irrel _ _
        eval (groupedMass projection mass)) v
  have hright :
      @groupedMass Ω inferInstance V
          (fun a b => Classical.propDecidable (a = b))
          (eval ∘ projection) mass v =
        groupedMass (fun ω : Ω => projection ω i) mass v := by
    exact congrFun
      (exactGroupedMass_decidableEq_irrel _ _
        (fun ω : Ω => projection ω i) mass) v
  exact hleft.trans (h.trans hright)

theorem finiteUniformCoordinate_relativeEntropy
    {ι V : Type*} [Fintype ι] [Fintype V]
    (positive : 0 < Fintype.card ι)
    (posterior : ι → V → ℝ) (prior : V → ℝ) :
    finiteRelativeEntropy
        (fun t : ι × V =>
          (1 / (Fintype.card ι : ℝ)) * posterior t.1 t.2)
        (fun t : ι × V =>
          (1 / (Fintype.card ι : ℝ)) * prior t.2) =
      (1 / (Fintype.card ι : ℝ)) *
        ∑ i : ι, finiteRelativeEntropy (posterior i) prior := by
  classical
  have hcard : (Fintype.card ι : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt positive)
  have huniform : (1 / (Fintype.card ι : ℝ)) ≠ 0 :=
    one_div_ne_zero hcard
  unfold finiteRelativeEntropy
  rw [Fintype.sum_prod_type]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro v _
  rw [mul_div_mul_left _ _ huniform]
  ring

theorem repeatedBobPostselectedQuestionLaw_nonneg
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (positive : 0 < repeatedPostselectionMass G n S D)
    (ys : Fin n → Y) :
    0 ≤ repeatedBobPostselectedQuestionLaw G n S D ys := by
  classical
  unfold repeatedBobPostselectedQuestionLaw
  apply groupedMass_nonneg
  intro ω
  exact conditionedEventDistribution_nonneg
    (strategyEventLaw (G.repeat n) S)
    (FiniteEventLaw.winEvent (repeatedCoordinateWin G n) D)
    positive ω

theorem repeatedBobPostselectedCoordinateMarginal
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n)) (j : Fin n) (y : Y) :
    finiteCoordinateMarginal
        (repeatedBobPostselectedQuestionLaw G n S D) j y =
      groupedMass
        (fun ω : ExactOutcome X Y A B n => ω.2.1 j)
        (repeatedConditionedOutcomeLaw G n S D) y := by
  classical
  let projection :=
    fun ω : ExactOutcome X Y A B n => ω.2.1
  let posterior := repeatedConditionedOutcomeLaw G n S D
  have hlaw :
      repeatedBobPostselectedQuestionLaw G n S D =
        groupedMass projection posterior := by
    unfold repeatedBobPostselectedQuestionLaw
    exact exactGroupedMass_decidableEq_irrel _ _ _ _
  rw [hlaw]
  exact finiteCoordinateMarginal_groupedMass
    projection posterior j y

theorem exactBobSourceMarginalInformation_eq
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D) :
    exactBobSourceMarginalInformation G n S D base =
      (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        ∑ i : SourceRemainingCoordinate D,
          finiteRelativeEntropy
            (finiteCoordinateMarginal
              (repeatedBobPostselectedQuestionLaw G n S D)
              i.val)
            G.marginalY := by
  classical
  let posterior := repeatedBobPostselectedQuestionLaw G n S D
  have hposterior :
      jointFirstMarginal
          (exactBobInformationPosterior G n S D) =
        (fun t : SourceRemainingCoordinate D × Y =>
          (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
            finiteCoordinateMarginal posterior t.1.val t.2) := by
    funext t
    rcases t with ⟨i, y⟩
    rw [exactBobInformationPosterior_firstMarginal]
    congr 1
    exact (repeatedBobPostselectedCoordinateMarginal
      G n S D i.val y).symm
  have hreference :
      jointFirstMarginal
          (exactBobInformationReference G n S D base) =
        (fun t : SourceRemainingCoordinate D × Y =>
          (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
            G.marginalY t.2) := by
    funext t
    rcases t with ⟨i, y⟩
    rw [exactBobInformationReference_firstMarginal]
    change G.marginalY y /
      (Fintype.card (SourceRemainingCoordinate D) : ℝ) = _
    ring
  unfold exactBobSourceMarginalInformation
  rw [hposterior, hreference]
  exact finiteUniformCoordinate_relativeEntropy
    (exactRemainingCoordinate_card_pos D remaining)
    (fun i : SourceRemainingCoordinate D =>
      finiteCoordinateMarginal posterior i.val)
    G.marginalY

theorem sourceRemaining_nonnegative_sum_le
    {n : ℕ} (D : Finset (Fin n)) (f : Fin n → ℝ)
    (nonnegative : ∀ j, 0 ≤ f j) :
    (∑ i : SourceRemainingCoordinate D, f i.val) ≤
      ∑ j : Fin n, f j := by
  classical
  change
    (∑ i ∈ (Finset.univ \ D).attach, f i.val) ≤
      ∑ j : Fin n, f j
  rw [Finset.sum_attach]
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (Finset.subset_univ (Finset.univ \ D))
    (fun j _ _ => nonnegative j)

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
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D) :
    exactBobSourceMarginalInformation G n S D base ≤
      postselectionLogCost G n S D /
        ((Finset.univ \ D).card : ℝ) := by
  classical
  let posterior := repeatedBobPostselectedQuestionLaw G n S D
  let coordinateInfo : Fin n → ℝ := fun j =>
    finiteRelativeEntropy
      (finiteCoordinateMarginal posterior j) G.marginalY
  have hnonnegative (j : Fin n) : 0 ≤ coordinateInfo j := by
    exact finiteRelativeEntropy_nonneg
      (finiteCoordinateMarginal posterior j) G.marginalY
      (fun y => finiteCoordinateMarginal_nonneg
        posterior
        (repeatedBobPostselectedQuestionLaw_nonneg
          G n S D positive) j y)
      G.marginalY_nonneg
  have hremaining :
      (∑ i : SourceRemainingCoordinate D, coordinateInfo i.val) ≤
        postselectionLogCost G n S D := by
    exact
      (sourceRemaining_nonnegative_sum_le
        D coordinateInfo hnonnegative).trans
      (repeatedBobCoordinateInformation_sum_le
        G n S D positive)
  have hcard :
      Fintype.card (SourceRemainingCoordinate D) =
        (Finset.univ \ D).card := by
    simp
  calc
    exactBobSourceMarginalInformation G n S D base =
      (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        ∑ i : SourceRemainingCoordinate D, coordinateInfo i.val :=
      exactBobSourceMarginalInformation_eq
        G n S D remaining base
    _ ≤ (1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        postselectionLogCost G n S D := by
      exact mul_le_mul_of_nonneg_left hremaining
        (one_div_nonneg.mpr (Nat.cast_nonneg _))
    _ = postselectionLogCost G n S D /
        ((Finset.univ \ D).card : ℝ) := by
      rw [hcard]
      ring
