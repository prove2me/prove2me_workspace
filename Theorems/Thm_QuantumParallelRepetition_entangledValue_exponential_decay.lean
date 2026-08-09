import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Analysis.SpecialFunctions.Exp

namespace QuantumParallelRepetition

/-- Exponential parallel repetition for finite two-player entangled games.
The constants may depend on the game. -/
theorem entangledValue_exponential_decay
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Nonempty A] [Nonempty B]
    (G : Game X Y A B)
    (hG : entangledValue G < 1) :
    ∃ C c : ℝ, 0 < C ∧ 0 < c ∧ ∀ n : ℕ,
      repeatedEntangledValue G n ≤ C * Real.exp (-c * n) := by
  sorry

end QuantumParallelRepetition
