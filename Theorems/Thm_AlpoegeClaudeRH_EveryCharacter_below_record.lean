import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.DirichletContinuation

namespace AlpoegeClaudeRH

theorem EveryCharacter_below_record
    (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (s : ℂ)
    (hs : 1 / 2 < s.re) (h : χ ≠ 1 ∨ s ≠ 1)
    (hcap : s.re ≤ 0.8749570698) :
    DirichletCharacter.LFunction χ s ≠ 0 := by sorry

end AlpoegeClaudeRH
