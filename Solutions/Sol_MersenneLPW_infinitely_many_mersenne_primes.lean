import Mathlib
import Theorems.Thm_MersenneLPW_lenstra_pomerance_wagstaff
import Theorems.Thm_MersenneLPW_lpw_implies_infinitude

/-! # Infinitude of Mersenne primes (parent reduction)

Glue: the open child `MersenneLPW.lenstra_pomerance_wagstaff` carries the
Lenstra–Pomerance–Wagstaff asymptotic $C(y) \sim e^{\gamma}\log_2 y$ for the
Mersenne exponent counting function — strictly stronger than infinitude; the
already-Proved bridge `MersenneLPW.lpw_implies_infinitude` (garyholm) extracts
infinitude from that asymptotic. -/

theorem solution : {p : ℕ | (mersenne p).Prime}.Infinite :=
  MersenneLPW.lpw_implies_infinitude MersenneLPW.lenstra_pomerance_wagstaff
