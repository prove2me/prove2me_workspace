import Mathlib

namespace LandauFunction

/-- The (offset) logarithmic integral `Li(x) = ∫₂ˣ dt / ln t`. -/
noncomputable def logIntegral (x : ℝ) : ℝ :=
  ∫ t in (2 : ℝ)..x, 1 / Real.log t

/-- The inverse `Li⁻¹` of the logarithmic integral: for `y ≥ 0`, the unique `x ≥ 2`
with `Li(x) = y` (realised as the least `x ≥ 2` with `y ≤ Li(x)`). -/
noncomputable def logIntegralInv (y : ℝ) : ℝ :=
  sInf {x : ℝ | 2 ≤ x ∧ y ≤ logIntegral x}

end LandauFunction
