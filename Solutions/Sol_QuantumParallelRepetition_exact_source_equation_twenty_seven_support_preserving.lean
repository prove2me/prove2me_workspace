import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_24
import Theorems.Thm_QuantumParallelRepetition_exact_exists_support_preserving_local_shared_permutation
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Basic
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Order.Group.Abs
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Defs
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Defs
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
import Mathlib.Data.Finset.Disjoint
import Mathlib.Data.Finset.Empty
import Mathlib.Data.Finset.Filter
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Data.Finset.Max
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Fin
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
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
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Nat.Init
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
import Mathlib.Order.Disjoint
import Mathlib.Order.Fin.Basic
import Mathlib.Order.Lattice
import Mathlib.Tactic.FieldSimp.Lemmas
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Eq
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Positivity.Core
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

theorem markedFirst_subset_eq_of_mem
    (rank : α ≃ Fin (Fintype.card α))
    {small large : Finset α}
    (hsmall : small.Nonempty) (hlarge : large.Nonempty)
    (permutation : Equiv.Perm α)
    (hsub : small ⊆ large)
    (hmem : markedFirst rank large hlarge permutation ∈ small) :
    markedFirst rank small hsmall permutation =
      markedFirst rank large hlarge permutation := by
  apply markedFirst_eq_of_mem_of_rank_le rank small hsmall permutation hmem
  intro a ha
  exact markedFirst_rank_le rank large hlarge permutation (hsub ha)

theorem markedFirst_eq_iff_union_first_mem_inter
    (rank : α ≃ Fin (Fintype.card α))
    (left right : Finset α)
    (hleft : left.Nonempty) (hright : right.Nonempty)
    (permutation : Equiv.Perm α) :
    markedFirst rank left hleft permutation =
        markedFirst rank right hright permutation ↔
      markedFirst rank (left ∪ right) (hleft.mono Finset.subset_union_left)
          permutation ∈ left ∩ right := by
  let hunion : (left ∪ right).Nonempty :=
    hleft.mono Finset.subset_union_left
  constructor
  · intro hagree
    have hfirst :
        markedFirst rank (left ∪ right) hunion permutation =
          markedFirst rank left hleft permutation := by
      apply markedFirst_eq_of_mem_of_rank_le
        rank (left ∪ right) hunion permutation
      · exact Finset.mem_union_left right
          (markedFirst_mem rank left hleft permutation)
      · intro a ha
        rcases Finset.mem_union.mp ha with ha | ha
        · exact markedFirst_rank_le rank left hleft permutation ha
        · rw [hagree]
          exact markedFirst_rank_le rank right hright permutation ha
    apply Finset.mem_inter.mpr
    constructor
    · rw [hfirst]
      exact markedFirst_mem rank left hleft permutation
    · rw [hfirst, hagree]
      exact markedFirst_mem rank right hright permutation
  · intro hcommon
    have hleft' := markedFirst_subset_eq_of_mem
      rank hleft hunion permutation Finset.subset_union_left
      (Finset.mem_inter.mp hcommon).1
    have hright' := markedFirst_subset_eq_of_mem
      rank hright hunion permutation Finset.subset_union_right
      (Finset.mem_inter.mp hcommon).2
    exact hleft'.trans hright'.symm

theorem markedFirst_ne_iff_union_first_mem_symmDiff
    (rank : α ≃ Fin (Fintype.card α))
    (left right : Finset α)
    (hleft : left.Nonempty) (hright : right.Nonempty)
    (permutation : Equiv.Perm α) :
    markedFirst rank left hleft permutation ≠
        markedFirst rank right hright permutation ↔
      markedFirst rank (left ∪ right) (hleft.mono Finset.subset_union_left)
          permutation ∈ (left \ right) ∪ (right \ left) := by
  let hunion : (left ∪ right).Nonempty :=
    hleft.mono Finset.subset_union_left
  let a := markedFirst rank (left ∪ right) hunion permutation
  have ha : a ∈ left ∪ right :=
    markedFirst_mem rank (left ∪ right) hunion permutation
  have hagree := markedFirst_eq_iff_union_first_mem_inter
    rank left right hleft hright permutation
  change markedFirst rank left hleft permutation ≠
      markedFirst rank right hright permutation ↔
    a ∈ (left \ right) ∪ (right \ left)
  constructor
  · intro hne
    have hninter : a ∉ left ∩ right := by
      intro hinter
      exact hne (hagree.mpr hinter)
    rcases Finset.mem_union.mp ha with hla | hra
    · apply Finset.mem_union_left
      exact Finset.mem_sdiff.mpr
        ⟨hla, fun hright' => hninter (Finset.mem_inter.mpr ⟨hla, hright'⟩)⟩
    · apply Finset.mem_union_right
      exact Finset.mem_sdiff.mpr
        ⟨hra, fun hleft' => hninter (Finset.mem_inter.mpr ⟨hleft', hra⟩)⟩
  · intro hdiff heq
    have hinter : a ∈ left ∩ right := hagree.mp heq
    rcases Finset.mem_union.mp hdiff with hdiff | hdiff
    · exact (Finset.mem_sdiff.mp hdiff).2 (Finset.mem_inter.mp hinter).2
    · exact (Finset.mem_sdiff.mp hdiff).2 (Finset.mem_inter.mp hinter).1

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

