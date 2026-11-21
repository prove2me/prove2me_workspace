import Theorems.Thm_GRH_mobius_character_and_progression_bounds_above_record
import Theorems.Thm_moebius_summatory_rpow_bound_below_record
import Mathlib

/-- Proof sketch for `moebius_summatory_rpow_bound`.

    Split the parameter range `ε > 0` at the verified exponent record
    `0.8749570698`, i.e. at `ε = 0.3749570698`. For larger `ε` the summatory
    estimate follows from the Proved uniform record with `σ = 1/2 + ε`,
    evaluated at the principal character of modulus 1; for `ε` at or below
    the record we invoke the strictly weaker child carrying
    `hcap : ε ≤ 0.3749570698`.

    The bridge between the record's summation over `Finset.range (N + 1)`
    and the target's over `Finset.Icc 1 N` is exact, not asymptotic: the two
    index sets differ only at `0`, and `μ 0 = 0`. -/
theorem solution :
    ∀ ε : ℝ, 0 < ε →
      Asymptotics.IsBigO Filter.atTop
        (fun N : ℕ => ∑ n ∈ Finset.Icc 1 N, (ArithmeticFunction.moebius n : ℂ))
        (fun N : ℕ => (N : ℝ) ^ (1 / 2 + ε)) := by
  intro ε hε
  by_cases hrec : (0.8749570698 : ℝ) < 1 / 2 + ε
  · -- Above the record: the Proved uniform summatory bound, at modulus 1.
    have hσ : (0.8749570698 : ℝ) < 1 / 2 + ε := hrec
    have hchar := (GRH.mobius_character_and_progression_bounds_above_record 1 (1 / 2 + ε) hσ).1
    -- Every character of modulus 1 is the principal one, evaluating to 1.
    have hchar_one : ∀ k : ℕ, (1 : DirichletCharacter ℂ 1) k = 1 := fun k => by
      have h := DirichletCharacter.modOne_eq_one (χ := (1 : DirichletCharacter ℂ 1))
      simpa using congrFun h k
    -- The two summation ranges differ only at 0, and μ 0 = 0.
    have E2 : ∀ N : ℕ,
        ∑ k ∈ Finset.range (N + 1), (ArithmeticFunction.moebius k : ℂ)
          = ∑ n ∈ Finset.Icc 1 N, (ArithmeticFunction.moebius n : ℂ) := fun N => by
      rw [Nat.range_succ_eq_Icc_zero]
      symm
      refine Finset.sum_subset ?_ fun a ha hna => ?_
      · intro x hx
        simp only [Finset.mem_Icc] at hx ⊢
        omega
      · have haz : a = 0 := by
          simp only [Finset.mem_Icc] at ha hna
          omega
        subst haz
        simp [ArithmeticFunction.moebius_eq_zero_of_not_squarefree not_squarefree_zero]
    -- Drop the trivial character factor from the record's summand.
    have hsum : ∀ N : ℕ,
        ∑ k ∈ Finset.range (N + 1), (1 : DirichletCharacter ℂ 1) k * (ArithmeticFunction.moebius k : ℂ)
          = ∑ k ∈ Finset.range (N + 1), (ArithmeticFunction.moebius k : ℂ) := fun N => by
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [hchar_one k, one_mul]
    have hbridge : ∀ N : ℕ,
        ∑ n ∈ Finset.Icc 1 N, (ArithmeticFunction.moebius n : ℂ)
          = ∑ k ∈ Finset.range (N + 1), (1 : DirichletCharacter ℂ 1) k * (ArithmeticFunction.moebius k : ℂ) := fun N => by
      rw [hsum N]
      symm
      exact E2 N
    have hf : (fun N : ℕ => ∑ n ∈ Finset.Icc 1 N, (ArithmeticFunction.moebius n : ℂ))
        = (fun N : ℕ => ∑ k ∈ Finset.range (N + 1),
            (1 : DirichletCharacter ℂ 1) k * (ArithmeticFunction.moebius k : ℂ)) := by
      funext N
      exact hbridge N
    rw [hf]
    exact hchar _
  · -- At or below the record: the remaining open child.
    exact moebius_summatory_rpow_bound_below_record ε hε (by linarith)
