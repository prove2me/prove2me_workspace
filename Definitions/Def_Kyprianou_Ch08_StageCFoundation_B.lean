import Definitions.Def_Kyprianou_Ch08_StageCFoundation_A
set_option autoImplicit false
open MeasureTheory ProbabilityTheory Set Filter
open scoped NNReal ENNReal

namespace Kyprianou.Ch08.StageB





def shifted {Ω : Type*} (X : ℝ≥0 → Ω → ℝ) (x : ℝ) : ℝ≥0 → Ω → ℝ :=
  fun t ω => x + X t ω


noncomputable def killedIntervalDensity
    (W : ℝ → ℝ) (a x y : ℝ) : ℝ :=
  W x * W (a - y) / W a - W (x - y)


noncomputable def killedHalflineDensity
    (ψ : ℝ → ℝ) (q : ℝ) (W : ℝ → ℝ) (x y : ℝ) : ℝ :=
  Real.exp (-(Phi ψ q) * y) * W x - W (x - y)


noncomputable def unrestrictedPotentialDensity
    (ψ : ℝ → ℝ) (q : ℝ) (W : ℝ → ℝ) (z : ℝ) : ℝ :=
  deriv (Phi ψ) q * Real.exp (-(Phi ψ q) * z) - W (-z)


def HasSourceScaleFamily (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ) : Prop :=
  ∀ q : ℝ, 0 ≤ q → IsQScale ψ q (W q)


def result8_6 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ q : ℝ, 0 ≤ q →
      ((W q 0 = 0) ↔
        ¬ HasBoundedVariationTriplet
            D.gaussianCoefficient D.triplet.levyMeasure) ∧
      (HasBoundedVariationTriplet
        D.gaussianCoefficient D.triplet.levyMeasure →
        0 < bvDrift D.triplet.drift D.triplet.levyMeasure ∧
        W q 0 = (bvDrift D.triplet.drift D.triplet.levyMeasure)⁻¹)


def result8_7 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (q a x : ℝ), 0 ≤ q → 0 < a → 0 ≤ x → x ≤ a →
      ∃ U : Measure ℝ,
        IsIntervalKilledResolvent P (shifted D.X x) q a U ∧
        U = (volume.restrict (Set.Icc 0 a)).withDensity
          (fun y : ℝ =>
            ENNReal.ofReal (killedIntervalDensity (W q) a x y))


def result8_8 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (q x : ℝ), 0 ≤ q → 0 ≤ x →
      ∃ U : Measure ℝ,
        IsHalflineKilledResolvent P (shifted D.X x) q U ∧
        U = (volume.restrict (Set.Ici 0)).withDensity
          (fun y : ℝ =>
            ENNReal.ofReal (killedHalflineDensity ψ q (W q) x y))


def result8_9 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (q x : ℝ), 0 < q →
      DifferentiableAt ℝ (Phi ψ) q ∧
      ∃ U : Measure ℝ,
        IsResolvent P (shifted D.X x) q U ∧
        U = volume.withDensity
          (fun y : ℝ =>
            ENNReal.ofReal
              (unrestrictedPotentialDensity ψ q (W q) (x-y)))


def result8_12 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (reversion a y : ℝ),
    0 < reversion → 0 < a → y ≤ a →
    GOUHasLogJumpIntegrability D.triplet.levyMeasure →
    (¬ HasBoundedVariationTriplet D.gaussianCoefficient D.triplet.levyMeasure ∨
      (HasBoundedVariationTriplet D.gaussianCoefficient
         D.triplet.levyMeasure ∧
       reversion * a < bvDrift D.triplet.drift D.triplet.levyMeasure)) →
    HasGOUConstruction P D reversion ∧
    ∀ M : GOUInput Ω P,
      M.driver = D → M.meanReversion = reversion →
      IsGOUTheorem812TransformConclusion M
        (tripletLaplace D.triplet.drift
          D.gaussianCoefficient D.triplet.levyMeasure) y a







noncomputable def downExpectation {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) (q x : ℝ) : ℝ :=
  ∫ ω, discountedAt q (tauMinus (shifted X x) 0 ω) ∂P