theorem sharedPermutation_disagreement_card_mul
    (rank : α ≃ Fin (Fintype.card α))
    (left right : Finset α)
    (hleft : left.Nonempty) (hright : right.Nonempty) :
    (Finset.univ.filter fun permutation : Equiv.Perm α =>
        markedFirst rank left hleft permutation ≠
          markedFirst rank right hright permutation).card *
        (left ∪ right).card =
      ((left \ right) ∪ (right \ left)).card *
        Fintype.card (Equiv.Perm α) := by
  classical
  let hunion : (left ∪ right).Nonempty :=
    hleft.mono Finset.subset_union_left
  have hsubset : (left \ right) ∪ (right \ left) ⊆ left ∪ right := by
    intro a ha
    rcases Finset.mem_union.mp ha with ha | ha
    · exact Finset.mem_union_left right (Finset.mem_sdiff.mp ha).1
    · exact Finset.mem_union_right left (Finset.mem_sdiff.mp ha).1
  have hfilter :
      (Finset.univ.filter fun permutation : Equiv.Perm α =>
        markedFirst rank left hleft permutation ≠
          markedFirst rank right hright permutation) =
      (Finset.univ.filter fun permutation : Equiv.Perm α =>
        markedFirst rank (left ∪ right) hunion permutation ∈
          (left \ right) ∪ (right \ left)) := by
    ext permutation
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    exact markedFirst_ne_iff_union_first_mem_symmDiff
      rank left right hleft hright permutation
  rw [hfilter]
  exact markedFirst_event_card_mul rank (left ∪ right) hunion
    ((left \ right) ∪ (right \ left)) hsubset

theorem sharedPermutation_disagreement_probability
    (rank : α ≃ Fin (Fintype.card α))
    (left right : Finset α)
    (hleft : left.Nonempty) (hright : right.Nonempty) :
    uniformPermutationProbability
      (fun permutation : Equiv.Perm α =>
        markedFirst rank left hleft permutation ≠
          markedFirst rank right hright permutation) =
      (((left \ right) ∪ (right \ left)).card : ℝ) /
        (left ∪ right).card := by
  classical
  have hpermutation : 0 < (Fintype.card (Equiv.Perm α) : ℝ) := by
    exact_mod_cast
      (Fintype.card_pos_iff.mpr ⟨Equiv.refl α⟩ :
        0 < Fintype.card (Equiv.Perm α))
  have hunion : 0 < ((left ∪ right).card : ℝ) := by
    exact_mod_cast
      (Finset.card_pos.mpr
        (hleft.mono Finset.subset_union_left) :
        0 < (left ∪ right).card)
  unfold uniformPermutationProbability
  apply (div_eq_div_iff hpermutation.ne' hunion.ne').mpr
  exact_mod_cast
    sharedPermutation_disagreement_card_mul rank left right hleft hright

theorem sharedPermutation_disagreement_probability_le
    (rank : α ≃ Fin (Fintype.card α))
    (left right : Finset α)
    (hleft : left.Nonempty) (hright : right.Nonempty) :
    uniformPermutationProbability
      (fun permutation : Equiv.Perm α =>
        markedFirst rank left hleft permutation ≠
          markedFirst rank right hright permutation) ≤
      (((left \ right) ∪ (right \ left)).card : ℝ) / left.card := by
  rw [sharedPermutation_disagreement_probability
    rank left right hleft hright]
  apply div_le_div_of_nonneg_left
  · positivity
  · exact_mod_cast (Finset.card_pos.mpr hleft : 0 < left.card)
  · exact_mod_cast (Finset.card_le_card Finset.subset_union_left :
      left.card ≤ (left ∪ right).card)

theorem sharedPermutation_disagreement_probability_le_two_mul_tv
    (rank : α ≃ Fin (Fintype.card α))
    (left right : Finset α)
    (hleft : left.Nonempty) (hright : right.Nonempty)
    (_equal_card : left.card = right.card) :
    uniformPermutationProbability
      (fun permutation : Equiv.Perm α =>
        markedFirst rank left hleft permutation ≠
          markedFirst rank right hright permutation) ≤
      2 * markedTotalVariation left right := by
  calc
    uniformPermutationProbability
        (fun permutation : Equiv.Perm α =>
          markedFirst rank left hleft permutation ≠
            markedFirst rank right hright permutation) ≤
        (((left \ right) ∪ (right \ left)).card : ℝ) / left.card :=
      sharedPermutation_disagreement_probability_le
        rank left right hleft hright
    _ = 2 * markedTotalVariation left right := by
      unfold markedTotalVariation
      have hcard : (left.card : ℝ) ≠ 0 := by
        exact_mod_cast (Finset.card_ne_zero.mpr hleft)
      field_simp

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

end RationalMarks

