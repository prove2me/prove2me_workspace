import Mathlib

open scoped DirichletCharacter

theorem TowardsGRH_LW56e2_b83dbbd.dirichlet_zero_free_bound
    {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) {s : ℂ}
    (hs : (0.8749570698 : ℝ) < s.re)
    (hpole : ¬ (χ = 1 ∧ s = 1)) :
    DirichletCharacter.LFunction χ s ≠ 0 := by sorry
