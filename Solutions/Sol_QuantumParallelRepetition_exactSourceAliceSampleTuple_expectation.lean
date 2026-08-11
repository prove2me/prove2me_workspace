import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_23
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Max
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Fin
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Set.Defs
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Basic
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Order.Defs.LinearOrder
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Fin.Basic
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

namespace ClassicalSampling

variable {α : Type*} [Fintype α] [DecidableEq α]

theorem markedFirst_mem (rank : α ≃ Fin (Fintype.card α))
    (marked : Finset α) (nonempty : marked.Nonempty)
    (permutation : Equiv.Perm α) :
    markedFirst rank marked nonempty permutation ∈ marked := by
  have hmin := (marked.image (fun a => rank (permutation a))).min'_mem
    (nonempty.image (fun a => rank (permutation a)))
  obtain ⟨a, ha, heq⟩ := Finset.mem_image.mp hmin
  simpa [markedFirst, ← heq] using ha

theorem markedFirst_rank (rank : α ≃ Fin (Fintype.card α))
    (marked : Finset α) (nonempty : marked.Nonempty)
    (permutation : Equiv.Perm α) :
    rank (permutation (markedFirst rank marked nonempty permutation)) =
      (marked.image (fun a => rank (permutation a))).min'
        (nonempty.image (fun a => rank (permutation a))) := by
  simp [markedFirst]

theorem markedFirst_rank_le (rank : α ≃ Fin (Fintype.card α))
    (marked : Finset α) (nonempty : marked.Nonempty)
    (permutation : Equiv.Perm α) {a : α} (ha : a ∈ marked) :
    rank (permutation (markedFirst rank marked nonempty permutation)) ≤
      rank (permutation a) := by
  rw [markedFirst_rank]
  exact Finset.min'_le _ _ (Finset.mem_image.mpr ⟨a, ha, rfl⟩)

theorem markedFirst_eq_of_mem_of_rank_le
    (rank : α ≃ Fin (Fintype.card α))
    (marked : Finset α) (nonempty : marked.Nonempty)
    (permutation : Equiv.Perm α) {a : α} (ha : a ∈ marked)
    (hle : ∀ b ∈ marked, rank (permutation a) ≤ rank (permutation b)) :
    markedFirst rank marked nonempty permutation = a := by
  apply permutation.injective
  apply rank.injective
  exact le_antisymm
    (markedFirst_rank_le rank marked nonempty permutation ha)
    (hle _ (markedFirst_mem rank marked nonempty permutation))

theorem swap_mem_iff_of_mem {marked : Finset α} {x y : α}
    (hx : x ∈ marked) (hy : y ∈ marked) (a : α) :
    Equiv.swap x y a ∈ marked ↔ a ∈ marked := by
  by_cases hax : a = x
  · subst a
    simp [hx, hy]
  · by_cases hay : a = y
    · subst a
      simp [hx, hy]
    · rw [Equiv.swap_apply_of_ne_of_ne hax hay]

theorem markedFirst_swap_trans
    (rank : α ≃ Fin (Fintype.card α))
    (marked : Finset α) (nonempty : marked.Nonempty)
    {x y : α} (hx : x ∈ marked) (hy : y ∈ marked)
    (permutation : Equiv.Perm α) :
    markedFirst rank marked nonempty ((Equiv.swap x y).trans permutation) =
      Equiv.swap x y (markedFirst rank marked nonempty permutation) := by
  apply markedFirst_eq_of_mem_of_rank_le
    rank marked nonempty ((Equiv.swap x y).trans permutation)
  · exact (swap_mem_iff_of_mem hx hy _).mpr
      (markedFirst_mem rank marked nonempty permutation)
  · intro a ha
    have hminimal := markedFirst_rank_le rank marked nonempty permutation
      ((swap_mem_iff_of_mem hx hy a).mpr ha)
    simpa [Equiv.trans_apply] using hminimal

