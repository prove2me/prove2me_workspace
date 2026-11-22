import Definitions.Def_Kyprianou_Ch08_StageCFoundation_C
set_option autoImplicit false
open MeasureTheory ProbabilityTheory Set Filter
open scoped NNReal ENNReal

namespace Kyprianou.Ch08.StageB
def IsEsscherLaplaceShifted
    {Ω : Type} [MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (c : ℝ) : Prop :=
  ∀ (β : ℝ) (t : ℝ≥0),
    0 ≤ β → 0 < t →
    Integrable (fun ω => Real.exp ((c + β) * D.X t ω)) P →
    (∫ ω,
      Real.exp (β * D.X t ω) *
        esscherDensity (SpectrallyNegativeModel.toData P D)
          ψ c t ω ∂P) =
      Real.exp ((t : ℝ) * shiftedExponent ψ c β)


def result8_4 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
    IsFullMomentLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ c : ℝ,
      Integrable (fun ω => Real.exp (c * D.X 1 ω)) P →
      HasLawfulEsscherDensities
        (SpectrallyNegativeModel.toData P D) ψ c ∧
      IsEsscherLaplaceShifted P D ψ c ∧
      ∃ (F G : ℂ → ℝ → ℂ),
        (∀ x : ℝ, 0 ≤ x →
          Differentiable ℂ (fun q : ℂ => F q x) ∧
          Differentiable ℂ (fun q : ℂ => G q x)) ∧
        (∀ (q x : ℝ), 0 ≤ q → 0 ≤ x →
          F (q : ℂ) x = (W q x : ℂ)) ∧
        (∀ (p x : ℝ), 0 ≤ p → 0 ≤ x →
          0 ≤ p + ψ c →
          G (p : ℂ) x =
            ((tiltedScale c (W (p + ψ c)) x) : ℂ)) ∧
        (∀ (q : ℂ) (x : ℝ), 0 ≤ x →
          F q x =
            Complex.exp (((c * x : ℝ) : ℂ)) *
              G (q - ((ψ c : ℝ) : ℂ)) x)





def NoDrawdownBeforeUpcrossing {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ)
    (a h : ℝ) (ω : Ω) : Prop :=
  ∀ t : ℝ≥0,
    (t : WithTop ℝ≥0) < tauPlus X a ω →
      reflectAtSup X 0 t ω < h


def HasActualQExcursionHeightLaw {Ω : Type}
    [MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (q : ℝ)
    (n : Measure ℝ) : Prop :=
  PhiIsLargestRoot ψ q ∧
  ∀ (a h : ℝ), 0 < a → 0 < h →
    n (Set.Ici h) < ⊤ ∧
    (∫ ω in {ω | NoDrawdownBeforeUpcrossing D.X a h ω},
      Real.exp (Phi ψ q * a) *
        discountedAt q (tauPlus D.X a ω) ∂P) =
      Real.exp (-a * (n (Set.Ici h)).toReal)


def HasQExcursionScaleRepresentation
    (ψ : ℝ → ℝ) (q : ℝ)
    (W : ℝ → ℝ) (n : Measure ℝ) : Prop :=
  (∀ x : ℝ, 0 < x → 0 < W x) ∧
  ∀ (x a : ℝ), 0 < x → x < a →
    IntegrableOn
      (fun t : ℝ =>
        Phi ψ q + (n (Set.Ici t)).toReal)
      (Set.Icc x a) volume ∧
    W x = W a * Real.exp
      (-(∫ t in x..a,
          Phi ψ q + (n (Set.Ici t)).toReal))


def result8_2 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ q : ℝ, 0 ≤ q →
      ∃ n : Measure ℝ,
        HasActualQExcursionHeightLaw P D ψ q n ∧
        HasQExcursionScaleRepresentation ψ q (W q) n ∧
        (∀ x : ℝ, 0 < x →
          ∃ dLeft dRight : ℝ,
            HasDerivWithinAt (W q) dLeft (Set.Iic x) x ∧
            HasDerivWithinAt (W q) dRight (Set.Ici x) x ∧
            dLeft =
              (Phi ψ q + (n (Set.Ici x)).toReal) * W q x ∧
            dRight =
              (Phi ψ q + (n (Set.Ioi x)).toReal) * W q x ∧
            (dLeft = dRight ↔ n {x} = 0)) ∧
        (ContDiffOn ℝ 1 (W q) (Set.Ioi (0 : ℝ)) ↔
          ∀ x : ℝ, 0 < x → n {x} = 0)







def technicalGOUConstruction : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (lambda : ℝ),
    0 < lambda → HasGOUConstruction P D lambda


def technicalGOUVersionUniqueness : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P],
    GOUVersionUniquenessObligation P


def technicalGOUExitInvariance : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P],
    GOUExitVersionLawObligation P