noncomputable def upBeforeDownExpectation {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) (q x a : ℝ) : ℝ :=
  ∫ ω,
    (if tauPlus (shifted X x) a ω <
          tauMinus (shifted X x) 0 ω
     then discountedAt q (tauPlus (shifted X x) a ω)
     else 0) ∂P


noncomputable def downBeforeUpExpectation {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) (q x a : ℝ) : ℝ :=
  ∫ ω,
    (if tauMinus (shifted X x) 0 ω <
          tauPlus (shifted X x) a ω
     then discountedAt q (tauMinus (shifted X x) 0 ω)
     else 0) ∂P


def HasPositiveFiniteRightPsiSlope (ψ : ℝ → ℝ) (d : ℝ) : Prop :=
  0 < d ∧
  Filter.Tendsto (fun h : ℝ => (ψ h - ψ 0) / h)
    (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds d)


def result8_1 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P),
    ∃ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
      IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ ∧
      HasSourceScaleFamily ψ W ∧
      (∀ (q x : ℝ), 0 < q →
        downExpectation P D.X q x =
          Zscale q (W q) x -
            q / Phi ψ q * W q x) ∧
      (∀ (x : ℝ) (d : ℝ),
        HasPositiveFiniteRightPsiSlope ψ d →
        downExpectation P D.X 0 x = 1 - d * W 0 x) ∧
      ((¬ ∃ d : ℝ, HasPositiveFiniteRightPsiSlope ψ d) →
        ∀ x : ℝ, downExpectation P D.X 0 x = 1) ∧
      (∀ (q x a : ℝ), 0 ≤ q → 0 < a → x ≤ a →
        0 < W q a ∧
        upBeforeDownExpectation P D.X q x a =
          W q x / W q a ∧
        downBeforeUpExpectation P D.X q x a =
          Zscale q (W q) x -
            Zscale q (W q) a * W q x / W q a)


def result8_3 : Prop :=
  ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
    HasSourceScaleFamily ψ W →
    ∀ x : ℝ, 0 ≤ x →
      ∃ F : ℂ → ℂ,
        Differentiable ℂ F ∧
        ∀ q : ℝ, 0 ≤ q → F (q : ℂ) = (W q x : ℂ)


def result8_5 : Prop :=
  ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
    HasSourceScaleFamily ψ W →
    ∀ x : ℝ, 0 < x →
      ∃ F : ℂ → ℂ,
        Differentiable ℂ F ∧
        ∀ q : ℝ, 0 ≤ q → F (q : ℂ) = (Zscale q (W q) x : ℂ)


