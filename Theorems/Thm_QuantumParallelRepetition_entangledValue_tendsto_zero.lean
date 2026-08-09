import Definitions.Def_quantum_parallel_repetition_game
import Mathlib.Topology.Order.Basic

open Filter
open scoped Topology

namespace QuantumParallelRepetition

/-- The entangled value of every nontrivial finite two-player game tends to zero under
parallel repetition. -/
theorem entangledValue_tendsto_zero
    {X Y A B : Type*}
    [Fintype X] [Fintype Y] [Fintype A] [Fintype B]
    [Nonempty A] [Nonempty B]
    (G : Game X Y A B)
    (hG : entangledValue G < 1) :
    Tendsto (repeatedEntangledValue G) atTop (𝓝 0) := by
  sorry

end QuantumParallelRepetition
