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

theorem solution (G : Game X Y A B) :
    entangledValue G
      = entangledValue (G.relabel (Fintype.equivFin X) (Fintype.equivFin Y)
          (Fintype.equivFin A) (Fintype.equivFin B)) := by
  exact (entangledValue_relabel (Fintype.equivFin X) (Fintype.equivFin Y)
    (Fintype.equivFin A) (Fintype.equivFin B)
    (fun _ _ => by simp) (fun _ _ _ _ => by simp)).symm