noncomputable def reflectedSupJointPayoff {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (q θ x a : ℝ) (ω : Ω) : ℝ :=
  match reflectedSupExit X x a ω with
  | ⊤ => 0
  | (t : ℝ≥0) =>
      Real.exp (-q * (t : ℝ) - θ * reflectAtSup X x t ω)


def result8_10_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsFullMomentLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (q θ x a : ℝ), 0 ≤ q → 0 < a → 0 ≤ x → x ≤ a →
      Integrable (fun ω => Real.exp (θ * D.X 1 ω)) P →
      let p := q - ψ θ
      let V := tiltedScale θ (W q)
      let Zv := Zscale p V
      let derivative := derivWithin V (Set.Ici a) a
      HasDerivWithinAt V derivative (Set.Ici a) a ∧
      ((derivative + θ * V a ≠ 0 →
        (∫ ω, reflectedSupJointPayoff D.X q θ x a ω ∂P) =
          Real.exp (-θ * x) *
            (Zv (a - x) -
             V (a - x) *
               (p * V a + θ * Zv a) /
               (derivative + θ * V a))) ∧
       (derivative + θ * V a = 0 →
        (∫ ω, reflectedSupJointPayoff D.X q θ x a ω ∂P) = 0))


def result8_10_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (q x a : ℝ), 0 ≤ q → 0 < a → 0 ≤ x → x ≤ a →
      Zscale q (W q) a ≠ 0 ∧
      (∫ ω, discountedAt q (reflectedInfExit D.X x a ω) ∂P) =
        Zscale q (W q) x / Zscale q (W q) a


def result8_10 : Prop := result8_10_i ∧ result8_10_ii


def result8_11_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (q x a : ℝ), 0 ≤ q → 0 < a → 0 ≤ x → x < a →
      let V := W q
      let da := derivWithin V (Set.Ici a) a
      HasDerivWithinAt V da (Set.Ici a) a ∧
      ∃ U : Measure ℝ,
        IsSupremumReflectedPotential P D.X q x a U ∧
        (da ≠ 0 →
          U = supremumReflectedScaleResolvent W q x a) ∧
        (da = 0 →
          q = 0 ∧ U {0} = ⊤ ∧
          (∀ n : ℕ,
            0 < derivWithin
              (W (1 / (((n + 1 : ℕ) : ℝ))))
              (Set.Ici a) a) ∧
          ∀ A : Set ℝ, MeasurableSet A →
            U A =
              ⨆ n : ℕ,
                (supremumReflectedScaleResolvent W
                  (1 / (((n + 1 : ℕ) : ℝ))) x a) A)


def result8_11_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (q x a : ℝ), 0 ≤ q → 0 < a → 0 ≤ x → x < a →
      Zscale q (W q) a ≠ 0 ∧
      ∃ U : Measure ℝ,
        IsInfimumReflectedPotential P D.X q x a U ∧
        U = (volume.restrict (Set.Ico 0 a)).withDensity
          (fun y : ℝ =>
            ENNReal.ofReal
              (W q (a - y) * Zscale q (W q) x /
                Zscale q (W q) a - W q (x - y)))


def result8_11 : Prop := result8_11_i ∧ result8_11_ii







def exercise8_2_i : Prop :=
  ∀ (α q β : ℝ) (W : ℝ → ℝ → ℝ),
    1 < α → α < 2 → 0 < q → q ^ (1 / α) < β →
    HasSourceScaleFamily (fun v : ℝ => v ^ α) W →
    Summable (fun n : ℕ =>
      q ^ n * β ^ (-(α * (n + 1) + 1))) ∧
    (∫ x in Set.Ioi (0 : ℝ),
      Real.exp (-β * x) * integratedScale (W q) x ∂volume) =
      (β * (β ^ α - q))⁻¹ ∧
    (β * (β ^ α - q))⁻¹ =
      ∑' n : ℕ, q ^ n * β ^ (-(α * (n + 1) + 1))


def exercise8_2_ii : Prop :=
  ∀ (α q x : ℝ) (W : ℝ → ℝ → ℝ),
    1 < α → α < 2 → 0 ≤ q → 0 ≤ x →
    HasSourceScaleFamily (fun v : ℝ => v ^ α) W →
    Zscale q (W q) x =
      ∑' n : ℕ, q ^ n * x ^ (α * n) / Real.Gamma (1 + α * n) ∧
    Zscale q (W q) x = mittagLeffler α (q * x ^ α)


def exercise8_2_iii : Prop :=
  ∀ (α q x : ℝ) (W : ℝ → ℝ → ℝ),
    1 < α → α < 2 → 0 ≤ q → 0 ≤ x →
    HasSourceScaleFamily (fun v : ℝ => v ^ α) W →
    W q x = α * x ^ (α-1) *
      deriv (mittagLeffler α) (q * x ^ α)


def exercise8_2_iv : Prop :=
  ∀ (q x : ℝ) (W : ℝ → ℝ → ℝ),
    0 ≤ q → 0 ≤ x →
    HasSourceScaleFamily (fun β : ℝ => β ^ 2 / 2) W →
    W q x =
      (if q = 0 then 2 * x
       else Real.sqrt (2 / q) *
         Real.sinh (Real.sqrt (2 * q) * x)) ∧
    Zscale q (W q) x =
      Real.cosh (Real.sqrt (2 * q) * x)


def exercise8_2 : Prop :=
  exercise8_2_i ∧ exercise8_2_ii ∧
  exercise8_2_iii ∧ exercise8_2_iv


def exercise8_5_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    (∀ q : ℝ, 0 < q →
      Filter.Tendsto
        (fun z : ℝ => Zscale q (W q) z / W q z)
        Filter.atTop (nhds (q / Phi ψ q))) ∧
    (∃ c : ℝ,
      Filter.Tendsto
        (fun q : ℝ => q / Phi ψ q)
        (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds c) ∧
      Filter.Tendsto
        (fun z : ℝ => Zscale 0 (W 0) z / W 0 z)
        Filter.atTop (nhds c)) ∧
    (∀ q x : ℝ, 0 ≤ q →
      Filter.Tendsto
        (fun a : ℝ => W q (a - x) / W q a)
        Filter.atTop (nhds (Real.exp (-Phi ψ q * x))))


def exercise8_5_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ q : ℝ, 0 ≤ q →
      (¬ HasBoundedVariationTriplet
        D.gaussianCoefficient D.triplet.levyMeasure →
        (0 < D.gaussianCoefficient ^ 2 →
          HasExtendedRightSlope (W q)
            (((2 / D.gaussianCoefficient ^ 2 : ℝ) : EReal))) ∧
        (D.gaussianCoefficient = 0 →
          HasExtendedRightSlope (W q) (⊤ : EReal))) ∧
      (HasBoundedVariationTriplet
        D.gaussianCoefficient D.triplet.levyMeasure →
        (D.triplet.levyMeasure (Set.Iio (0 : ℝ)) < ⊤ →
          HasExtendedRightSlope (W q)
            ((((D.triplet.levyMeasure (Set.Iio (0 : ℝ))).toReal + q) /
              (bvDrift D.triplet.drift D.triplet.levyMeasure) ^ 2 : ℝ))) ∧
        (D.triplet.levyMeasure (Set.Iio (0 : ℝ)) = ⊤ →
          HasExtendedRightSlope (W q) (⊤ : EReal)))


def exercise8_5 : Prop :=
  exercise8_5_i ∧ exercise8_5_ii


noncomputable def stableOvershootCDF
    (α y : ℝ) : ℝ :=
  Real.sin (Real.pi * (α - 1)) / Real.pi *
    ∫ t in (0 : ℝ)..y, t ^ (-(α - 1)) / (1 + t)


def StableOvershootEvent {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x y : ℝ) (ω : Ω) : Prop :=
  tauMinus (shifted X x) 0 ω <
    tauPlus (shifted X x) 1 ω ∧
  ∃ v : ℝ,
    postPassageValue (shifted X x)
      (tauMinus (shifted X x) 0 ω) ω = some v ∧
    -v ≤ y


def exercise8_12_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (α x y : ℝ),
    1 < α → α < 2 → 0 < x → x < 1 → 0 ≤ y →
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D)
      (fun β : ℝ => β ^ α) →
    (P {ω | StableOvershootEvent D.X x y ω}).toReal =
      stableOvershootCDF α (y / x) -
      x ^ (α - 1) * stableOvershootCDF α y


