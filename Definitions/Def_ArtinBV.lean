import Mathlib

namespace ArtinPrimitiveRoots

open ArithmeticFunction Finset

/-- The Chebyshev function of a residue class, `ψ(X; q, a) = ∑_{n ≤ X, n ≡ a (mod q)} Λ(n)`. -/
noncomputable def psiAP (X q a : ℕ) : ℝ :=
  ∑ n ∈ (Ioc 0 X).filter (fun n => n ≡ a [MOD q]), Λ n

/-- The twisted Chebyshev function `ψ(X, χ) = ∑_{n ≤ X} Λ(n) χ(n)` of a Dirichlet character `χ`. -/
noncomputable def psiChar {d : ℕ} (χ : DirichletCharacter ℂ d) (X : ℕ) : ℂ :=
  ∑ n ∈ Ioc 0 X, (Λ n : ℂ) * χ n

/-- The primitive Dirichlet characters modulo `d` (those of conductor `d`). -/
noncomputable def primChars (d : ℕ) : Finset (DirichletCharacter ℂ d) :=
  univ.filter (fun χ => χ.conductor = d)

/-- The truncation `n ↦ f(n) 1_{n ≤ U}` of an arithmetic function `f`. -/
noncomputable def trunc (f : ArithmeticFunction ℝ) (U : ℕ) : ArithmeticFunction ℝ :=
  ⟨fun n => if n ≤ U then f n else 0, by simp⟩

end ArtinPrimitiveRoots
