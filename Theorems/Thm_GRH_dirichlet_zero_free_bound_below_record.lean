import Mathlib

open scoped DirichletCharacter

namespace GRH

theorem dirichlet_zero_free_bound_below_record
    {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) {s : ℂ}
    (hs : (1 / 2 : ℝ) < s.re)
    (hpole : ¬ (χ = 1 ∧ s = 1))
    (hcap : s.re ≤ 0.8749570698) :
    DirichletCharacter.LFunction χ s ≠ 0 := by sorry

end GRH