end ClassicalSampling

namespace ClassicalInformation

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

section SharedPermutationSampling

theorem rationalMarked_inter
    (denominator : ℕ) (left right : ι → ℕ) :
    rationalMarked denominator left ∩ rationalMarked denominator right =
      rationalMarked denominator (fun i => min (left i) (right i)) := by
  ext point
  simp [rationalMarked]

theorem rationalMarked_inter_card
    (denominator : ℕ) (left right : ι → ℕ)
    (hleft : (∑ i, left i) = denominator)
    (_hright : (∑ i, right i) = denominator) :
    (rationalMarked denominator left ∩
      rationalMarked denominator right).card =
        ∑ i : ι, min (left i) (right i) := by
  rw [rationalMarked_inter]
  calc
    (rationalMarked denominator
        (fun i => min (left i) (right i))).card =
      ∑ i : ι,
        ((rationalMarked denominator
          (fun i => min (left i) (right i))).filter
            fun point => point.1 = i).card := by
      simpa using
        (Finset.card_eq_sum_card_fiberwise
          (f := fun point : ι × Fin denominator => point.1)
          (s := rationalMarked denominator
            (fun i => min (left i) (right i)))
          (t := (Finset.univ : Finset ι))
          (fun _ _ => Finset.mem_univ _))
    _ = ∑ i : ι, min (left i) (right i) := by
      apply Finset.sum_congr rfl
      intro i _
      rw [rationalMarked_fiber_card, min_eq_right]
      exact (min_le_left (left i) (right i)).trans
        (rationalNumerator_le_denominator
          denominator left hleft i)

theorem rationalMarked_markedTotalVariation_eq
    (denominator : ℕ) (positive : 0 < denominator)
    (left right : ι → ℕ)
    (hleft : (∑ i, left i) = denominator)
    (hright : (∑ i, right i) = denominator) :
    markedTotalVariation
        (rationalMarked denominator left)
        (rationalMarked denominator right) =
      finiteTotalVariation
        (fun i => (left i : ℝ) / denominator)
        (fun i => (right i : ℝ) / denominator) := by
  let L := rationalMarked denominator left
  let R := rationalMarked denominator right
  have hL : L.card = denominator :=
    rationalMarked_card denominator left hleft
  have hR : R.card = denominator :=
    rationalMarked_card denominator right hright
  have hI :
      ((L ∩ R).card : ℝ) =
        ∑ i : ι, (min (left i) (right i) : ℝ) := by
    change
      (((rationalMarked denominator left ∩
        rationalMarked denominator right).card : ℕ) : ℝ) =
        ∑ i : ι, (min (left i) (right i) : ℝ)
    rw [rationalMarked_inter_card denominator left right hleft hright,
      Nat.cast_sum]
    simp only [Nat.cast_min]
  have hdisjoint : Disjoint (L \ R) (R \ L) := by
    apply Finset.disjoint_left.mpr
    intro point hpoint_left hpoint_right
    exact (Finset.mem_sdiff.mp hpoint_left).2
      (Finset.mem_sdiff.mp hpoint_right).1
  have hunion :
      (((L \ R) ∪ (R \ L)).card : ℝ) =
        ((L \ R).card : ℝ) + ((R \ L).card : ℝ) := by
    exact_mod_cast (Finset.card_union_of_disjoint hdisjoint)
  have hleft_difference :
      ((L \ R).card : ℝ) + ((L ∩ R).card : ℝ) =
        (L.card : ℝ) := by
    exact_mod_cast (Finset.card_sdiff_add_card_inter L R)
  have hright_difference :
      ((R \ L).card : ℝ) + ((L ∩ R).card : ℝ) =
        (R.card : ℝ) := by
    have h := Finset.card_sdiff_add_card_inter R L
    rw [Finset.inter_comm R L] at h
    exact_mod_cast h
  have hsymmetric :
      (((L \ R) ∪ (R \ L)).card : ℝ) =
        (denominator : ℝ) + denominator -
          2 * ∑ i : ι, (min (left i) (right i) : ℝ) := by
    have hLreal : (L.card : ℝ) = denominator := by exact_mod_cast hL
    have hRreal : (R.card : ℝ) = denominator := by exact_mod_cast hR
    linarith
  have hpointwise : ∀ i : ι,
      |(left i : ℝ) / denominator -
        (right i : ℝ) / denominator| =
        ((left i : ℝ) + right i -
          2 * (min (left i) (right i) : ℝ)) / denominator := by
    intro i
    rw [← sub_div, abs_div]
    have hdenominator_abs : |(denominator : ℝ)| = denominator :=
      abs_of_nonneg (Nat.cast_nonneg denominator)
    rw [hdenominator_abs]
    by_cases horder : left i ≤ right i
    · have hreal : (left i : ℝ) ≤ right i := by
        exact_mod_cast horder
      rw [min_eq_left hreal, abs_of_nonpos (sub_nonpos.mpr hreal)]
      ring
    · have horder' : right i ≤ left i :=
        (Nat.le_of_lt (Nat.lt_of_not_ge horder))
      have hreal : (right i : ℝ) ≤ left i := by
        exact_mod_cast horder'
      rw [min_eq_right hreal, abs_of_nonneg (sub_nonneg.mpr hreal)]
      ring
  have hleft_real : (∑ i : ι, (left i : ℝ)) = denominator := by
    exact_mod_cast hleft
  have hright_real : (∑ i : ι, (right i : ℝ)) = denominator := by
    exact_mod_cast hright
  have hdenominator : (denominator : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt positive)
  change
    (((L \ R) ∪ (R \ L)).card : ℝ) /
        (2 * (L.card : ℝ)) =
      (∑ i : ι,
        |(left i : ℝ) / denominator -
          (right i : ℝ) / denominator|) / 2
  rw [hsymmetric, hL]
  simp_rw [hpointwise]
  rw [← Finset.sum_div, Finset.sum_sub_distrib,
    Finset.sum_add_distrib, ← Finset.mul_sum,
    hleft_real, hright_real]
  field_simp [hdenominator]

