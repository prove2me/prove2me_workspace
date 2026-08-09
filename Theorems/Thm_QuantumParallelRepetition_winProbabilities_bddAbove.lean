import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic

open scoped BigOperators ComplexOrder Kronecker MatrixOrder
open Matrix
open QuantumParallelRepetition
variable {X Y A B : Type*}
variable [Fintype X] [Fintype Y] [Fintype A] [Fintype B]

theorem QuantumParallelRepetition.winProbabilities_bddAbove (G : Game X Y A B) :
    BddAbove (Set.range (Strategy.winProbability (G := G))) := by sorry
