import Theorems.Thm_TowardsGRH_LW56e2_b83dbbd_dirichlet_zero_free_bound
import Theorems.Thm_GRH_dirichlet_zero_free_bound_below_record
import Mathlib

open scoped DirichletCharacter

/-- Proof sketch for `GRH.dirichlet_zero_free_bound`.

    Split the half-plane `Re(s) > 1/2` at the verified zero-free boundary
    `0.8749570698`. Above the boundary nonvanishing is already Proved; at or
    below it we invoke the strictly weaker child carrying
    `hcap : s.re ≤ 0.8749570698`. -/
theorem solution
    {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) {s : ℂ}
    (hs : (1 / 2 : ℝ) < s.re)
    (hpole : ¬ (χ = 1 ∧ s = 1)) :
    DirichletCharacter.LFunction χ s ≠ 0 := by
  by_cases hrec : (0.8749570698 : ℝ) < s.re
  · -- Above the boundary: the audited uniform zero-free record.
    exact TowardsGRH_LW56e2_b83dbbd.dirichlet_zero_free_bound χ hrec hpole
  · -- At or below the boundary: the remaining open child.
    exact GRH.dirichlet_zero_free_bound_below_record χ hs hpole (le_of_not_gt hrec)
