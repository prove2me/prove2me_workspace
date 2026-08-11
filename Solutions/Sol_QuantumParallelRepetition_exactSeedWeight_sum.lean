import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_15
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.GroupWithZero.NeZero
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Algebra.NeZero
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.IsBotOne
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Ring.Nat
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Defs
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
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
import Mathlib.Data.Nat.SuccPred
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Order.Lattice
import Mathlib.Order.Nat
import Mathlib.Tactic.FieldSimp.Lemmas
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

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators
set_option maxHeartbeats 1200000
attribute [local instance] Classical.propDecidable

theorem solution
    {M : Type*} [Fintype M] [DecidableEq M]
    (nonempty : 0 < Fintype.card M) :
    (∑ seed : ExactForwardSeed M,
      exactSeedWeight seed) = 1 := by
  classical
  have hbits : 0 < Fintype.card (M → Bool) :=
    Fintype.card_pos_iff.mpr ⟨fun _ => false⟩
  rw [exactForwardSeed_sum]
  conv_rhs => rw [← exactUniform_sum nonempty]
  apply Finset.sum_congr (by ext; simp)
  intro coordinate _
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
