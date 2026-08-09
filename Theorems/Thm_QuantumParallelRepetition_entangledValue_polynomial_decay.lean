import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Analysis.SpecialFunctions.Pow.Real

namespace QuantumParallelRepetition

/-- The entangled value of a nontrivial finite game decays at least polynomially
under parallel repetition.  The constants may depend on the game. -/
theorem entangledValue_polynomial_decay
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Nonempty A] [Nonempty B]
    (G : Game X Y A B)
    (hG : entangledValue G < 1) :
    ∃ C α : ℝ, 0 < C ∧ 0 < α ∧ ∀ n : ℕ,
      repeatedEntangledValue G (n + 1) ≤ C * Real.rpow (n + 1) (-α) := by
  sorry

end QuantumParallelRepetition
