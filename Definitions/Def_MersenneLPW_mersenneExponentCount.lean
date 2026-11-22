import Mathlib

namespace MersenneLPW

/-- `mersenneExponentCount y` counts the exponents `p < y` such that `2 ^ p - 1` is a
Mersenne prime. -/
def mersenneExponentCount (y : ℕ) : ℕ := Nat.count (fun p => (mersenne p).Prime) y

end MersenneLPW
