import Definitions.Def_quantum_parallel_repetition_game
import Definitions.Def_qpr_alphabet_relabelling
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Logic.Equiv.Fin.Basic
import Theorems.Thm_QuantumParallelRepetition_entangledValue_relabel

open scoped BigOperators
open QuantumParallelRepetition

variable {X Y A B X' Y' A' B' : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
variable [Fintype X'] [Fintype Y'] [Fintype A'] [Fintype B']

theorem solution
    {G : Game X Y A B} {H : Game X' Y' A' B'}
    (eX : X ≃ X') (eY : Y ≃ Y') (eA : A ≃ A') (eB : B ≃ B')
    (hw : ∀ x y, H.questionWeight (eX x) (eY y) = G.questionWeight x y)
    (hp : ∀ x y a b, H.predicate (eX x) (eY y) (eA a) (eB b) = G.predicate x y a b)
    (n : ℕ) :
    repeatedEntangledValue H n = repeatedEntangledValue G n := by
  classical
  refine entangledValue_relabel (G := G.repeat n) (H := H.repeat n)
    (Equiv.piCongrRight fun _ : Fin n => eX) (Equiv.piCongrRight fun _ : Fin n => eY)
    (Equiv.piCongrRight fun _ : Fin n => eA) (Equiv.piCongrRight fun _ : Fin n => eB)
    (fun xs ys => ?_) (fun xs ys as bs => ?_)
  · show (∏ i : Fin n, H.questionWeight (eX (xs i)) (eY (ys i)))
      = ∏ i : Fin n, G.questionWeight (xs i) (ys i)
    exact Finset.prod_congr rfl fun i _ => hw (xs i) (ys i)
  · show decide (∀ i : Fin n, H.predicate (eX (xs i)) (eY (ys i)) (eA (as i)) (eB (bs i)) = true)
      = decide (∀ i : Fin n, G.predicate (xs i) (ys i) (as i) (bs i) = true)
    simp only [hp]
