import Mathlib
import Definitions.Def_IsEdenicSemiprime

/-! # Distinct Edenic semiprimes are coprime except for {15, 35}

Published as `edenic_semiprime_gcd` (prove2.me, theorem id
`93d0e903-9525-414f-8688-86dedbd985ef`). Statement skeleton; the proof
lives in `Solutions/Sol_edenic_semiprime_gcd.lean`. -/

theorem edenic_semiprime_gcd (m n : ℕ) (hm : IsEdenicSemiprime m)
    (hn : IsEdenicSemiprime n) (hmn : m ≠ n) :
    m.Coprime n ∨ {m, n} = ({15, 35} : Finset ℕ) := by
  sorry
