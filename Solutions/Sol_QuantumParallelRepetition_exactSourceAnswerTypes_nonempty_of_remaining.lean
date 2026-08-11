import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_15
import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_normalized
import Theorems.Thm_QuantumParallelRepetition_exactRemainingCoordinate_card_pos
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Finset.SDiff
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Defs
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Sets
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Cast.Defs
import Mathlib.Data.Real.Basic
import Mathlib.Data.SetLike.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Defs.PartialOrder
import Mathlib.Tactic.Linarith.Lemmas
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Eq
import Mathlib.Tactic.NormNum.Result
import Mathlib.Tactic.Ring.Basic
import Mathlib.Tactic.Ring.Common
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open scoped BigOperators

set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 1800000
set_option maxRecDepth 2048

open QuantumParallelRepetition.Pinsker

attribute [local instance] Classical.propDecidable

variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem gameQuestionX_nonempty
    (G : Game X Y A B) : Nonempty X := by
  classical
  by_contra empty
  have zero : (∑ x : X, ∑ y : Y, G.questionWeight x y) = 0 := by
    apply Finset.sum_eq_zero
    intro x _
    exact (empty ⟨x⟩).elim
  linarith [G.weight_normalized]

theorem gameQuestionY_nonempty
    (G : Game X Y A B) : Nonempty Y := by
  classical
  by_contra empty
  have zero : (∑ x : X, ∑ y : Y, G.questionWeight x y) = 0 := by
    apply Finset.sum_eq_zero
    intro x _
    apply Finset.sum_eq_zero
    intro y _
    exact (empty ⟨y⟩).elim
  linarith [G.weight_normalized]

end

end QuantumParallelRepetition


open QuantumParallelRepetition
open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset
open scoped BigOperators ComplexOrder Kronecker MatrixOrder
  Matrix.Norms.L2Operator InnerProductSpace
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 2400000
set_option maxRecDepth 2048
attribute [local instance] Classical.propDecidable
variable {X Y A B : Type}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem solution
    (G : Game X Y A B) (n : ℕ) (S : Strategy (G.repeat n))
    (D : Finset (Fin n))
    (remaining : 0 < (Finset.univ \ D).card) :
    Nonempty A ∧ Nonempty B := by
  classical
  let i : Fin n :=
    (Classical.choice (Fintype.card_pos_iff.mp
      (exactRemainingCoordinate_card_pos D remaining))).val
  let xs : Fin n → X :=
    fun _ => Classical.choice (gameQuestionX_nonempty G)
  let ys : Fin n → Y :=
    fun _ => Classical.choice (gameQuestionY_nonempty G)
  have normalized := S.outcomeProbability_normalized xs ys
  constructor
  · by_contra empty
    have zero :
        (∑ a : Fin n → A, ∑ b : Fin n → B,
          S.outcomeProbability xs ys a b) = 0 := by
      apply Finset.sum_eq_zero
      intro a _
      exact (empty ⟨a i⟩).elim
    rw [zero] at normalized
    norm_num at normalized
  · by_contra empty
    have zero :
        (∑ a : Fin n → A, ∑ b : Fin n → B,
          S.outcomeProbability xs ys a b) = 0 := by
      apply Finset.sum_eq_zero
      intro a _
      apply Finset.sum_eq_zero
      intro b _
      exact (empty ⟨b i⟩).elim
    rw [zero] at normalized
    norm_num at normalized