theorem uniformPermutationProbability_mono
    {α : Type*} [Fintype α] [DecidableEq α]
    (small large : Equiv.Perm α → Prop)
    (hinclusion : ∀ permutation, small permutation → large permutation) :
    uniformPermutationProbability small ≤
      uniformPermutationProbability large := by
  classical
  unfold uniformPermutationProbability
  apply div_le_div_of_nonneg_right
  · exact_mod_cast Finset.card_le_card (show
      (Finset.univ.filter fun permutation : Equiv.Perm α =>
        small permutation) ⊆
      (Finset.univ.filter fun permutation : Equiv.Perm α =>
        large permutation) from by
        intro permutation hpermutation
        exact Finset.mem_filter.mpr
          ⟨Finset.mem_univ _, hinclusion permutation
            (Finset.mem_filter.mp hpermutation).2⟩)
  · exact_mod_cast (Nat.zero_le (Fintype.card (Equiv.Perm α)))

theorem rationalPermutationOutput_disagreement_le_two_mul_tv
    (denominator : ℕ) (left right : ι → ℕ)
    (hleft : (∑ i, left i) = denominator)
    (hright : (∑ i, right i) = denominator)
    (nonempty_left : (rationalMarked denominator left).Nonempty)
    (nonempty_right : (rationalMarked denominator right).Nonempty) :
    uniformPermutationProbability
        (fun permutation : Equiv.Perm (ι × Fin denominator) =>
          rationalPermutationOutput denominator left
            nonempty_left permutation ≠
          rationalPermutationOutput denominator right
            nonempty_right permutation) ≤
      2 * markedTotalVariation
        (rationalMarked denominator left)
        (rationalMarked denominator right) := by
  let rank := Fintype.equivFin (ι × Fin denominator)
  calc
    uniformPermutationProbability
        (fun permutation : Equiv.Perm (ι × Fin denominator) =>
          rationalPermutationOutput denominator left
            nonempty_left permutation ≠
          rationalPermutationOutput denominator right
            nonempty_right permutation) ≤
      uniformPermutationProbability
        (fun permutation : Equiv.Perm (ι × Fin denominator) =>
          markedFirst rank (rationalMarked denominator left)
            nonempty_left permutation ≠
          markedFirst rank (rationalMarked denominator right)
            nonempty_right permutation) := by
        apply uniformPermutationProbability_mono
        intro permutation hdifferent hequal
        apply hdifferent
        exact congrArg Prod.fst hequal
    _ ≤ 2 * markedTotalVariation
        (rationalMarked denominator left)
        (rationalMarked denominator right) := by
      apply sharedPermutation_disagreement_probability_le_two_mul_tv
      calc
        (rationalMarked denominator left).card = denominator :=
          rationalMarked_card denominator left hleft
        _ = (rationalMarked denominator right).card :=
          (rationalMarked_card denominator right hright).symm

theorem rationalPermutationOutput_disagreement_le_two_mul_finiteTotalVariation
    (denominator : ℕ) (positive : 0 < denominator)
    (left right : ι → ℕ)
    (hleft : (∑ i, left i) = denominator)
    (hright : (∑ i, right i) = denominator)
    (nonempty_left : (rationalMarked denominator left).Nonempty)
    (nonempty_right : (rationalMarked denominator right).Nonempty) :
    uniformPermutationProbability
        (fun permutation : Equiv.Perm (ι × Fin denominator) =>
          rationalPermutationOutput denominator left
            nonempty_left permutation ≠
          rationalPermutationOutput denominator right
            nonempty_right permutation) ≤
      2 * finiteTotalVariation
        (fun i => (left i : ℝ) / denominator)
        (fun i => (right i : ℝ) / denominator) := by
  calc
    uniformPermutationProbability
        (fun permutation : Equiv.Perm (ι × Fin denominator) =>
          rationalPermutationOutput denominator left
            nonempty_left permutation ≠
          rationalPermutationOutput denominator right
            nonempty_right permutation) ≤
      2 * markedTotalVariation
        (rationalMarked denominator left)
        (rationalMarked denominator right) :=
          rationalPermutationOutput_disagreement_le_two_mul_tv
            denominator left right hleft hright
            nonempty_left nonempty_right
    _ = 2 * finiteTotalVariation
        (fun i => (left i : ℝ) / denominator)
        (fun i => (right i : ℝ) / denominator) := by
      rw [rationalMarked_markedTotalVariation_eq
        denominator positive left right hleft hright]