def technicalLawTripletIdentity : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P),
    HasLawTripletLaplaceBridge (SpectrallyNegativeModel.toData P D)


def technicalPhiRootDomain : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    ∀ q : ℝ, 0 ≤ q →
      IsScaleTransformDomainBridge ψ q


def technicalQExcursionHeightConstruction : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    ∀ q : ℝ, 0 ≤ q →
      ∃ n : Measure ℝ,
        HasActualQExcursionHeightLaw P D ψ q n


def technicalExtendedRightScaleSlope : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ q : ℝ, 0 ≤ q →
      ∃ d : EReal, HasExtendedRightSlope (W q) d


def technicalTwoSidedStorage : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (x c : ℝ), 0 ≤ x → x ≤ c → 0 < c →
      HasUniqueCappedStorage P D.X x c


def technicalGOUPositiveHDomain : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (lambda a y theta : ℝ),
    0 < lambda → 0 < a → y ≤ a → 0 < theta →
    GOUHasLogJumpIntegrability D.triplet.levyMeasure →
    (¬ HasBoundedVariationTriplet
      D.gaussianCoefficient D.triplet.levyMeasure ∨
      (HasBoundedVariationTriplet
        D.gaussianCoefficient D.triplet.levyMeasure ∧
        lambda * a <
          bvDrift D.triplet.drift D.triplet.levyMeasure)) →
    IsGOUPositiveHDomain
      (tripletLaplace D.triplet.drift
        D.gaussianCoefficient D.triplet.levyMeasure)
      lambda theta y a


def technicalGOUZeroHBoundary : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (M : GOUInput Ω P) (lambda a y : ℝ),
    0 < lambda → 0 < a → y ≤ a →
    M.driver = D → M.meanReversion = lambda →
    GOUHasLogJumpIntegrability D.triplet.levyMeasure →
    (¬ HasBoundedVariationTriplet
      D.gaussianCoefficient D.triplet.levyMeasure ∨
      (HasBoundedVariationTriplet
        D.gaussianCoefficient D.triplet.levyMeasure ∧
        lambda * a <
          bvDrift D.triplet.drift D.triplet.levyMeasure)) →
    IsGOUZeroHBoundary
      (tripletLaplace D.triplet.drift
        D.gaussianCoefficient D.triplet.levyMeasure)
      lambda y a
      (∫ ω, discountedAt 0 (GOUExit M y a ω) ∂P)


def technicalCappedStorageVersionInvariance : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (X Y : ℝ≥0 → Ω → ℝ) (x c q : ℝ),
    0 < x → x < c → 0 < q →
    (∀ᵐ ω ∂P, ∀ t : ℝ≥0, X t ω = Y t ω) →
    ∀ (S : CappedStorage P X x c)
      (T : CappedStorage P Y x c),
      (∫ ω, discountedAt q (cappedEmptyingTime S ω) ∂P) =
      (∫ ω, discountedAt q (cappedEmptyingTime T ω) ∂P)


def technicalFullMomentExponentExistence : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P),
    ∃ ψ : ℝ → ℝ,
      IsFullMomentLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ


def technicalEsscherDensityConsistency : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (c : ℝ),
    IsFullMomentLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    Integrable (fun ω => Real.exp (c * D.X 1 ω)) P →
    HasLawfulEsscherDensities (SpectrallyNegativeModel.toData P D) ψ c


