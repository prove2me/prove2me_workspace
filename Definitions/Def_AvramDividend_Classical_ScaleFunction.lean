import Mathlib
import Definitions.Def_AvramDividend_Classical_SpectrallyNegativeLevy

/-!
The `q`-scale function `W = W^{(q)}` (p. 5, (3.4)), the one-sided derivative `W'(0+)`, the barrier
level `c*` (p. 13, (5.2)) and the barrier value functions `v_a` (p. 13, (5.1)) of Avram, Palmowski,
Pistorius, arXiv:math/0702893v1.
-/

open MeasureTheory Filter Set Topology
open scoped NNReal ENNReal

namespace AvramDividend.Classical

variable {Ω : Type*} [mΩ : MeasurableSpace Ω] {P : Measure Ω} {𝓕 : Filtration ℝ≥0 mΩ}

/-- `W` is the `q`-scale function of `X` (p. 5, (3.4)): `W = 0` on `(-∞, 0)`; on `[0, ∞)` it is
nonnegative, continuous and nondecreasing; and its Laplace transform is
`∫_0^∞ e^{-θy} W(y) dy = 1/(ψ(θ) - q)` for every `θ > Φ(q)`. For `q ≥ 0` the set
`{θ > Φ(q)}` equals `{θ ≥ 0 : ψ(θ) > q}` (`ψ` is convex with `ψ(0) = 0` and `Φ(q)` is the largest
root of `ψ = q`), which is how it is written here. -/
def IsScaleFunction (L : SpectrallyNegativeLevy P 𝓕) (q : ℝ) (W : ℝ → ℝ) : Prop :=
  (∀ y < 0, W y = 0) ∧ (∀ y, 0 ≤ y → 0 ≤ W y) ∧ ContinuousOn W (Ici 0) ∧
    MonotoneOn W (Ici 0) ∧
    ∀ θ : ℝ, 0 ≤ θ → q < L.ψ θ →
      IntegrableOn (fun y => Real.exp (-(θ * y)) * W y) (Ioi 0) ∧
        ∫ y in Ioi (0 : ℝ), Real.exp (-(θ * y)) * W y = (L.ψ θ - q)⁻¹

/-- `W'(0+) = lim_{y ↓ 0} W'(y) ∈ [0, ∞]`, taken in `EReal` so that the value `+∞` (unbounded
variation with `σ = 0`, p. 5) is represented. Written as a `liminf`, which equals the limit
whenever the limit exists. -/
noncomputable def derivZeroPlus (W : ℝ → ℝ) : EReal :=
  Filter.liminf (fun y => ((deriv W y : ℝ) : EReal)) (𝓝[>] (0 : ℝ))

/-- `W'(a)` for `a ≥ 0`, with `W'(0)` read as `W'(0+)` (p. 8 after (3.14), p. 15 proof of
Lemma 2(i)). -/
noncomputable def scaleDeriv (W : ℝ → ℝ) (a : ℝ) : EReal :=
  if a = 0 then derivZeroPlus W else ((deriv W a : ℝ) : EReal)

/-- `y / d` for a denominator `d ∈ (0, ∞]`, with `y / ∞ = 0`. -/
noncomputable def divE (y : ℝ) (d : EReal) : ℝ :=
  if d = ⊤ then 0 else y / d.toReal

/-- The set of (5.2): the levels `a > 0` with `W'(a) ≤ W'(x)` for all `x > 0`. -/
def cstarSet (W : ℝ → ℝ) : Set ℝ :=
  {a | 0 < a ∧ ∀ x : ℝ, 0 < x → deriv W a ≤ deriv W x}

open scoped _root_.Classical in
/-- The barrier level (5.2): `c* = inf {a > 0 : W'(a) ≤ W'(x) for all x > 0}` when this set is
nonempty. When it is empty, `c* = 0` if `W'(0+) ≤ W'(x)` for all `x > 0` (the paper's value for
Brownian motion with drift `µ ≤ 0`, p. 14, and the second case of the proof of Lemma 2(i),
p. 15), and `c* = ∞` otherwise (`inf ∅ = ∞`). -/
noncomputable def cstar (W : ℝ → ℝ) : ℝ≥0∞ :=
  if (cstarSet W).Nonempty then ⨅ a ∈ cstarSet W, ENNReal.ofReal a
  else if ∀ x : ℝ, 0 < x → derivZeroPlus W ≤ ((deriv W x : ℝ) : EReal) then 0 else ⊤

/-- The barrier value function (5.1), extended by `0` to `(-∞, 0)` (p. 20):
`v_a(x) = W(x)/W'(a)` for `0 ≤ x ≤ a`, `v_a(x) = x - a + W(a)/W'(a)` for `x > a`; for `a = 0`
this is `v_0(x) = x + W(0)/W'(0+)` (p. 13), with `W(0)/∞ = 0`. -/
noncomputable def barrierValue (W : ℝ → ℝ) (a x : ℝ) : ℝ :=
  if x < 0 then 0
  else if x ≤ a then divE (W x) (scaleDeriv W a)
  else x - a + divE (W a) (scaleDeriv W a)

/-- The candidate value function `v_{c*}` (with `c*` read as a real number; `c* < ∞` is
Lemma 2(i)). -/
noncomputable def vcstar (W : ℝ → ℝ) : ℝ → ℝ :=
  barrierValue W (cstar W).toReal

end AvramDividend.Classical