end SharedPermutationSampling

end ClassicalInformation

end

noncomputable section

open scoped BigOperators

open QuantumParallelRepetition.Pinsker

theorem finiteTotalVariation_comm
    {ι : Type*} [Fintype ι]
    (p q : ι → ℝ) :
    finiteTotalVariation p q = finiteTotalVariation q p := by
  unfold finiteTotalVariation
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  exact abs_sub_comm (p i) (q i)

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

theorem remainingCoordinate_card_pos
    {n : ℕ} (D : Finset (Fin n))
    (hm : 0 < (Finset.univ \ D).card) :
    0 < Fintype.card (SourceRemainingCoordinate D) := by
  simpa using hm

theorem finiteTotalVariation_triangle
    {ι : Type*} [Fintype ι]
    (p q r : ι → ℝ) :
    finiteTotalVariation p r ≤
      finiteTotalVariation p q + finiteTotalVariation q r := by
  unfold finiteTotalVariation
  calc
    (∑ i, |p i - r i|) / 2 ≤
        ((∑ i, |p i - q i|) +
          (∑ i, |q i - r i|)) / 2 := by
      apply div_le_div_of_nonneg_right _ (by norm_num)
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_le_sum
      intro i _
      exact abs_sub_le (p i) (q i) (r i)
    _ = (∑ i, |p i - q i|) / 2 +
        (∑ i, |q i - r i|) / 2 := by ring

theorem weightedConditionalJoint_totalVariation
    {κ ι : Type*} [Fintype κ] [Fintype ι]
    (weight : κ → ℝ) (hweight : ∀ k, 0 ≤ weight k)
    (left right : κ → ι → ℝ) :
    finiteTotalVariation
        (weightedConditionalJoint weight left)
        (weightedConditionalJoint weight right) =
      ∑ k : κ, weight k *
        finiteTotalVariation (left k) (right k) := by
  unfold finiteTotalVariation weightedConditionalJoint
  rw [Fintype.sum_prod_type]
  calc
    (∑ k : κ, ∑ i : ι,
      |weight k * left k i - weight k * right k i|) / 2 =
      (∑ k : κ, weight k *
        (∑ i : ι, |left k i - right k i|)) / 2 := by
      congr 1
      apply Finset.sum_congr rfl
      intro k _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      rw [← mul_sub, abs_mul, abs_of_nonneg (hweight k)]
    _ = ∑ k : κ,
        weight k * ((∑ i : ι, |left k i - right k i|) / 2) := by
      rw [Finset.sum_div]
      apply Finset.sum_congr rfl
      intro k _
      ring

theorem finiteTotalVariation_equiv
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (e : ι ≃ κ) (p q : κ → ℝ) :
    finiteTotalVariation (p ∘ e) (q ∘ e) =
      finiteTotalVariation p q := by
  unfold finiteTotalVariation
  congr 1
  exact e.sum_comp (fun i => |p i - q i|)

theorem localQuestionWeight_nonneg
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (c : LocalQuestionContext X Y D) :
    0 ≤ localQuestionWeight G n D c := by
  exact div_nonneg (G.weight_nonneg c.2.1 c.2.2)
    (Nat.cast_nonneg _)

