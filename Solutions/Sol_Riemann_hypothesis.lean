import Mathlib
import Theorems.Thm_AlpoegeClaudeRH_EveryCharacter
import Theorems.Thm_AlpoegeClaudeRH_RH_from_EveryCharacter

/-! # Riemann hypothesis, zeta special case (parent reduction)

Glue: the open child `AlpoegeClaudeRH.EveryCharacter` supplies the GRH-strength
nonvanishing statement for all Dirichlet L-functions; the already-Proved bridge
`AlpoegeClaudeRH.RH_from_EveryCharacter` (pitimespi) transfers it to the
critical-line formulation for `riemannZeta` — the `q = 1` instance of the
mission goal. -/

theorem solution : ∀ s : ℂ, 0 < s.re → s.re < 1 → riemannZeta s = 0 → s.re = 1 / 2 :=
  AlpoegeClaudeRH.RH_from_EveryCharacter AlpoegeClaudeRH.EveryCharacter
