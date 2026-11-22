import Definitions.Def_Kyprianou_Ch08_StageCFoundation_B
set_option autoImplicit false
open MeasureTheory ProbabilityTheory Set Filter
open scoped NNReal ENNReal

namespace Kyprianou.Ch08.StageB
def exercise8_11_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (q x a : ℝ),
    0 ≤ q → 0 < a → 0 < x → x ≤ a →
    (∫ ω, discountedAt q (reflectedInfExit D.X x a ω) ∂P) =
      downBeforeUpExpectation P D.X q x a *
        (∫ ω, discountedAt q (reflectedInfExit D.X 0 a ω) ∂P) +
      upBeforeDownExpectation P D.X q x a


def exercise8_11_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    HasBoundedVariationTriplet D.gaussianCoefficient
      D.triplet.levyMeasure →
    ∀ (q x a : ℝ), 0 ≤ q → 0 < a → 0 ≤ x → x ≤ a →
      Zscale q (W q) a ≠ 0 ∧
      (∫ ω, discountedAt q (reflectedInfExit D.X x a ω) ∂P) =
        Zscale q (W q) x / Zscale q (W q) a


def exercise8_11_iii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (q x c : ℝ), 0 < q → 0 < x → x < c →
      HasUniqueCappedStorage P D.X x c ∧
      Zscale q (W q) c ≠ 0 ∧
      ∀ S : CappedStorage P D.X x c,
        (∫ ω, discountedAt q (cappedEmptyingTime S ω) ∂P) =
          Zscale q (W q) (c - x) / Zscale q (W q) c

def exercise8_11 : Prop :=
  exercise8_11_i ∧ exercise8_11_ii ∧ exercise8_11_iii







noncomputable def descendingJumpTail
    (jumpMeasure : Measure ℝ) (y : ℝ) : ℝ :=
  (jumpMeasure (Set.Iio (-y))).toReal


