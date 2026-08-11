import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_17
import Theorems.Thm_QuantumParallelRepetition_exactSeedWeight_nonneg
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
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
import Mathlib.Algebra.Order.Archimedean.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Algebra.Order.Group.Abs
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.ZeroLEOne
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
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Fin
import Mathlib.Data.Fintype.Perm
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Fintype.Sum
import Mathlib.Data.FunLike.Basic
import Mathlib.Data.FunLike.Equiv
import Mathlib.Data.Int.Cast.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Nat.Cast.Order.Basic
import Mathlib.Data.Nat.Cast.Order.Ring
import Mathlib.Data.Nat.Init
import Mathlib.Data.Real.Archimedean
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

theorem rationalMarked_nonempty
    (denominator : ℕ) (numerator : β → ℕ)
    (normalized : (∑ letter, numerator letter) = denominator)
    (positive : 0 < denominator) :
    (rationalMarked denominator numerator).Nonempty := by
  apply Finset.card_pos.mp
  rw [rationalMarked_card denominator numerator normalized]
  exact positive

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

theorem distributionFloorNumerator_cast_le
    (denominator : ℕ) (p : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i) (i : ι) :
    (distributionFloorNumerator denominator p i : ℝ) ≤
      p i * denominator := by
  unfold distributionFloorNumerator
  exact Nat.floor_le (mul_nonneg (hp i) (Nat.cast_nonneg _))

theorem distributionFloorProbability_le
    (denominator : ℕ) (positive : 0 < denominator)
    (p : ι → ℝ) (hp : ∀ i, 0 ≤ p i) (i : ι) :
    distributionFloorProbability denominator p i ≤ p i := by
  have hden : 0 < (denominator : ℝ) := by exact_mod_cast positive
  unfold distributionFloorProbability
  apply (div_le_iff₀ hden).mpr
  exact distributionFloorNumerator_cast_le denominator p hp i

theorem distributionFloorProbability_error_lt
    (denominator : ℕ) (positive : 0 < denominator)
    (p : ι → ℝ) (i : ι) :
    p i - distributionFloorProbability denominator p i <
      (1 : ℝ) / denominator := by
  have hden : 0 < (denominator : ℝ) := by exact_mod_cast positive
  apply (lt_div_iff₀ hden).mpr
  have hupper := Nat.lt_floor_add_one (p i * (denominator : ℝ))
  unfold distributionFloorProbability distributionFloorNumerator
  calc
    (p i - (Nat.floor (p i * (denominator : ℝ)) : ℝ) /
        (denominator : ℝ)) * (denominator : ℝ) =
      p i * (denominator : ℝ) - Nat.floor (p i * (denominator : ℝ)) := by
        field_simp
    _ < 1 := by linarith

theorem distributionFloorNumerator_sum_le
    (denominator : ℕ) (p : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i)
    (normalized : (∑ i, p i) = 1) :
    (∑ i, distributionFloorNumerator denominator p i) ≤ denominator := by
  have hreal :
      ((∑ i, distributionFloorNumerator denominator p i) : ℝ) ≤
        (denominator : ℝ) := by
    calc
      ((∑ i, distributionFloorNumerator denominator p i) : ℝ) =
          ∑ i, (distributionFloorNumerator denominator p i : ℝ) := by
        simp
      _ ≤ ∑ i, p i * (denominator : ℝ) :=
        Finset.sum_le_sum fun i _ =>
          distributionFloorNumerator_cast_le denominator p hp i
      _ = (denominator : ℝ) := by
        rw [← Finset.sum_mul, normalized]
        simp
  exact_mod_cast hreal