theorem localQuestionWeight_sum
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (hm : 0 < (Finset.univ \ D).card) :
    (∑ c : LocalQuestionContext X Y D,
      localQuestionWeight G n D c) = 1 := by
  have hcard : (Fintype.card (SourceRemainingCoordinate D) : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt
      (remainingCoordinate_card_pos D hm))
  calc
    (∑ c : LocalQuestionContext X Y D,
      localQuestionWeight G n D c) =
      (∑ i : SourceRemainingCoordinate D,
        ∑ x : X, ∑ y : Y, G.questionWeight x y) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) := by
      simp only [localQuestionWeight, Fintype.sum_prod_type]
      simp_rw [← Finset.sum_div]
    _ = 1 := by
      simp_rw [G.weight_normalized]
      simp only [Finset.sum_const, Finset.card_univ,
        nsmul_eq_mul, mul_one]
      exact div_self hcard

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem exactLocallySampleableJA_weightedConditional
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D) :
    (exactLocallySampleableJA G n S D base ∘
      exactLocalQuestionHistoryEquiv D) =
      weightedConditionalJoint
        (localQuestionWeight G n D)
        (fun c r => exactAliceLocalConditional D base
          (exactLocallySampleableLaw G n S D)
          c.1 c.2.1 r) := by
  funext t
  rcases t with ⟨⟨i, x, y⟩, r⟩
  change
    G.questionWeight x y *
      exactAliceLocalConditional D base
        (exactLocallySampleableLaw G n S D) i x r /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) =
      (G.questionWeight x y /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        exactAliceLocalConditional D base
          (exactLocallySampleableLaw G n S D) i x r
  ring

theorem exactLocallySampleableJB_weightedConditional
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D) :
    (exactLocallySampleableJB G n S D base ∘
      exactLocalQuestionHistoryEquiv D) =
      weightedConditionalJoint
        (localQuestionWeight G n D)
        (fun c r => exactBobLocalConditional D base
          (exactLocallySampleableLaw G n S D)
          c.1 c.2.2 r) := by
  funext t
  rcases t with ⟨⟨i, x, y⟩, r⟩
  change
    G.questionWeight x y *
      exactBobLocalConditional D base
        (exactLocallySampleableLaw G n S D) i y r /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) =
      (G.questionWeight x y /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        exactBobLocalConditional D base
          (exactLocallySampleableLaw G n S D) i y r
  ring

theorem exactLocallySampleableJARounded_weightedConditional
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ) :
    (exactLocallySampleableJARounded
      G n D denominator numerator ∘
        exactLocalQuestionHistoryEquiv D) =
      weightedConditionalJoint
        (localQuestionWeight G n D)
        (fun c r =>
          (numerator (.inl (c.1, c.2.1)) r : ℝ) / denominator) := by
  funext t
  rcases t with ⟨⟨i, x, y⟩, r⟩
  change
    G.questionWeight x y *
      ((numerator (.inl (i, x)) r : ℝ) / denominator) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) =
      (G.questionWeight x y /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        ((numerator (.inl (i, x)) r : ℝ) / denominator)
  ring

theorem exactLocallySampleableJBRounded_weightedConditional
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ) :
    (exactLocallySampleableJBRounded
      G n D denominator numerator ∘
        exactLocalQuestionHistoryEquiv D) =
      weightedConditionalJoint
        (localQuestionWeight G n D)
        (fun c r =>
          (numerator (.inr (c.1, c.2.2)) r : ℝ) / denominator) := by
  funext t
  rcases t with ⟨⟨i, x, y⟩, r⟩
  change
    G.questionWeight x y *
      ((numerator (.inr (i, y)) r : ℝ) / denominator) /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ) =
      (G.questionWeight x y /
        (Fintype.card (SourceRemainingCoordinate D) : ℝ)) *
        ((numerator (.inr (i, y)) r : ℝ) / denominator)
  ring

theorem exactLocallySampleableJA_rounded_totalVariation_le
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D)
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    {gamma : ℝ}
    (approximation : ∀ k, finiteTotalVariation
      (exactLocalConditionalFamily D base
        (exactLocallySampleableLaw G n S D) k)
      (fun r => (numerator k r : ℝ) / denominator) < gamma) :
    finiteTotalVariation
        (exactLocallySampleableJA G n S D base)
        (exactLocallySampleableJARounded
          G n D denominator numerator) ≤ gamma := by
  calc
    finiteTotalVariation
        (exactLocallySampleableJA G n S D base)
        (exactLocallySampleableJARounded
          G n D denominator numerator) =
      finiteTotalVariation
        (exactLocallySampleableJA G n S D base ∘
          exactLocalQuestionHistoryEquiv D)
        (exactLocallySampleableJARounded
          G n D denominator numerator ∘
          exactLocalQuestionHistoryEquiv D) :=
      (finiteTotalVariation_equiv
        (exactLocalQuestionHistoryEquiv D)
        (exactLocallySampleableJA G n S D base)
        (exactLocallySampleableJARounded
          G n D denominator numerator)).symm
    _ = ∑ c : LocalQuestionContext X Y D,
        localQuestionWeight G n D c *
          finiteTotalVariation
            (fun r => exactAliceLocalConditional D base
              (exactLocallySampleableLaw G n S D)
              c.1 c.2.1 r)
            (fun r =>
              (numerator (.inl (c.1, c.2.1)) r : ℝ) /
                denominator) := by
      rw [exactLocallySampleableJA_weightedConditional,
        exactLocallySampleableJARounded_weightedConditional,
        weightedConditionalJoint_totalVariation
          (localQuestionWeight G n D)
          (localQuestionWeight_nonneg G n D)]
    _ ≤ ∑ c : LocalQuestionContext X Y D,
        localQuestionWeight G n D c * gamma := by
      apply Finset.sum_le_sum
      intro c _
      apply mul_le_mul_of_nonneg_left _
        (localQuestionWeight_nonneg G n D c)
      exact (approximation (.inl (c.1, c.2.1))).le
    _ = gamma := by
      rw [← Finset.sum_mul,
        localQuestionWeight_sum G n D remaining]
      ring