def exercise8_12_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (α x y : ℝ),
    1 < α → α < 2 → 0 < x → x < 1 → 0 ≤ y →
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D)
      (fun β : ℝ => β ^ α) →
    (P {ω | StableOvershootEvent D.X x y ω}).toReal =
      Real.sin (Real.pi * (α - 1)) / Real.pi *
      x ^ (α - 1) * (1 - x) *
        ∫ t in (0 : ℝ)..y,
          t ^ (-(α - 1)) / ((t + 1) * (t + x))


def exercise8_12 : Prop :=
  exercise8_12_i ∧ exercise8_12_ii







def HasNegativeRightPsiSlope (ψ : ℝ → ℝ) : Prop :=
  ∃ d : EReal, d < 0 ∧
    Filter.Tendsto
      (fun h : ℝ => (((ψ h - ψ 0) / h : ℝ) : EReal))
      (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds d)


def exercise8_1 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (F : Filtration ℝ≥0 mΩ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasCompletedNaturalFiltration P D F →
    HasNegativeRightPsiSlope ψ →
    ∀ (t : ℝ≥0) (A : Set Ω),
      @MeasurableSet Ω (F t) A →
      Filter.Tendsto
        (fun a : ℝ =>
          (P (A ∩ {ω | tauPlus D.X a ω ≠ ⊤})).toReal /
            (P {ω | tauPlus D.X a ω ≠ ⊤}).toReal)
        Filter.atTop
        (nhds ((esscherFiniteTimeLaw
          (SpectrallyNegativeModel.toData P D) ψ
          (Phi ψ 0) t) A).toReal)


def exercise8_6 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ x : ℝ, x ≤ 0 →
      (D.gaussianCoefficient = 0 →
        (P {ω | postPassageValue D.X
          (tauMinus D.X x ω) ω = some x}).toReal = 0) ∧
      (0 < D.gaussianCoefficient ^ 2 →
        HasDerivWithinAt (W 0)
          (derivWithin (W 0) (Set.Ici (-x)) (-x))
          (Set.Ici (-x)) (-x) ∧
        (P {ω | postPassageValue D.X
          (tauMinus D.X x ω) ω = some x}).toReal =
          D.gaussianCoefficient ^ 2 / 2 *
            (derivWithin (W 0) (Set.Ici (-x)) (-x) -
              Phi ψ 0 * W 0 (-x)))


noncomputable def lastExitShifted
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (y : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  lastNegativeVisit (shifted X y) ω


def NeverNegative {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x : ℝ) (ω : Ω) : Prop :=
  ∀ t : ℝ≥0, 0 < t → 0 ≤ x + X t ω


def exercise8_10_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    (∀ᵐ ω ∂P, Filter.Tendsto (fun t : ℝ≥0 => D.X t ω)
      Filter.atTop Filter.atTop) →
    ∀ (q y : ℝ), 0 < q →
      (∫ ω, discountedAt q (lastExitShifted D.X y ω) ∂P) =
        q * ∫ x in Set.Ici (0 : ℝ),
          unrestrictedPotentialDensity ψ q (W q) (x - y) *
            (P {ω | NeverNegative D.X x ω}).toReal ∂volume


def exercise8_10_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    (∀ᵐ ω ∂P, Filter.Tendsto (fun t : ℝ≥0 => D.X t ω)
      Filter.atTop Filter.atTop) →
    ∃ d : ℝ,
      HasPositiveFiniteRightPsiSlope ψ d ∧
      (∀ (q y : ℝ), 0 < q → y ≤ 0 →
        (∫ ω, discountedAt q (lastExitShifted D.X y ω) ∂P) =
          d * deriv (Phi ψ) q * Real.exp (Phi ψ q * y)) ∧
      (HasBoundedVariationTriplet
        D.gaussianCoefficient D.triplet.levyMeasure →
        (P {ω | lastExitShifted D.X 0 ω = 0}).toReal =
          d / bvDrift D.triplet.drift D.triplet.levyMeasure) ∧
      (¬ HasBoundedVariationTriplet
        D.gaussianCoefficient D.triplet.levyMeasure →
        (P {ω | lastExitShifted D.X 0 ω = 0}).toReal = 0)


noncomputable def discountedPositiveLastExit
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (q y : ℝ) (ω : Ω) : ℝ :=
  if (0 : WithTop ℝ≥0) < lastExitShifted X y ω
  then discountedAt q (lastExitShifted X y ω)
  else 0


noncomputable def downOvershootTilt
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (q θ y : ℝ) (ω : Ω) : ℝ :=
  match tauMinus (shifted X y) 0 ω with
  | ⊤ => 0
  | (t : ℝ≥0) =>
      Real.exp (-q * (t : ℝ) + θ * (y + X t ω))


def exercise8_10_iii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    (∀ᵐ ω ∂P, Filter.Tendsto (fun t : ℝ≥0 => D.X t ω)
      Filter.atTop Filter.atTop) →
    ∃ d : ℝ,
      HasPositiveFiniteRightPsiSlope ψ d ∧
      ∀ (q y : ℝ), 0 < q → 0 < y →
        (∫ ω, discountedPositiveLastExit D.X q y ω ∂P) =
          d * deriv (Phi ψ) q *
            ∫ ω, downOvershootTilt D.X q (Phi ψ q) y ω ∂P


def exercise8_10_iv : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    (∀ᵐ ω ∂P, Filter.Tendsto (fun t : ℝ≥0 => D.X t ω)
      Filter.atTop Filter.atTop) →
    ∃ d : ℝ,
      HasPositiveFiniteRightPsiSlope ψ d ∧
      ∀ (q y : ℝ), 0 < q → 0 < y →
        (∫ ω, discountedPositiveLastExit D.X q y ω ∂P) =
          d * deriv (Phi ψ) q *
            Real.exp (Phi ψ q * y) - d * W q y

def exercise8_10 : Prop :=
  exercise8_10_i ∧ exercise8_10_ii ∧
  exercise8_10_iii ∧ exercise8_10_iv



end Kyprianou.Ch08.StageB
