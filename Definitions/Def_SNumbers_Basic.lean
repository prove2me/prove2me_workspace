module
public import Mathlib.Analysis.Normed.Operator.NormedSpace
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.LinearAlgebra.Dimension.LinearMap
set_option autoImplicit true
@[expose] public section
@[expose] public section
universe u
open scoped Cardinal
namespace ContinuousLinearMap
variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {X Y : Type*}
variable [NormedAddCommGroup X] [NormedSpace 𝕜 X]
variable [NormedAddCommGroup Y] [NormedSpace 𝕜 Y]
noncomputable abbrev rank (S : X →L[𝕜] Y) : Cardinal :=
  LinearMap.rank (S : X →ₗ[𝕜] Y)
end ContinuousLinearMap
namespace SNumbers
abbrev Family (𝕜 : Type u) [NontriviallyNormedField 𝕜] :=
  ∀ {X Y : Type u} [NormedAddCommGroup X] [NormedSpace 𝕜 X]
      [NormedAddCommGroup Y] [NormedSpace 𝕜 Y],
      (X →L[𝕜] Y) → ℕ → ℝ
variable {𝕜 : Type u} [NontriviallyNormedField 𝕜]
def Nonneg (s : Family 𝕜) : Prop :=
  ∀ {X Y : Type u} [NormedAddCommGroup X] [NormedSpace 𝕜 X]
      [NormedAddCommGroup Y] [NormedSpace 𝕜 Y] (S : X →L[𝕜] Y) (n : ℕ),
    0 ≤ s S n
def NormAtZero (s : Family 𝕜) : Prop :=
  ∀ {X Y : Type u} [NormedAddCommGroup X] [NormedSpace 𝕜 X]
      [NormedAddCommGroup Y] [NormedSpace 𝕜 Y] (S : X →L[𝕜] Y),
    s S 0 = ‖S‖
def Antitone (s : Family 𝕜) : Prop :=
  ∀ {X Y : Type u} [NormedAddCommGroup X] [NormedSpace 𝕜 X]
      [NormedAddCommGroup Y] [NormedSpace 𝕜 Y] (S : X →L[𝕜] Y) (n : ℕ),
    s S (n + 1) ≤ s S n
def Subadditive (s : Family 𝕜) : Prop :=
  ∀ {X Y : Type u} [NormedAddCommGroup X] [NormedSpace 𝕜 X]
      [NormedAddCommGroup Y] [NormedSpace 𝕜 Y] (S T : X →L[𝕜] Y) (n : ℕ),
    s (S + T) n ≤ s S n + ‖T‖
def IdealLike (s : Family 𝕜) : Prop :=
  ∀ {W X Y Z : Type u} [NormedAddCommGroup W] [NormedSpace 𝕜 W]
      [NormedAddCommGroup X] [NormedSpace 𝕜 X]
      [NormedAddCommGroup Y] [NormedSpace 𝕜 Y]
      [NormedAddCommGroup Z] [NormedSpace 𝕜 Z]
      (A : W →L[𝕜] X) (S : X →L[𝕜] Y) (B : Y →L[𝕜] Z) (n : ℕ),
    s (B.comp (S.comp A)) n ≤ ‖B‖ * s S n * ‖A‖
def VanishesOnLowRank (s : Family 𝕜) : Prop :=
  ∀ {X Y : Type u} [NormedAddCommGroup X] [NormedSpace 𝕜 X]
      [NormedAddCommGroup Y] [NormedSpace 𝕜 Y] (S : X →L[𝕜] Y) (n : ℕ),
    S.rank ≤ (n : Cardinal) → s S n = 0
def NormalisedAtId (s : Family 𝕜) : Prop :=
  ∀ (n : ℕ), s (ContinuousLinearMap.id 𝕜 (EuclideanSpace 𝕜 (Fin (n + 1)))) n = 1
def StrictlyNormalisedAtId (s : Family 𝕜) : Prop :=
  ∀ {X : Type u} [NormedAddCommGroup X] [NormedSpace 𝕜 X] (n : ℕ),
      (n : Cardinal) < Module.rank 𝕜 X → s (ContinuousLinearMap.id 𝕜 X) n = 1
section RankFacts
variable {X : Type u} [NormedAddCommGroup X] [NormedSpace 𝕜 X] {n : ℕ}
end RankFacts
structure IsSNumberSequence (s : Family 𝕜) : Prop where
  /-- (S1) `s` takes non-negative values. -/
  nonneg : Nonneg s
  /-- (S1) `s 0 S = ‖S‖`. -/
  norm_at_zero : NormAtZero s
  /-- (S1) `s` is antitone in `n`. -/
  antitone : Antitone s
  /-- (S2) Subadditivity. -/
  subadditive : Subadditive s
  /-- (S3) Ideal property. -/
  ideal : IdealLike s
  /-- (S4) Vanishes on operators of rank at most `n`. -/
  vanishes_on_low_rank : VanishesOnLowRank s
  /-- (S5) Normalised on `id_{ℓ₂^{n+1}}`. -/
  normalised_at_id : NormalisedAtId s
structure IsPseudoSNumberSequence (s : Family 𝕜) : Prop where
  /-- (S1) `s` takes non-negative values. -/
  nonneg : Nonneg s
  /-- (S1) `s 0 S = ‖S‖`. -/
  norm_at_zero : NormAtZero s
  /-- (S1) `s` is antitone in `n`. -/
  antitone : Antitone s
  /-- (S2) Subadditivity. -/
  subadditive : Subadditive s
  /-- (S3) Ideal property. -/
  ideal : IdealLike s
structure IsStrictSNumberSequence (s : Family 𝕜) : Prop extends IsSNumberSequence s where
  /-- (S5') `s n (id_X) = 1` whenever `dim X > n`. -/
  strictly_normalised_at_id : StrictlyNormalisedAtId s
def Additive (s : Family 𝕜) : Prop :=
  ∀ {X Y : Type u} [NormedAddCommGroup X] [NormedSpace 𝕜 X]
      [NormedAddCommGroup Y] [NormedSpace 𝕜 Y] (S T : X →L[𝕜] Y) (n m : ℕ),
    s (S + T) (n + m) ≤ s S n + s T m
def Multiplicative (s : Family 𝕜) : Prop :=
  ∀ {X Y Z : Type u} [NormedAddCommGroup X] [NormedSpace 𝕜 X]
      [NormedAddCommGroup Y] [NormedSpace 𝕜 Y]
      [NormedAddCommGroup Z] [NormedSpace 𝕜 Z]
      (S : Y →L[𝕜] Z) (T : X →L[𝕜] Y) (n m : ℕ),
    s (S.comp T) (n + m) ≤ s S n * s T m
end SNumbers