theorem exactLocallySampleableJB_rounded_totalVariation_le
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (base : ExactHistoryFlag X Y A B D)
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    {gamma : ℝ}
    (approximation : ∀ k, finiteTotalVariation
      (exactLocalConditionalFamily D base
        (exactLocallySampleableLaw G n S D) k)
      (fun r => (numerator k r : ℝ) / denominator) < gamma) :
    finiteTotalVariation
        (exactLocallySampleableJB G n S D base)
        (exactLocallySampleableJBRounded
          G n D denominator numerator) ≤ gamma := by
  calc
    finiteTotalVariation
        (exactLocallySampleableJB G n S D base)
        (exactLocallySampleableJBRounded
          G n D denominator numerator) =
      finiteTotalVariation
        (exactLocallySampleableJB G n S D base ∘
          exactLocalQuestionHistoryEquiv D)
        (exactLocallySampleableJBRounded
          G n D denominator numerator ∘
          exactLocalQuestionHistoryEquiv D) :=
      (finiteTotalVariation_equiv
        (exactLocalQuestionHistoryEquiv D)
        (exactLocallySampleableJB G n S D base)
        (exactLocallySampleableJBRounded
          G n D denominator numerator)).symm
    _ = ∑ c : LocalQuestionContext X Y D,
        localQuestionWeight G n D c *
          finiteTotalVariation
            (fun r => exactBobLocalConditional D base
              (exactLocallySampleableLaw G n S D)
              c.1 c.2.2 r)
            (fun r =>
              (numerator (.inr (c.1, c.2.2)) r : ℝ) /
                denominator) := by
      rw [exactLocallySampleableJB_weightedConditional,
        exactLocallySampleableJBRounded_weightedConditional,
        weightedConditionalJoint_totalVariation
          (localQuestionWeight G n D)
          (localQuestionWeight_nonneg G n D)]
    _ ≤ ∑ c : LocalQuestionContext X Y D,
        localQuestionWeight G n D c * gamma := by
      apply Finset.sum_le_sum
      intro c _
      apply mul_le_mul_of_nonneg_left _
        (localQuestionWeight_nonneg G n D c)
      exact (approximation (.inr (c.1, c.2.2))).le
    _ = gamma := by
      rw [← Finset.sum_mul,
        localQuestionWeight_sum G n D remaining]
      ring

theorem exactLocallySampleableRounded_pair_totalVariation
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ) :
    finiteTotalVariation
        (exactLocallySampleableJARounded
          G n D denominator numerator)
        (exactLocallySampleableJBRounded
          G n D denominator numerator) =
      ∑ c : LocalQuestionContext X Y D,
        localQuestionWeight G n D c *
          finiteTotalVariation
            (fun r =>
              (numerator (.inl (c.1, c.2.1)) r : ℝ) / denominator)
            (fun r =>
              (numerator (.inr (c.1, c.2.2)) r : ℝ) / denominator) := by
  calc
    finiteTotalVariation
        (exactLocallySampleableJARounded
          G n D denominator numerator)
        (exactLocallySampleableJBRounded
          G n D denominator numerator) =
      finiteTotalVariation
        (exactLocallySampleableJARounded
          G n D denominator numerator ∘
          exactLocalQuestionHistoryEquiv D)
        (exactLocallySampleableJBRounded
          G n D denominator numerator ∘
          exactLocalQuestionHistoryEquiv D) :=
      (finiteTotalVariation_equiv
        (exactLocalQuestionHistoryEquiv D)
        (exactLocallySampleableJARounded
          G n D denominator numerator)
        (exactLocallySampleableJBRounded
          G n D denominator numerator)).symm
    _ = _ := by
      rw [exactLocallySampleableJARounded_weightedConditional,
        exactLocallySampleableJBRounded_weightedConditional,
        weightedConditionalJoint_totalVariation
          (localQuestionWeight G n D)
          (localQuestionWeight_nonneg G n D)]