def DriftsToPositiveInfinity {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P,
    Filter.Tendsto (fun t : ℝ≥0 => X t ω)
      Filter.atTop Filter.atTop


def DriftsToNegativeInfinity {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P,
    Filter.Tendsto (fun t : ℝ≥0 => X t ω)
      Filter.atTop Filter.atBot


noncomputable def measureConvolve
    (μ ν : Measure ℝ) : Measure ℝ :=
  Measure.map (fun p : ℝ × ℝ => p.1 + p.2) (μ.prod ν)


noncomputable def measureConvolvePow
    (ν : Measure ℝ) : ℕ → Measure ℝ
  | 0 => Measure.dirac (0 : ℝ)
  | n + 1 => measureConvolve ν (measureConvolvePow ν n)


noncomputable def descendingRenewalMeasure
    (jumpMeasure : Measure ℝ) (d : ℝ) : Measure ℝ :=
  (volume.restrict (Set.Ioi (0 : ℝ))).withDensity
    (fun y : ℝ =>
      ENNReal.ofReal ((d)⁻¹ * descendingJumpTail jumpMeasure y))


def exercise8_3_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P),
    HasBoundedVariationTriplet
      D.gaussianCoefficient D.triplet.levyMeasure →
    DriftsToPositiveInfinity P D.X →
    let d := bvDrift D.triplet.drift D.triplet.levyMeasure
    0 < d ∧ (d)⁻¹ *
      (∫ y in Set.Ioi (0 : ℝ),
        descendingJumpTail D.triplet.levyMeasure y ∂volume) < 1


def exercise8_3_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasBoundedVariationTriplet
      D.gaussianCoefficient D.triplet.levyMeasure →
    DriftsToPositiveInfinity P D.X →
    HasSourceScaleFamily ψ W →
    let d := bvDrift D.triplet.drift D.triplet.levyMeasure
    let ν := descendingRenewalMeasure D.triplet.levyMeasure d
    ∃ m : Measure ℝ,
      IsScaleMeasure (W 0) m ∧
      (∀ β : ℝ, 0 < β →
        (∫ x in Set.Ici (0 : ℝ),
          Real.exp (-β * x) ∂m) =
          (d - ∫ y in Set.Ioi (0 : ℝ),
            Real.exp (-β * y) *
              descendingJumpTail D.triplet.levyMeasure y ∂volume)⁻¹) ∧
      (∀ A : Set ℝ, MeasurableSet A →
        m A =
          (ENNReal.ofReal ((d)⁻¹)) *
          ∑' n : ℕ, (measureConvolvePow ν n) A)


def exercise8_3_iii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    HasBoundedVariationTriplet
      D.gaussianCoefficient D.triplet.levyMeasure →
    DriftsToPositiveInfinity P D.X →
    ∀ (rate μ : ℝ), 0 < rate → 0 < μ →
      (∀ y : ℝ, 0 < y →
        descendingJumpTail D.triplet.levyMeasure y =
          rate * Real.exp (-μ * y)) →
      let d := bvDrift D.triplet.drift D.triplet.levyMeasure
      0 < d * μ - rate ∧
      ∀ x : ℝ, 0 ≤ x →
        W 0 x = (d)⁻¹ *
          (1 + rate / (d * μ - rate) *
            (1 - Real.exp (-(μ - rate / d) * x)))

def exercise8_3 : Prop :=
  exercise8_3_i ∧ exercise8_3_ii ∧ exercise8_3_iii


def HasAtomlessNegativeLevyMeasure (jumpMeasure : Measure ℝ) : Prop :=
  ∀ x : ℝ, x < 0 → jumpMeasure {x} = 0


def HasSmoothJumpTail
    (jumpMeasure : Measure ℝ) (n : ℕ) : Prop :=
  ContDiffOn ℝ n
    (descendingJumpTail jumpMeasure) (Set.Ioi (0 : ℝ))


def exercise8_4_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    HasBoundedVariationTriplet D.gaussianCoefficient
      D.triplet.levyMeasure →
    DriftsToPositiveInfinity P D.X →
    (ContDiffOn ℝ 1 (W 0) (Set.Ioi (0 : ℝ)) ↔
      HasAtomlessNegativeLevyMeasure D.triplet.levyMeasure)


def exercise8_4_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    HasBoundedVariationTriplet D.gaussianCoefficient
      D.triplet.levyMeasure →
    DriftsToPositiveInfinity P D.X →
    ∀ n : ℕ, 2 ≤ n →
      (ContDiffOn ℝ n (W 0) (Set.Ioi (0 : ℝ)) ↔
        HasSmoothJumpTail D.triplet.levyMeasure (n - 1))


def exercise8_4_iii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    HasBoundedVariationTriplet D.gaussianCoefficient
      D.triplet.levyMeasure →
    ∀ q : ℝ, (0 < q ∨ (q = 0 ∧
        DriftsToNegativeInfinity P D.X)) →
      (ContDiffOn ℝ 1 (W q) (Set.Ioi (0 : ℝ)) ↔
        HasAtomlessNegativeLevyMeasure D.triplet.levyMeasure) ∧
      (∀ n : ℕ, 2 ≤ n →
        (ContDiffOn ℝ n (W q) (Set.Ioi (0 : ℝ)) ↔
          HasSmoothJumpTail D.triplet.levyMeasure (n - 1)))


def Oscillates {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P,
    Filter.limsup (fun t : ℝ≥0 => (X t ω : EReal))
      Filter.atTop = ⊤ ∧
    Filter.liminf (fun t : ℝ≥0 => (X t ω : EReal))
      Filter.atTop = ⊥


def exercise8_4_iv : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    HasBoundedVariationTriplet D.gaussianCoefficient
      D.triplet.levyMeasure →
    Oscillates P D.X →
    (ContDiffOn ℝ 1 (W 0) (Set.Ioi (0 : ℝ)) ↔
      HasAtomlessNegativeLevyMeasure D.triplet.levyMeasure) ∧
    (∀ n : ℕ, 2 ≤ n →
      (ContDiffOn ℝ n (W 0) (Set.Ioi (0 : ℝ)) ↔
        HasSmoothJumpTail D.triplet.levyMeasure (n - 1)))

def exercise8_4 : Prop :=
  exercise8_4_i ∧ exercise8_4_ii ∧
  exercise8_4_iii ∧ exercise8_4_iv





def HasEsscherCoefficientLimit (ψ : ℝ → ℝ) (c : ℝ) : Prop :=
  ∃ L : ℝ,
    Filter.Tendsto
      (fun h : ℝ => h / (Phi ψ (h + ψ c) - c))
      (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds L)


noncomputable def esscherDownCoefficient
    (ψ : ℝ → ℝ) (c p : ℝ) : ℝ :=
  if p = ψ c then
    Classical.epsilon (fun L : ℝ =>
      Filter.Tendsto
        (fun h : ℝ => h / (Phi ψ (h + ψ c) - c))
        (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds L))
  else (p - ψ c) / (Phi ψ p - c)


def HasFiniteRightSlopeAt (ψ : ℝ → ℝ) (c : ℝ) : Prop :=
  ∃ d : ℝ,
    Filter.Tendsto
      (fun h : ℝ => (ψ (c + h) - ψ c) / h)
      (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds d)


noncomputable def selectedRightSlope
    (ψ : ℝ → ℝ) (c : ℝ) : ℝ :=
  Classical.epsilon (fun d : ℝ =>
    Filter.Tendsto
      (fun h : ℝ => (ψ (c + h) - ψ c) / h)
      (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds d))


noncomputable def downEsscherPayoff
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (p c x : ℝ) (ω : Ω) : ℝ :=
  match tauMinus X (-x) ω with
  | ⊤ => 0
  | (t : ℝ≥0) =>
      Real.exp (-p * (t : ℝ) + c * (X t ω + x))


noncomputable def hitTwoTimePayoff
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (p u x : ℝ) (ω : Ω) : ℝ :=
  match hitNegative X x ω with
  | ⊤ => 0
  | (t : ℝ≥0) =>
      match tauMinus X (-x) ω with
      | ⊤ => 0
      | (s : ℝ≥0) =>
          Real.exp (-p * (t : ℝ) - u * ((t : ℝ) - (s : ℝ)))


noncomputable def downOvershootAtNegativeLevel
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (ψ : ℝ → ℝ) (p u x : ℝ) (ω : Ω) : ℝ :=
  match tauMinus X (-x) ω with
  | ⊤ => 0
  | (t : ℝ≥0) =>
      Real.exp (-p * (t : ℝ) +
        Phi ψ (p+u) * (X t ω + x))


def exercise8_7_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (c q : ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    0 ≤ c → 0 ≤ q →
    Phi (shiftedExponent ψ c) q =
      Phi ψ (q + ψ c) - c


def exercise8_7_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (x c p : ℝ), 0 < x → 0 ≤ c → 0 ≤ p →
      let q := p - ψ c
      let V := tiltedScale c (W p)
      (∫ ω, downEsscherPayoff D.X p c x ω ∂P) =
        Real.exp (c * x) *
          (Zscale q V x -
            esscherDownCoefficient ψ c p * V x) ∧
      (p = ψ c →
        HasEsscherCoefficientLimit ψ c)


def exercise8_7_iii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    ∀ (p u x : ℝ), 0 ≤ p → 0 ≤ u → 0 < x →
      (∫ ω, hitTwoTimePayoff D.X p u x ω ∂P) =
        ∫ ω, downOvershootAtNegativeLevel D.X ψ p u x ω ∂P


def exercise8_7_iv : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ p : ℝ, 0 ≤ p →
      HasFiniteRightSlopeAt ψ (Phi ψ p) ∧
      (∀ x : ℝ, 0 < x →
        (∫ ω, discountedAt p (hitNegative D.X x ω) ∂P) =
          Real.exp (Phi ψ p * x) -
            selectedRightSlope ψ (Phi ψ p) * W p x) ∧
      (HasBoundedVariationTriplet
        D.gaussianCoefficient D.triplet.levyMeasure →
        (∫ ω, discountedAt p (hitNegative D.X 0 ω) ∂P) =
          1 - selectedRightSlope ψ (Phi ψ p) /
            bvDrift D.triplet.drift D.triplet.levyMeasure) ∧
      (¬ HasBoundedVariationTriplet
        D.gaussianCoefficient D.triplet.levyMeasure →
        (∫ ω, discountedAt p (hitNegative D.X 0 ω) ∂P) = 1)

def exercise8_7 : Prop :=
  exercise8_7_i ∧ exercise8_7_ii ∧
  exercise8_7_iii ∧ exercise8_7_iv


def IsStandardBrownian {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (B : ℝ≥0 → Ω → ℝ) : Prop :=
  ProbabilityTheory.IsLevyProcess B P ∧
  (∀ᵐ ω ∂P,
    B 0 ω = 0 ∧ Continuous (fun t : ℝ≥0 => B t ω)) ∧
  ∀ (t : ℝ≥0) (ξ : ℝ),
    charFun (P.map (B t)) ξ =
      Complex.exp ((-((t : ℝ) * ξ ^ 2 / 2) : ℂ))


def IsHalfStableSubordinator {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (S : ℝ≥0 → Ω → ℝ) : Prop :=
  ProbabilityTheory.IsLevyProcess S P ∧
  (∀ᵐ ω ∂P,
    S 0 ω = 0 ∧ Monotone (fun t : ℝ≥0 => S t ω)) ∧
  ∀ (t : ℝ≥0) (β : ℝ), 0 ≤ β →
    (∫ ω, Real.exp (-β * S t ω) ∂P) =
      Real.exp (-(t : ℝ) * Real.sqrt (2 * β))


def BrownianDiagonalContact {Ω : Type*}
    (B : ℝ≥0 → Ω → ℝ) (ω : Ω) : Prop :=
  ∃ t : ℝ≥0, 0 < t ∧
    B t ω = runningSup B t ω ∧ B t ω = (t : ℝ)


def exercise8_8_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (B S : ℝ≥0 → Ω → ℝ),
    IsStandardBrownian P B →
    IsHalfStableSubordinator P S →
    (P {ω | BrownianDiagonalContact B ω}).toReal =
      (P {ω | hitNegative
        (fun t ω => (t : ℝ) - S t ω) 0 ω ≠ ⊤}).toReal


def exercise8_8_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (B : ℝ≥0 → Ω → ℝ),
    IsStandardBrownian P B →
    (P {ω | BrownianDiagonalContact B ω}).toReal = (1 / 2 : ℝ)

def exercise8_8 : Prop :=
  exercise8_8_i ∧ exercise8_8_ii





def HasIndependentCompetingLevyComponents
    {Ω : Type} [MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (n : ℕ) (C : CompetingRiskPathData Ω n)
    (D : SpectrallyNegativeModel Ω P)
    (triples : Fin n → ProbabilityTheory.LevyKhintchineTriple) : Prop :=
  C.total = D.X ∧
  (∀ i : Fin n,
    ProbabilityTheory.IsLevyProcess (C.component i) P ∧
    (triples i).levyMeasure (Set.Ici (0 : ℝ)) = 0 ∧
    ∀ (t : ℝ≥0) (ξ : ℝ),
      charFun (P.map (C.component i t)) ξ =
        Complex.exp (((t : ℝ) : ℂ) *
          Kyprianou.Ch01.levyTripleExponent (triples i) ξ)) ∧
  (∀ (m : ℕ) (times : Fin m → ℝ≥0)
    (A : Fin n → Set (Fin m → ℝ)),
    (∀ i, MeasurableSet (A i)) →
    P {ω | ∀ i : Fin n,
      (fun j : Fin m => C.component i (times j) ω) ∈ A i} =
    ∏ i : Fin n,
      P {ω | (fun j : Fin m =>
        C.component i (times j) ω) ∈ A i})


noncomputable def preAtPassage
    {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (τ : WithTop ℝ≥0)
    (ω : Ω) : ℝ :=
  Classical.epsilon (fun v : ℝ => IsPrePassageValue X τ ω v)


def RuinedByComponent
    {Ω : Type*} (n : ℕ)
    (C : CompetingRiskPathData Ω n)
    (i : Fin n) (x : ℝ) (ω : Ω) : Prop :=
  ∃ (t : ℝ≥0) (valueBefore valueAfter componentBefore : ℝ),
    (t : WithTop ℝ≥0) = tauMinus (shifted C.total x) 0 ω ∧
    IsPrePassageValue (shifted C.total x)
      (tauMinus (shifted C.total x) 0 ω) ω valueBefore ∧
    postPassageValue (shifted C.total x)
      (tauMinus (shifted C.total x) 0 ω) ω = some valueAfter ∧
    IsPrePassageValue (C.component i)
      (tauMinus (shifted C.total x) 0 ω) ω componentBefore ∧
    valueAfter = valueBefore +
      (C.component i t ω - componentBefore) ∧
    valueAfter < valueBefore


def ComponentClaimPrePost
    {Ω : Type*} (n : ℕ)
    (C : CompetingRiskPathData Ω n)
    (i : Fin n) (x : ℝ)
    (A : Set (ℝ × ℝ)) (ω : Ω) : Prop :=
  let X := shifted C.total x
  let τ := tauMinus X 0 ω
  RuinedByComponent n C i x ω ∧
    (preAtPassage X τ ω,
      (postPassageValue X τ ω).getD 0) ∈ A


def exercise8_9_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (n : ℕ)
    (C : CompetingRiskPathData Ω n)
    (triples : Fin n → ProbabilityTheory.LevyKhintchineTriple)
    (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
    HasIndependentCompetingLevyComponents P n C D triples →
    DriftsToPositiveInfinity P D.X →
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (i : Fin n) (x : ℝ), 0 ≤ x →
      ∀ A : Set (ℝ × ℝ), MeasurableSet A →
        P {ω | ComponentClaimPrePost n C i x A ω} =
          ∫⁻ y in Set.Ici (0 : ℝ),
            ENNReal.ofReal
              (killedHalflineDensity ψ 0 (W 0) x y) *
              (triples i).levyMeasure
                {jump | (y, y + jump) ∈ A ∧ y + jump < 0}
              ∂volume


def exercise8_9_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (n : ℕ)
    (C : CompetingRiskPathData Ω n)
    (triples : Fin n → ProbabilityTheory.LevyKhintchineTriple),
    HasIndependentCompetingLevyComponents P n C D triples →
    (∀ i : Fin n, HasBoundedVariationTriplet
      ((triples i).gaussianVariance : ℝ)
      (triples i).levyMeasure) →
    DriftsToPositiveInfinity P D.X →
    let d := bvDrift D.triplet.drift D.triplet.levyMeasure
    0 < d ∧
    ∀ (i : Fin n) (A : Set (ℝ × ℝ)),
      MeasurableSet A →
      P {ω | ComponentClaimPrePost n C i 0 A ω} =
        ∫⁻ y in Set.Ici (0 : ℝ),
          ENNReal.ofReal ((d)⁻¹) *
            (triples i).levyMeasure
              {jump | (y, y + jump) ∈ A ∧ y + jump < 0}
            ∂volume


def exercise8_9_iii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (n : ℕ)
    (C : CompetingRiskPathData Ω n)
    (triples : Fin n → ProbabilityTheory.LevyKhintchineTriple),
    HasIndependentCompetingLevyComponents P n C D triples →
    (∀ i : Fin n, HasBoundedVariationTriplet
      ((triples i).gaussianVariance : ℝ)
      (triples i).levyMeasure ∧
      Integrable (C.component i 1) P) →
    DriftsToPositiveInfinity P D.X →
    let d := bvDrift D.triplet.drift D.triplet.levyMeasure
    0 < d ∧
    ∀ i : Fin n,
      (P {ω | RuinedByComponent n C i 0 ω}).toReal =
        (bvDrift (triples i).drift (triples i).levyMeasure -
          ∫ ω, C.component i 1 ω ∂P) / d

def exercise8_9 : Prop :=
  exercise8_9_i ∧ exercise8_9_ii ∧ exercise8_9_iii






end Kyprianou.Ch08.StageB
