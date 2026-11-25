import Mathlib

namespace LL_Decomp587k

noncomputable section

open Real Set MeasureTheory
open scoped Classical

def IsBuchstab (ω : ℝ → ℝ) : Prop :=
  ContinuousOn ω (Ici 1) ∧ (∀ u : ℝ, 1 ≤ u → u ≤ 2 → ω u = 1 / u) ∧
    (∀ u : ℝ, 2 < u → HasDerivAt (fun v => v * ω v) (ω (u - 1)) u)

end

end LL_Decomp587k