def technicalZeroDenominatorReflectedExit : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsFullMomentLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (θ x a : ℝ), 0 < a → 0 ≤ x → x ≤ a →
    Integrable (fun ω => Real.exp (θ * D.X 1 ω)) P →
    let V := tiltedScale θ (W 0)
    HasDerivWithinAt V (derivWithin V (Set.Ici a) a)
      (Set.Ici a) a →
    derivWithin V (Set.Ici a) a + θ * V a = 0 →
    (∫ ω, reflectedSupJointPayoff D.X 0 θ x a ω ∂P) = 0


def technicalZeroDerivativeReflectedPotential : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ)
    (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ (q x a : ℝ), 0 ≤ q → 0 < a → 0 ≤ x → x < a →
    derivWithin (W q) (Set.Ici a) a = 0 →
    ∀ U : Measure ℝ,
      IsSupremumReflectedPotential P D.X q x a U →
      q = 0 ∧ U {0} = ⊤ ∧
      (∀ n : ℕ,
        0 < derivWithin
          (W (1 / (((n + 1 : ℕ) : ℝ))))
          (Set.Ici a) a) ∧
      ∀ A : Set ℝ, MeasurableSet A →
        U A =
          ⨆ n : ℕ,
            (supremumReflectedScaleResolvent W
              (1 / (((n + 1 : ℕ) : ℝ))) x a) A







def sourceCertificate_result8_1 : Prop :=
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


def sourceCertificate_result8_2 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
      (P : Measure Ω) [IsProbabilityMeasure P]
      (D : SpectrallyNegativeModel Ω P)
      (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
      IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
      HasSourceScaleFamily ψ W →
      ∀ q : ℝ, 0 ≤ q →
        ∃ n : Measure ℝ,
          HasActualQExcursionHeightLaw P D ψ q n ∧
          HasQExcursionScaleRepresentation ψ q (W q) n ∧
          (∀ x : ℝ, 0 < x →
            ∃ dLeft dRight : ℝ,
              HasDerivWithinAt (W q) dLeft (Set.Iic x) x ∧
              HasDerivWithinAt (W q) dRight (Set.Ici x) x ∧
              dLeft =
                (Phi ψ q + (n (Set.Ici x)).toReal) * W q x ∧
              dRight =
                (Phi ψ q + (n (Set.Ioi x)).toReal) * W q x ∧
              (dLeft = dRight ↔ n {x} = 0)) ∧
          (ContDiffOn ℝ 1 (W q) (Set.Ioi (0 : ℝ)) ↔
            ∀ x : ℝ, 0 < x → n {x} = 0)


def sourceCertificate_result8_3 : Prop :=
  ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
      HasSourceScaleFamily ψ W →
      ∀ x : ℝ, 0 ≤ x →
        ∃ F : ℂ → ℂ,
          Differentiable ℂ F ∧
          ∀ q : ℝ, 0 ≤ q → F (q : ℂ) = (W q x : ℂ)


def sourceCertificate_result8_4 : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
      (P : Measure Ω) [IsProbabilityMeasure P]
      (D : SpectrallyNegativeModel Ω P)
      (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
      IsFullMomentLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
      HasSourceScaleFamily ψ W →
      ∀ c : ℝ,
        Integrable (fun ω => Real.exp (c * D.X 1 ω)) P →
        HasLawfulEsscherDensities
          (SpectrallyNegativeModel.toData P D) ψ c ∧
        IsEsscherLaplaceShifted P D ψ c ∧
        ∃ (F G : ℂ → ℝ → ℂ),
          (∀ x : ℝ, 0 ≤ x →
            Differentiable ℂ (fun q : ℂ => F q x) ∧
            Differentiable ℂ (fun q : ℂ => G q x)) ∧
          (∀ (q x : ℝ), 0 ≤ q → 0 ≤ x →
            F (q : ℂ) x = (W q x : ℂ)) ∧
          (∀ (p x : ℝ), 0 ≤ p → 0 ≤ x →
            0 ≤ p + ψ c →
            G (p : ℂ) x =
              ((tiltedScale c (W (p + ψ c)) x) : ℂ)) ∧
          (∀ (q : ℂ) (x : ℝ), 0 ≤ x →
            F q x =
              Complex.exp (((c * x : ℝ) : ℂ)) *
                G (q - ((ψ c : ℝ) : ℂ)) x)


def sourceCertificate_result8_5 : Prop :=
  ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
      HasSourceScaleFamily ψ W →
      ∀ x : ℝ, 0 < x →
        ∃ F : ℂ → ℂ,
          Differentiable ℂ F ∧
          ∀ q : ℝ, 0 ≤ q → F (q : ℂ) = (Zscale q (W q) x : ℂ)


def sourceCertificate_result8_6 : Prop :=
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


def sourceCertificate_result8_7 : Prop :=
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


def sourceCertificate_result8_8 : Prop :=
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


def sourceCertificate_result8_9 : Prop :=
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


def sourceCertificate_result8_10 : Prop :=
  result8_10_i ∧ result8_10_ii


def sourceCertificate_result8_11 : Prop :=
  result8_11_i ∧ result8_11_ii


def sourceCertificate_result8_12 : Prop :=
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


def sourceCertificate_exercise8_1 : Prop :=
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


def sourceCertificate_exercise8_2 : Prop :=
  exercise8_2_i ∧ exercise8_2_ii ∧
    exercise8_2_iii ∧ exercise8_2_iv


def sourceCertificate_exercise8_3 : Prop :=
  exercise8_3_i ∧ exercise8_3_ii ∧ exercise8_3_iii


def sourceCertificate_exercise8_4 : Prop :=
  exercise8_4_i ∧ exercise8_4_ii ∧
    exercise8_4_iii ∧ exercise8_4_iv


def sourceCertificate_exercise8_5 : Prop :=
  exercise8_5_i ∧ exercise8_5_ii


def sourceCertificate_exercise8_6 : Prop :=
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


def sourceCertificate_exercise8_7 : Prop :=
  exercise8_7_i ∧ exercise8_7_ii ∧
    exercise8_7_iii ∧ exercise8_7_iv


def sourceCertificate_exercise8_8 : Prop :=
  exercise8_8_i ∧ exercise8_8_ii


def sourceCertificate_exercise8_9 : Prop :=
  exercise8_9_i ∧ exercise8_9_ii ∧ exercise8_9_iii


def sourceCertificate_exercise8_10 : Prop :=
  exercise8_10_i ∧ exercise8_10_ii ∧
    exercise8_10_iii ∧ exercise8_10_iv


def sourceCertificate_exercise8_11 : Prop :=
  exercise8_11_i ∧ exercise8_11_ii ∧ exercise8_11_iii


def sourceCertificate_exercise8_12 : Prop :=
  exercise8_12_i ∧ exercise8_12_ii



def chapterEightMain : Prop :=
  sourceCertificate_result8_1 ∧
  sourceCertificate_result8_2 ∧
  sourceCertificate_result8_3 ∧
  sourceCertificate_result8_4 ∧
  sourceCertificate_result8_5 ∧
  sourceCertificate_result8_6 ∧
  sourceCertificate_result8_7 ∧
  sourceCertificate_result8_8 ∧
  sourceCertificate_result8_9 ∧
  sourceCertificate_result8_10 ∧
  sourceCertificate_result8_11 ∧
  sourceCertificate_result8_12 ∧
  sourceCertificate_exercise8_1 ∧
  sourceCertificate_exercise8_2 ∧
  sourceCertificate_exercise8_3 ∧
  sourceCertificate_exercise8_4 ∧
  sourceCertificate_exercise8_5 ∧
  sourceCertificate_exercise8_6 ∧
  sourceCertificate_exercise8_7 ∧
  sourceCertificate_exercise8_8 ∧
  sourceCertificate_exercise8_9 ∧
  sourceCertificate_exercise8_10 ∧
  sourceCertificate_exercise8_11 ∧
  sourceCertificate_exercise8_12

end Kyprianou.Ch08.StageB