theorem distributionRoundedNumerator_sum
    (base : ι) (denominator : ℕ) (p : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i)
    (normalized : (∑ i, p i) = 1) :
    (∑ i, distributionRoundedNumerator base denominator p i) =
      denominator := by
  have hfloor := distributionFloorNumerator_sum_le
    denominator p hp normalized
  unfold distributionRoundedNumerator
  rw [Finset.sum_add_distrib]
  simp only [Finset.sum_ite_eq', Finset.mem_univ, ↓reduceIte]
  unfold distributionFloorResidual
  omega

theorem distributionFloorResidual_probability_eq_sum
    (denominator : ℕ) (positive : 0 < denominator)
    (p : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i)
    (normalized : (∑ i, p i) = 1) :
    (distributionFloorResidual denominator p : ℝ) / denominator =
      ∑ i, (p i - distributionFloorProbability denominator p i) := by
  have hfloor := distributionFloorNumerator_sum_le
    denominator p hp normalized
  have hden : (denominator : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt positive)
  unfold distributionFloorResidual distributionFloorProbability
  rw [Nat.cast_sub hfloor, Nat.cast_sum, Finset.sum_sub_distrib,
    normalized, ← Finset.sum_div]
  field_simp

theorem distributionRoundedProbability_eq_floor_add
    (base : ι) (denominator : ℕ) (p : ι → ℝ) (i : ι) :
    distributionRoundedProbability base denominator p i =
      distributionFloorProbability denominator p i +
        if i = base then
          (distributionFloorResidual denominator p : ℝ) / denominator
        else 0 := by
  by_cases hbase : i = base
  · simp [distributionRoundedProbability,
      distributionRoundedNumerator, distributionFloorProbability,
      hbase, Nat.cast_add]
    ring
  · simp [distributionRoundedProbability,
      distributionRoundedNumerator, distributionFloorProbability, hbase]

theorem distributionRoundedProbability_totalVariation_le
    (base : ι) (denominator : ℕ) (positive : 0 < denominator)
    (p : ι → ℝ)
    (hp : ∀ i, 0 ≤ p i)
    (normalized : (∑ i, p i) = 1) :
    finiteTotalVariation p
        (distributionRoundedProbability base denominator p) ≤
      (Fintype.card ι : ℝ) / denominator := by
  have hden : 0 < (denominator : ℝ) := by exact_mod_cast positive
  have hres :
      0 ≤ (distributionFloorResidual denominator p : ℝ) / denominator :=
    div_nonneg (Nat.cast_nonneg _) hden.le
  have hpoint : ∀ i,
      |p i - distributionRoundedProbability base denominator p i| ≤
        (p i - distributionFloorProbability denominator p i) +
          if i = base then
            (distributionFloorResidual denominator p : ℝ) / denominator
          else 0 := by
    intro i
    have hdefect :
        0 ≤ p i - distributionFloorProbability denominator p i :=
      sub_nonneg.mpr
        (distributionFloorProbability_le denominator positive p hp i)
    have htriangle := abs_sub_le (p i)
      (distributionFloorProbability denominator p i)
      (distributionRoundedProbability base denominator p i)
    rw [abs_of_nonneg hdefect] at htriangle
    have hcorrection :
        |distributionFloorProbability denominator p i -
            distributionRoundedProbability base denominator p i| =
          if i = base then
            (distributionFloorResidual denominator p : ℝ) / denominator
          else 0 := by
      rw [distributionRoundedProbability_eq_floor_add]
      by_cases hbase : i = base
      · simp [hbase, abs_of_nonneg hres]
      · simp [hbase]
    rw [hcorrection] at htriangle
    exact htriangle
  have htv_defect :
      finiteTotalVariation p
          (distributionRoundedProbability base denominator p) ≤
        ∑ i, (p i - distributionFloorProbability denominator p i) := by
    calc
      finiteTotalVariation p
          (distributionRoundedProbability base denominator p) =
        (∑ i, |p i - distributionRoundedProbability
          base denominator p i|) / 2 := rfl
      _ ≤ (∑ i,
          ((p i - distributionFloorProbability denominator p i) +
            if i = base then
              (distributionFloorResidual denominator p : ℝ) / denominator
            else 0)) / 2 := by
        apply (div_le_div_iff_of_pos_right (by norm_num : (0 : ℝ) < 2)).mpr
        exact Finset.sum_le_sum fun i _ => hpoint i
      _ = ∑ i, (p i - distributionFloorProbability denominator p i) := by
        rw [Finset.sum_add_distrib]
        simp only [Finset.sum_ite_eq', Finset.mem_univ, ↓reduceIte]
        rw [distributionFloorResidual_probability_eq_sum
          denominator positive p hp normalized]
        ring
  calc
    finiteTotalVariation p
        (distributionRoundedProbability base denominator p) ≤
      ∑ i, (p i - distributionFloorProbability denominator p i) :=
        htv_defect
    _ ≤ ∑ _i : ι, (1 : ℝ) / denominator :=
      Finset.sum_le_sum fun i _ =>
        (distributionFloorProbability_error_lt denominator positive p i).le
    _ = (Fintype.card ι : ℝ) / denominator := by
      simp [div_eq_mul_inv]

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

theorem exactAliceLocalMass_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (x : X) :
    0 ≤ exactAliceLocalMass D Q i x := by
  unfold exactAliceLocalMass
  exact Finset.sum_nonneg
    (fun r _ => Finset.sum_nonneg (fun y _ => nonnegative (i, x, y, r)))

theorem exactBobLocalMass_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (y : Y) :
    0 ≤ exactBobLocalMass D Q i y := by
  unfold exactBobLocalMass
  exact Finset.sum_nonneg
    (fun r _ => Finset.sum_nonneg (fun x _ => nonnegative (i, x, y, r)))

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

theorem exactBobLocalConditional_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (i : SourceRemainingCoordinate D) (y : Y)
    (r : ExactHistoryFlag X Y A B D) :
    0 ≤ exactBobLocalConditional D base Q i y r := by
  unfold exactBobLocalConditional
  split_ifs with hmass hbase
  · exact zero_le_one
  · exact le_rfl
  · exact div_nonneg
      (Finset.sum_nonneg (fun x _ => nonnegative (i, x, y, r)))
      (exactBobLocalMass_nonneg D Q nonnegative i y)

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

theorem exactLocalConditionalFamily_nonneg
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (nonnegative : ∀ t, 0 ≤ Q t)
    (k : ExactLocalSamplerIndex X Y D)
    (r : ExactHistoryFlag X Y A B D) :
    0 ≤ exactLocalConditionalFamily D base Q k r := by
  rcases k with ⟨i, x⟩ | ⟨i, y⟩
  · exact exactAliceLocalConditional_nonneg
      D base Q nonnegative i x r
  · exact exactBobLocalConditional_nonneg
      D base Q nonnegative i y r

theorem exactLocalConditionalFamily_sum
    {n : ℕ} (D : Finset (Fin n))
    (base : ExactHistoryFlag X Y A B D)
    (Q : ExactLocallySampleableTuple X Y A B D → ℝ)
    (k : ExactLocalSamplerIndex X Y D) :
    (∑ r : ExactHistoryFlag X Y A B D,
      exactLocalConditionalFamily D base Q k r) = 1 := by
  rcases k with ⟨i, x⟩ | ⟨i, y⟩
  · exact exactAliceLocalConditional_sum D base Q i x
  · exact exactBobLocalConditional_sum D base Q i y

end

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker
open QuantumParallelRepetition.ClassicalSampling
open QuantumParallelRepetition.ClassicalInformation

attribute [local instance] Classical.propDecidable

theorem existsCommonSupportPreservingRationalApproximations
    {I K : Type*} [Fintype I] [DecidableEq I] [Fintype K]
    (base : I) (probability : K → I → ℝ)
    (nonnegative : ∀ index letter, 0 ≤ probability index letter)
    (normalized : ∀ index, (∑ letter, probability index letter) = 1)
    {gamma : ℝ} (gamma_positive : 0 < gamma) :
    ∃ denominator : ℕ, 0 < denominator ∧
      ∃ numerator : K → I → ℕ,
        (∀ index, (∑ letter, numerator index letter) = denominator) ∧
        (∀ index, finiteTotalVariation
          (probability index)
          (fun letter => (numerator index letter : ℝ) / denominator) <
            gamma) ∧
        (∀ index letter,
          0 < probability index letter → 0 < numerator index letter) := by
  classical
  let supportCost : ℝ :=
    ∑ index : K, ∑ letter : I,
      if 0 < probability index letter then
        1 / probability index letter
      else 0
  have cost_nonnegative : 0 ≤ supportCost := by
    dsimp [supportCost]
    apply Finset.sum_nonneg
    intro index _
    apply Finset.sum_nonneg
    intro letter _
    split_ifs with positive
    · exact (one_div_pos.mpr positive).le
    · exact le_rfl
  have cardinal_positive : 0 < (Fintype.card I : ℝ) := by
    exact_mod_cast
      (Fintype.card_pos_iff.mpr ⟨base⟩ : 0 < Fintype.card I)
  have ratio_positive :
      0 < (Fintype.card I : ℝ) / gamma :=
    div_pos cardinal_positive gamma_positive
  obtain ⟨denominator, denominator_large⟩ :=
    exists_nat_gt ((Fintype.card I : ℝ) / gamma + supportCost)
  have denominator_real_positive : 0 < (denominator : ℝ) :=
    lt_of_lt_of_le
      (lt_of_lt_of_le ratio_positive
        (le_add_of_nonneg_right cost_nonnegative))
      denominator_large.le
  have denominator_positive : 0 < denominator := by
    exact_mod_cast denominator_real_positive
  have approximation_budget :
      (Fintype.card I : ℝ) / denominator < gamma := by
    apply (div_lt_iff₀ denominator_real_positive).mpr
    have reciprocal_bound :
        (Fintype.card I : ℝ) / gamma < (denominator : ℝ) :=
      lt_of_le_of_lt
        (le_add_of_nonneg_right cost_nonnegative)
        denominator_large
    have crossed :=
      (div_lt_iff₀ gamma_positive).mp reciprocal_bound
    nlinarith
  refine ⟨denominator, denominator_positive,
    fun index => distributionRoundedNumerator
      base denominator (probability index), ?_, ?_, ?_⟩
  · intro index
    exact distributionRoundedNumerator_sum
      base denominator (probability index)
      (nonnegative index) (normalized index)
  · intro index
    change finiteTotalVariation
      (probability index)
      (distributionRoundedProbability
        base denominator (probability index)) < gamma
    exact (distributionRoundedProbability_totalVariation_le
      base denominator denominator_positive
      (probability index) (nonnegative index)
      (normalized index)).trans_lt approximation_budget
  · intro index letter genuinely_positive
    have letter_le_inner :
        1 / probability index letter ≤
          ∑ candidate : I,
            if 0 < probability index candidate then
              1 / probability index candidate
            else 0 := by
      have single := Finset.single_le_sum
        (s := (Finset.univ : Finset I))
        (f := fun candidate : I =>
          if 0 < probability index candidate then
            1 / probability index candidate
          else 0)
        (fun candidate _ => by
          show 0 ≤ if 0 < probability index candidate then
            1 / probability index candidate else 0
          split_ifs with positive
          · exact (one_div_pos.mpr positive).le
          · exact le_rfl)
        (Finset.mem_univ letter)
      simpa [genuinely_positive] using single
    have inner_le_cost :
        (∑ candidate : I,
          if 0 < probability index candidate then
            1 / probability index candidate
          else 0) ≤ supportCost := by
      dsimp [supportCost]
      exact Finset.single_le_sum
        (s := (Finset.univ : Finset K))
        (f := fun current : K =>
          ∑ candidate : I,
            if 0 < probability current candidate then
              1 / probability current candidate
            else 0)
        (fun current _ => by
          apply Finset.sum_nonneg
          intro candidate _
          split_ifs with positive
          · exact (one_div_pos.mpr positive).le
          · exact le_rfl)
        (Finset.mem_univ index)
    have reciprocal_lt_denominator :
        1 / probability index letter < (denominator : ℝ) :=
      lt_of_le_of_lt (letter_le_inner.trans inner_le_cost)
        (lt_of_le_of_lt
          (le_add_of_nonneg_left ratio_positive.le)
          denominator_large)
    have mass_exceeds_one :
        (1 : ℝ) ≤ probability index letter * (denominator : ℝ) := by
      have crossed :=
        (div_lt_iff₀ genuinely_positive).mp
          reciprocal_lt_denominator
      nlinarith
    have positive_floor :
        0 < distributionFloorNumerator
          denominator (probability index) letter := by
      unfold distributionFloorNumerator
      exact Nat.floor_pos.mpr mass_exceeds_one
    change
      0 < distributionFloorNumerator denominator
        (probability index) letter +
          if letter = base then
            distributionFloorResidual denominator (probability index)
          else 0
    exact lt_of_lt_of_le positive_floor
      (Nat.le_add_right _ _)

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

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
    (positive : 0 < repeatedPostselectionMass G n S D)
    (base : ExactHistoryFlag X Y A B D)
    {gamma : ℝ} (gamma_positive : 0 < gamma) :
    ∃ denominator : ℕ, 0 < denominator ∧
      ∃ numerator : ExactLocalSamplerIndex X Y D →
        ExactHistoryFlag X Y A B D → ℕ,
        (∀ index, (∑ history, numerator index history) = denominator) ∧
        (∀ index, finiteTotalVariation
          (exactLocalConditionalFamily D base
            (exactLocallySampleableLaw G n S D) index)
          (fun history =>
            (numerator index history : ℝ) / denominator) < gamma) ∧
        (∀ index history,
          0 < exactLocalConditionalFamily D base
              (exactLocallySampleableLaw G n S D)
              index history →
            0 < numerator index history) ∧
        ∃ nonempty : ∀ index,
          (rationalMarked denominator (numerator index)).Nonempty,
          (∀ index history,
            uniformPermutationProbability
              (fun permutation : Equiv.Perm
                (ExactHistoryFlag X Y A B D × Fin denominator) =>
                rationalPermutationOutput denominator (numerator index)
                  (nonempty index) permutation = history) =
                (numerator index history : ℝ) / denominator) ∧
          (∀ left right,
            uniformPermutationProbability
              (fun permutation : Equiv.Perm
                (ExactHistoryFlag X Y A B D × Fin denominator) =>
                rationalPermutationOutput denominator (numerator left)
                  (nonempty left) permutation ≠
                rationalPermutationOutput denominator (numerator right)
                  (nonempty right) permutation) ≤
              2 * finiteTotalVariation
                (fun history =>
                  (numerator left history : ℝ) / denominator)
                (fun history =>
                  (numerator right history : ℝ) / denominator)) := by
  obtain ⟨denominator, denominator_positive, numerator,
      normalized, approximation, preserves⟩ :=
    existsCommonSupportPreservingRationalApproximations
      base
      (exactLocalConditionalFamily D base
        (exactLocallySampleableLaw G n S D))
      (exactLocalConditionalFamily_nonneg D base
        (exactLocallySampleableLaw G n S D)
        (exactLocallySampleableLaw_nonneg G n S D positive))
      (exactLocalConditionalFamily_sum D base
        (exactLocallySampleableLaw G n S D))
      gamma_positive
  refine ⟨denominator, denominator_positive, numerator,
    normalized, approximation, preserves,
    fun index => rationalMarked_nonempty denominator
      (numerator index) (normalized index) denominator_positive,
    ?_, ?_⟩
  · intro index history
    exact rationalPermutationOutput_probability
      denominator (numerator index) (normalized index) _ history
  · intro left right
    exact rationalPermutationOutput_disagreement_le_two_mul_finiteTotalVariation
      denominator denominator_positive
      (numerator left) (numerator right)
      (normalized left) (normalized right) _ _
