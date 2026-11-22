import Mathlib
import Definitions.Def_LeanLevy_Processes_LevyProcess
import Definitions.Def_Kyprianou_Ch01_LevyTripletExponent
import Definitions.Def_AvramDividend_Classical_SpectrallyNegativeLevy
import Definitions.Def_Kyprianou_Ch03_CompletedNaturalFiltration
import Definitions.Def_AvramDividend_Classical_ScaleFunction
open MeasureTheory ProbabilityTheory Set Filter
open scoped NNReal ENNReal
set_option autoImplicit false
namespace Kyprianou.Ch08



structure ProcessData (Ω : Type*) [MeasurableSpace Ω] where
  law : Measure Ω
  probabilityLaw : IsProbabilityMeasure law
  X : ℝ≥0 → Ω → ℝ
  tripletA : ℝ
  gaussian : ℝ
  jumps : Measure ℝ


structure SpectrallyNegativeModel (Ω : Type*) [MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P] where
  X : ℝ≥0 → Ω → ℝ
  levy : ProbabilityTheory.IsLevyProcess X P
  triplet : ProbabilityTheory.LevyKhintchineTriple
  characteristic : ∀ (t : ℝ≥0) (ξ : ℝ),
    charFun (P.map (X t)) ξ =
      Complex.exp (((t : ℝ) : ℂ) *
        Kyprianou.Ch01.levyTripleExponent triplet ξ)
  negativeJumps : triplet.levyMeasure (Set.Ici (0 : ℝ)) = 0
  gaussianCoefficient : ℝ
  gaussianNonnegative : 0 ≤ gaussianCoefficient
  gaussianVarianceMatch :
    gaussianCoefficient ^ 2 = (triplet.gaussianVariance : ℝ)
  excludesNegativeSubordinator :
    ¬ (∀ᵐ ω ∂P, Antitone (fun t : ℝ≥0 => X t ω))