theorem firstFiber_card_eq
    (rank : α ≃ Fin (Fintype.card α))
    (marked : Finset α) (nonempty : marked.Nonempty)
    {x y : α} (hx : x ∈ marked) (hy : y ∈ marked) :
    (firstFiber rank marked nonempty x).card =
      (firstFiber rank marked nonempty y).card := by
  classical
  refine Finset.card_bij'
    (fun permutation _ => (Equiv.swap x y).trans permutation)
    (fun permutation _ => (Equiv.swap x y).trans permutation)
    ?_ ?_ ?_ ?_
  · intro permutation hpermutation
    have hfirst : markedFirst rank marked nonempty permutation = x :=
      (Finset.mem_filter.mp hpermutation).2
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ _, ?_⟩
    rw [markedFirst_swap_trans rank marked nonempty hx hy permutation,
      hfirst, Equiv.swap_apply_left]
  · intro permutation hpermutation
    have hfirst : markedFirst rank marked nonempty permutation = y :=
      (Finset.mem_filter.mp hpermutation).2
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ _, ?_⟩
    rw [markedFirst_swap_trans rank marked nonempty hx hy permutation,
      hfirst, Equiv.swap_apply_right]
  · intro permutation _
    ext a
    simp [Equiv.trans_apply]
  · intro permutation _
    ext a
    simp [Equiv.trans_apply]

theorem markedFirst_event_card_mul
    (rank : α ≃ Fin (Fintype.card α))
    (marked : Finset α) (nonempty : marked.Nonempty)
    (event : Finset α) (hevent : event ⊆ marked) :
    (Finset.univ.filter fun permutation : Equiv.Perm α =>
        markedFirst rank marked nonempty permutation ∈ event).card *
        marked.card =
      event.card * Fintype.card (Equiv.Perm α) := by
  classical
  obtain ⟨base, hbase⟩ := nonempty
  have hevent_card :
      (Finset.univ.filter fun permutation : Equiv.Perm α =>
          markedFirst rank marked ⟨base, hbase⟩ permutation ∈ event).card =
        event.card * (firstFiber rank marked ⟨base, hbase⟩ base).card := by
    calc
      (Finset.univ.filter fun permutation : Equiv.Perm α =>
          markedFirst rank marked ⟨base, hbase⟩ permutation ∈ event).card =
          ∑ a ∈ event,
            (firstFiber rank marked ⟨base, hbase⟩ a).card := by
              symm
              simpa [firstFiber] using
                (Finset.sum_card_fiberwise_eq_card_filter
                  (Finset.univ : Finset (Equiv.Perm α)) event
                  (markedFirst rank marked ⟨base, hbase⟩))
      _ = event.card * (firstFiber rank marked ⟨base, hbase⟩ base).card :=
        Finset.sum_const_nat fun a ha =>
          firstFiber_card_eq rank marked ⟨base, hbase⟩ (hevent ha) hbase
  have htotal_card :
      Fintype.card (Equiv.Perm α) =
        marked.card * (firstFiber rank marked ⟨base, hbase⟩ base).card := by
    calc
      Fintype.card (Equiv.Perm α) =
          (Finset.univ : Finset (Equiv.Perm α)).card := by simp
      _ = ∑ a ∈ marked,
            (firstFiber rank marked ⟨base, hbase⟩ a).card := by
              simpa [firstFiber] using
                (Finset.card_eq_sum_card_fiberwise
                  (f := markedFirst rank marked ⟨base, hbase⟩)
                  (s := (Finset.univ : Finset (Equiv.Perm α)))
                  (t := marked)
                  (fun permutation _ =>
                    markedFirst_mem rank marked ⟨base, hbase⟩ permutation))
      _ = marked.card * (firstFiber rank marked ⟨base, hbase⟩ base).card :=
        Finset.sum_const_nat fun a ha =>
          firstFiber_card_eq rank marked ⟨base, hbase⟩ ha hbase
  change
    (Finset.univ.filter fun permutation : Equiv.Perm α =>
        markedFirst rank marked ⟨base, hbase⟩ permutation ∈ event).card *
        marked.card =
      event.card * Fintype.card (Equiv.Perm α)
  rw [hevent_card, htotal_card]
  ac_rfl

theorem markedFirst_event_probability
    (rank : α ≃ Fin (Fintype.card α))
    (marked : Finset α) (nonempty : marked.Nonempty)
    (event : Finset α) (hevent : event ⊆ marked) :
    uniformPermutationProbability
      (fun permutation : Equiv.Perm α =>
        markedFirst rank marked nonempty permutation ∈ event) =
      (event.card : ℝ) / marked.card := by
  classical
  have hpermutation : 0 < (Fintype.card (Equiv.Perm α) : ℝ) := by
    exact_mod_cast
      (Fintype.card_pos_iff.mpr ⟨Equiv.refl α⟩ :
        0 < Fintype.card (Equiv.Perm α))
  have hmarked : 0 < (marked.card : ℝ) := by
    exact_mod_cast (Finset.card_pos.mpr nonempty : 0 < marked.card)
  unfold uniformPermutationProbability
  apply (div_eq_div_iff hpermutation.ne' hmarked.ne').mpr
  have hcount := markedFirst_event_card_mul
    rank marked nonempty event hevent
  have hreal :
      ((Finset.univ.filter fun permutation : Equiv.Perm α =>
        markedFirst rank marked nonempty permutation ∈ event).card : ℝ) *
          (marked.card : ℝ) =
        (event.card : ℝ) * (Fintype.card (Equiv.Perm α) : ℝ) := by
    exact_mod_cast hcount
  simpa only [] using hreal