theorem exactLocallySampleablePermutationMismatch_le_two_tv
    (G : Game X Y A B) (n : ℕ) (D : Finset (Fin n))
    (denominator : ℕ) (positive : 0 < denominator)
    (numerator : ExactLocalSamplerIndex X Y D →
      ExactHistoryFlag X Y A B D → ℕ)
    (normalized : ∀ k, (∑ r, numerator k r) = denominator)
    (nonempty : ∀ k,
      (rationalMarked denominator (numerator k)).Nonempty) :
    exactLocallySampleablePermutationMismatch
        G n D denominator numerator nonempty ≤
      2 * finiteTotalVariation
        (exactLocallySampleableJARounded
          G n D denominator numerator)
        (exactLocallySampleableJBRounded
          G n D denominator numerator) := by
  unfold exactLocallySampleablePermutationMismatch
  calc
    (∑ c : LocalQuestionContext X Y D,
      localQuestionWeight G n D c *
        uniformPermutationProbability
          (fun permutation :
            Equiv.Perm
              (ExactHistoryFlag X Y A B D × Fin denominator) =>
            rationalPermutationOutput denominator
                (numerator (.inl (c.1, c.2.1)))
                (nonempty (.inl (c.1, c.2.1))) permutation ≠
              rationalPermutationOutput denominator
                (numerator (.inr (c.1, c.2.2)))
                (nonempty (.inr (c.1, c.2.2))) permutation)) ≤
      ∑ c : LocalQuestionContext X Y D,
        localQuestionWeight G n D c *
          (2 * finiteTotalVariation
            (fun r =>
              (numerator (.inl (c.1, c.2.1)) r : ℝ) / denominator)
            (fun r =>
              (numerator (.inr (c.1, c.2.2)) r : ℝ) / denominator)) := by
      apply Finset.sum_le_sum
      intro c _
      apply mul_le_mul_of_nonneg_left _
        (localQuestionWeight_nonneg G n D c)
      exact rationalPermutationOutput_disagreement_le_two_mul_finiteTotalVariation
        denominator positive
        (numerator (.inl (c.1, c.2.1)))
        (numerator (.inr (c.1, c.2.2)))
        (normalized (.inl (c.1, c.2.1)))
        (normalized (.inr (c.1, c.2.2)))
        (nonempty (.inl (c.1, c.2.1)))
        (nonempty (.inr (c.1, c.2.2)))
    _ = 2 *
      (∑ c : LocalQuestionContext X Y D,
        localQuestionWeight G n D c *
          finiteTotalVariation
            (fun r =>
              (numerator (.inl (c.1, c.2.1)) r : ℝ) / denominator)
            (fun r =>
              (numerator (.inr (c.1, c.2.2)) r : ℝ) / denominator)) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro c _
      ring
    _ = 2 * finiteTotalVariation
        (exactLocallySampleableJARounded
          G n D denominator numerator)
        (exactLocallySampleableJBRounded
          G n D denominator numerator) := by
      rw [exactLocallySampleableRounded_pair_totalVariation]

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
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card)
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    {kappa gamma : ℝ} (gamma_positive : 0 < gamma)
    (alice : finiteTotalVariation
      (exactLocallySampleableLaw G n S D)
      (exactLocallySampleableJA G n S D base) ≤ kappa)
    (bob : finiteTotalVariation
      (exactLocallySampleableLaw G n S D)
      (exactLocallySampleableJB G n S D base) ≤ kappa) :
    ExactSourceSupportPreservingClassicalSampler
      G n S D base kappa gamma := by
  obtain ⟨denominator, denominator_positive, numerator,
      normalized, approximation, preserves, nonempty, _, _⟩ :=
    exact_exists_support_preserving_local_shared_permutation
      G n S D positive base gamma_positive
  have rounded_alice :
      finiteTotalVariation
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJARounded
            G n D denominator numerator) ≤ kappa + gamma := by
    calc
      finiteTotalVariation
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJARounded
            G n D denominator numerator) ≤
        finiteTotalVariation
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJA G n S D base) +
        finiteTotalVariation
          (exactLocallySampleableJA G n S D base)
          (exactLocallySampleableJARounded
            G n D denominator numerator) :=
          finiteTotalVariation_triangle _ _ _
      _ ≤ kappa + gamma :=
        add_le_add alice
          (exactLocallySampleableJA_rounded_totalVariation_le
            G n S D remaining base denominator numerator approximation)
  have rounded_bob :
      finiteTotalVariation
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJBRounded
            G n D denominator numerator) ≤ kappa + gamma := by
    calc
      finiteTotalVariation
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJBRounded
            G n D denominator numerator) ≤
        finiteTotalVariation
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJB G n S D base) +
        finiteTotalVariation
          (exactLocallySampleableJB G n S D base)
          (exactLocallySampleableJBRounded
            G n D denominator numerator) :=
          finiteTotalVariation_triangle _ _ _
      _ ≤ kappa + gamma :=
        add_le_add bob
          (exactLocallySampleableJB_rounded_totalVariation_le
            G n S D remaining base denominator numerator approximation)
  refine ⟨denominator, denominator_positive, numerator,
    normalized, approximation, preserves, nonempty,
    rounded_alice, rounded_bob, ?_⟩
  calc
    exactLocallySampleablePermutationMismatch
        G n D denominator numerator nonempty ≤
      2 * finiteTotalVariation
        (exactLocallySampleableJARounded
          G n D denominator numerator)
        (exactLocallySampleableJBRounded
          G n D denominator numerator) :=
        exactLocallySampleablePermutationMismatch_le_two_tv
          G n D denominator denominator_positive
          numerator normalized nonempty
    _ ≤ 2 *
        (finiteTotalVariation
          (exactLocallySampleableJARounded
            G n D denominator numerator)
          (exactLocallySampleableLaw G n S D) +
         finiteTotalVariation
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJBRounded
            G n D denominator numerator)) := by
      gcongr
      exact finiteTotalVariation_triangle _ _ _
    _ = 2 *
        (finiteTotalVariation
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJARounded
            G n D denominator numerator) +
         finiteTotalVariation
          (exactLocallySampleableLaw G n S D)
          (exactLocallySampleableJBRounded
            G n D denominator numerator)) := by
      rw [finiteTotalVariation_comm
        (exactLocallySampleableJARounded
          G n D denominator numerator)
        (exactLocallySampleableLaw G n S D)]
    _ ≤ 4 * (kappa + gamma) := by
      nlinarith
