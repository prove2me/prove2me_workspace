import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_core_39
import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Algebra.Group.Defs
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Algebra.Order.Sub.Defs
import Mathlib.Algebra.Star.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Matrix.Normed
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.Normed.Lp.WithLp
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Logic.Equiv.Defs
import Mathlib.MeasureTheory.Measure.MeasureSpace
import Mathlib.Order.Basic
import Mathlib.Topology.Defs.Filter

namespace QuantumParallelRepetition

open scoped ComplexOrder Matrix BigOperators InnerProductSpace
open Complex Matrix Finset

noncomputable section

open WithLp
open scoped BigOperators Kronecker ComplexOrder MatrixOrder

def unconditionalSourcePhysicalCleanedSelectedHistoryEquiv
    {L : ℕ} (j : Fin L) (β : Type*) :
    (Fin (L + 1) → β) ≃
      β × ((Fin j.val → β) × (Fin (L - j.val) → β)) where
  toFun f :=
    (f j.castSucc,
      (fun i => f ⟨i.val, by omega⟩,
       fun i => f ⟨j.val + 1 + i.val, by omega⟩))
  invFun q i :=
    if before : i.val < j.val then
      q.2.1 ⟨i.val, before⟩
    else if hit : i.val = j.val then q.1
    else q.2.2 ⟨i.val - (j.val + 1), by omega⟩
  left_inv := by
    intro f
    funext i
    dsimp
    split <;> rename_i before
    · apply congrArg f
      apply Fin.ext
      rfl
    · split <;> rename_i hit
      · apply congrArg f
        apply Fin.ext
        exact hit.symm
      · apply congrArg f
        apply Fin.ext
        simp only
        omega
  right_inv := by
    intro q
    rcases q with ⟨selected, before, later⟩
    apply Prod.ext
    · simp
    · apply Prod.ext
      · funext i
        simp
      · funext i
        have not_before : ¬ j.val + 1 + i.val < j.val := by omega
        have not_hit : ¬ j.val + 1 + i.val = j.val := by omega
        simp [not_before, not_hit]

end

end QuantumParallelRepetition