section RationalMarks

variable {β : Type*} [Fintype β] [DecidableEq β]

theorem rationalMarked_fiber_card
    (denominator : ℕ) (numerator : β → ℕ) (letter : β) :
    ((rationalMarked denominator numerator).filter
      fun point => point.1 = letter).card =
        min denominator (numerator letter) := by
  classical
  calc
    ((rationalMarked denominator numerator).filter
      fun point => point.1 = letter).card =
        (Finset.univ.filter fun copy : Fin denominator =>
          copy.val < numerator letter).card := by
      refine Finset.card_bij'
        (fun point _ => point.2)
        (fun copy _ => (letter, copy))
        ?_ ?_ ?_ ?_
      · intro point hpoint
        have hpoint' :
            point.2.val < numerator point.1 ∧ point.1 = letter := by
          simpa [rationalMarked] using hpoint
        apply Finset.mem_filter.mpr
        exact ⟨Finset.mem_univ _, by simpa [hpoint'.2] using hpoint'.1⟩
      · intro copy hcopy
        have hcopy' : copy.val < numerator letter :=
          (Finset.mem_filter.mp hcopy).2
        simp [rationalMarked, hcopy']
      · intro point hpoint
        have hletter : point.1 = letter :=
          (Finset.mem_filter.mp hpoint).2
        apply Prod.ext
        · exact hletter.symm
        · rfl
      · intro copy _
        rfl
    _ = min denominator (numerator letter) := by
      simpa using
        (Fin.card_filter_val_lt (n := denominator)
          (m := numerator letter))

theorem rationalNumerator_le_denominator
    (denominator : ℕ) (numerator : β → ℕ)
    (normalized : (∑ letter, numerator letter) = denominator)
    (letter : β) : numerator letter ≤ denominator := by
  rw [← normalized]
  exact Finset.single_le_sum
    (fun a _ => Nat.zero_le (numerator a)) (Finset.mem_univ letter)

theorem rationalMarked_card
    (denominator : ℕ) (numerator : β → ℕ)
    (normalized : (∑ letter, numerator letter) = denominator) :
    (rationalMarked denominator numerator).card = denominator := by
  classical
  calc
    (rationalMarked denominator numerator).card =
        ∑ letter : β,
          ((rationalMarked denominator numerator).filter
            fun point => point.1 = letter).card := by
      simpa using
        (Finset.card_eq_sum_card_fiberwise
          (f := fun point : β × Fin denominator => point.1)
          (s := rationalMarked denominator numerator)
          (t := (Finset.univ : Finset β))
          (fun _ _ => Finset.mem_univ _))
    _ = ∑ letter : β, numerator letter := by
      apply Finset.sum_congr rfl
      intro letter _
      rw [rationalMarked_fiber_card]
      exact min_eq_right
        (rationalNumerator_le_denominator denominator numerator normalized letter)
    _ = denominator := normalized

theorem rationalMarked_letter_probability
    (denominator : ℕ) (numerator : β → ℕ)
    (normalized : (∑ letter, numerator letter) = denominator)
    (nonempty : (rationalMarked denominator numerator).Nonempty)
    (rank : (β × Fin denominator) ≃
      Fin (Fintype.card (β × Fin denominator)))
    (letter : β) :
    uniformPermutationProbability
      (fun permutation : Equiv.Perm (β × Fin denominator) =>
        (markedFirst rank (rationalMarked denominator numerator)
          nonempty permutation).1 = letter) =
      (numerator letter : ℝ) / denominator := by
  classical
  let marked := rationalMarked denominator numerator
  let event := marked.filter fun point => point.1 = letter
  have hsub : event ⊆ marked := Finset.filter_subset _ _
  calc
    uniformPermutationProbability
        (fun permutation : Equiv.Perm (β × Fin denominator) =>
          (markedFirst rank marked nonempty permutation).1 = letter) =
        uniformPermutationProbability
          (fun permutation : Equiv.Perm (β × Fin denominator) =>
            markedFirst rank marked nonempty permutation ∈ event) := by
      congr 1
      funext permutation
      apply propext
      simp [event, markedFirst_mem rank marked nonempty permutation]
    _ = (event.card : ℝ) / marked.card :=
      markedFirst_event_probability rank marked nonempty event hsub
    _ = (numerator letter : ℝ) / denominator := by
      change
        (((rationalMarked denominator numerator).filter
          fun point => point.1 = letter).card : ℝ) /
          (rationalMarked denominator numerator).card =
        (numerator letter : ℝ) / denominator
      rw [rationalMarked_fiber_card,
        min_eq_right
          (rationalNumerator_le_denominator
            denominator numerator normalized letter),
        rationalMarked_card denominator numerator normalized]

end RationalMarks

end ClassicalSampling

namespace ClassicalInformation

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

section SharedPermutationSampling

theorem rationalPermutationOutput_probability
    (denominator : ℕ) (numerator : ι → ℕ)
    (normalized : (∑ i, numerator i) = denominator)
    (nonempty : (rationalMarked denominator numerator).Nonempty)
    (letter : ι) :
    uniformPermutationProbability
        (fun permutation : Equiv.Perm (ι × Fin denominator) =>
          rationalPermutationOutput denominator numerator
            nonempty permutation = letter) =
      (numerator letter : ℝ) / denominator := by
  exact rationalMarked_letter_probability denominator numerator normalized
    nonempty (Fintype.equivFin (ι × Fin denominator)) letter

end SharedPermutationSampling

end ClassicalInformation

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1500000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactUniformPermutationProbability_eq_indicator_sum
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (event : Equiv.Perm ι → Prop) :
    uniformPermutationProbability event =
      (∑ permutation : Equiv.Perm ι,
        if event permutation then (1 : ℝ) else 0) /
        (Fintype.card (Equiv.Perm ι) : ℝ) := by
  classical
  unfold uniformPermutationProbability
  congr 1
  exact (Finset.sum_boole (R := ℝ) event
    (Finset.univ : Finset (Equiv.Perm ι))).symm

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

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactPermutationOutputUniformPushforward
    {R : Type*} [Fintype R] [DecidableEq R]
    (denominator : ℕ) (numerator : R → ℕ)
    (normalized : (∑ r, numerator r) = denominator)
    (nonempty : (rationalMarked denominator numerator).Nonempty)
    (letter : R) :
    groupedMass
        (rationalPermutationOutput denominator numerator nonempty)
        (fun _ : Equiv.Perm (R × Fin denominator) =>
          (1 : ℝ) / (Fintype.card
            (Equiv.Perm (R × Fin denominator)) : ℝ)) letter =
      (numerator letter : ℝ) / denominator := by
  classical
  calc
    groupedMass
        (rationalPermutationOutput denominator numerator nonempty)
        (fun _ : Equiv.Perm (R × Fin denominator) =>
          (1 : ℝ) / (Fintype.card
            (Equiv.Perm (R × Fin denominator)) : ℝ)) letter =
      uniformPermutationProbability
        (fun permutation : Equiv.Perm (R × Fin denominator) =>
          rationalPermutationOutput denominator numerator nonempty
            permutation = letter) := by
        rw [exactUniformPermutationProbability_eq_indicator_sum]
        unfold groupedMass
        rw [Finset.sum_filter, Finset.sum_div]
        apply Finset.sum_congr rfl
        intro permutation _
        by_cases selected :
          rationalPermutationOutput denominator numerator nonempty
            permutation = letter
        · simp [selected]
        · simp [selected]
    _ = (numerator letter : ℝ) / denominator :=
      rationalPermutationOutput_probability denominator numerator
        normalized nonempty letter

theorem exactPermutationOutputUniformExpectation
    {R : Type*} [Fintype R] [DecidableEq R]
    (denominator : ℕ) (numerator : R → ℕ)
    (normalized : (∑ r, numerator r) = denominator)
    (nonempty : (rationalMarked denominator numerator).Nonempty)
    (value : R → ℝ) :
    (∑ permutation : Equiv.Perm (R × Fin denominator),
      ((1 : ℝ) /
        (Fintype.card (Equiv.Perm (R × Fin denominator)) : ℝ)) *
          value (rationalPermutationOutput denominator numerator
            nonempty permutation)) =
      ∑ letter : R, ((numerator letter : ℝ) / denominator) *
        value letter := by
  calc
    (∑ permutation : Equiv.Perm (R × Fin denominator),
      ((1 : ℝ) /
        (Fintype.card (Equiv.Perm (R × Fin denominator)) : ℝ)) *
          value (rationalPermutationOutput denominator numerator
            nonempty permutation)) =
      ∑ letter : R,
        groupedMass
          (rationalPermutationOutput denominator numerator nonempty)
          (fun _ : Equiv.Perm (R × Fin denominator) =>
            (1 : ℝ) /
              (Fintype.card (Equiv.Perm
                (R × Fin denominator)) : ℝ)) letter * value letter :=
        (finiteGroupedExpectation_eq_atom_sum
          (rationalPermutationOutput denominator numerator nonempty)
          (fun _ : Equiv.Perm (R × Fin denominator) =>
            (1 : ℝ) /
              (Fintype.card (Equiv.Perm
                (R × Fin denominator)) : ℝ)) value).symm
    _ = ∑ letter : R,
      ((numerator letter : ℝ) / denominator) * value letter := by
        simp_rw [exactPermutationOutputUniformPushforward
          denominator numerator normalized nonempty]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1600000
set_option maxRecDepth 2048
open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ k, (∑ r, numerator k r) = denominator)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty)
    (value : ExactLocallySampleableTuple X Y A B D → ℝ) :
    (∑ outcome :
      ExactSourceSharedFlag X Y A B D denominator × (X × Y),
      flaggedQuestionWeight G
        (exactSourceSharedFlagWeight D denominator) outcome *
          value (exactSourceAliceSampleTuple
            D denominator numerator nonempty outcome)) =
      ∑ history : ExactLocallySampleableTuple X Y A B D,
        exactLocallySampleableJARounded
          G n D denominator numerator history * value history := by
  classical
  have point (coordinate : SourceRemainingCoordinate D)
      (x : X) (y : Y) :
      (∑ permutation :
        Equiv.Perm
          (ExactHistoryFlag X Y A B D × Fin denominator),
        ((1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
          (1 / (Fintype.card
            (Equiv.Perm
              (ExactHistoryFlag X Y A B D ×
                Fin denominator)) : ℝ))) *
          G.questionWeight x y *
          value (coordinate, x, y,
            rationalPermutationOutput denominator
              (numerator (.inl (coordinate, x)))
              (nonempty (.inl (coordinate, x))) permutation)) =
        ∑ history : ExactHistoryFlag X Y A B D,
          (G.questionWeight x y *
            ((numerator (.inl (coordinate, x)) history : ℝ) /
              denominator) /
              (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
            value (coordinate, x, y, history) := by
    have output := exactPermutationOutputUniformExpectation
      denominator (numerator (.inl (coordinate, x)))
      (normalized (.inl (coordinate, x)))
      (nonempty (.inl (coordinate, x)))
      (fun history : ExactHistoryFlag X Y A B D =>
        value (coordinate, x, y, history))
    calc
      (∑ permutation :
        Equiv.Perm
          (ExactHistoryFlag X Y A B D × Fin denominator),
        ((1 / (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
          (1 / (Fintype.card
            (Equiv.Perm
              (ExactHistoryFlag X Y A B D ×
                Fin denominator)) : ℝ))) *
          G.questionWeight x y *
          value (coordinate, x, y,
            rationalPermutationOutput denominator
              (numerator (.inl (coordinate, x)))
              (nonempty (.inl (coordinate, x))) permutation)) =
        (G.questionWeight x y /
          (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
          (∑ permutation :
            Equiv.Perm
              (ExactHistoryFlag X Y A B D × Fin denominator),
            ((1 : ℝ) /
              (Fintype.card
                (Equiv.Perm
                  (ExactHistoryFlag X Y A B D ×
                    Fin denominator)) : ℝ)) *
              value (coordinate, x, y,
                rationalPermutationOutput denominator
                  (numerator (.inl (coordinate, x)))
                  (nonempty (.inl (coordinate, x))) permutation)) := by
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro permutation _
            ring
      _ = (G.questionWeight x y /
          (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
          (∑ history : ExactHistoryFlag X Y A B D,
            ((numerator (.inl (coordinate, x)) history : ℝ) /
              denominator) * value (coordinate, x, y, history)) := by
            rw [output]
      _ = ∑ history : ExactHistoryFlag X Y A B D,
          (G.questionWeight x y *
            ((numerator (.inl (coordinate, x)) history : ℝ) /
              denominator) /
              (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
            value (coordinate, x, y, history) := by
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro history _
            ring
  simp only [flaggedQuestionWeight,
    exactSourceSharedFlagWeight,
    exactSourceAliceSampleTuple,
    exactSourceAlicePermutationHistory,
    exactLocallySampleableJARounded,
    Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro coordinate _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro x _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro y _
  exact point coordinate x y
