import Mathlib
set_option autoImplicit false

namespace Kyprianou.Ch08.StageB

theorem source_stable_integrated_coeff_summable
    (α q β : ℝ) (hα : 1 < α) (hq : 0 < q)
    (hβ : q ^ (1 / α) < β) :
    Summable (fun n : ℕ =>
      q ^ n * β ^ (-(α * (n + 1) + 1))) := by
  sorry

end Kyprianou.Ch08.StageB
