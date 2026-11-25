module
public import Definitions.Def_SNumbers_Basic
public import Mathlib.Analysis.Normed.Operator.Compact.Basic
set_option autoImplicit true
@[expose] public section
@[expose] public section
universe u
open Filter Topology
namespace SNumbers
section General
variable {𝕜 : Type u} [NontriviallyNormedField 𝕜]
variable {X Y Z : Type u}
variable [NormedAddCommGroup X] [NormedSpace 𝕜 X]
variable [NormedAddCommGroup Y] [NormedSpace 𝕜 Y]
variable [NormedAddCommGroup Z] [NormedSpace 𝕜 Z]
def entropySet (S : X →L[𝕜] Y) (n : ℕ) : Set ℝ :=
  {ε | 0 < ε ∧ ∃ N : Finset Y, N.card ≤ 2 ^ n ∧
    ⇑S '' Metric.closedBall 0 1 ⊆ ⋃ y ∈ (N : Set Y), Metric.closedBall y ε}
noncomputable def entropyNumber (S : X →L[𝕜] Y) (n : ℕ) : ℝ :=
  sInf (entropySet S n)
end General
section Densely
variable {𝕜 : Type u} [DenselyNormedField 𝕜]
variable {W X Y Z : Type u}
variable [NormedAddCommGroup W] [NormedSpace 𝕜 W]
variable [NormedAddCommGroup X] [NormedSpace 𝕜 X]
variable [NormedAddCommGroup Y] [NormedSpace 𝕜 Y]
variable [NormedAddCommGroup Z] [NormedSpace 𝕜 Z]
end Densely
end SNumbers
