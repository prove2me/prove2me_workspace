import Theorems.Thm_TowardsGRH_LW56e2_b83dbbd_dirichlet_zero_free_bound
import Theorems.Thm_AlpoegeClaudeRH_EveryCharacter_below_record
import Mathlib

/-- Proof sketch for `AlpoegeClaudeRH.EveryCharacter`.

    Split the half-plane `Re(s) > 1/2` at the verified zero-free boundary
    `0.8749570698`. Above the boundary nonvanishing is already Proved; at or
    below it we invoke the strictly weaker child carrying
    `hcap : s.re ≤ 0.8749570698`.

    The target states the pole exclusion as `χ ≠ 1 ∨ s ≠ 1` while the record
    theorem states it as `¬ (χ = 1 ∧ s = 1)`; the two are interconverted by
    De Morgan's laws (`tauto`), which is pure propositional logic. -/
theorem solution (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (s : ℂ)
    (hs : 1 / 2 < s.re) (h : χ ≠ 1 ∨ s ≠ 1) :
    DirichletCharacter.LFunction χ s ≠ 0 := by
  by_cases hrec : (0.8749570698 : ℝ) < s.re
  · -- Above the boundary: the audited uniform zero-free record.
    exact TowardsGRH_LW56e2_b83dbbd.dirichlet_zero_free_bound χ hrec (by tauto)
  · -- At or below the boundary: the remaining open child.
    exact AlpoegeClaudeRH.EveryCharacter_below_record N χ s hs h (le_of_not_gt hrec)
