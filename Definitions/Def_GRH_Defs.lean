import Mathlib

set_option autoImplicit false

namespace GRH

/-- `primeCountingAP q a x` is `π(x; q, a)`: the number of primes `p ≤ x` lying in the
residue class `a mod q`. For `x < 0` the value is `0`. -/
noncomputable def primeCountingAP (q a : ℕ) (x : ℝ) : ℕ :=
  (Finset.filter (fun p => p.Prime ∧ p ≡ a [MOD q]) (Finset.range (⌊x⌋₊ + 1))).card

end GRH
