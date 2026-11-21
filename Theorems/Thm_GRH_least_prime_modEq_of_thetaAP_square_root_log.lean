import Mathlib

namespace GRH

/-- **Chowla's least-prime bound from a sharp Chebyshev lower bound (bridge).**
Given an absolute constant C ≥ 0 with the uniform one-logarithm Chebyshev lower bound

    θ(x; q, a) ≥ x / φ(q) - C * sqrt x * log x

for all moduli q ≥ 1, all a coprime to q, and all real x ≥ 2, there is an absolute constant
K ≥ 0 such that for every q ≥ 2 and every a coprime to q some prime p ≤ K * q^2 * (log q)^2
satisfies p ≡ a [MOD q].

The proof balances at x = K * q^2 * (log q)^2: the main term x / φ(q) ≥ K * q * (log q)^2
dominates the error C * sqrt x * log x once sqrt K exceeds a fixed multiple of C, so the prime
sum exceeds zero and yields the desired prime; the sum is over primes only, so no prime-power
noise enters. The concrete choice K = (64 * (C + 1) * (C + 2)^2)^2 makes the logarithmic
arithmetic work uniformly for q ≥ 2. -/
theorem least_prime_modEq_of_thetaAP_square_root_log
    (C : ℝ) (hC : 0 ≤ C)
    (hθ : ∀ (q a : ℕ), q ≠ 0 → a.Coprime q → ∀ x : ℝ, 2 ≤ x →
        x / (q.totient : ℝ) - C * Real.sqrt x * Real.log x ≤
          ∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => n ≡ a [MOD q] ∧ n.Prime),
            Real.log (n : ℝ)) :
    ∃ K : ℝ, 0 ≤ K ∧
      ∀ (q : ℕ), 2 ≤ q → ∀ (a : ℕ), a.Coprime q →
        ∃ p : ℕ, p.Prime ∧ p ≡ a [MOD q] ∧
          (p : ℝ) ≤ K * (q : ℝ) ^ 2 * (Real.log q) ^ 2 := by sorry

end GRH