def HasCompletedNaturalFiltration {Ω : Type} [m : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (F : Filtration ℝ≥0 m) : Prop :=
  Kyprianou.Ch03.IsCompletedNaturalFiltration P D.X F


noncomputable def SpectrallyNegativeModel.toData
    {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) : ProcessData Ω :=
  { law := P
    probabilityLaw := inferInstance
    X := D.X
    tripletA := D.triplet.drift
    gaussian := D.gaussianCoefficient
    jumps := D.triplet.levyMeasure }


def HasNegativeJumpSupport (jumpMeasure : Measure ℝ) : Prop :=
  jumpMeasure (Set.Ici (0 : ℝ)) = 0


def IsNegativeLevyMeasure (jumpMeasure : Measure ℝ) : Prop :=
  HasNegativeJumpSupport jumpMeasure ∧
  (∫⁻ x : ℝ, ENNReal.ofReal (min (x ^ 2) 1) ∂jumpMeasure) < ⊤


def HasStationaryIncrementLaws {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) : Prop :=
  ∀ s t : ℝ≥0,
    Measure.map (fun ω => D.X (s + t) ω - D.X s ω) D.law =
    Measure.map (D.X t) D.law


noncomputable def tripletLaplace (a σ : ℝ) (jumpMeasure : Measure ℝ) (β : ℝ) : ℝ :=
  -a * β + σ ^ 2 * β ^ 2 / 2 +
    ∫ x : ℝ, (Real.exp (β * x) - 1 -
      (if -1 < x then β * x else 0)) ∂jumpMeasure


def IsLaplaceExponent {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) (ψ : ℝ → ℝ) : Prop :=
  ∀ (β : ℝ) (t : ℝ≥0), 0 ≤ β → 0 < t →
    Integrable (fun ω => Real.exp (β * D.X t ω)) D.law ∧
    ψ β = Real.log (∫ ω, Real.exp (β * D.X t ω) ∂D.law) / (t : ℝ)


def IsFullMomentLaplaceExponent {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) (ψ : ℝ → ℝ) : Prop :=
  IsLaplaceExponent D ψ ∧
  ∀ (c : ℝ) (t : ℝ≥0), 0 < t →
    Integrable (fun ω => Real.exp (c * D.X t ω)) D.law →
      0 < (∫ ω, Real.exp (c * D.X t ω) ∂D.law) ∧
      ψ c = Real.log
        (∫ ω, Real.exp (c * D.X t ω) ∂D.law) / (t : ℝ)


def HasLawfulEsscherMoment {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) (ψ : ℝ → ℝ) (c : ℝ) : Prop :=
  IsFullMomentLaplaceExponent D ψ ∧
  Integrable (fun ω => Real.exp (c * D.X 1 ω)) D.law ∧
  0 < (∫ ω, Real.exp (c * D.X 1 ω) ∂D.law)


def HasLawfulEsscherDensities {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) (ψ : ℝ → ℝ) (c : ℝ) : Prop :=
  HasLawfulEsscherMoment D ψ c ∧
  ∀ t : ℝ≥0, 0 < t →
    Integrable (fun ω => Real.exp (c * D.X t ω)) D.law ∧
    Integrable (fun ω => Real.exp
      (c * D.X t ω - ψ c * (t : ℝ))) D.law ∧
    (∀ ω, 0 < Real.exp
      (c * D.X t ω - ψ c * (t : ℝ))) ∧
    (∫ ω, Real.exp
      (c * D.X t ω - ψ c * (t : ℝ)) ∂D.law) = 1


def HasLawTripletLaplaceBridge {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) : Prop :=
  IsNegativeLevyMeasure D.jumps ∧
  IsLaplaceExponent D (tripletLaplace D.tripletA D.gaussian D.jumps) ∧
  ∀ β : ℝ, 0 ≤ β →
    tripletLaplace D.tripletA D.gaussian D.jumps β =
      AvramDividend.Classical.laplaceExponent
        (-D.tripletA) D.gaussian D.jumps β


def HasPairwiseIndependentDisjointIncrements {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) : Prop :=
  ∀ s t u v : ℝ≥0, s ≤ t → t ≤ u → u ≤ v →
    Measure.map
      (fun ω => (D.X t ω - D.X s ω, D.X v ω - D.X u ω)) D.law =
    (Measure.map (fun ω => D.X t ω - D.X s ω) D.law).prod
      (Measure.map (fun ω => D.X v ω - D.X u ω) D.law)


def RightRootSet (ψ : ℝ → ℝ) (q : ℝ) : Set ℝ :=
  {β | 0 ≤ β ∧ ψ β = q}


noncomputable def Phi (ψ : ℝ → ℝ) (q : ℝ) : ℝ :=
  sSup (RightRootSet ψ q)


def PhiIsLargestRoot (ψ : ℝ → ℝ) (q : ℝ) : Prop :=
  0 ≤ q ∧ (Phi ψ q ∈ RightRootSet ψ q) ∧
  ∀ β ∈ RightRootSet ψ q, β ≤ Phi ψ q


def HasBoundedVariationTriplet (σ : ℝ) (jumpMeasure : Measure ℝ) : Prop :=
  σ = 0 ∧
  (∫⁻ x in Set.Ioo (-1 : ℝ) 0, ENNReal.ofReal |x| ∂jumpMeasure) < ⊤


noncomputable def bvDrift (a : ℝ) (jumpMeasure : Measure ℝ) : ℝ :=
  -a - ∫ x in Set.Ioo (-1 : ℝ) 0, x ∂jumpMeasure


def HasPositiveBVDrift (a σ : ℝ) (jumpMeasure : Measure ℝ) : Prop :=
  HasBoundedVariationTriplet σ jumpMeasure ∧ 0 < bvDrift a jumpMeasure


noncomputable def bvLaplace (d : ℝ) (jumpMeasure : Measure ℝ) (β : ℝ) : ℝ :=
  d * β - ∫ x in Set.Iio (0 : ℝ),
    (1 - Real.exp (β * x)) ∂jumpMeasure


noncomputable def esscherDensity {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) (ψ : ℝ → ℝ) (c : ℝ)
    (t : ℝ≥0) (ω : Ω) : ℝ :=
  Real.exp (c * D.X t ω - ψ c * (t : ℝ))


def IsEsscherParameter (c : ℝ) : Prop := 0 ≤ c


def shiftedExponent (ψ : ℝ → ℝ) (c beta : ℝ) : ℝ :=
  ψ (beta + c) - ψ c


noncomputable def esscherFiniteTimeLaw {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) (ψ : ℝ → ℝ)
    (c : ℝ) (t : ℝ≥0) : Measure Ω :=
  D.law.withDensity (fun ω => ENNReal.ofReal
    (esscherDensity D ψ c t ω))



def IsQScale (ψ : ℝ → ℝ) (q : ℝ) (W : ℝ → ℝ) : Prop :=
  PhiIsLargestRoot ψ q ∧
  (∀ x : ℝ, x < 0 → W x = 0) ∧
  (∀ x : ℝ, 0 ≤ W x) ∧
  ContinuousOn W (Set.Ici (0 : ℝ)) ∧
  MonotoneOn W (Set.Ici (0 : ℝ)) ∧
  (∀ β : ℝ, 0 ≤ β → Phi ψ q < β →
    IntegrableOn (fun x : ℝ => Real.exp (-β * x) * W x)
      (Set.Ioi (0 : ℝ)) volume ∧
    (∫ x in Set.Ioi (0 : ℝ), Real.exp (-β * x) * W x ∂volume) =
      (ψ β - q)⁻¹)


def HasStrictQScale (ψ : ℝ → ℝ) (q : ℝ) (W : ℝ → ℝ) : Prop :=
  IsQScale ψ q W ∧ StrictMonoOn W (Set.Ici (0 : ℝ))


def IsScaleTransformDomainBridge (ψ : ℝ → ℝ) (q : ℝ) : Prop :=
  PhiIsLargestRoot ψ q ∧
  ∀ β : ℝ, 0 ≤ β → (Phi ψ q < β ↔ q < ψ β)


noncomputable def Zscale (q : ℝ) (W : ℝ → ℝ) (x : ℝ) : ℝ :=
  1 + q * ∫ y in (0 : ℝ)..x, W y


noncomputable def integratedScale (W : ℝ → ℝ) (x : ℝ) : ℝ :=
  ∫ y in (0 : ℝ)..x, W y


def IsScaleMeasure (W : ℝ → ℝ) (m : Measure ℝ) : Prop :=
  m (Set.Iio (0 : ℝ)) = 0 ∧
  m {0} = ENNReal.ofReal (W 0) ∧
  ∀ a b : ℝ, 0 ≤ a → a ≤ b →
    m (Set.Ioc a b) = ENNReal.ofReal (W b - W a)


noncomputable def tiltedScale (c : ℝ) (W : ℝ → ℝ) (x : ℝ) : ℝ :=
  Real.exp (-c * x) * W x


def HasScaleRightDerivative (W : ℝ → ℝ) (x d : ℝ) : Prop :=
  HasDerivWithinAt W d (Set.Ici x) x


noncomputable def scaleRightDerivativeZero (W : ℝ → ℝ) : EReal :=
  Filter.liminf (fun h : ℝ => (((W h - W 0) / h : ℝ) : EReal))
    (nhdsWithin (0 : ℝ) (Set.Ioi 0))


def HasExtendedRightSlope (W : ℝ → ℝ) (d : EReal) : Prop :=
  Filter.Tendsto
    (fun h : ℝ => (((W h - W 0) / h : ℝ) : EReal))
    (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds d)


def RightSlopeAgreesWithAvram (W : ℝ → ℝ) : Prop :=
  scaleRightDerivativeZero W =
    AvramDividend.Classical.derivZeroPlus W


def AtZeroScale (W : ℝ → ℝ) : ℝ := W 0


def IsLawScale
    {Ω : Type*} [mΩ : MeasurableSpace Ω]
    {P : Measure Ω} {ℱ : Filtration ℝ≥0 mΩ}
    (L : AvramDividend.Classical.SpectrallyNegativeLevy P ℱ)
    (q : ℝ) (W : ℝ → ℝ) : Prop :=
  IsQScale L.ψ q W


def HasPublishedScaleBridge
    {Ω : Type*} [mΩ : MeasurableSpace Ω]
    {P : Measure Ω} {ℱ : Filtration ℝ≥0 mΩ}
    (L : AvramDividend.Classical.SpectrallyNegativeLevy P ℱ)
    (q : ℝ) : Prop :=
  IsScaleTransformDomainBridge L.ψ q ∧
    ∀ W : ℝ → ℝ,
      IsLawScale L q W ↔
        (0 ≤ q ∧ AvramDividend.Classical.IsScaleFunction L q W)


def IsPublishedScaleCandidate
    {Ω : Type*} [mΩ : MeasurableSpace Ω]
    {P : Measure Ω} {ℱ : Filtration ℝ≥0 mΩ}
    (L : AvramDividend.Classical.SpectrallyNegativeLevy P ℱ)
    (q : ℝ) (W : ℝ → ℝ) : Prop :=
  0 ≤ q ∧ AvramDividend.Classical.IsScaleFunction L q W


theorem lawScale_iff_published_of_rootDomain
    {Ω : Type*} [mΩ : MeasurableSpace Ω]
    {P : Measure Ω} {ℱ : Filtration ℝ≥0 mΩ}
    (L : AvramDividend.Classical.SpectrallyNegativeLevy P ℱ)
    (q : ℝ) (W : ℝ → ℝ)
    (h : IsScaleTransformDomainBridge L.ψ q) :
    IsLawScale L q W ↔ IsPublishedScaleCandidate L q W := by
  constructor
  · intro hs
    rcases hs with ⟨hroot, hneg, hnon, hcont, hmono, hLap⟩
    refine ⟨hroot.1, ?_⟩
    refine ⟨hneg, ?_, hcont, hmono, ?_⟩
    · intro y hy
      exact hnon y
    · intro beta hb hq
      simpa only [neg_mul] using hLap beta hb ((h.2 beta hb).2 hq)
  · intro hp
    rcases hp with ⟨hq, hneg, hnon, hcont, hmono, hLap⟩
    refine ⟨h.1, hneg, ?_, hcont, hmono, ?_⟩
    · intro y
      by_cases hy : 0 ≤ y
      · exact hnon y hy
      · have hlt : y < 0 := lt_of_not_ge hy
        rw [hneg y hlt]
    · intro beta hb hPhi
      simpa only [neg_mul] using hLap beta hb ((h.2 beta hb).1 hPhi)



noncomputable def tauPlus {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sInf {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ a < X u ω}


noncomputable def tauMinus {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sInf {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ X u ω < a}


noncomputable def tauWeakAbove {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sInf {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ a ≤ X u ω}


noncomputable def tauWeakBelow {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sInf {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ X u ω ≤ a}


noncomputable def hitNegative {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (x : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sInf {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ X u ω = -x}


noncomputable def lastNegativeVisit {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sSup {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ X u ω < 0}


noncomputable def discountedAt (q : ℝ) (τ : WithTop ℝ≥0) : ℝ :=
  match τ with
  | ⊤ => 0
  | (t : ℝ≥0) => Real.exp (-q * (t : ℝ))


def IsLeftLimit {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (t : ℝ≥0) (ω : Ω) (v : ℝ) : Prop :=
  0 < t ∧
  Filter.Tendsto (fun s : ℝ≥0 => X s ω)
    (nhdsWithin t (Set.Iio t)) (nhds v)


def IsStoppingTime {Ω : Type*} (m : MeasurableSpace Ω)
    (ℱ : Filtration ℝ≥0 m) (τ : Ω → WithTop ℝ≥0) : Prop :=
  ∀ t : ℝ≥0, @MeasurableSet Ω (ℱ t) {ω | τ ω ≤ (t : WithTop ℝ≥0)}


noncomputable def postPassageValue {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (τ : WithTop ℝ≥0) (ω : Ω) : Option ℝ :=
  match τ with
  | ⊤ => none
  | (t : ℝ≥0) => some (X t ω)


noncomputable def passageOvershoot {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (a : ℝ)
    (τ : WithTop ℝ≥0) (ω : Ω) : Option ℝ :=
  (postPassageValue X τ ω).map (fun v => v - a)


def IsPrePassageValue {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ)
    (τ : WithTop ℝ≥0) (ω : Ω) (v : ℝ) : Prop :=
  ∃ t : ℝ≥0, (t : WithTop ℝ≥0) = τ ∧
    IsLeftLimit X t ω v


noncomputable def positiveTimeLebesgue : Measure ℝ≥0 :=
  Measure.map Real.toNNReal
    (volume.restrict (Set.Ici (0 : ℝ)))


def IsResolvent {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q : ℝ) (U : Measure ℝ) : Prop :=
  0 ≤ q ∧
  ∀ A : Set ℝ, MeasurableSet A →
    U A = ∫⁻ t : ℝ≥0,
      ENNReal.ofReal (Real.exp (-q * (t : ℝ))) *
        P {ω | X t ω ∈ A} ∂positiveTimeLebesgue


def IsIntervalKilledResolvent {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q a : ℝ) (U : Measure ℝ) : Prop :=
  0 ≤ q ∧ 0 < a ∧
  ∀ A : Set ℝ, MeasurableSet A →
    U A = ∫⁻ t : ℝ≥0,
      ENNReal.ofReal (Real.exp (-q * (t : ℝ))) *
        P {ω | (t : WithTop ℝ≥0) <
          min (tauMinus X 0 ω) (tauPlus X a ω) ∧ X t ω ∈ A} ∂positiveTimeLebesgue


def IsHalflineKilledResolvent {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q : ℝ) (U : Measure ℝ) : Prop :=
  0 ≤ q ∧
  ∀ A : Set ℝ, MeasurableSet A →
    U A = ∫⁻ t : ℝ≥0,
      ENNReal.ofReal (Real.exp (-q * (t : ℝ))) *
        P {ω | (t : WithTop ℝ≥0) < tauMinus X 0 ω ∧ X t ω ∈ A} ∂positiveTimeLebesgue


def IsResolventKernel {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q : ℝ) (K : ProbabilityTheory.Kernel ℝ ℝ) : Prop :=
  ∀ x : ℝ, IsResolvent P (fun t ω => x + X t ω) q (K x)



def HasLocallyBoundedPaths {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ (ω : Ω) (t : ℝ≥0),
    BddAbove {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω} ∧
    BddBelow {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω}


def HasLocallyBoundedPathsAlmostSure {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P, ∀ t : ℝ≥0,
    BddAbove {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω} ∧
    BddBelow {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω}


noncomputable def runningSup {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (t : ℝ≥0) (ω : Ω) : ℝ :=
  sSup {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω}


noncomputable def runningInf {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (t : ℝ≥0) (ω : Ω) : ℝ :=
  sInf {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω}


noncomputable def reflectAtSup {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x : ℝ)
    (t : ℝ≥0) (ω : Ω) : ℝ :=
  max x (runningSup X t ω) - X t ω


noncomputable def reflectAtInf {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x : ℝ)
    (t : ℝ≥0) (ω : Ω) : ℝ :=
  X t ω - min (runningInf X t ω) (-x)


noncomputable def reflectedSupExit {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  tauPlus (reflectAtSup X x) a ω


noncomputable def reflectedInfExit {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  tauPlus (reflectAtInf X x) a ω


structure CappedStorage {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (input : ℝ≥0 → Ω → ℝ)
    (initial capacity : ℝ) where
  nonnegativeInitial : 0 ≤ initial
  initialWithinCapacity : initial ≤ capacity
  good : Set Ω
  goodMeasurable : MeasurableSet good
  goodAlmostSure : ∀ᵐ ω ∂P, ω ∈ good
  goodCadlag : ∀ ω ∈ good,
    (∀ t : ℝ≥0, ContinuousWithinAt
      (fun u : ℝ≥0 => input u ω) (Set.Ici t) t) ∧
    (∀ t : ℝ≥0, 0 < t → ∃ left : ℝ,
      Filter.Tendsto (fun u : ℝ≥0 => input u ω)
        (nhdsWithin t (Set.Iio t)) (nhds left))
  workload : ℝ≥0 → Ω → ℝ
  lowerRegulator : ℝ≥0 → Ω → ℝ
  upperRegulator : ℝ≥0 → Ω → ℝ
  workloadMeasurable : ∀ t, Measurable (workload t)
  lowerMeasurable : ∀ t, Measurable (lowerRegulator t)
  upperMeasurable : ∀ t, Measurable (upperRegulator t)
  lowerInitiallyZero : ∀ ω ∈ good, lowerRegulator 0 ω = 0
  upperInitiallyZero : ∀ ω ∈ good, upperRegulator 0 ω = 0
  balance : ∀ t ω, ω ∈ good →
    workload t ω = initial + input t ω +
      lowerRegulator t ω - upperRegulator t ω
  range : ∀ t ω, ω ∈ good →
    0 ≤ workload t ω ∧ workload t ω ≤ capacity
  lowerMonotone : ∀ ω ∈ good, ∀ s t, s ≤ t →
    lowerRegulator s ω ≤ lowerRegulator t ω
  upperMonotone : ∀ ω ∈ good, ∀ s t, s ≤ t →
    upperRegulator s ω ≤ upperRegulator t ω
  lowerContact : ∀ ω ∈ good, ∀ s t, s ≤ t →
    (∀ u, s ≤ u → u ≤ t → 0 < workload u ω) →
    lowerRegulator s ω = lowerRegulator t ω
  upperContact : ∀ ω ∈ good, ∀ s t, s ≤ t →
    (∀ u, s ≤ u → u ≤ t → workload u ω < capacity) →
    upperRegulator s ω = upperRegulator t ω


def HasUniqueCappedStorage {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (initial capacity : ℝ) : Prop :=
  ∃ S : CappedStorage P X initial capacity,
    ∀ T : CappedStorage P X initial capacity,
      ∀ᵐ ω ∂P, ∀ t : ℝ≥0,
        S.workload t ω = T.workload t ω ∧
        S.lowerRegulator t ω = T.lowerRegulator t ω ∧
        S.upperRegulator t ω = T.upperRegulator t ω


noncomputable def cappedEmptyingTime {Ω : Type*}
    [MeasurableSpace Ω] {P : Measure Ω}
    {X : ℝ≥0 → Ω → ℝ} {x c : ℝ}
    (S : CappedStorage P X x c) (ω : Ω) : WithTop ℝ≥0 :=
  tauWeakBelow S.workload 0 ω


noncomputable def supremumReflectedScaleResolvent
    (W : ℝ → ℝ → ℝ) (q x a : ℝ) : Measure ℝ :=
  let V := W q
  let da := derivWithin V (Set.Ici a) a
  (ENNReal.ofReal (V (a - x) * V 0 / da)) •
    (Measure.dirac (0 : ℝ)) +
  (volume.restrict (Set.Ioo 0 a)).withDensity
    (fun y : ℝ =>
      ENNReal.ofReal
        (V (a - x) * derivWithin V (Set.Ici y) y / da -
          V (y - x)))


def IsSupremumReflectedPotential {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q x a : ℝ) (U : Measure ℝ) : Prop :=
  0 ≤ q ∧ 0 ≤ x ∧ x ≤ a ∧ 0 < a ∧
  ∀ A : Set ℝ, MeasurableSet A →
    U A = ∫⁻ t : ℝ≥0,
      ENNReal.ofReal (Real.exp (-q * (t : ℝ))) *
        P {ω | (t : WithTop ℝ≥0) <
          reflectedSupExit X x a ω ∧
          reflectAtSup X x t ω ∈ A} ∂positiveTimeLebesgue


def IsInfimumReflectedPotential {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q x a : ℝ) (U : Measure ℝ) : Prop :=
  0 ≤ q ∧ 0 ≤ x ∧ x ≤ a ∧ 0 < a ∧
  ∀ A : Set ℝ, MeasurableSet A →
    U A = ∫⁻ t : ℝ≥0,
      ENNReal.ofReal (Real.exp (-q * (t : ℝ))) *
        P {ω | (t : WithTop ℝ≥0) <
          reflectedInfExit X x a ω ∧
          reflectAtInf X x t ω ∈ A} ∂positiveTimeLebesgue



noncomputable def gouItoApprox {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (reversion : ℝ)
    (n : ℕ) (t : ℝ≥0) (ω : Ω) : ℝ :=
  ∑ k ∈ Finset.range (n + 1),
    Real.exp (reversion * (t : ℝ) * ((k : ℝ) / (n + 1))) *
      (X (t * ((↑(k + 1) : ℝ≥0) / (↑(n + 1) : ℝ≥0))) ω -
       X (t * ((↑k : ℝ≥0) / (↑(n + 1) : ℝ≥0))) ω)


def IsGouItoIntegral {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (reversion : ℝ) (I : ℝ≥0 → Ω → ℝ) : Prop :=
  0 < reversion ∧
  ∀ (t : ℝ≥0) (eps : ℝ), 0 < eps →
    Filter.Tendsto
      (fun n : ℕ =>
        P {ω | eps ≤ |gouItoApprox X reversion n t ω - I t ω|})
      Filter.atTop (nhds (0 : ENNReal))


def HasAlmostSureCadlagIntegral {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (I : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P, ∀ t : ℝ≥0,
    ContinuousWithinAt (fun s : ℝ≥0 => I s ω) (Set.Ici t) t ∧
    (0 < t → ∃ left : ℝ,
      Filter.Tendsto (fun s : ℝ≥0 => I s ω)
        (nhdsWithin t (Set.Iio t)) (nhds left))


def HasGOUAdaptedIntegral {Ω : Type*} [mΩ : MeasurableSpace Ω]
    (ℱ : Filtration ℝ≥0 mΩ) (I : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ t : ℝ≥0, @Measurable Ω ℝ (ℱ t) inferInstance (I t)


def IsGOURightContinuousFiltration {Ω : Type*}
    [mΩ : MeasurableSpace Ω] (ℱ : Filtration ℝ≥0 mΩ) : Prop :=
  ∀ (t : ℝ≥0) (A : Set Ω),
    @MeasurableSet Ω (ℱ t) A ↔
      ∀ s : ℝ≥0, t < s → @MeasurableSet Ω (ℱ s) A


structure GOUInput (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P] where
  driver : SpectrallyNegativeModel Ω P
  meanReversion : ℝ
  positiveMeanReversion : 0 < meanReversion
  filtration : Filtration ℝ≥0 mΩ
  filtrationIsCompletedNatural :
    HasCompletedNaturalFiltration P driver filtration
  filtrationRightContinuous :
    IsGOURightContinuousFiltration filtration
  stochasticIntegral : ℝ≥0 → Ω → ℝ
  integralIsIto :
    IsGouItoIntegral P driver.X meanReversion stochasticIntegral
  integralAdapted :
    HasGOUAdaptedIntegral filtration stochasticIntegral
  integralCadlag :
    HasAlmostSureCadlagIntegral P stochasticIntegral


noncomputable def GOUPath {Ω : Type} [MeasurableSpace Ω]
    {P : Measure Ω} [IsProbabilityMeasure P]
    (M : GOUInput Ω P)
    (y : ℝ) (t : ℝ≥0) (ω : Ω) : ℝ :=
  Real.exp (-M.meanReversion * (t : ℝ)) *
    (y + M.stochasticIntegral t ω)


noncomputable def GOUExit {Ω : Type} [MeasurableSpace Ω]
    {P : Measure Ω} [IsProbabilityMeasure P]
    (M : GOUInput Ω P)
    (y a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  tauPlus (GOUPath M y) a ω


def HasGOUConstruction {Ω : Type} [MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (reversion : ℝ) : Prop :=
  0 < reversion ∧
  ∃ M : GOUInput Ω P, M.driver = D ∧ M.meanReversion = reversion


def GOUIndistinguishable {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (I J : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P, ∀ t : ℝ≥0, I t ω = J t ω


def GOUVersionUniquenessObligation {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω) : Prop :=
  ∀ I J : ℝ≥0 → Ω → ℝ,
    HasAlmostSureCadlagIntegral P I →
    HasAlmostSureCadlagIntegral P J →
    (∀ t : ℝ≥0, ∀ᵐ ω ∂P, I t ω = J t ω) →
    GOUIndistinguishable P I J


def GOUExitVersionLawObligation {Ω : Type}
    [MeasurableSpace Ω] (P : Measure Ω)
    [IsProbabilityMeasure P] : Prop :=
  ∀ (M N : GOUInput Ω P) (y a : ℝ),
    M.driver = N.driver →
    M.meanReversion = N.meanReversion →
    GOUIndistinguishable P M.stochasticIntegral N.stochasticIntegral →
    ∀ᵐ ω ∂P, GOUExit M y a ω = GOUExit N y a ω


noncomputable def Htransform (ψ : ℝ → ℝ)
    (reversion ν x : ℝ) : ℝ :=
  ∫ u in Set.Ioi (0 : ℝ),
    Real.exp (x * u -
      (1 / reversion) * (∫ v in (0 : ℝ)..u, ψ v / v)) *
      u ^ (ν - 1 : ℝ) ∂volume


def HIsIntegrable (ψ : ℝ → ℝ) (reversion ν x : ℝ) : Prop :=
  0 < reversion ∧ 0 < ν ∧
  IntegrableOn
    (fun u : ℝ => Real.exp (x * u -
        (1 / reversion) * (∫ v in (0 : ℝ)..u, ψ v / v)) * u ^ (ν - 1))
    (Set.Ioi (0 : ℝ)) volume


def IsGOUPositiveHDomain (ψ : ℝ → ℝ)
    (reversion θ y a : ℝ) : Prop :=
  0 < reversion ∧ 0 < θ ∧
  HIsIntegrable ψ reversion (θ / reversion) y ∧
  HIsIntegrable ψ reversion (θ / reversion) a ∧
  Htransform ψ reversion (θ / reversion) a ≠ 0


noncomputable def GOUPositiveHRatio (ψ : ℝ → ℝ)
    (reversion θ y a : ℝ) : ℝ :=
  Htransform ψ reversion (θ / reversion) y /
    Htransform ψ reversion (θ / reversion) a


def IsGOUZeroHBoundary (ψ : ℝ → ℝ)
    (reversion y a p : ℝ) : Prop :=
  (∀ᶠ θ : ℝ in nhdsWithin 0 (Set.Ioi 0),
    IsGOUPositiveHDomain ψ reversion θ y a) ∧
  Filter.Tendsto
    (fun θ : ℝ => GOUPositiveHRatio ψ reversion θ y a)
    (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds p)


def IsGOUTheorem812TransformConclusion {Ω : Type}
    [MeasurableSpace Ω] {P : Measure Ω} [IsProbabilityMeasure P]
    (M : GOUInput Ω P) (ψ : ℝ → ℝ) (y a : ℝ) : Prop :=
  (∀ θ : ℝ, 0 < θ →
    IsGOUPositiveHDomain ψ M.meanReversion θ y a ∧
    (∫ ω, discountedAt θ (GOUExit M y a ω) ∂P) =
      GOUPositiveHRatio ψ M.meanReversion θ y a) ∧
  IsGOUZeroHBoundary ψ M.meanReversion y a
    (∫ ω, discountedAt 0 (GOUExit M y a ω) ∂P)


noncomputable def stableLaplace (c α β : ℝ) : ℝ :=
  c * β ^ α


noncomputable def mittagLeffler (α z : ℝ) : ℝ :=
  ∑' n : ℕ, z ^ n / Real.Gamma (1 + α * n)


def MittagLefflerSummable (α z : ℝ) : Prop :=
  0 < α ∧ Summable (fun n : ℕ =>
    z ^ n / Real.Gamma (1 + α * n))


def HasNonnegativeHeightSupport (n : Measure ℝ) : Prop :=
  n (Set.Iio (0 : ℝ)) = 0


noncomputable def claimLossRate (componentJumpMeasure : Measure ℝ) : ℝ :=
  ∫ x in Set.Iio (0 : ℝ), -x ∂componentJumpMeasure


structure CompetingClaimData (n : ℕ) where
  drift : Fin n → ℝ
  jumpLaw : Fin n → Measure ℝ


def GOUHasLogJumpIntegrability (jumpMeasure : Measure ℝ) : Prop :=
  (∫⁻ x in Set.Iio (-1 : ℝ),
    ENNReal.ofReal (Real.log |x|) ∂jumpMeasure) < ⊤


def IsStableExponent (ψ : ℝ → ℝ) (c α : ℝ) : Prop :=
  0 < c ∧ 1 < α ∧ α ≤ 2 ∧
  ∀ β : ℝ, 0 ≤ β → ψ β = stableLaplace c α β


def IsStableSubordinatorExponent (phi : ℝ → ℝ)
    (c α : ℝ) : Prop :=
  0 < c ∧ 0 < α ∧ α < 1 ∧
  ∀ β : ℝ, 0 ≤ β → phi β = stableLaplace c α β


structure ExcursionSystem (E : Type*) [MeasurableSpace E] where
  excursionLaw : Measure E
  height : E → ℝ
  heightMeasurable : Measurable height

noncomputable def excursionHeightMeasure {E : Type*}
    [MeasurableSpace E] (S : ExcursionSystem E) : Measure ℝ :=
  Measure.map S.height S.excursionLaw


structure CompetingRiskPathData (Ω : Type*) (n : ℕ) where
  total : ℝ≥0 → Ω → ℝ
  component : Fin n → ℝ≥0 → Ω → ℝ
  pathSum : ∀ (t : ℝ≥0) (ω : Ω),
    total t ω = ∑ i : Fin n, component i t ω

end Kyprianou.Ch08
