import Mathlib
import Mathlib
import Definitions.Def_LeanLevy_Processes_LevyProcess
import Definitions.Def_Kyprianou_Ch01_LevyTripletExponent
import Definitions.Def_AvramDividend_Classical_SpectrallyNegativeLevy
import Definitions.Def_Kyprianou_Ch03_CompletedNaturalFiltration
import Definitions.Def_AvramDividend_Classical_ScaleFunction

/-! # Corollary 8.5 (target `open_result8_5`): entire complex extension of the integrated Z-scale

`sourceCertificate_result8_5` asserts: for a source scale family `W` and every
`x > 0`, the integrated Z-scale section `q ↦ Zscale q (W q) x` extends to an
entire function `F : ℂ → ℂ` with `F q = Zscale q (W q) x` for all `q ≥ 0`.

Witness: the integrated causal-convolution series

  `F z = 1 + z * ∑' n : ℕ, z ^ n * ∫_0^x scaleConvolutionPower (W 0) n y dy`.

Both conjuncts are the conclusions of two existing Proved platform lemmas,
inlined verbatim below: `source_zscale_convolution_series_entire` (holomorphy)
and `source_zscale_convolution_series_agrees` (real restriction). The strict
domain `0 < x` of the corollary is exactly the hypothesis both lemmas require. -/

set_option autoImplicit false

open MeasureTheory ProbabilityTheory Set Filter
open scoped NNReal ENNReal
set_option autoImplicit false
namespace Kyprianou.Ch08



private structure ProcessData (Ω : Type*) [MeasurableSpace Ω] where
  law : Measure Ω
  probabilityLaw : IsProbabilityMeasure law
  X : ℝ≥0 → Ω → ℝ
  tripletA : ℝ
  gaussian : ℝ
  jumps : Measure ℝ


private structure SpectrallyNegativeModel (Ω : Type*) [MeasurableSpace Ω]
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


private def HasCompletedNaturalFiltration {Ω : Type} [m : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (F : Filtration ℝ≥0 m) : Prop :=
  Kyprianou.Ch03.IsCompletedNaturalFiltration P D.X F


private noncomputable def SpectrallyNegativeModel.toData
    {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) : ProcessData Ω :=
  { law := P
    probabilityLaw := inferInstance
    X := D.X
    tripletA := D.triplet.drift
    gaussian := D.gaussianCoefficient
    jumps := D.triplet.levyMeasure }


private def HasNegativeJumpSupport (jumpMeasure : Measure ℝ) : Prop :=
  jumpMeasure (Set.Ici (0 : ℝ)) = 0


private def IsNegativeLevyMeasure (jumpMeasure : Measure ℝ) : Prop :=
  HasNegativeJumpSupport jumpMeasure ∧
  (∫⁻ x : ℝ, ENNReal.ofReal (min (x ^ 2) 1) ∂jumpMeasure) < ⊤


private def HasStationaryIncrementLaws {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) : Prop :=
  ∀ s t : ℝ≥0,
    Measure.map (fun ω => D.X (s + t) ω - D.X s ω) D.law =
    Measure.map (D.X t) D.law


private noncomputable def tripletLaplace (a σ : ℝ) (jumpMeasure : Measure ℝ) (β : ℝ) : ℝ :=
  -a * β + σ ^ 2 * β ^ 2 / 2 +
    ∫ x : ℝ, (Real.exp (β * x) - 1 -
      (if -1 < x then β * x else 0)) ∂jumpMeasure


private def IsLaplaceExponent {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) (ψ : ℝ → ℝ) : Prop :=
  ∀ (β : ℝ) (t : ℝ≥0), 0 ≤ β → 0 < t →
    Integrable (fun ω => Real.exp (β * D.X t ω)) D.law ∧
    ψ β = Real.log (∫ ω, Real.exp (β * D.X t ω) ∂D.law) / (t : ℝ)


private def IsFullMomentLaplaceExponent {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) (ψ : ℝ → ℝ) : Prop :=
  IsLaplaceExponent D ψ ∧
  ∀ (c : ℝ) (t : ℝ≥0), 0 < t →
    Integrable (fun ω => Real.exp (c * D.X t ω)) D.law →
      0 < (∫ ω, Real.exp (c * D.X t ω) ∂D.law) ∧
      ψ c = Real.log
        (∫ ω, Real.exp (c * D.X t ω) ∂D.law) / (t : ℝ)


private def HasLawfulEsscherMoment {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) (ψ : ℝ → ℝ) (c : ℝ) : Prop :=
  IsFullMomentLaplaceExponent D ψ ∧
  Integrable (fun ω => Real.exp (c * D.X 1 ω)) D.law ∧
  0 < (∫ ω, Real.exp (c * D.X 1 ω) ∂D.law)


private def HasLawfulEsscherDensities {Ω : Type*} [MeasurableSpace Ω]
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


private def HasLawTripletLaplaceBridge {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) : Prop :=
  IsNegativeLevyMeasure D.jumps ∧
  IsLaplaceExponent D (tripletLaplace D.tripletA D.gaussian D.jumps) ∧
  ∀ β : ℝ, 0 ≤ β →
    tripletLaplace D.tripletA D.gaussian D.jumps β =
      AvramDividend.Classical.laplaceExponent
        (-D.tripletA) D.gaussian D.jumps β


private def HasPairwiseIndependentDisjointIncrements {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) : Prop :=
  ∀ s t u v : ℝ≥0, s ≤ t → t ≤ u → u ≤ v →
    Measure.map
      (fun ω => (D.X t ω - D.X s ω, D.X v ω - D.X u ω)) D.law =
    (Measure.map (fun ω => D.X t ω - D.X s ω) D.law).prod
      (Measure.map (fun ω => D.X v ω - D.X u ω) D.law)


private def RightRootSet (ψ : ℝ → ℝ) (q : ℝ) : Set ℝ :=
  {β | 0 ≤ β ∧ ψ β = q}


private noncomputable def Phi (ψ : ℝ → ℝ) (q : ℝ) : ℝ :=
  sSup (RightRootSet ψ q)


private def PhiIsLargestRoot (ψ : ℝ → ℝ) (q : ℝ) : Prop :=
  0 ≤ q ∧ (Phi ψ q ∈ RightRootSet ψ q) ∧
  ∀ β ∈ RightRootSet ψ q, β ≤ Phi ψ q


private def HasBoundedVariationTriplet (σ : ℝ) (jumpMeasure : Measure ℝ) : Prop :=
  σ = 0 ∧
  (∫⁻ x in Set.Ioo (-1 : ℝ) 0, ENNReal.ofReal |x| ∂jumpMeasure) < ⊤


private noncomputable def bvDrift (a : ℝ) (jumpMeasure : Measure ℝ) : ℝ :=
  -a - ∫ x in Set.Ioo (-1 : ℝ) 0, x ∂jumpMeasure


private def HasPositiveBVDrift (a σ : ℝ) (jumpMeasure : Measure ℝ) : Prop :=
  HasBoundedVariationTriplet σ jumpMeasure ∧ 0 < bvDrift a jumpMeasure


private noncomputable def bvLaplace (d : ℝ) (jumpMeasure : Measure ℝ) (β : ℝ) : ℝ :=
  d * β - ∫ x in Set.Iio (0 : ℝ),
    (1 - Real.exp (β * x)) ∂jumpMeasure


private noncomputable def esscherDensity {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) (ψ : ℝ → ℝ) (c : ℝ)
    (t : ℝ≥0) (ω : Ω) : ℝ :=
  Real.exp (c * D.X t ω - ψ c * (t : ℝ))


private def IsEsscherParameter (c : ℝ) : Prop := 0 ≤ c


private def shiftedExponent (ψ : ℝ → ℝ) (c beta : ℝ) : ℝ :=
  ψ (beta + c) - ψ c


private noncomputable def esscherFiniteTimeLaw {Ω : Type*} [MeasurableSpace Ω]
    (D : ProcessData Ω) (ψ : ℝ → ℝ)
    (c : ℝ) (t : ℝ≥0) : Measure Ω :=
  D.law.withDensity (fun ω => ENNReal.ofReal
    (esscherDensity D ψ c t ω))



private def IsQScale (ψ : ℝ → ℝ) (q : ℝ) (W : ℝ → ℝ) : Prop :=
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


private def HasStrictQScale (ψ : ℝ → ℝ) (q : ℝ) (W : ℝ → ℝ) : Prop :=
  IsQScale ψ q W ∧ StrictMonoOn W (Set.Ici (0 : ℝ))


private def IsScaleTransformDomainBridge (ψ : ℝ → ℝ) (q : ℝ) : Prop :=
  PhiIsLargestRoot ψ q ∧
  ∀ β : ℝ, 0 ≤ β → (Phi ψ q < β ↔ q < ψ β)


private noncomputable def Zscale (q : ℝ) (W : ℝ → ℝ) (x : ℝ) : ℝ :=
  1 + q * ∫ y in (0 : ℝ)..x, W y


private noncomputable def integratedScale (W : ℝ → ℝ) (x : ℝ) : ℝ :=
  ∫ y in (0 : ℝ)..x, W y


private def IsScaleMeasure (W : ℝ → ℝ) (m : Measure ℝ) : Prop :=
  m (Set.Iio (0 : ℝ)) = 0 ∧
  m {0} = ENNReal.ofReal (W 0) ∧
  ∀ a b : ℝ, 0 ≤ a → a ≤ b →
    m (Set.Ioc a b) = ENNReal.ofReal (W b - W a)


private noncomputable def tiltedScale (c : ℝ) (W : ℝ → ℝ) (x : ℝ) : ℝ :=
  Real.exp (-c * x) * W x


private def HasScaleRightDerivative (W : ℝ → ℝ) (x d : ℝ) : Prop :=
  HasDerivWithinAt W d (Set.Ici x) x


private noncomputable def scaleRightDerivativeZero (W : ℝ → ℝ) : EReal :=
  Filter.liminf (fun h : ℝ => (((W h - W 0) / h : ℝ) : EReal))
    (nhdsWithin (0 : ℝ) (Set.Ioi 0))


private def HasExtendedRightSlope (W : ℝ → ℝ) (d : EReal) : Prop :=
  Filter.Tendsto
    (fun h : ℝ => (((W h - W 0) / h : ℝ) : EReal))
    (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds d)


private def RightSlopeAgreesWithAvram (W : ℝ → ℝ) : Prop :=
  scaleRightDerivativeZero W =
    AvramDividend.Classical.derivZeroPlus W


private def AtZeroScale (W : ℝ → ℝ) : ℝ := W 0


private def IsLawScale
    {Ω : Type*} [mΩ : MeasurableSpace Ω]
    {P : Measure Ω} {ℱ : Filtration ℝ≥0 mΩ}
    (L : AvramDividend.Classical.SpectrallyNegativeLevy P ℱ)
    (q : ℝ) (W : ℝ → ℝ) : Prop :=
  IsQScale L.ψ q W


private def HasPublishedScaleBridge
    {Ω : Type*} [mΩ : MeasurableSpace Ω]
    {P : Measure Ω} {ℱ : Filtration ℝ≥0 mΩ}
    (L : AvramDividend.Classical.SpectrallyNegativeLevy P ℱ)
    (q : ℝ) : Prop :=
  IsScaleTransformDomainBridge L.ψ q ∧
    ∀ W : ℝ → ℝ,
      IsLawScale L q W ↔
        (0 ≤ q ∧ AvramDividend.Classical.IsScaleFunction L q W)


private def IsPublishedScaleCandidate
    {Ω : Type*} [mΩ : MeasurableSpace Ω]
    {P : Measure Ω} {ℱ : Filtration ℝ≥0 mΩ}
    (L : AvramDividend.Classical.SpectrallyNegativeLevy P ℱ)
    (q : ℝ) (W : ℝ → ℝ) : Prop :=
  0 ≤ q ∧ AvramDividend.Classical.IsScaleFunction L q W


private theorem lawScale_iff_published_of_rootDomain
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



private noncomputable def tauPlus {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sInf {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ a < X u ω}


private noncomputable def tauMinus {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sInf {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ X u ω < a}


private noncomputable def tauWeakAbove {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sInf {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ a ≤ X u ω}


private noncomputable def tauWeakBelow {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sInf {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ X u ω ≤ a}


private noncomputable def hitNegative {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (x : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sInf {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ X u ω = -x}


private noncomputable def lastNegativeVisit {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  sSup {t : WithTop ℝ≥0 | ∃ u : ℝ≥0,
    0 < u ∧ (u : WithTop ℝ≥0) = t ∧ X u ω < 0}


private noncomputable def discountedAt (q : ℝ) (τ : WithTop ℝ≥0) : ℝ :=
  match τ with
  | ⊤ => 0
  | (t : ℝ≥0) => Real.exp (-q * (t : ℝ))


private def IsLeftLimit {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (t : ℝ≥0) (ω : Ω) (v : ℝ) : Prop :=
  0 < t ∧
  Filter.Tendsto (fun s : ℝ≥0 => X s ω)
    (nhdsWithin t (Set.Iio t)) (nhds v)


private def IsStoppingTime {Ω : Type*} (m : MeasurableSpace Ω)
    (ℱ : Filtration ℝ≥0 m) (τ : Ω → WithTop ℝ≥0) : Prop :=
  ∀ t : ℝ≥0, @MeasurableSet Ω (ℱ t) {ω | τ ω ≤ (t : WithTop ℝ≥0)}


private noncomputable def postPassageValue {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (τ : WithTop ℝ≥0) (ω : Ω) : Option ℝ :=
  match τ with
  | ⊤ => none
  | (t : ℝ≥0) => some (X t ω)


private noncomputable def passageOvershoot {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (a : ℝ)
    (τ : WithTop ℝ≥0) (ω : Ω) : Option ℝ :=
  (postPassageValue X τ ω).map (fun v => v - a)


private def IsPrePassageValue {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ)
    (τ : WithTop ℝ≥0) (ω : Ω) (v : ℝ) : Prop :=
  ∃ t : ℝ≥0, (t : WithTop ℝ≥0) = τ ∧
    IsLeftLimit X t ω v


private noncomputable def positiveTimeLebesgue : Measure ℝ≥0 :=
  Measure.map Real.toNNReal
    (volume.restrict (Set.Ici (0 : ℝ)))


private def IsResolvent {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q : ℝ) (U : Measure ℝ) : Prop :=
  0 ≤ q ∧
  ∀ A : Set ℝ, MeasurableSet A →
    U A = ∫⁻ t : ℝ≥0,
      ENNReal.ofReal (Real.exp (-q * (t : ℝ))) *
        P {ω | X t ω ∈ A} ∂positiveTimeLebesgue


private def IsIntervalKilledResolvent {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q a : ℝ) (U : Measure ℝ) : Prop :=
  0 ≤ q ∧ 0 < a ∧
  ∀ A : Set ℝ, MeasurableSet A →
    U A = ∫⁻ t : ℝ≥0,
      ENNReal.ofReal (Real.exp (-q * (t : ℝ))) *
        P {ω | (t : WithTop ℝ≥0) <
          min (tauMinus X 0 ω) (tauPlus X a ω) ∧ X t ω ∈ A} ∂positiveTimeLebesgue


private def IsHalflineKilledResolvent {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q : ℝ) (U : Measure ℝ) : Prop :=
  0 ≤ q ∧
  ∀ A : Set ℝ, MeasurableSet A →
    U A = ∫⁻ t : ℝ≥0,
      ENNReal.ofReal (Real.exp (-q * (t : ℝ))) *
        P {ω | (t : WithTop ℝ≥0) < tauMinus X 0 ω ∧ X t ω ∈ A} ∂positiveTimeLebesgue


private def IsResolventKernel {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q : ℝ) (K : ProbabilityTheory.Kernel ℝ ℝ) : Prop :=
  ∀ x : ℝ, IsResolvent P (fun t ω => x + X t ω) q (K x)



private def HasLocallyBoundedPaths {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ (ω : Ω) (t : ℝ≥0),
    BddAbove {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω} ∧
    BddBelow {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω}


private def HasLocallyBoundedPathsAlmostSure {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P, ∀ t : ℝ≥0,
    BddAbove {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω} ∧
    BddBelow {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω}


private noncomputable def runningSup {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (t : ℝ≥0) (ω : Ω) : ℝ :=
  sSup {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω}


private noncomputable def runningInf {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (t : ℝ≥0) (ω : Ω) : ℝ :=
  sInf {y : ℝ | ∃ u : ℝ≥0, u ≤ t ∧ y = X u ω}


private noncomputable def reflectAtSup {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x : ℝ)
    (t : ℝ≥0) (ω : Ω) : ℝ :=
  max x (runningSup X t ω) - X t ω


private noncomputable def reflectAtInf {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x : ℝ)
    (t : ℝ≥0) (ω : Ω) : ℝ :=
  X t ω - min (runningInf X t ω) (-x)


private noncomputable def reflectedSupExit {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  tauPlus (reflectAtSup X x) a ω


private noncomputable def reflectedInfExit {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  tauPlus (reflectAtInf X x) a ω


private structure CappedStorage {Ω : Type*} [MeasurableSpace Ω]
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


private def HasUniqueCappedStorage {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (initial capacity : ℝ) : Prop :=
  ∃ S : CappedStorage P X initial capacity,
    ∀ T : CappedStorage P X initial capacity,
      ∀ᵐ ω ∂P, ∀ t : ℝ≥0,
        S.workload t ω = T.workload t ω ∧
        S.lowerRegulator t ω = T.lowerRegulator t ω ∧
        S.upperRegulator t ω = T.upperRegulator t ω


private noncomputable def cappedEmptyingTime {Ω : Type*}
    [MeasurableSpace Ω] {P : Measure Ω}
    {X : ℝ≥0 → Ω → ℝ} {x c : ℝ}
    (S : CappedStorage P X x c) (ω : Ω) : WithTop ℝ≥0 :=
  tauWeakBelow S.workload 0 ω


private noncomputable def supremumReflectedScaleResolvent
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


private def IsSupremumReflectedPotential {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q x a : ℝ) (U : Measure ℝ) : Prop :=
  0 ≤ q ∧ 0 ≤ x ∧ x ≤ a ∧ 0 < a ∧
  ∀ A : Set ℝ, MeasurableSet A →
    U A = ∫⁻ t : ℝ≥0,
      ENNReal.ofReal (Real.exp (-q * (t : ℝ))) *
        P {ω | (t : WithTop ℝ≥0) <
          reflectedSupExit X x a ω ∧
          reflectAtSup X x t ω ∈ A} ∂positiveTimeLebesgue


private def IsInfimumReflectedPotential {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (q x a : ℝ) (U : Measure ℝ) : Prop :=
  0 ≤ q ∧ 0 ≤ x ∧ x ≤ a ∧ 0 < a ∧
  ∀ A : Set ℝ, MeasurableSet A →
    U A = ∫⁻ t : ℝ≥0,
      ENNReal.ofReal (Real.exp (-q * (t : ℝ))) *
        P {ω | (t : WithTop ℝ≥0) <
          reflectedInfExit X x a ω ∧
          reflectAtInf X x t ω ∈ A} ∂positiveTimeLebesgue



private noncomputable def gouItoApprox {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (reversion : ℝ)
    (n : ℕ) (t : ℝ≥0) (ω : Ω) : ℝ :=
  ∑ k ∈ Finset.range (n + 1),
    Real.exp (reversion * (t : ℝ) * ((k : ℝ) / (n + 1))) *
      (X (t * ((↑(k + 1) : ℝ≥0) / (↑(n + 1) : ℝ≥0))) ω -
       X (t * ((↑k : ℝ≥0) / (↑(n + 1) : ℝ≥0))) ω)


private def IsGouItoIntegral {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ)
    (reversion : ℝ) (I : ℝ≥0 → Ω → ℝ) : Prop :=
  0 < reversion ∧
  ∀ (t : ℝ≥0) (eps : ℝ), 0 < eps →
    Filter.Tendsto
      (fun n : ℕ =>
        P {ω | eps ≤ |gouItoApprox X reversion n t ω - I t ω|})
      Filter.atTop (nhds (0 : ENNReal))


private def HasAlmostSureCadlagIntegral {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (I : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P, ∀ t : ℝ≥0,
    ContinuousWithinAt (fun s : ℝ≥0 => I s ω) (Set.Ici t) t ∧
    (0 < t → ∃ left : ℝ,
      Filter.Tendsto (fun s : ℝ≥0 => I s ω)
        (nhdsWithin t (Set.Iio t)) (nhds left))


private def HasGOUAdaptedIntegral {Ω : Type*} [mΩ : MeasurableSpace Ω]
    (ℱ : Filtration ℝ≥0 mΩ) (I : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ t : ℝ≥0, @Measurable Ω ℝ (ℱ t) inferInstance (I t)


private def IsGOURightContinuousFiltration {Ω : Type*}
    [mΩ : MeasurableSpace Ω] (ℱ : Filtration ℝ≥0 mΩ) : Prop :=
  ∀ (t : ℝ≥0) (A : Set Ω),
    @MeasurableSet Ω (ℱ t) A ↔
      ∀ s : ℝ≥0, t < s → @MeasurableSet Ω (ℱ s) A


private structure GOUInput (Ω : Type) [mΩ : MeasurableSpace Ω]
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


private noncomputable def GOUPath {Ω : Type} [MeasurableSpace Ω]
    {P : Measure Ω} [IsProbabilityMeasure P]
    (M : GOUInput Ω P)
    (y : ℝ) (t : ℝ≥0) (ω : Ω) : ℝ :=
  Real.exp (-M.meanReversion * (t : ℝ)) *
    (y + M.stochasticIntegral t ω)


private noncomputable def GOUExit {Ω : Type} [MeasurableSpace Ω]
    {P : Measure Ω} [IsProbabilityMeasure P]
    (M : GOUInput Ω P)
    (y a : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  tauPlus (GOUPath M y) a ω


private def HasGOUConstruction {Ω : Type} [MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (reversion : ℝ) : Prop :=
  0 < reversion ∧
  ∃ M : GOUInput Ω P, M.driver = D ∧ M.meanReversion = reversion


private def GOUIndistinguishable {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (I J : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P, ∀ t : ℝ≥0, I t ω = J t ω


private def GOUVersionUniquenessObligation {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω) : Prop :=
  ∀ I J : ℝ≥0 → Ω → ℝ,
    HasAlmostSureCadlagIntegral P I →
    HasAlmostSureCadlagIntegral P J →
    (∀ t : ℝ≥0, ∀ᵐ ω ∂P, I t ω = J t ω) →
    GOUIndistinguishable P I J


private def GOUExitVersionLawObligation {Ω : Type}
    [MeasurableSpace Ω] (P : Measure Ω)
    [IsProbabilityMeasure P] : Prop :=
  ∀ (M N : GOUInput Ω P) (y a : ℝ),
    M.driver = N.driver →
    M.meanReversion = N.meanReversion →
    GOUIndistinguishable P M.stochasticIntegral N.stochasticIntegral →
    ∀ᵐ ω ∂P, GOUExit M y a ω = GOUExit N y a ω


private noncomputable def Htransform (ψ : ℝ → ℝ)
    (reversion ν x : ℝ) : ℝ :=
  ∫ u in Set.Ioi (0 : ℝ),
    Real.exp (x * u -
      (1 / reversion) * (∫ v in (0 : ℝ)..u, ψ v / v)) *
      u ^ (ν - 1 : ℝ) ∂volume


private def HIsIntegrable (ψ : ℝ → ℝ) (reversion ν x : ℝ) : Prop :=
  0 < reversion ∧ 0 < ν ∧
  IntegrableOn
    (fun u : ℝ => Real.exp (x * u -
        (1 / reversion) * (∫ v in (0 : ℝ)..u, ψ v / v)) * u ^ (ν - 1))
    (Set.Ioi (0 : ℝ)) volume


private def IsGOUPositiveHDomain (ψ : ℝ → ℝ)
    (reversion θ y a : ℝ) : Prop :=
  0 < reversion ∧ 0 < θ ∧
  HIsIntegrable ψ reversion (θ / reversion) y ∧
  HIsIntegrable ψ reversion (θ / reversion) a ∧
  Htransform ψ reversion (θ / reversion) a ≠ 0


private noncomputable def GOUPositiveHRatio (ψ : ℝ → ℝ)
    (reversion θ y a : ℝ) : ℝ :=
  Htransform ψ reversion (θ / reversion) y /
    Htransform ψ reversion (θ / reversion) a


private def IsGOUZeroHBoundary (ψ : ℝ → ℝ)
    (reversion y a p : ℝ) : Prop :=
  (∀ᶠ θ : ℝ in nhdsWithin 0 (Set.Ioi 0),
    IsGOUPositiveHDomain ψ reversion θ y a) ∧
  Filter.Tendsto
    (fun θ : ℝ => GOUPositiveHRatio ψ reversion θ y a)
    (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds p)


private def IsGOUTheorem812TransformConclusion {Ω : Type}
    [MeasurableSpace Ω] {P : Measure Ω} [IsProbabilityMeasure P]
    (M : GOUInput Ω P) (ψ : ℝ → ℝ) (y a : ℝ) : Prop :=
  (∀ θ : ℝ, 0 < θ →
    IsGOUPositiveHDomain ψ M.meanReversion θ y a ∧
    (∫ ω, discountedAt θ (GOUExit M y a ω) ∂P) =
      GOUPositiveHRatio ψ M.meanReversion θ y a) ∧
  IsGOUZeroHBoundary ψ M.meanReversion y a
    (∫ ω, discountedAt 0 (GOUExit M y a ω) ∂P)


private noncomputable def stableLaplace (c α β : ℝ) : ℝ :=
  c * β ^ α


private noncomputable def mittagLeffler (α z : ℝ) : ℝ :=
  ∑' n : ℕ, z ^ n / Real.Gamma (1 + α * n)


private def MittagLefflerSummable (α z : ℝ) : Prop :=
  0 < α ∧ Summable (fun n : ℕ =>
    z ^ n / Real.Gamma (1 + α * n))


private def HasNonnegativeHeightSupport (n : Measure ℝ) : Prop :=
  n (Set.Iio (0 : ℝ)) = 0


private noncomputable def claimLossRate (componentJumpMeasure : Measure ℝ) : ℝ :=
  ∫ x in Set.Iio (0 : ℝ), -x ∂componentJumpMeasure


private structure CompetingClaimData (n : ℕ) where
  drift : Fin n → ℝ
  jumpLaw : Fin n → Measure ℝ


private def GOUHasLogJumpIntegrability (jumpMeasure : Measure ℝ) : Prop :=
  (∫⁻ x in Set.Iio (-1 : ℝ),
    ENNReal.ofReal (Real.log |x|) ∂jumpMeasure) < ⊤


private def IsStableExponent (ψ : ℝ → ℝ) (c α : ℝ) : Prop :=
  0 < c ∧ 1 < α ∧ α ≤ 2 ∧
  ∀ β : ℝ, 0 ≤ β → ψ β = stableLaplace c α β


private def IsStableSubordinatorExponent (phi : ℝ → ℝ)
    (c α : ℝ) : Prop :=
  0 < c ∧ 0 < α ∧ α < 1 ∧
  ∀ β : ℝ, 0 ≤ β → phi β = stableLaplace c α β


private structure ExcursionSystem (E : Type*) [MeasurableSpace E] where
  excursionLaw : Measure E
  height : E → ℝ
  heightMeasurable : Measurable height

private noncomputable def excursionHeightMeasure {E : Type*}
    [MeasurableSpace E] (S : ExcursionSystem E) : Measure ℝ :=
  Measure.map S.height S.excursionLaw


private structure CompetingRiskPathData (Ω : Type*) (n : ℕ) where
  total : ℝ≥0 → Ω → ℝ
  component : Fin n → ℝ≥0 → Ω → ℝ
  pathSum : ∀ (t : ℝ≥0) (ω : Ω),
    total t ω = ∑ i : Fin n, component i t ω

end Kyprianou.Ch08

namespace Kyprianou.Ch08.StageB





private def shifted {Ω : Type*} (X : ℝ≥0 → Ω → ℝ) (x : ℝ) : ℝ≥0 → Ω → ℝ :=
  fun t ω => x + X t ω


private noncomputable def killedIntervalDensity
    (W : ℝ → ℝ) (a x y : ℝ) : ℝ :=
  W x * W (a - y) / W a - W (x - y)


private noncomputable def killedHalflineDensity
    (ψ : ℝ → ℝ) (q : ℝ) (W : ℝ → ℝ) (x y : ℝ) : ℝ :=
  Real.exp (-(Phi ψ q) * y) * W x - W (x - y)


private noncomputable def unrestrictedPotentialDensity
    (ψ : ℝ → ℝ) (q : ℝ) (W : ℝ → ℝ) (z : ℝ) : ℝ :=
  deriv (Phi ψ) q * Real.exp (-(Phi ψ q) * z) - W (-z)


private def HasSourceScaleFamily (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ) : Prop :=
  ∀ q : ℝ, 0 ≤ q → IsQScale ψ q (W q)


private def result8_6 : Prop :=
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


private def result8_7 : Prop :=
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


private def result8_8 : Prop :=
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


private def result8_9 : Prop :=
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


private def result8_12 : Prop :=
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







private noncomputable def downExpectation {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) (q x : ℝ) : ℝ :=
  ∫ ω, discountedAt q (tauMinus (shifted X x) 0 ω) ∂P


private noncomputable def upBeforeDownExpectation {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) (q x a : ℝ) : ℝ :=
  ∫ ω,
    (if tauPlus (shifted X x) a ω <
          tauMinus (shifted X x) 0 ω
     then discountedAt q (tauPlus (shifted X x) a ω)
     else 0) ∂P


private noncomputable def downBeforeUpExpectation {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) (q x a : ℝ) : ℝ :=
  ∫ ω,
    (if tauMinus (shifted X x) 0 ω <
          tauPlus (shifted X x) a ω
     then discountedAt q (tauMinus (shifted X x) 0 ω)
     else 0) ∂P


private def HasPositiveFiniteRightPsiSlope (ψ : ℝ → ℝ) (d : ℝ) : Prop :=
  0 < d ∧
  Filter.Tendsto (fun h : ℝ => (ψ h - ψ 0) / h)
    (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds d)


private def result8_1 : Prop :=
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


private def result8_3 : Prop :=
  ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
    HasSourceScaleFamily ψ W →
    ∀ x : ℝ, 0 ≤ x →
      ∃ F : ℂ → ℂ,
        Differentiable ℂ F ∧
        ∀ q : ℝ, 0 ≤ q → F (q : ℂ) = (W q x : ℂ)


private def result8_5 : Prop :=
  ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
    HasSourceScaleFamily ψ W →
    ∀ x : ℝ, 0 < x →
      ∃ F : ℂ → ℂ,
        Differentiable ℂ F ∧
        ∀ q : ℝ, 0 ≤ q → F (q : ℂ) = (Zscale q (W q) x : ℂ)


private noncomputable def reflectedSupJointPayoff {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (q θ x a : ℝ) (ω : Ω) : ℝ :=
  match reflectedSupExit X x a ω with
  | ⊤ => 0
  | (t : ℝ≥0) =>
      Real.exp (-q * (t : ℝ) - θ * reflectAtSup X x t ω)


private def result8_10_i : Prop :=
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


private def result8_10_ii : Prop :=
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


private def result8_10 : Prop := result8_10_i ∧ result8_10_ii


private def result8_11_i : Prop :=
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


private def result8_11_ii : Prop :=
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


private def result8_11 : Prop := result8_11_i ∧ result8_11_ii







private def exercise8_2_i : Prop :=
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


private def exercise8_2_ii : Prop :=
  ∀ (α q x : ℝ) (W : ℝ → ℝ → ℝ),
    1 < α → α < 2 → 0 ≤ q → 0 ≤ x →
    HasSourceScaleFamily (fun v : ℝ => v ^ α) W →
    Zscale q (W q) x =
      ∑' n : ℕ, q ^ n * x ^ (α * n) / Real.Gamma (1 + α * n) ∧
    Zscale q (W q) x = mittagLeffler α (q * x ^ α)


private def exercise8_2_iii : Prop :=
  ∀ (α q x : ℝ) (W : ℝ → ℝ → ℝ),
    1 < α → α < 2 → 0 ≤ q → 0 ≤ x →
    HasSourceScaleFamily (fun v : ℝ => v ^ α) W →
    W q x = α * x ^ (α-1) *
      deriv (mittagLeffler α) (q * x ^ α)


private def exercise8_2_iv : Prop :=
  ∀ (q x : ℝ) (W : ℝ → ℝ → ℝ),
    0 ≤ q → 0 ≤ x →
    HasSourceScaleFamily (fun β : ℝ => β ^ 2 / 2) W →
    W q x =
      (if q = 0 then 2 * x
       else Real.sqrt (2 / q) *
         Real.sinh (Real.sqrt (2 * q) * x)) ∧
    Zscale q (W q) x =
      Real.cosh (Real.sqrt (2 * q) * x)


private def exercise8_2 : Prop :=
  exercise8_2_i ∧ exercise8_2_ii ∧
  exercise8_2_iii ∧ exercise8_2_iv


private def exercise8_5_i : Prop :=
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


private def exercise8_5_ii : Prop :=
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


private def exercise8_5 : Prop :=
  exercise8_5_i ∧ exercise8_5_ii


private noncomputable def stableOvershootCDF
    (α y : ℝ) : ℝ :=
  Real.sin (Real.pi * (α - 1)) / Real.pi *
    ∫ t in (0 : ℝ)..y, t ^ (-(α - 1)) / (1 + t)


private def StableOvershootEvent {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x y : ℝ) (ω : Ω) : Prop :=
  tauMinus (shifted X x) 0 ω <
    tauPlus (shifted X x) 1 ω ∧
  ∃ v : ℝ,
    postPassageValue (shifted X x)
      (tauMinus (shifted X x) 0 ω) ω = some v ∧
    -v ≤ y


private def exercise8_12_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (α x y : ℝ),
    1 < α → α < 2 → 0 < x → x < 1 → 0 ≤ y →
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D)
      (fun β : ℝ => β ^ α) →
    (P {ω | StableOvershootEvent D.X x y ω}).toReal =
      stableOvershootCDF α (y / x) -
      x ^ (α - 1) * stableOvershootCDF α y


private def exercise8_12_ii : Prop :=
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


private def exercise8_12 : Prop :=
  exercise8_12_i ∧ exercise8_12_ii







private def HasNegativeRightPsiSlope (ψ : ℝ → ℝ) : Prop :=
  ∃ d : EReal, d < 0 ∧
    Filter.Tendsto
      (fun h : ℝ => (((ψ h - ψ 0) / h : ℝ) : EReal))
      (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds d)


private def exercise8_1 : Prop :=
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


private def exercise8_6 : Prop :=
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


private noncomputable def lastExitShifted
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (y : ℝ) (ω : Ω) : WithTop ℝ≥0 :=
  lastNegativeVisit (shifted X y) ω


private def NeverNegative {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (x : ℝ) (ω : Ω) : Prop :=
  ∀ t : ℝ≥0, 0 < t → 0 ≤ x + X t ω


private def exercise8_10_i : Prop :=
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


private def exercise8_10_ii : Prop :=
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


private noncomputable def discountedPositiveLastExit
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (q y : ℝ) (ω : Ω) : ℝ :=
  if (0 : WithTop ℝ≥0) < lastExitShifted X y ω
  then discountedAt q (lastExitShifted X y ω)
  else 0


private noncomputable def downOvershootTilt
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (q θ y : ℝ) (ω : Ω) : ℝ :=
  match tauMinus (shifted X y) 0 ω with
  | ⊤ => 0
  | (t : ℝ≥0) =>
      Real.exp (-q * (t : ℝ) + θ * (y + X t ω))


private def exercise8_10_iii : Prop :=
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


private def exercise8_10_iv : Prop :=
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

private def exercise8_10 : Prop :=
  exercise8_10_i ∧ exercise8_10_ii ∧
  exercise8_10_iii ∧ exercise8_10_iv


private def exercise8_11_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (q x a : ℝ),
    0 ≤ q → 0 < a → 0 < x → x ≤ a →
    (∫ ω, discountedAt q (reflectedInfExit D.X x a ω) ∂P) =
      downBeforeUpExpectation P D.X q x a *
        (∫ ω, discountedAt q (reflectedInfExit D.X 0 a ω) ∂P) +
      upBeforeDownExpectation P D.X q x a


private def exercise8_11_ii : Prop :=
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


private def exercise8_11_iii : Prop :=
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

private def exercise8_11 : Prop :=
  exercise8_11_i ∧ exercise8_11_ii ∧ exercise8_11_iii







private noncomputable def descendingJumpTail
    (jumpMeasure : Measure ℝ) (y : ℝ) : ℝ :=
  (jumpMeasure (Set.Iio (-y))).toReal


private def DriftsToPositiveInfinity {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P,
    Filter.Tendsto (fun t : ℝ≥0 => X t ω)
      Filter.atTop Filter.atTop


private def DriftsToNegativeInfinity {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (X : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P,
    Filter.Tendsto (fun t : ℝ≥0 => X t ω)
      Filter.atTop Filter.atBot


private noncomputable def measureConvolve
    (μ ν : Measure ℝ) : Measure ℝ :=
  Measure.map (fun p : ℝ × ℝ => p.1 + p.2) (μ.prod ν)


private noncomputable def measureConvolvePow
    (ν : Measure ℝ) : ℕ → Measure ℝ
  | 0 => Measure.dirac (0 : ℝ)
  | n + 1 => measureConvolve ν (measureConvolvePow ν n)


private noncomputable def descendingRenewalMeasure
    (jumpMeasure : Measure ℝ) (d : ℝ) : Measure ℝ :=
  (volume.restrict (Set.Ioi (0 : ℝ))).withDensity
    (fun y : ℝ =>
      ENNReal.ofReal ((d)⁻¹ * descendingJumpTail jumpMeasure y))


private def exercise8_3_i : Prop :=
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


private def exercise8_3_ii : Prop :=
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


private def exercise8_3_iii : Prop :=
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

private def exercise8_3 : Prop :=
  exercise8_3_i ∧ exercise8_3_ii ∧ exercise8_3_iii


private def HasAtomlessNegativeLevyMeasure (jumpMeasure : Measure ℝ) : Prop :=
  ∀ x : ℝ, x < 0 → jumpMeasure {x} = 0


private def HasSmoothJumpTail
    (jumpMeasure : Measure ℝ) (n : ℕ) : Prop :=
  ContDiffOn ℝ n
    (descendingJumpTail jumpMeasure) (Set.Ioi (0 : ℝ))


private def exercise8_4_i : Prop :=
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


private def exercise8_4_ii : Prop :=
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


private def exercise8_4_iii : Prop :=
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


private def Oscillates {Ω : Type*} [MeasurableSpace Ω]
    (P : Measure Ω) (X : ℝ≥0 → Ω → ℝ) : Prop :=
  ∀ᵐ ω ∂P,
    Filter.limsup (fun t : ℝ≥0 => (X t ω : EReal))
      Filter.atTop = ⊤ ∧
    Filter.liminf (fun t : ℝ≥0 => (X t ω : EReal))
      Filter.atTop = ⊥


private def exercise8_4_iv : Prop :=
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

private def exercise8_4 : Prop :=
  exercise8_4_i ∧ exercise8_4_ii ∧
  exercise8_4_iii ∧ exercise8_4_iv





private def HasEsscherCoefficientLimit (ψ : ℝ → ℝ) (c : ℝ) : Prop :=
  ∃ L : ℝ,
    Filter.Tendsto
      (fun h : ℝ => h / (Phi ψ (h + ψ c) - c))
      (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds L)


private noncomputable def esscherDownCoefficient
    (ψ : ℝ → ℝ) (c p : ℝ) : ℝ :=
  if p = ψ c then
    Classical.epsilon (fun L : ℝ =>
      Filter.Tendsto
        (fun h : ℝ => h / (Phi ψ (h + ψ c) - c))
        (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds L))
  else (p - ψ c) / (Phi ψ p - c)


private def HasFiniteRightSlopeAt (ψ : ℝ → ℝ) (c : ℝ) : Prop :=
  ∃ d : ℝ,
    Filter.Tendsto
      (fun h : ℝ => (ψ (c + h) - ψ c) / h)
      (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds d)


private noncomputable def selectedRightSlope
    (ψ : ℝ → ℝ) (c : ℝ) : ℝ :=
  Classical.epsilon (fun d : ℝ =>
    Filter.Tendsto
      (fun h : ℝ => (ψ (c + h) - ψ c) / h)
      (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds d))


private noncomputable def downEsscherPayoff
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (p c x : ℝ) (ω : Ω) : ℝ :=
  match tauMinus X (-x) ω with
  | ⊤ => 0
  | (t : ℝ≥0) =>
      Real.exp (-p * (t : ℝ) + c * (X t ω + x))


private noncomputable def hitTwoTimePayoff
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (p u x : ℝ) (ω : Ω) : ℝ :=
  match hitNegative X x ω with
  | ⊤ => 0
  | (t : ℝ≥0) =>
      match tauMinus X (-x) ω with
      | ⊤ => 0
      | (s : ℝ≥0) =>
          Real.exp (-p * (t : ℝ) - u * ((t : ℝ) - (s : ℝ)))


private noncomputable def downOvershootAtNegativeLevel
    {Ω : Type*} (X : ℝ≥0 → Ω → ℝ)
    (ψ : ℝ → ℝ) (p u x : ℝ) (ω : Ω) : ℝ :=
  match tauMinus X (-x) ω with
  | ⊤ => 0
  | (t : ℝ≥0) =>
      Real.exp (-p * (t : ℝ) +
        Phi ψ (p+u) * (X t ω + x))


private def exercise8_7_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (c q : ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    0 ≤ c → 0 ≤ q →
    Phi (shiftedExponent ψ c) q =
      Phi ψ (q + ψ c) - c


private def exercise8_7_ii : Prop :=
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


private def exercise8_7_iii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (ψ : ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    ∀ (p u x : ℝ), 0 ≤ p → 0 ≤ u → 0 < x →
      (∫ ω, hitTwoTimePayoff D.X p u x ω ∂P) =
        ∫ ω, downOvershootAtNegativeLevel D.X ψ p u x ω ∂P


private def exercise8_7_iv : Prop :=
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

private def exercise8_7 : Prop :=
  exercise8_7_i ∧ exercise8_7_ii ∧
  exercise8_7_iii ∧ exercise8_7_iv


private def IsStandardBrownian {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (B : ℝ≥0 → Ω → ℝ) : Prop :=
  ProbabilityTheory.IsLevyProcess B P ∧
  (∀ᵐ ω ∂P,
    B 0 ω = 0 ∧ Continuous (fun t : ℝ≥0 => B t ω)) ∧
  ∀ (t : ℝ≥0) (ξ : ℝ),
    charFun (P.map (B t)) ξ =
      Complex.exp ((-((t : ℝ) * ξ ^ 2 / 2) : ℂ))


private def IsHalfStableSubordinator {Ω : Type*}
    [MeasurableSpace Ω] (P : Measure Ω)
    (S : ℝ≥0 → Ω → ℝ) : Prop :=
  ProbabilityTheory.IsLevyProcess S P ∧
  (∀ᵐ ω ∂P,
    S 0 ω = 0 ∧ Monotone (fun t : ℝ≥0 => S t ω)) ∧
  ∀ (t : ℝ≥0) (β : ℝ), 0 ≤ β →
    (∫ ω, Real.exp (-β * S t ω) ∂P) =
      Real.exp (-(t : ℝ) * Real.sqrt (2 * β))


private def BrownianDiagonalContact {Ω : Type*}
    (B : ℝ≥0 → Ω → ℝ) (ω : Ω) : Prop :=
  ∃ t : ℝ≥0, 0 < t ∧
    B t ω = runningSup B t ω ∧ B t ω = (t : ℝ)


private def exercise8_8_i : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (B S : ℝ≥0 → Ω → ℝ),
    IsStandardBrownian P B →
    IsHalfStableSubordinator P S →
    (P {ω | BrownianDiagonalContact B ω}).toReal =
      (P {ω | hitNegative
        (fun t ω => (t : ℝ) - S t ω) 0 ω ≠ ⊤}).toReal


private def exercise8_8_ii : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (B : ℝ≥0 → Ω → ℝ),
    IsStandardBrownian P B →
    (P {ω | BrownianDiagonalContact B ω}).toReal = (1 / 2 : ℝ)

private def exercise8_8 : Prop :=
  exercise8_8_i ∧ exercise8_8_ii





private def HasIndependentCompetingLevyComponents
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


private noncomputable def preAtPassage
    {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ) (τ : WithTop ℝ≥0)
    (ω : Ω) : ℝ :=
  Classical.epsilon (fun v : ℝ => IsPrePassageValue X τ ω v)


private def RuinedByComponent
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


private def ComponentClaimPrePost
    {Ω : Type*} (n : ℕ)
    (C : CompetingRiskPathData Ω n)
    (i : Fin n) (x : ℝ)
    (A : Set (ℝ × ℝ)) (ω : Ω) : Prop :=
  let X := shifted C.total x
  let τ := tauMinus X 0 ω
  RuinedByComponent n C i x ω ∧
    (preAtPassage X τ ω,
      (postPassageValue X τ ω).getD 0) ∈ A


private def exercise8_9_i : Prop :=
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


private def exercise8_9_ii : Prop :=
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


private def exercise8_9_iii : Prop :=
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

private def exercise8_9 : Prop :=
  exercise8_9_i ∧ exercise8_9_ii ∧ exercise8_9_iii





private def IsEsscherLaplaceShifted
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


private def result8_4 : Prop :=
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





private def NoDrawdownBeforeUpcrossing {Ω : Type*}
    (X : ℝ≥0 → Ω → ℝ)
    (a h : ℝ) (ω : Ω) : Prop :=
  ∀ t : ℝ≥0,
    (t : WithTop ℝ≥0) < tauPlus X a ω →
      reflectAtSup X 0 t ω < h


private def HasActualQExcursionHeightLaw {Ω : Type}
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


private def HasQExcursionScaleRepresentation
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


private def result8_2 : Prop :=
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







private def technicalGOUConstruction : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P) (lambda : ℝ),
    0 < lambda → HasGOUConstruction P D lambda


private def technicalGOUVersionUniqueness : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P],
    GOUVersionUniquenessObligation P


private def technicalGOUExitInvariance : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P],
    GOUExitVersionLawObligation P


private def technicalLawTripletIdentity : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P),
    HasLawTripletLaplaceBridge (SpectrallyNegativeModel.toData P D)


private def technicalPhiRootDomain : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    ∀ q : ℝ, 0 ≤ q →
      IsScaleTransformDomainBridge ψ q


private def technicalQExcursionHeightConstruction : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    ∀ q : ℝ, 0 ≤ q →
      ∃ n : Measure ℝ,
        HasActualQExcursionHeightLaw P D ψ q n


private def technicalExtendedRightScaleSlope : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
    IsLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    HasSourceScaleFamily ψ W →
    ∀ q : ℝ, 0 ≤ q →
      ∃ d : EReal, HasExtendedRightSlope (W q) d


private def technicalTwoSidedStorage : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (x c : ℝ), 0 ≤ x → x ≤ c → 0 < c →
      HasUniqueCappedStorage P D.X x c


private def technicalGOUPositiveHDomain : Prop :=
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


private def technicalGOUZeroHBoundary : Prop :=
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


private def technicalCappedStorageVersionInvariance : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (X Y : ℝ≥0 → Ω → ℝ) (x c q : ℝ),
    0 < x → x < c → 0 < q →
    (∀ᵐ ω ∂P, ∀ t : ℝ≥0, X t ω = Y t ω) →
    ∀ (S : CappedStorage P X x c)
      (T : CappedStorage P Y x c),
      (∫ ω, discountedAt q (cappedEmptyingTime S ω) ∂P) =
      (∫ ω, discountedAt q (cappedEmptyingTime T ω) ∂P)


private def technicalFullMomentExponentExistence : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P),
    ∃ ψ : ℝ → ℝ,
      IsFullMomentLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ


private def technicalEsscherDensityConsistency : Prop :=
  ∀ (Ω : Type) [mΩ : MeasurableSpace Ω]
    (P : Measure Ω) [IsProbabilityMeasure P]
    (D : SpectrallyNegativeModel Ω P)
    (ψ : ℝ → ℝ) (c : ℝ),
    IsFullMomentLaplaceExponent (SpectrallyNegativeModel.toData P D) ψ →
    Integrable (fun ω => Real.exp (c * D.X 1 ω)) P →
    HasLawfulEsscherDensities (SpectrallyNegativeModel.toData P D) ψ c


private def technicalZeroDenominatorReflectedExit : Prop :=
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


private def technicalZeroDerivativeReflectedPotential : Prop :=
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







private def sourceCertificate_result8_1 : Prop :=
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


private def sourceCertificate_result8_2 : Prop :=
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


private def sourceCertificate_result8_3 : Prop :=
  ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
      HasSourceScaleFamily ψ W →
      ∀ x : ℝ, 0 ≤ x →
        ∃ F : ℂ → ℂ,
          Differentiable ℂ F ∧
          ∀ q : ℝ, 0 ≤ q → F (q : ℂ) = (W q x : ℂ)


private def sourceCertificate_result8_4 : Prop :=
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


private def sourceCertificate_result8_5 : Prop :=
  ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
      HasSourceScaleFamily ψ W →
      ∀ x : ℝ, 0 < x →
        ∃ F : ℂ → ℂ,
          Differentiable ℂ F ∧
          ∀ q : ℝ, 0 ≤ q → F (q : ℂ) = (Zscale q (W q) x : ℂ)


private def sourceCertificate_result8_6 : Prop :=
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


private def sourceCertificate_result8_7 : Prop :=
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


private def sourceCertificate_result8_8 : Prop :=
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


private def sourceCertificate_result8_9 : Prop :=
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


private def sourceCertificate_result8_10 : Prop :=
  result8_10_i ∧ result8_10_ii


private def sourceCertificate_result8_11 : Prop :=
  result8_11_i ∧ result8_11_ii


private def sourceCertificate_result8_12 : Prop :=
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


private def sourceCertificate_exercise8_1 : Prop :=
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


private def sourceCertificate_exercise8_2 : Prop :=
  exercise8_2_i ∧ exercise8_2_ii ∧
    exercise8_2_iii ∧ exercise8_2_iv


private def sourceCertificate_exercise8_3 : Prop :=
  exercise8_3_i ∧ exercise8_3_ii ∧ exercise8_3_iii


private def sourceCertificate_exercise8_4 : Prop :=
  exercise8_4_i ∧ exercise8_4_ii ∧
    exercise8_4_iii ∧ exercise8_4_iv


private def sourceCertificate_exercise8_5 : Prop :=
  exercise8_5_i ∧ exercise8_5_ii


private def sourceCertificate_exercise8_6 : Prop :=
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


private def sourceCertificate_exercise8_7 : Prop :=
  exercise8_7_i ∧ exercise8_7_ii ∧
    exercise8_7_iii ∧ exercise8_7_iv


private def sourceCertificate_exercise8_8 : Prop :=
  exercise8_8_i ∧ exercise8_8_ii


private def sourceCertificate_exercise8_9 : Prop :=
  exercise8_9_i ∧ exercise8_9_ii ∧ exercise8_9_iii


private def sourceCertificate_exercise8_10 : Prop :=
  exercise8_10_i ∧ exercise8_10_ii ∧
    exercise8_10_iii ∧ exercise8_10_iv


private def sourceCertificate_exercise8_11 : Prop :=
  exercise8_11_i ∧ exercise8_11_ii ∧ exercise8_11_iii


private def sourceCertificate_exercise8_12 : Prop :=
  exercise8_12_i ∧ exercise8_12_ii



private def chapterEightMain : Prop :=
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

/-! ## scaleConvolutionPower: absent from the shared preamble -/
set_option autoImplicit false

namespace Kyprianou.Ch08.StageB

/-- Zero-based causal convolution powers of a q-scale kernel. -/
private noncomputable def scaleConvolutionPower (W : ℝ → ℝ) : ℕ → ℝ → ℝ
  | 0 => W
  | n + 1 => fun x =>
      ∫ s in Set.Ioc (0 : ℝ) x, W s * scaleConvolutionPower W n (x - s)

end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_family_positive_monotone -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open Kyprianou.Ch08.StageB

theorem source_family_positive_monotone (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (q : ℝ) (hq : 0 ≤ q) :
    (∀ x : ℝ, 0 ≤ W q x) ∧
    MonotoneOn (W q) (Set.Ici (0 : ℝ)) ∧
    ContinuousOn (W q) (Set.Ici (0 : ℝ)) := by
  rcases hW q hq with ⟨_, _, hpos, hcont, hmono, _⟩
  exact ⟨hpos, hmono, hcont⟩
end Kyprianou.Ch08.StageB

/-! ### AvramDividend.Classical.positive_causal_convolution_laplace_integrable -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open MeasureTheory Set

/-- Weighted signed causal convolution is L1 on positive times if both
weighted factors are L1. No regularity or nonnegativity is required. -/
theorem positive_causal_convolution_laplace_integrable (f g : ℝ → ℝ) (θ : ℝ)
    (hf : IntegrableOn (fun t : ℝ => Real.exp (-(θ * t)) * f t)
      (Ioi (0 : ℝ)) volume)
    (hg : IntegrableOn (fun t : ℝ => Real.exp (-(θ * t)) * g t)
      (Ioi (0 : ℝ)) volume) :
    IntegrableOn (fun x : ℝ => Real.exp (-(θ * x)) *
      (∫ s in Ioc (0 : ℝ) x, f s * g (x - s) ∂volume))
      (Ioi (0 : ℝ)) volume := by
  let F : ℝ → ℝ := fun t => Real.exp (-(θ * t)) * f t
  let G : ℝ → ℝ := fun t => Real.exp (-(θ * t)) * g t
  have hconv : Integrable
      (MeasureTheory.posConvolution F G
        (ContinuousLinearMap.mul ℝ ℝ) volume) volume :=
    MeasureTheory.integrable_posConvolution hf hg
      (ContinuousLinearMap.mul ℝ ℝ)
  have hrestricted : IntegrableOn
      (MeasureTheory.posConvolution F G
        (ContinuousLinearMap.mul ℝ ℝ) volume) (Ioi (0 : ℝ)) volume :=
    hconv.integrableOn
  refine hrestricted.congr_fun ?_ measurableSet_Ioi
  intro x hx
  change (Ioi (0 : ℝ)).indicator
    (fun x : ℝ => ∫ s in 0..x,
      (ContinuousLinearMap.mul ℝ ℝ) (F s) (G (x - s)) ∂volume) x =
    Real.exp (-(θ * x)) *
      (∫ s in Ioc (0 : ℝ) x, f s * g (x - s) ∂volume)
  rw [Set.indicator_of_mem hx]
  simp only [ContinuousLinearMap.mul_apply']
  rw [intervalIntegral.integral_of_le hx.le]
  rw [← integral_const_mul]
  refine setIntegral_congr_fun measurableSet_Ioc ?_
  intro s hs
  have hfactor :
      Real.exp (-(θ * s)) * Real.exp (-(θ * (x - s))) =
        Real.exp (-(θ * x)) := by
    rw [← Real.exp_add]
    congr 1
    ring
  dsimp [F, G]
  calc
    (Real.exp (-(θ * s)) * f s) *
      (Real.exp (-(θ * (x - s))) * g (x - s)) =
      (Real.exp (-(θ * s)) * Real.exp (-(θ * (x - s)))) *
        (f s * g (x - s)) := by ring
    _ = Real.exp (-(θ * x)) * (f s * g (x - s)) := by rw [hfactor]
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_convolution_powers_weighted_integrable -/
namespace AvramDividend.Classical
open AvramDividend.Classical MeasureTheory Set
theorem causal_convolution_powers_weighted_integrable
    (κ : ℝ → ℝ) (F : ℕ → ℝ → ℝ) (θ : ℝ)
    (hκi : IntegrableOn (fun t : ℝ => Real.exp (-(θ * t)) * κ t)
      (Ioi (0 : ℝ)) volume)
    (hF0 : F 0 = κ)
    (hFsucc : ∀ n : ℕ, F (n + 1) = fun x : ℝ =>
      ∫ s in Ioc (0 : ℝ) x, κ s * F n (x - s) ∂volume) :
    ∀ n : ℕ, IntegrableOn
      (fun t : ℝ => Real.exp (-(θ * t)) * F n t)
      (Ioi (0 : ℝ)) volume := by 
  intro n
  induction n with
  | zero => rw [hF0]; exact hκi
  | succ n ih =>
    rw [hFsucc n]
    exact positive_causal_convolution_laplace_integrable κ (F n) θ hκi ih
end AvramDividend.Classical

/-! ### Kyprianou.Ch08.StageB.source_scale_power_weighted_integrable -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_power_weighted_integrable (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (β : ℝ)
    (hβ : 0 ≤ β) (hroot : Phi ψ 0 < β) :
    ∀ n : ℕ, IntegrableOn (fun t : ℝ =>
      Real.exp (-β * t) * scaleConvolutionPower (W 0) n t)
      (Set.Ioi (0 : ℝ)) volume := by
  have hscale := hW 0 (le_refl (0 : ℝ))
  have hκ : IntegrableOn (fun t : ℝ => Real.exp (-β * t) * W 0 t)
      (Set.Ioi (0 : ℝ)) volume :=
    (hscale.2.2.2.2.2 β hβ hroot).1
  have hresult := AvramDividend.Classical.causal_convolution_powers_weighted_integrable
    (W 0) (scaleConvolutionPower (W 0)) β (by simpa only [neg_mul] using hκ) rfl (fun n => rfl)
  intro n
  simpa only [neg_mul] using hresult n
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.integrableOn_reflect_Ioc_of_halfline -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Set

theorem integrableOn_reflect_Ioc_of_halfline (f : ℝ → ℝ) (x : ℝ) (hx : 0 ≤ x)
    (hf : IntegrableOn f (Set.Ioi (0 : ℝ)) volume) :
    IntegrableOn (fun s : ℝ => f (x - s)) (Set.Ioc (0 : ℝ) x) volume := by
  have hsubset : Set.Ioc (0 : ℝ) x ⊆ Set.Ioi (0 : ℝ) := by
    intro s hs
    exact hs.1
  have hlocal : IntervalIntegrable f volume 0 x :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hx).2 (hf.mono_set hsubset)
  have href : IntervalIntegrable (fun s : ℝ => f (x - s)) volume x 0 := by
    simpa using hlocal.comp_sub_left x
  exact (intervalIntegrable_iff_integrableOn_Ioc_of_le hx).1 href.symm
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.causal_reflected_product_integrable_of_weighted -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Set

theorem causal_reflected_product_integrable_of_weighted (f g : ℝ → ℝ) (β x : ℝ) (hx : 0 ≤ x)
    (hf : IntegrableOn (fun t : ℝ => Real.exp (-(β * t)) * f t)
      (Set.Ioi (0 : ℝ)) volume)
    (hg : ContinuousOn g (Set.Ici (0 : ℝ))) :
    IntegrableOn (fun s : ℝ => g s * f (x - s))
      (Set.Ioc (0 : ℝ) x) volume := by
  have href : IntegrableOn
      (fun s : ℝ => Real.exp (-(β * (x - s))) * f (x - s))
      (Set.Ioc (0 : ℝ) x) volume := by
    exact Kyprianou.Ch08.StageB.integrableOn_reflect_Ioc_of_halfline
      (fun t : ℝ => Real.exp (-(β * t)) * f t) x hx hf
  have hInt : IntervalIntegrable
      (fun s : ℝ => Real.exp (-(β * (x - s))) * f (x - s))
      volume 0 x :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hx).2 href
  have hg' : ContinuousOn g (Set.Icc (0 : ℝ) x) :=
    hg.mono (by intro s hs; exact hs.1)
  have hcont : ContinuousOn
      (fun s : ℝ => g s * Real.exp (β * (x - s)))
      (Set.Icc (0 : ℝ) x) :=
    hg'.mul ((Real.continuous_exp.comp ((continuous_const.sub continuous_id).const_mul β)).continuousOn)
  have hprod : IntervalIntegrable
      (fun s : ℝ => (Real.exp (-(β * (x - s))) * f (x - s)) *
        (g s * Real.exp (β * (x - s)))) volume 0 x := by
    exact hInt.mul_continuousOn (by simpa [Set.uIcc_of_le hx] using hcont)
  apply (intervalIntegrable_iff_integrableOn_Ioc_of_le hx).1
  convert hprod using 1
  ext s
  have he : Real.exp (-(β * (x - s))) * Real.exp (β * (x - s)) = 1 := by
    rw [← Real.exp_add]
    simp
  calc
    g s * f (x - s) =
        (Real.exp (-(β * (x - s))) * Real.exp (β * (x - s))) *
          (g s * f (x - s)) := by rw [he]; ring
    _ = (Real.exp (-(β * (x - s))) * f (x - s)) *
          (g s * Real.exp (β * (x - s))) := by ring
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_all_power_local_integrability -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_all_power_local_integrability (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) :
    ∀ (n : ℕ) (x : ℝ), 0 ≤ x →
      IntegrableOn
        (fun s : ℝ => W 0 s * scaleConvolutionPower (W 0) n (x - s))
        (Set.Ioc (0 : ℝ) x) volume := by
  intro n x hx
  let β : ℝ := max 0 (Phi ψ 0) + 1
  have hβ : 0 ≤ β := by
    dsimp [β]
    linarith [le_max_left (0 : ℝ) (Phi ψ 0)]
  have hroot : Phi ψ 0 < β := by
    dsimp [β]
    linarith [le_max_right (0 : ℝ) (Phi ψ 0)]
  have hWcont : ContinuousOn (W 0) (Set.Ici (0 : ℝ)) :=
    (source_family_positive_monotone ψ W hW 0 (le_refl (0 : ℝ))).2.2
  have hweighted := (source_scale_power_weighted_integrable ψ W hW β hβ hroot) n
  apply causal_reflected_product_integrable_of_weighted
    (scaleConvolutionPower (W 0) n) (W 0) β x hx
    (by simpa only [neg_mul] using hweighted) hWcont
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.scaleConvolutionPower_nonnegative -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08.StageB Set

theorem scaleConvolutionPower_nonnegative (W : ℝ → ℝ)
    (hW : ∀ x : ℝ, 0 ≤ x → 0 ≤ W x)
    (n : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    0 ≤ scaleConvolutionPower W n x := by
  induction n generalizing x with
  | zero => simpa only [scaleConvolutionPower] using hW x hx
  | succ n ih =>
    change 0 ≤ ∫ s in Set.Ioc (0 : ℝ) x,
      W s * scaleConvolutionPower W n (x - s) ∂volume
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with s hs
    exact mul_nonneg (hW s hs.1.le)
      (ih (x - s) (sub_nonneg.mpr hs.2))
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.integral_backward_power_Ioc -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08.StageB

theorem integral_backward_power_Ioc (x : ℝ) (n : ℕ) (hx : 0 ≤ x) :
    (∫ s in Set.Ioc (0 : ℝ) x, (x - s) ^ n ∂volume) =
      x ^ (n + 1) / (n + 1) := by
  calc
    (∫ s in Set.Ioc (0 : ℝ) x, (x - s)^n ∂volume) =
        ∫ s in (0 : ℝ)..x, (x - s)^n :=
          (intervalIntegral.integral_of_le hx).symm
    _ = ∫ t in (x - x)..(x - 0), t^n := by
          simpa only [] using
            (intervalIntegral.integral_comp_sub_left
              (f := fun t : ℝ => t^n) (a := (0 : ℝ)) (b := x) x)
    _ = x^(n+1) / (n+1) := by
          simp [integral_pow]
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.scaleConvolutionPower_factorial_majorant_step -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08.StageB Set

theorem scaleConvolutionPower_factorial_majorant_step (W : ℝ → ℝ)
    (hpos : ∀ x : ℝ, 0 ≤ x → 0 ≤ W x)
    (hmono : MonotoneOn W (Set.Ici (0 : ℝ)))
    (n : ℕ) (x : ℝ) (hx : 0 ≤ x)
    (hint : IntegrableOn (fun s : ℝ => W s * scaleConvolutionPower W n (x - s))
      (Set.Ioc (0 : ℝ) x) volume)
    (hih : ∀ y : ℝ, 0 ≤ y →
      scaleConvolutionPower W n y ≤
        (y ^ n / (Nat.factorial n : ℝ)) * W y ^ (n + 1)) :
    scaleConvolutionPower W (n + 1) x ≤
      (x ^ (n + 1) / (Nat.factorial (n + 1) : ℝ)) * W x ^ (n + 2) := by
  let C : ℝ := W x * W x ^ (n + 1) / (Nat.factorial n : ℝ)
  have hfc : (0 : ℝ) < (Nat.factorial n : ℝ) := by
    exact_mod_cast Nat.factorial_pos n
  have hpoint : ∀ s : ℝ, s ∈ Set.Ioc (0 : ℝ) x →
      W s * scaleConvolutionPower W n (x - s) ≤ (x - s) ^ n * C := by
    intro s hs
    have hspos : 0 ≤ s := hs.1.le
    have hdiff : 0 ≤ x - s := sub_nonneg.mpr hs.2
    have hsBound : W s ≤ W x :=
      hmono hspos hx hs.2
    have hdBound : W (x - s) ≤ W x :=
      hmono hdiff hx (sub_le_self x hspos)
    have hpow : W (x - s) ^ (n + 1) ≤ W x ^ (n + 1) := by
      gcongr
      exact hpos (x - s) hdiff
    have hcoef : 0 ≤ (x - s)^n / (Nat.factorial n : ℝ) :=
      div_nonneg (pow_nonneg hdiff n) (le_of_lt hfc)
    have hrec : scaleConvolutionPower W n (x - s) ≤
        (x - s)^n / (Nat.factorial n : ℝ) * W x ^ (n + 1) :=
      (hih (x - s) hdiff).trans (mul_le_mul_of_nonneg_left hpow hcoef)
    have hmajor : 0 ≤ (x - s)^n / (Nat.factorial n : ℝ) * W x^(n + 1) :=
      mul_nonneg hcoef (pow_nonneg (hpos x hx) (n + 1))
    calc
      W s * scaleConvolutionPower W n (x - s) ≤
          W s * ((x - s)^n / (Nat.factorial n : ℝ) * W x^(n + 1)) :=
        mul_le_mul_of_nonneg_left hrec (hpos s hspos)
      _ ≤ W x * ((x - s)^n / (Nat.factorial n : ℝ) * W x^(n + 1)) :=
        mul_le_mul_of_nonneg_right hsBound hmajor
      _ = (x - s)^n * C := by
        dsimp [C]
        ring
  have hucont : Continuous (fun s : ℝ => (x - s)^n * C) :=
    ((continuous_const.sub continuous_id).pow n).mul continuous_const
  have huintegrable : Integrable
      (fun s : ℝ => (x - s)^n * C) (volume.restrict (Set.Ioc (0 : ℝ) x)) :=
    hucont.integrableOn_Ioc
  have hI : (∫ s in Set.Ioc (0 : ℝ) x,
       W s * scaleConvolutionPower W n (x - s) ∂volume) ≤
      (∫ s in Set.Ioc (0 : ℝ) x, (x - s)^n * C ∂volume) := by
    apply integral_mono_ae hint huintegrable
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with s hs
    exact hpoint s hs
  have hcalc : (∫ s in Set.Ioc (0 : ℝ) x, (x - s)^n * C ∂volume) =
      (x^(n+1) / (n+1)) * C := by
    rw [integral_mul_const]
    rw [integral_backward_power_Ioc x n hx]
  calc
    scaleConvolutionPower W (n + 1) x =
        ∫ s in Set.Ioc (0 : ℝ) x,
          W s * scaleConvolutionPower W n (x - s) ∂volume := rfl
    _ ≤ (∫ s in Set.Ioc (0 : ℝ) x, (x - s)^n * C ∂volume) := hI
    _ = (x^(n+1) / (n+1)) * C := hcalc
    _ = (x^(n+1) / (Nat.factorial (n+1) : ℝ)) * W x^(n+2) := by
      dsimp [C]
      rw [Nat.factorial_succ]
      push_cast
      rw [show n + 2 = (n + 1) + 1 by omega, pow_succ]
      have hn : ((n : ℝ) + 1) ≠ 0 := by positivity
      have hf : (Nat.factorial n : ℝ) ≠ 0 := ne_of_gt hfc
      field_simp [hn, hf]
      ring
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.scaleConvolutionPower_factorial_majorant -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08.StageB

theorem scaleConvolutionPower_factorial_majorant (W : ℝ → ℝ)
    (hpos : ∀ x : ℝ, 0 ≤ x → 0 ≤ W x)
    (hmono : MonotoneOn W (Set.Ici (0 : ℝ)))
    (hconv : ∀ (n : ℕ) (x : ℝ), 0 ≤ x →
      IntegrableOn (fun s : ℝ => W s * scaleConvolutionPower W n (x - s))
        (Set.Ioc (0 : ℝ) x) volume)
    (n : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    scaleConvolutionPower W n x ≤
      (x ^ n / (Nat.factorial n : ℝ)) * (W x) ^ (n + 1) := by
  induction n generalizing x with
  | zero =>
    simp only [scaleConvolutionPower, pow_zero, Nat.factorial_zero,
      Nat.cast_one, div_one, one_mul, zero_add, pow_one]
    exact le_rfl
  | succ n ih =>
    exact scaleConvolutionPower_factorial_majorant_step W hpos hmono n x hx
      (hconv n x hx) (fun y hy => ih y hy)
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_convolution_coeff_majorant -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08.StageB

theorem source_scale_convolution_coeff_majorant (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (hint : ∀ (n : ℕ) (x : ℝ), 0 ≤ x →
      IntegrableOn (fun s : ℝ =>
        W 0 s * scaleConvolutionPower (W 0) n (x - s))
        (Set.Ioc (0 : ℝ) x) volume)
    (x : ℝ) (hx : 0 ≤ x) :
    ∀ n : ℕ,
      ‖((scaleConvolutionPower (W 0) n x : ℝ) : ℂ)‖ ≤
        W 0 x * (x * W 0 x) ^ n / (Nat.factorial n : ℝ) := by
  intro n
  rcases source_family_positive_monotone ψ W hW 0 (le_refl (0 : ℝ)) with
    ⟨hpos, hmono, _⟩
  have hp := scaleConvolutionPower_nonnegative (W 0)
      (fun t ht => hpos t) n x hx
  have hmajor := scaleConvolutionPower_factorial_majorant
    (W 0) (fun t ht => hpos t) hmono hint n x hx
  calc
    ‖((scaleConvolutionPower (W 0) n x : ℝ) : ℂ)‖ =
        scaleConvolutionPower (W 0) n x := by
      simpa only [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hp]
    _ ≤ (x ^ n / (Nat.factorial n : ℝ)) * (W 0 x) ^ (n + 1) := hmajor
    _ = W 0 x * (x * W 0 x) ^ n / (Nat.factorial n : ℝ) := by
      rw [mul_pow, pow_succ]
      ring
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.factorial_bounded_complex_series_entire -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open Kyprianou.Ch08.StageB

theorem factorial_bounded_complex_series_entire (a : ℕ → ℝ) (M R : ℝ)
    (hM : 0 ≤ M) (hR : 0 ≤ R)
    (hbound : ∀ n : ℕ, ‖((a n : ℝ) : ℂ)‖ ≤
        M * R ^ n / (Nat.factorial n : ℝ)) :
    Differentiable ℂ (fun z : ℂ => ∑' n : ℕ,
      z ^ n * ((a n : ℝ) : ℂ)) := by
  intro z
  let B : ℝ := (‖z‖ + 1) * R
  have hB : 0 ≤ B := mul_nonneg (by positivity) hR
  have hu : Summable (fun n : ℕ =>
      M * B ^ n / (Nat.factorial n : ℝ)) := by
    simpa only [mul_div_assoc] using
      (Real.summable_pow_div_factorial B).mul_left M
  have hOn : DifferentiableOn ℂ
      (fun w : ℂ => ∑' n : ℕ, w ^ n * ((a n : ℝ) : ℂ))
      (Metric.ball z 1) := by
    apply Complex.differentiableOn_tsum_of_summable_norm hu
    · intro n
      fun_prop
    · exact Metric.isOpen_ball
    · intro n w hw
      have hd : ‖w - z‖ < 1 := by
        simpa [Metric.mem_ball, dist_eq_norm] using hw
      have hn : ‖w‖ ≤ ‖z‖ + 1 := by
        calc
          ‖w‖ = ‖(w - z) + z‖ := by ring
          _ ≤ ‖w - z‖ + ‖z‖ := norm_add_le _ _
          _ ≤ ‖z‖ + 1 := by linarith
      have hpow : ‖w‖ ^ n ≤ (‖z‖ + 1) ^ n := by
        gcongr
      have hfac : 0 ≤ M * R ^ n / (Nat.factorial n : ℝ) := by positivity
      calc
        ‖w ^ n * ((a n : ℝ) : ℂ)‖ =
            ‖w‖ ^ n * ‖((a n : ℝ) : ℂ)‖ := by
              rw [norm_mul, norm_pow]
        _ ≤ ‖w‖ ^ n * (M * R ^ n / (Nat.factorial n : ℝ)) :=
          mul_le_mul_of_nonneg_left (hbound n) (pow_nonneg (norm_nonneg w) n)
        _ ≤ (‖z‖ + 1)^n * (M * R ^ n / (Nat.factorial n : ℝ)) :=
          mul_le_mul_of_nonneg_right hpow hfac
        _ = M * B^n / (Nat.factorial n : ℝ) := by
          dsimp [B]
          rw [mul_pow]
          ring
  exact hOn.differentiableAt
    (Metric.isOpen_ball.mem_nhds (Metric.mem_ball_self (by norm_num)))
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_convolution_series_entire -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_convolution_series_entire :
    ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
      HasSourceScaleFamily ψ W →
      ∀ (x : ℝ), 0 ≤ x →
        Differentiable ℂ (fun z : ℂ =>
          ∑' n : ℕ, z ^ n *
            ((scaleConvolutionPower (W 0) n x : ℝ) : ℂ)) := by
  intro ψ W hW x hx
  have hmono := source_family_positive_monotone ψ W hW 0
      (le_refl (0 : ℝ))
  have hM : 0 ≤ W 0 x := hmono.1 x
  have hR : 0 ≤ x * W 0 x := mul_nonneg hx hM
  have hint := source_scale_all_power_local_integrability ψ W hW
  have hbound := source_scale_convolution_coeff_majorant ψ W hW hint x hx
  exact factorial_bounded_complex_series_entire
      (fun n => scaleConvolutionPower (W 0) n x)
      (W 0 x) (x * W 0 x) hM hR hbound
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_power_nonnegative_all_real -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08.StageB

theorem source_scale_power_nonnegative_all_real (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) :
    ∀ (n : ℕ) (x : ℝ),
      0 ≤ scaleConvolutionPower (W 0) n x := by
  have hpos := (source_family_positive_monotone ψ W hW 0
    (le_refl (0 : ℝ))).1
  intro n
  induction n with
  | zero =>
      intro x
      simpa only [scaleConvolutionPower] using hpos x
  | succ n ih =>
      intro x
      change 0 ≤ ∫ s in Set.Ioc (0 : ℝ) x,
        W 0 s * scaleConvolutionPower (W 0) n (x - s) ∂volume
      apply integral_nonneg_of_ae
      filter_upwards [] with s
      exact mul_nonneg (hpos s) (ih (x - s))
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_real_discount_series_nonnegative -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08.StageB

theorem source_real_discount_series_nonnegative (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (q : ℝ) (hq : 0 ≤ q) :
    ∀ x : ℝ, 0 ≤
      (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x) := by
  intro x
  apply tsum_nonneg
  intro n
  exact mul_nonneg (pow_nonneg hq _)
    (source_scale_power_nonnegative_all_real ψ W hW n x)
end Kyprianou.Ch08.StageB

/-! ### AvramDividend.Classical.causal_zero_extension_continuous_of_Ici_zero -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open Set

theorem causal_zero_extension_continuous_of_Ici_zero
    (V : ℝ → ℝ)
    (hV : ContinuousOn V (Ici (0 : ℝ)))
    (hV0 : V 0 = 0) :
    Continuous ((Ioi (0 : ℝ)).indicator V) := by
  let F : ℝ → ℝ := (Ioi (0 : ℝ)).indicator V
  have hpos : ∀ x ∈ Ici (0 : ℝ), F x = V x := by
    intro x hx
    change (0 : ℝ) ≤ x at hx
    rcases eq_or_lt_of_le hx with heq | hgt
    · subst x
      simp [F, hV0]
    · simp [F, hgt]
  have hneg : ∀ x ∈ Iic (0 : ℝ), F x = 0 := by
    intro x hx
    change x ≤ (0 : ℝ) at hx
    have hn : x ∉ Ioi (0 : ℝ) := by
      intro h
      change (0 : ℝ) < x at h
      exact (not_lt_of_ge hx h)
    simp [F, hn]
  have hcpos : ContinuousOn F (Ici (0 : ℝ)) :=
    hV.congr hpos
  have hcneg : ContinuousOn F (Iic (0 : ℝ)) :=
    continuousOn_const.congr hneg
  have hcunion : ContinuousOn F (Ici (0 : ℝ) ∪ Iic (0 : ℝ)) :=
    hcpos.union_of_isClosed hcneg isClosed_Ici isClosed_Iic
  have huniv : Ici (0 : ℝ) ∪ Iic (0 : ℝ) = Set.univ := by
    ext x
    simp only [mem_union, mem_Ici, mem_Iic, mem_univ, iff_true]
    exact le_total 0 x
  have hc : ContinuousOn F Set.univ := by
    simpa only [huniv] using hcunion
  exact continuousOn_univ.mp hc
end AvramDividend.Classical

/-! ### AvramDividend.Classical.positive_causal_convolution_continuousOn_local_right -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open MeasureTheory Set Filter

/-- An integrable positive-time kernel convolved with a continuous causal
right factor is continuous on positive times, without a global bound. -/
theorem positive_causal_convolution_continuousOn_local_right
    (f g : ℝ → ℝ)
    (hf : IntegrableOn f (Ioi (0 : ℝ)) volume)
    (hg : Continuous ((Ioi (0 : ℝ)).indicator g)) :
    ContinuousOn
      (MeasureTheory.posConvolution f g (ContinuousLinearMap.mul ℝ ℝ) volume)
      (Ioi (0 : ℝ)) := by
  intro x hx
  let R : ℝ := x + 1
  have hxR : x < R := by dsimp [R]; linarith
  obtain ⟨χ, hχone, hχsupp, -, -⟩ :=
    exists_continuousMap_one_of_isCompact_subset_isOpen
      (K := Icc (0 : ℝ) R) (V := Set.univ)
      isCompact_Icc isOpen_univ (subset_univ _)
  let gR : ℝ → ℝ := fun t => (Ioi (0 : ℝ)).indicator g t * χ t
  have hgR : Continuous gR := hg.mul χ.continuous
  have hCompact : HasCompactSupport gR := by
    exact (show HasCompactSupport (χ : ℝ → ℝ) from hχsupp).mul_left
  have hfi : Integrable ((Ioi (0 : ℝ)).indicator f) volume :=
    hf.integrable_indicator measurableSet_Ioi
  have hcont : Continuous
      (MeasureTheory.convolution ((Ioi (0 : ℝ)).indicator f) gR
        (ContinuousLinearMap.mul ℝ ℝ) volume) :=
    hCompact.continuous_convolution_right
      (ContinuousLinearMap.mul ℝ ℝ) hfi.locallyIntegrable hgR
  have hlocal : ∀ y ∈ Ioo (0 : ℝ) R,
      MeasureTheory.posConvolution f g (ContinuousLinearMap.mul ℝ ℝ) volume y =
      MeasureTheory.convolution ((Ioi (0 : ℝ)).indicator f) gR
        (ContinuousLinearMap.mul ℝ ℝ) volume y := by
    intro y hy
    have heq := MeasureTheory.posConvolution_eq_convolution_indicator
      f g (ContinuousLinearMap.mul ℝ ℝ) volume
    rw [heq]
    simp only [MeasureTheory.convolution_def]
    apply integral_congr_ae
    filter_upwards [] with t
    change ((Ioi (0 : ℝ)).indicator f t) *
        ((Ioi (0 : ℝ)).indicator g (y - t)) =
      ((Ioi (0 : ℝ)).indicator f t) * gR (y - t)
    by_cases ht : 0 < t
    · by_cases hyt : 0 < y - t
      · have hbound : y - t ∈ Icc (0 : ℝ) R := by
          constructor
          · exact le_of_lt hyt
          · have : y < R := hy.2
            linarith
        simp [gR, hχone hbound]
      · have hnot : y - t ∉ Ioi (0 : ℝ) := hyt
        simp only [gR, Set.indicator_of_notMem hnot, mul_zero, zero_mul]
    · have hnot : t ∉ Ioi (0 : ℝ) := ht
      simp only [Set.indicator_of_notMem hnot, zero_mul]
  have hev : (MeasureTheory.posConvolution f g
      (ContinuousLinearMap.mul ℝ ℝ) volume) =ᶠ[nhdsWithin x (Ioi (0 : ℝ))]
      (MeasureTheory.convolution ((Ioi (0 : ℝ)).indicator f) gR
        (ContinuousLinearMap.mul ℝ ℝ) volume) := by
    have hn : Ioo (0 : ℝ) R ∈ nhds x :=
      isOpen_Ioo.mem_nhds ⟨hx, hxR⟩
    have hne : ∀ᶠ y in nhds x, y ∈ Ioo (0 : ℝ) R := hn
    have hne' : ∀ᶠ y in nhdsWithin x (Ioi (0 : ℝ)), y ∈ Ioo (0 : ℝ) R :=
      hne.filter_mono (nhdsWithin_le_nhds (s := Ioi (0 : ℝ)))
    filter_upwards [hne'] with y hy
    exact hlocal y hy
  exact hcont.continuousAt.continuousWithinAt.congr_of_eventuallyEq_of_mem hev hx
end AvramDividend.Classical

/-! ### AvramDividend.Classical.positive_causal_integral_eq_posConvolution -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open MeasureTheory Set

/-- A causal time-reversal substitution turns the interval integral into
positive-time convolution, with no integrability hypotheses. -/
theorem positive_causal_integral_eq_posConvolution (f g : ℝ → ℝ) (x : ℝ) (hx : 0 < x) :
    (∫ s in Ioc (0 : ℝ) x, f (x - s) * g s ∂volume) =
      MeasureTheory.posConvolution f g (ContinuousLinearMap.mul ℝ ℝ) volume x := by
  have hreverse :
      (∫ s in (0 : ℝ)..x, f (x - s) * g s ∂volume) =
      (∫ t in (0 : ℝ)..x, f t * g (x - t) ∂volume) := by
    have h := intervalIntegral.integral_comp_sub_left
      (f := fun t : ℝ => f t * g (x - t)) (d := x)
      (a := (0 : ℝ)) (b := x)
    simpa only [sub_self, sub_zero, sub_sub_cancel] using h
  rw [← intervalIntegral.integral_of_le (le_of_lt hx), hreverse]
  change (∫ t in (0 : ℝ)..x, f t * g (x - t) ∂volume) =
    (Ioi (0 : ℝ)).indicator
      (fun z => ∫ t in (0 : ℝ)..z, f t * g (z - t) ∂volume) x
  exact (Set.indicator_of_mem (show x ∈ Ioi (0 : ℝ) from hx)
    (fun z : ℝ => ∫ t in (0 : ℝ)..z, f t * g (z - t) ∂volume)).symm
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_l1_convolution_continuousOn_positive_of_zero_extension -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open AvramDividend.Classical MeasureTheory Set

theorem causal_l1_convolution_continuousOn_positive_of_zero_extension
    (K V : ℝ → ℝ)
    (hK : IntegrableOn K (Ioi (0 : ℝ)) volume)
    (hV : Continuous ((Ioi (0 : ℝ)).indicator V)) :
    ContinuousOn (fun x : ℝ =>
      ∫ s in Ioc (0 : ℝ) x, K (x - s) * V s ∂volume)
      (Ioi (0 : ℝ)) := by
  have hConvolution :=
    positive_causal_convolution_continuousOn_local_right K V hK hV
  apply hConvolution.congr
  intro x hx
  change (0 : ℝ) < x at hx
  exact positive_causal_integral_eq_posConvolution K V x hx
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_convolution_time_reversal -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open MeasureTheory Set
open scoped NNReal ENNReal

theorem causal_convolution_time_reversal
    (K g : ℝ → ℝ) (t : ℝ) (ht : 0 ≤ t) :
    (∫ s in Ioc (0 : ℝ) t, K (t - s) * g s ∂volume) =
    (∫ u in Ioc (0 : ℝ) t, K u * g (t - u) ∂volume) := by
  calc
    _ = ∫ s in (0 : ℝ)..t,
      (fun u : ℝ => K u * g (t - u)) (t - s) := by
        rw [intervalIntegral.integral_of_le ht]
        simp only [sub_sub_cancel]
    _ = ∫ u in (t - t)..(t - 0),
      K u * g (t - u) := by
        exact intervalIntegral.integral_comp_sub_left
          (fun u : ℝ => K u * g (t - u)) t
    _ = _ := by
      simpa [sub_self, sub_zero, intervalIntegral.integral_of_le ht]
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_l1_primitive_continuousOn_nonnegative -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open MeasureTheory Set intervalIntegral

theorem causal_l1_primitive_continuousOn_nonnegative
    (K : ℝ → ℝ)
    (hK : IntegrableOn K (Ioi (0 : ℝ)) volume) :
    ContinuousOn (fun x : ℝ => ∫ s in Ioc (0 : ℝ) x, K s ∂volume)
      (Ici (0 : ℝ)) := by
  let f : ℝ → ℝ := (Ioi (0 : ℝ)).indicator K
  have hIntegrable : Integrable f volume :=
    hK.integrable_indicator measurableSet_Ioi
  have hInterval : ∀ a b : ℝ, IntervalIntegrable f volume a b := by
    intro a b
    exact hIntegrable.intervalIntegrable
  have hContinuous : Continuous (fun x : ℝ =>
      ∫ s in (0 : ℝ)..x, f s ∂volume) :=
    intervalIntegral.continuous_primitive hInterval 0
  have hEq (x : ℝ) (hx : 0 ≤ x) :
      (∫ s in Ioc (0 : ℝ) x, K s ∂volume) =
      (∫ s in (0 : ℝ)..x, f s ∂volume) := by
    rw [intervalIntegral.integral_of_le hx]
    change (∫ s in Ioc (0 : ℝ) x, K s ∂volume) =
      (∫ s in Ioc (0 : ℝ) x,
        (Ioi (0 : ℝ)).indicator K s ∂volume)
    rw [setIntegral_indicator measurableSet_Ioi]
    have hsubset : Ioc (0 : ℝ) x ⊆ Ioi (0 : ℝ) := by
      intro s hs
      exact hs.1
    rw [inter_eq_left.mpr hsubset]
  apply hContinuous.continuousOn.congr
  intro x hx
  exact hEq x hx
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_reflected_kernel_mass_continuousOn_nonnegative -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open AvramDividend.Classical MeasureTheory Set
open scoped NNReal ENNReal

theorem causal_reflected_kernel_mass_continuousOn_nonnegative
    (K : ℝ → ℝ)
    (hK : IntegrableOn K (Ioi (0 : ℝ)) volume) :
    ContinuousOn (fun x : ℝ =>
      ∫ s in Ioc (0 : ℝ) x, K (x - s) ∂volume)
      (Ici (0 : ℝ)) := by
  have hPrimitive :=
    causal_l1_primitive_continuousOn_nonnegative K hK
  have hEq : ∀ x : ℝ, x ∈ Ici (0 : ℝ) →
      (∫ s in Ioc (0 : ℝ) x, K (x - s) ∂volume) =
      (∫ s in Ioc (0 : ℝ) x, K s ∂volume) := by
    intro x hx
    simpa only [mul_one] using
      (causal_convolution_time_reversal
        K (fun _ : ℝ => (1 : ℝ)) x hx)
  exact hPrimitive.congr hEq
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_l1_kernel_continuous_input_integrable -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open MeasureTheory Set
open scoped NNReal ENNReal

theorem causal_l1_kernel_continuous_input_integrable
    (K g : ℝ → ℝ)
    (hK : IntegrableOn K (Ioi (0 : ℝ)) volume)
    (hg : ContinuousOn g (Ici (0 : ℝ))) :
    ∀ x : ℝ, 0 < x →
      IntegrableOn (fun s : ℝ => K (x - s) * g s) (Ioc (0 : ℝ) x) volume := by
  intro x hx
  have hKplus : Integrable ((Ioi (0 : ℝ)).indicator K) volume :=
    (integrable_indicator_iff measurableSet_Ioi).2 hK
  have hshift : Integrable
      (fun s : ℝ => ((Ioi (0 : ℝ)).indicator K) (x - s)) volume :=
    hKplus.comp_sub_left x
  have hlocalIoo :
      IntegrableOn (fun s : ℝ => K (x - s)) (Ioo (0 : ℝ) x) volume := by
    have hrestricted : IntegrableOn
        (fun s : ℝ => ((Ioi (0 : ℝ)).indicator K) (x - s))
        (Ioo (0 : ℝ) x) volume := hshift.integrableOn
    apply hrestricted.congr_fun _ measurableSet_Ioo
    intro s hs
    have hpos : (0 : ℝ) < x - s := sub_pos.mpr hs.2
    simp [Set.indicator_of_mem (show x - s ∈ Ioi (0 : ℝ) from hpos)]
  have hlocalIoc :
      IntegrableOn (fun s : ℝ => K (x - s)) (Ioc (0 : ℝ) x) volume :=
    (integrableOn_Ioc_iff_integrableOn_Ioo).2 hlocalIoo
  have hcont : ContinuousOn g (Icc (0 : ℝ) x) :=
    hg.mono (by intro s hs; exact hs.1)
  have hgi : IntegrableOn g (Ioc (0 : ℝ) x) volume :=
    hcont.integrableOn_Icc.mono_set Ioc_subset_Icc_self
  obtain ⟨C, hC⟩ :=
    (isCompact_Icc : IsCompact (Icc (0 : ℝ) x)).exists_bound_of_continuousOn hcont
  have hbound : ∀ᵐ s ∂volume.restrict (Ioc (0 : ℝ) x), ‖g s‖ ≤ C := by
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with s hs
    exact hC s (Ioc_subset_Icc_self hs)
  have hprod : Integrable (fun s : ℝ => g s * K (x - s))
      (volume.restrict (Ioc (0 : ℝ) x)) :=
    hlocalIoc.bdd_mul hgi.aestronglyMeasurable hbound
  change Integrable (fun s : ℝ => K (x - s) * g s)
    (volume.restrict (Ioc (0 : ℝ) x))
  simpa only [mul_comm] using hprod
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_convolution_split_at_input_origin -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open AvramDividend.Classical MeasureTheory Set
open scoped NNReal ENNReal

theorem causal_convolution_split_at_input_origin
    (K f : ℝ → ℝ)
    (hK : IntegrableOn K (Ioi (0 : ℝ)) volume)
    (hf : ContinuousOn f (Ici (0 : ℝ)))
    (x : ℝ) (hx : 0 < x) :
    (∫ s in Ioc (0 : ℝ) x, K (x - s) * f s ∂volume) =
      f 0 * (∫ s in Ioc (0 : ℝ) x, K (x - s) ∂volume) +
      (∫ s in Ioc (0 : ℝ) x,
        K (x - s) * (f s - f 0) ∂volume) := by
  have hker : IntegrableOn (fun s : ℝ => K (x - s))
      (Ioc (0 : ℝ) x) volume := by
    have hunit := causal_l1_kernel_continuous_input_integrable
      K (fun _ : ℝ => (1 : ℝ)) hK continuousOn_const x hx
    simpa only [mul_one] using hunit
  have hconst : IntegrableOn (fun s : ℝ => f 0 * K (x - s))
      (Ioc (0 : ℝ) x) volume := hker.const_mul (f 0)
  have hdev : ContinuousOn (fun s : ℝ => f s - f 0)
      (Ici (0 : ℝ)) := hf.sub continuousOn_const
  have hintdev := causal_l1_kernel_continuous_input_integrable
    K (fun s : ℝ => f s - f 0) hK hdev x hx
  calc
    (∫ s in Ioc (0 : ℝ) x, K (x - s) * f s ∂volume) =
      (∫ s in Ioc (0 : ℝ) x,
        f 0 * K (x - s) + K (x - s) * (f s - f 0) ∂volume) := by
      apply integral_congr_ae
      filter_upwards [] with s
      ring
    _ = (∫ s in Ioc (0 : ℝ) x, f 0 * K (x - s) ∂volume) +
        (∫ s in Ioc (0 : ℝ) x, K (x - s) * (f s - f 0) ∂volume) :=
          integral_add hconst hintdev
    _ = _ := by rw [integral_const_mul]
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_l1_convolution_continuousOn_positive_of_Ici_input -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open AvramDividend.Classical MeasureTheory Set

theorem causal_l1_convolution_continuousOn_positive_of_Ici_input
    (K V : ℝ → ℝ)
    (hK : IntegrableOn K (Ioi (0 : ℝ)) volume)
    (hV : ContinuousOn V (Ici (0 : ℝ))) :
    ContinuousOn (fun x : ℝ =>
      ∫ s in Ioc (0 : ℝ) x, K (x - s) * V s ∂volume)
      (Ioi (0 : ℝ)) := by
  let D : ℝ → ℝ := fun s => V s - V 0
  have hDc : ContinuousOn D (Ici (0 : ℝ)) :=
    hV.sub continuousOn_const
  have hD0 : D 0 = 0 := by simp [D]
  have hDz : Continuous ((Ioi (0 : ℝ)).indicator D) :=
    causal_zero_extension_continuous_of_Ici_zero D hDc hD0
  have hConv : ContinuousOn (fun x : ℝ =>
      ∫ s in Ioc (0 : ℝ) x, K (x - s) * D s ∂volume)
      (Ioi (0 : ℝ)) :=
    causal_l1_convolution_continuousOn_positive_of_zero_extension K D hK hDz
  have hMass : ContinuousOn (fun x : ℝ =>
      ∫ s in Ioc (0 : ℝ) x, K (x - s) ∂volume)
      (Ioi (0 : ℝ)) :=
    (causal_reflected_kernel_mass_continuousOn_nonnegative K hK).mono
      (by intro x hx; change (0 : ℝ) < x at hx; exact hx.le)
  have hS : ContinuousOn (fun x : ℝ =>
      V 0 * (∫ s in Ioc (0 : ℝ) x, K (x - s) ∂volume) +
        (∫ s in Ioc (0 : ℝ) x, K (x - s) * D s ∂volume))
      (Ioi (0 : ℝ)) :=
    (continuousOn_const.mul hMass).add hConv
  apply hS.congr
  intro x hx
  change (0 : ℝ) < x at hx
  exact causal_convolution_split_at_input_origin K V hK hV x hx
end AvramDividend.Classical

/-! ### AvramDividend.Classical.positive_causal_convolution_continuous_of_weighted_integrable -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open AvramDividend.Classical MeasureTheory Set

/-- Exponential damping converts causal convolution with an integrable
weighted factor into a continuous function on positive arguments. -/
theorem positive_causal_convolution_continuous_of_weighted_integrable
    (f g : ℝ → ℝ) (θ : ℝ)
    (hfcont : ContinuousOn f (Ici (0 : ℝ)))
    (hgint : IntegrableOn
      (fun y : ℝ => Real.exp (-(θ * y)) * g y)
      (Ioi (0 : ℝ))) :
    ContinuousOn
      (fun x : ℝ => ∫ s in Ioc (0 : ℝ) x, f s * g (x - s))
      (Ioi (0 : ℝ)) := by
  let K : ℝ → ℝ := fun t => Real.exp (-(θ * t)) * g t
  let V : ℝ → ℝ := fun t => Real.exp (-(θ * t)) * f t
  let F : ℝ → ℝ := fun x => ∫ s in Ioc (0 : ℝ) x, K (x - s) * V s
  have hVcont : ContinuousOn V (Ici (0 : ℝ)) :=
    ((Real.continuous_exp.comp
      ((continuous_const.mul continuous_id).neg)).continuousOn).mul hfcont
  have hFcont : ContinuousOn F (Ioi (0 : ℝ)) :=
    causal_l1_convolution_continuousOn_positive_of_Ici_input K V hgint hVcont
  have hfactor (x : ℝ) :
      F x = Real.exp (-(θ * x)) *
        (∫ s in Ioc (0 : ℝ) x, f s * g (x - s)) := by
    have hp (s : ℝ) :
        K (x - s) * V s =
          Real.exp (-(θ * x)) * (f s * g (x - s)) := by
      dsimp [K, V]
      calc
        (Real.exp (-(θ * (x - s))) * g (x - s)) *
            (Real.exp (-(θ * s)) * f s) =
          (Real.exp (-(θ * (x - s))) * Real.exp (-(θ * s))) *
            (f s * g (x - s)) := by ring
        _ = Real.exp (-(θ * x)) * (f s * g (x - s)) := by
          rw [← Real.exp_add]
          congr 1
          ring
    calc
      F x = ∫ s in Ioc (0 : ℝ) x,
          Real.exp (-(θ * x)) * (f s * g (x - s)) := by
        dsimp [F]
        apply integral_congr_ae
        filter_upwards [] with s
        exact hp s
      _ = Real.exp (-(θ * x)) *
          (∫ s in Ioc (0 : ℝ) x, f s * g (x - s)) := by
        rw [integral_const_mul]
  have hback :
      (fun x : ℝ => ∫ s in Ioc (0 : ℝ) x, f s * g (x - s)) =
        (fun x : ℝ => Real.exp (θ * x) * F x) := by
    funext x
    symm
    calc
      Real.exp (θ * x) * F x =
          Real.exp (θ * x) *
            (Real.exp (-(θ * x)) *
              (∫ s in Ioc (0 : ℝ) x, f s * g (x - s))) := by
        rw [hfactor x]
      _ = ∫ s in Ioc (0 : ℝ) x, f s * g (x - s) := by
        rw [← mul_assoc, ← Real.exp_add]
        have hz : θ * x + -(θ * x) = 0 := by ring
        rw [hz, Real.exp_zero, one_mul]
  rw [hback]
  exact (Real.continuous_exp.comp
    (continuous_const.mul continuous_id)).continuousOn.mul hFcont
end AvramDividend.Classical

/-! ### Kyprianou.Ch08.StageB.source_scale_power_continuous_positive -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_power_continuous_positive (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) :
    ∀ n : ℕ, ContinuousOn (scaleConvolutionPower (W 0) n)
      (Set.Ioi (0 : ℝ)) := by
  have hcont : ContinuousOn (W 0) (Set.Ici (0 : ℝ)) :=
    (source_family_positive_monotone ψ W hW 0 (le_refl (0 : ℝ))).2.2
  let β : ℝ := max 0 (Phi ψ 0) + 1
  have hβ : 0 ≤ β := by
    dsimp [β]
    linarith [le_max_left (0 : ℝ) (Phi ψ 0)]
  have hroot : Phi ψ 0 < β := by
    dsimp [β]
    linarith [le_max_right (0 : ℝ) (Phi ψ 0)]
  intro n
  cases n with
  | zero =>
      simpa only [scaleConvolutionPower] using
        (hcont.mono (by intro x hx; change 0 < x at hx; exact hx.le))
  | succ n =>
      have hint := (source_scale_power_weighted_integrable ψ W hW β hβ hroot) n
      have hconv := AvramDividend.Classical.positive_causal_convolution_continuous_of_weighted_integrable
        (W 0) (scaleConvolutionPower (W 0) n) β hcont
        (by simpa only [neg_mul] using hint)
      simpa only [scaleConvolutionPower] using hconv
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_compact_factorial_majorant -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_compact_factorial_majorant (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q R : ℝ) (hq : 0 ≤ q) (hR : 0 ≤ R) :
    ∀ (n : ℕ) (x : ℝ), x ∈ Set.Icc (0 : ℝ) R →
      ‖q ^ n * scaleConvolutionPower (W 0) n x‖ ≤
      W 0 R * (q * R * W 0 R) ^ n / (Nat.factorial n : ℝ) := by
  obtain ⟨hpos,hmono,_⟩ := source_family_positive_monotone ψ W hW 0
    (le_refl (0 : ℝ))
  have hconv := source_scale_all_power_local_integrability ψ W hW
  intro n x hx
  have hcoeff := (source_scale_convolution_coeff_majorant ψ W hW hconv x hx.1) n
  have hfn : ‖scaleConvolutionPower (W 0) n x‖ ≤
      W 0 x * (x * W 0 x) ^ n / (Nat.factorial n : ℝ) := by
    simpa only [Complex.norm_real] using hcoeff
  have hw : W 0 x ≤ W 0 R :=
    hmono hx.1 hR hx.2
  have hWx : 0 ≤ W 0 x := hpos x
  have hWR : 0 ≤ W 0 R := hpos R
  have hxx : x * W 0 x ≤ R * W 0 R :=
    mul_le_mul hx.2 hw hWx hR
  have hnonneg : 0 ≤ x * W 0 x := mul_nonneg hx.1 hWx
  have hpow : (x * W 0 x) ^ n ≤ (R * W 0 R) ^ n := by
    exact pow_le_pow_left₀ hnonneg hxx _
  have hA : 0 ≤ (x * W 0 x) ^ n :=
    pow_nonneg (mul_nonneg hx.1 hWx) _
  have hB : 0 ≤ (R * W 0 R) ^ n :=
    pow_nonneg (mul_nonneg hR hWR) _
  have hmul : W 0 x * (x * W 0 x) ^ n ≤
      W 0 R * (R * W 0 R) ^ n :=
    mul_le_mul hw hpow hA hWR
  have hdiv : W 0 x * (x * W 0 x) ^ n / (Nat.factorial n : ℝ) ≤
      W 0 R * (R * W 0 R) ^ n / (Nat.factorial n : ℝ) :=
    div_le_div_of_nonneg_right hmul (by positivity)
  calc
    ‖q ^ n * scaleConvolutionPower (W 0) n x‖ =
        q ^ n * ‖scaleConvolutionPower (W 0) n x‖ := by
      rw [norm_mul, Real.norm_eq_abs, abs_of_nonneg (pow_nonneg hq n)]
    _ ≤ q ^ n * (W 0 x * (x * W 0 x) ^ n / (Nat.factorial n : ℝ)) :=
      mul_le_mul_of_nonneg_left hfn (pow_nonneg hq n)
    _ ≤ q ^ n * (W 0 R * (R * W 0 R) ^ n / (Nat.factorial n : ℝ)) :=
      mul_le_mul_of_nonneg_left hdiv (pow_nonneg hq _)
    _ = W 0 R * (q * R * W 0 R) ^ n / (Nat.factorial n : ℝ) := by
      rw [mul_pow]
      ring
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_discount_series_compact_positive -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_discount_series_compact_positive (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q a R : ℝ) (hq : 0 ≤ q) (ha : 0 < a) (hR : a ≤ R) :
    ContinuousOn (fun x : ℝ => ∑' n : ℕ,
      q ^ n * scaleConvolutionPower (W 0) n x)
      (Set.Icc a R) := by
  have hR0 : 0 ≤ R := ha.le.trans hR
  have hsub : Set.Icc a R ⊆ Set.Ioi (0 : ℝ) := by
    intro x hx
    exact lt_of_lt_of_le ha hx.1
  have hcont : ∀ n : ℕ, ContinuousOn
      (fun x : ℝ => q ^ n * scaleConvolutionPower (W 0) n x)
      (Set.Icc a R) := by
    intro n
    exact continuousOn_const.mul
      ((source_scale_power_continuous_positive ψ W hW n).mono hsub)
  have hfactorial : Summable (fun n : ℕ =>
      W 0 R * (q * R * W 0 R) ^ n / (Nat.factorial n : ℝ)) := by
    simpa only [mul_div_assoc] using
      (Real.summable_pow_div_factorial (q * R * W 0 R)).mul_left (W 0 R)
  have hbound : ∀ n : ℕ, ∀ x : ℝ, x ∈ Set.Icc a R →
      ‖q ^ n * scaleConvolutionPower (W 0) n x‖ ≤
      W 0 R * (q * R * W 0 R) ^ n / (Nat.factorial n : ℝ) := by
    intro n x hx
    apply source_scale_compact_factorial_majorant ψ W hW q R hq hR0 n x
    exact ⟨ha.le.trans hx.1, hx.2⟩
  exact continuousOn_tsum hcont hfactorial hbound
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_real_discount_series_continuous -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_real_discount_series_continuous (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (q : ℝ) (hq : 0 ≤ q) :
    ContinuousOn (fun x : ℝ => ∑' n : ℕ,
      q ^ n * scaleConvolutionPower (W 0) n x)
      (Set.Ioi (0 : ℝ)) := by
  apply continuousOn_of_locally_continuousOn
  intro x hx
  change 0 < x at hx
  refine ⟨Set.Ioo (x / 2) (x + 1), isOpen_Ioo, ?_, ?_⟩
  · exact ⟨by linarith, by linarith⟩
  · have hcomp := source_scale_discount_series_compact_positive
      ψ W hW q (x / 2) (x + 1) hq (by linarith) (by linarith)
    apply hcomp.mono
    intro y hy
    exact ⟨hy.2.1.le, hy.2.2.le⟩
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_real_series_continuous_nonnegative -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08.StageB

theorem source_real_series_continuous_nonnegative (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (q : ℝ) (hq : 0 ≤ q) :
    ContinuousOn (fun x : ℝ => ∑' n : ℕ,
      q ^ n * scaleConvolutionPower (W 0) n x) (Set.Ioi (0 : ℝ)) ∧
    (∀ x : ℝ, 0 < x →
      0 ≤ (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x)) := by
  exact ⟨source_real_discount_series_continuous ψ W hW q hq,
    fun x _ => source_real_discount_series_nonnegative ψ W hW q hq x⟩
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_weighted_series_terms_integrable -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_weighted_series_terms_integrable (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q θ : ℝ) (hq : 0 ≤ q) (hθ : 0 ≤ θ)
    (hroot0 : Phi ψ 0 < θ) :
    ∀ n : ℕ, IntegrableOn
      (fun x : ℝ => Real.exp (-(θ * x)) *
        (q ^ n * scaleConvolutionPower (W 0) n x))
      (Set.Ioi (0 : ℝ)) volume := by
  intro n
  have hh := (source_scale_power_weighted_integrable ψ W hW θ hθ hroot0) n
  have hi : IntegrableOn
      (fun x : ℝ => Real.exp (-(θ * x)) * scaleConvolutionPower (W 0) n x)
      (Set.Ioi (0 : ℝ)) volume := by
    simpa only [neg_mul] using hh
  have heq : (fun x : ℝ => Real.exp (-(θ * x)) *
      (q ^ n * scaleConvolutionPower (W 0) n x)) =
      (fun x : ℝ => q ^ n *
        (Real.exp (-(θ * x)) * scaleConvolutionPower (W 0) n x)) := by
    funext x
    ring
  rw [heq]
  exact hi.const_mul _
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_discount_series_summable -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08.StageB

theorem source_scale_discount_series_summable (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (hconv : ∀ (n : ℕ) (x : ℝ), 0 ≤ x →
      IntegrableOn (fun s : ℝ =>
        W 0 s * scaleConvolutionPower (W 0) n (x - s))
        (Set.Ioc (0 : ℝ) x) volume)
    (x q : ℝ) (hx : 0 ≤ x) (hq : 0 ≤ q) :
    Summable (fun n : ℕ =>
      q ^ n * scaleConvolutionPower (W 0) n x) := by
  have hM : 0 ≤ W 0 x :=
    (source_family_positive_monotone ψ W hW 0 (le_refl (0 : ℝ))).1 x
  let R : ℝ := x * W 0 x
  have hcoef := source_scale_convolution_coeff_majorant ψ W hW hconv x hx
  have hs : Summable (fun n : ℕ =>
      W 0 x * (q * R) ^ n / (Nat.factorial n : ℝ)) := by
    simpa only [mul_div_assoc] using
      (Real.summable_pow_div_factorial (q * R)).mul_left (W 0 x)
  apply Summable.of_norm_bounded hs
  intro n
  have hc : ‖scaleConvolutionPower (W 0) n x‖ ≤
      W 0 x * R ^ n / (Nat.factorial n : ℝ) := by
    simpa only [Complex.norm_real] using hcoef n
  calc
    ‖q ^ n * scaleConvolutionPower (W 0) n x‖ =
        q ^ n * ‖scaleConvolutionPower (W 0) n x‖ := by
      rw [norm_mul, Real.norm_eq_abs, abs_of_nonneg (pow_nonneg hq n)]
    _ ≤ q ^ n * (W 0 x * R ^ n / (Nat.factorial n : ℝ)) :=
      mul_le_mul_of_nonneg_left hc (pow_nonneg hq n)
    _ = W 0 x * (q * R) ^ n / (Nat.factorial n : ℝ) := by
      rw [mul_pow]
      ring
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_discount_series_summable_all_real -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_discount_series_summable_all_real (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (q : ℝ) (hq : 0 ≤ q) :
    ∀ x : ℝ, Summable (fun n : ℕ =>
      q ^ n * scaleConvolutionPower (W 0) n x) := by
  intro x
  by_cases hx : 0 ≤ x
  · exact source_scale_discount_series_summable ψ W hW
      (source_scale_all_power_local_integrability ψ W hW) x q hx hq
  · have hxneg : x < 0 := lt_of_not_ge hx
    have hzero : ∀ n : ℕ, scaleConvolutionPower (W 0) n x = 0 := by
      intro n
      cases n with
      | zero =>
          exact (hW 0 (le_refl (0 : ℝ))).2.1 x hxneg
      | succ n =>
          change (∫ s in Set.Ioc (0 : ℝ) x,
            W 0 s * scaleConvolutionPower (W 0) n (x - s) ∂volume) = 0
          have hempty : Set.Ioc (0 : ℝ) x = ∅ :=
            Set.Ioc_eq_empty_of_le hxneg.le
          simp [hempty]
    have hf : (fun n : ℕ => q ^ n * scaleConvolutionPower (W 0) n x) =
        (fun _ : ℕ => (0 : ℝ)) := by
      funext n
      simp [hzero n]
    rw [hf]
    exact summable_zero
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_weighted_series_terms_pointwise_summable -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_weighted_series_terms_pointwise_summable (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q θ : ℝ) (hq : 0 ≤ q) :
    ∀ x : ℝ, Summable (fun n : ℕ =>
      Real.exp (-(θ * x)) *
        (q ^ n * scaleConvolutionPower (W 0) n x)) := by
  intro x
  exact (source_discount_series_summable_all_real ψ W hW q hq x).mul_left _
end Kyprianou.Ch08.StageB

/-! ### AvramDividend.Classical.positive_causal_convolution_laplace_product -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open MeasureTheory Set

/-- The Laplace transform of a signed real causal convolution is the product
of its factor transforms, provided both exponentially weighted factors are L1. -/
theorem positive_causal_convolution_laplace_product (f g : ℝ → ℝ) (θ : ℝ)
    (hf : IntegrableOn (fun t : ℝ => Real.exp (-(θ * t)) * f t)
      (Ioi (0 : ℝ)) volume)
    (hg : IntegrableOn (fun t : ℝ => Real.exp (-(θ * t)) * g t)
      (Ioi (0 : ℝ)) volume) :
    (∫ x in Ioi (0 : ℝ),
      Real.exp (-(θ * x)) *
        (∫ s in Ioc (0 : ℝ) x, f s * g (x - s) ∂volume) ∂volume) =
      (∫ t in Ioi (0 : ℝ), Real.exp (-(θ * t)) * f t ∂volume) *
      (∫ t in Ioi (0 : ℝ), Real.exp (-(θ * t)) * g t ∂volume) := by
  have hconv := MeasureTheory.integral_posConvolution
    hf hg (ContinuousLinearMap.mul ℝ ℝ)
  simp_rw [ContinuousLinearMap.mul_apply'] at hconv
  rw [← hconv]
  refine setIntegral_congr_fun measurableSet_Ioi ?_
  intro x hx
  dsimp only
  rw [intervalIntegral.integral_of_le hx.le]
  rw [← integral_const_mul]
  refine setIntegral_congr_fun measurableSet_Ioc ?_
  intro s hs
  have hfactor :
      Real.exp (-(θ * s)) * Real.exp (-(θ * (x - s))) =
        Real.exp (-(θ * x)) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    Real.exp (-(θ * x)) * (f s * g (x - s)) =
      (Real.exp (-(θ * s)) * Real.exp (-(θ * (x - s)))) *
        (f s * g (x - s)) := by rw [hfactor]
    _ = (Real.exp (-(θ * s)) * f s) *
        (Real.exp (-(θ * (x - s))) * g (x - s)) := by ring
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_convolution_powers_laplace_geometric -/
namespace AvramDividend.Classical
open AvramDividend.Classical MeasureTheory Set
theorem causal_convolution_powers_laplace_geometric
    (κ : ℝ → ℝ) (F : ℕ → ℝ → ℝ) (θ A : ℝ)
    (hκi : IntegrableOn (fun t : ℝ => Real.exp (-(θ * t)) * κ t)
      (Ioi (0 : ℝ)) volume)
    (hFi : ∀ n : ℕ, IntegrableOn
      (fun t : ℝ => Real.exp (-(θ * t)) * F n t)
      (Ioi (0 : ℝ)) volume)
    (hF0 : F 0 = κ)
    (hFsucc : ∀ n : ℕ, F (n + 1) = fun x : ℝ =>
      ∫ s in Ioc (0 : ℝ) x, κ s * F n (x - s) ∂volume)
    (hκmass : (∫ t in Ioi (0 : ℝ), Real.exp (-(θ * t)) * κ t ∂volume) = A) :
    ∀ n : ℕ,
      (∫ t in Ioi (0 : ℝ), Real.exp (-(θ * t)) * F n t ∂volume) =
        A ^ (n + 1) := by 
  intro n
  induction n with
  | zero => rw [hF0, hκmass]; ring
  | succ n ih =>
    rw [hFsucc n, positive_causal_convolution_laplace_product κ (F n) θ hκi (hFi n), hκmass, ih]
    ring
end AvramDividend.Classical

/-! ### Kyprianou.Ch08.StageB.source_scale_power_laplace_transform -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_power_laplace_transform (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (β : ℝ)
    (hβ : 0 ≤ β) (hroot : Phi ψ 0 < β) :
    ∀ n : ℕ, (∫ t in Set.Ioi (0 : ℝ),
      Real.exp (-β * t) * scaleConvolutionPower (W 0) n t ∂volume) =
      ((ψ β)⁻¹) ^ (n + 1) := by
  have hscale := hW 0 (le_refl (0 : ℝ))
  have hsource := hscale.2.2.2.2.2 β hβ hroot
  have hFn := source_scale_power_weighted_integrable ψ W hW β hβ hroot
  have hFn' : ∀ n : ℕ, IntegrableOn (fun t : ℝ =>
      Real.exp (-(β * t)) * scaleConvolutionPower (W 0) n t)
      (Set.Ioi (0 : ℝ)) volume := by
    intro n
    simpa only [neg_mul] using hFn n
  have hκmass : (∫ t in Set.Ioi (0 : ℝ),
      Real.exp (-(β * t)) * W 0 t ∂volume) = (ψ β)⁻¹ := by
    simpa using hsource.2
  have hresult := AvramDividend.Classical.causal_convolution_powers_laplace_geometric
    (W 0) (scaleConvolutionPower (W 0)) β ((ψ β)⁻¹)
    (by simpa only [neg_mul] using hsource.1) hFn' rfl (fun n => rfl) hκmass
  intro n
  simpa only [neg_mul] using hresult n
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_laplace_gap_pos -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_laplace_gap_pos (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q β : ℝ) (hq : 0 ≤ q) (hβ : 0 ≤ β)
    (hroot : Phi ψ q < β) :
    q < ψ β := by
  have hscale := hW q hq
  have hnonzero : ψ β - q ≠ 0 := by
    apply sub_ne_zero.mpr
    intro heq
    have hr : β ∈ RightRootSet ψ q := ⟨hβ, heq⟩
    have hbound := hscale.1.2.2 β hr
    linarith
  have hmass := (hscale.2.2.2.2.2 β hβ hroot).2
  have hnonneg : 0 ≤ (∫ x in Set.Ioi (0 : ℝ),
      Real.exp (-β * x) * W q x ∂volume) := by
    apply integral_nonneg_of_ae
    filter_upwards [] with x
    exact mul_nonneg (le_of_lt (Real.exp_pos _)) (hscale.2.2.1 x)
  have hge : 0 ≤ (ψ β - q)⁻¹ := by
    rw [← hmass]
    exact hnonneg
  have hpos : 0 < (ψ β - q)⁻¹ :=
    lt_of_le_of_ne hge (Ne.symm (inv_ne_zero hnonzero))
  exact sub_pos.mp (inv_pos.mp hpos)
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_weighted_series_integral_masses_summable -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_weighted_series_integral_masses_summable (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q θ : ℝ) (hq : 0 ≤ q) (hθ : 0 ≤ θ)
    (hroot0 : Phi ψ 0 < θ) (hrootq : Phi ψ q < θ) :
    Summable (fun n : ℕ =>
      ∫ x in Set.Ioi (0 : ℝ), Real.exp (-(θ * x)) *
        (q ^ n * scaleConvolutionPower (W 0) n x) ∂volume) := by
  have hgap := source_scale_laplace_gap_pos ψ W hW q θ hq hθ hrootq
  have hψ : 0 < ψ θ := lt_of_le_of_lt hq hgap
  have hρ0 : 0 ≤ q / ψ θ := div_nonneg hq hψ.le
  have hρ1 : q / ψ θ < 1 := (div_lt_one hψ).2 hgap
  have hm : ∀ n : ℕ,
      (∫ x in Set.Ioi (0 : ℝ), Real.exp (-(θ * x)) *
        (q ^ n * scaleConvolutionPower (W 0) n x) ∂volume) =
        (ψ θ)⁻¹ * (q / ψ θ)^n := by
    intro n
    have hp := (source_scale_power_laplace_transform ψ W hW θ hθ hroot0) n
    have hc : (∫ x in Set.Ioi (0 : ℝ), Real.exp (-(θ * x)) *
        scaleConvolutionPower (W 0) n x ∂volume) =
        ((ψ θ)⁻¹)^(n+1) := by
      simpa only [neg_mul] using hp
    have heq : (fun x : ℝ => Real.exp (-(θ * x)) *
        (q ^ n * scaleConvolutionPower (W 0) n x)) =
        (fun x : ℝ => q ^ n * (Real.exp (-(θ * x)) *
          scaleConvolutionPower (W 0) n x)) := by
      funext x
      ring
    rw [heq, integral_const_mul, hc, pow_succ, div_eq_mul_inv, mul_pow]
    ring
  have hgeom : Summable (fun n : ℕ => (ψ θ)⁻¹ * (q / ψ θ)^n) :=
    (summable_geometric_of_lt_one hρ0 hρ1).mul_left ((ψ θ)⁻¹)
  exact hgeom.congr (fun n => (hm n).symm)
end Kyprianou.Ch08.StageB

/-! ### AvramDividend.Classical.nonnegative_integrable_tsum_of_summable_integrals -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open MeasureTheory

/-- A pointwise nonnegative renewal-power sum is integrable if its masses sum. -/
theorem nonnegative_integrable_tsum_of_summable_integrals
    {α : Type*} [MeasurableSpace α] (μ : Measure α)
    (F : ℕ → α → ℝ)
    (hFi : ∀ n : ℕ, Integrable (F n) μ)
    (hpos : ∀ n : ℕ, ∀ x : α, 0 ≤ F n x)
    (hpoint : ∀ x : α, Summable (fun n : ℕ => F n x))
    (hmass : Summable (fun n : ℕ => ∫ x : α, F n x ∂μ)) :
    Integrable (fun x : α => ∑' n : ℕ, F n x) μ := by
  have hmasspos (n : ℕ) : 0 ≤ ∫ x : α, F n x ∂μ :=
    integral_nonneg (hpos n)
  have hfinite :
      (∑' n : ℕ, ENNReal.ofReal (∫ x : α, F n x ∂μ)) < ⊤ := by
    rw [← ENNReal.ofReal_tsum_of_nonneg hmasspos hmass]
    simp
  have hlintegral :
      (∫⁻ x : α, ENNReal.ofReal (∑' n : ℕ, F n x) ∂μ) =
        ∑' n : ℕ, ENNReal.ofReal (∫ x : α, F n x ∂μ) := by
    calc
      (∫⁻ x : α, ENNReal.ofReal (∑' n : ℕ, F n x) ∂μ) =
          ∫⁻ x : α, ∑' n : ℕ, ENNReal.ofReal (F n x) ∂μ := by
        congr 1
        funext x
        exact ENNReal.ofReal_tsum_of_nonneg (fun n => hpos n x) (hpoint x)
      _ = ∑' n : ℕ, ∫⁻ x : α, ENNReal.ofReal (F n x) ∂μ := by
        apply lintegral_tsum
        intro n
        exact (hFi n).aestronglyMeasurable.aemeasurable.ennreal_ofReal
      _ = ∑' n : ℕ, ENNReal.ofReal (∫ x : α, F n x ∂μ) := by
        congr 1
        funext n
        exact (ofReal_integral_eq_lintegral_ofReal (hFi n)
          (Filter.Eventually.of_forall (hpos n))).symm
  have hmeas : AEMeasurable (fun x : α => ∑' n : ℕ, F n x) μ :=
    AEMeasurable.tsum (fun n => (hFi n).aemeasurable)
  refine ⟨hmeas.aestronglyMeasurable, ?_⟩
  change (∫⁻ x : α, ‖∑' n : ℕ, F n x‖ₑ ∂μ) < ⊤
  have hnorm (x : α) :
      ‖∑' n : ℕ, F n x‖ₑ = ENNReal.ofReal (∑' n : ℕ, F n x) := by
    rw [Real.enorm_eq_ofReal_abs]
    exact congrArg ENNReal.ofReal
      (abs_of_nonneg (tsum_nonneg (fun n => hpos n x)))
  simp_rw [hnorm]
  rw [hlintegral]
  exact hfinite
end AvramDividend.Classical

/-! ### Kyprianou.Ch08.StageB.source_real_discount_series_weighted_integrable -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_real_discount_series_weighted_integrable (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q θ : ℝ) (hq : 0 ≤ q) (hθ : 0 ≤ θ)
    (hroot0 : Phi ψ 0 < θ) (hrootq : Phi ψ q < θ) :
    IntegrableOn
      (fun x : ℝ => Real.exp (-(θ * x)) *
        (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x))
      (Set.Ioi (0 : ℝ)) volume := by
  let F : ℕ → ℝ → ℝ := fun n x => Real.exp (-(θ * x)) *
    (q ^ n * scaleConvolutionPower (W 0) n x)
  have hi := source_weighted_series_terms_integrable ψ W hW q θ hq hθ hroot0
  have hp := source_weighted_series_terms_pointwise_summable ψ W hW q θ hq
  have hm := source_weighted_series_integral_masses_summable
    ψ W hW q θ hq hθ hroot0 hrootq
  have hn : ∀ n : ℕ, ∀ x : ℝ, 0 ≤ F n x := by
    intro n x
    exact mul_nonneg (Real.exp_pos _).le
      (mul_nonneg (pow_nonneg hq _)
        (source_scale_power_nonnegative_all_real ψ W hW n x))
  have h := AvramDividend.Classical.nonnegative_integrable_tsum_of_summable_integrals
    (volume.restrict (Set.Ioi (0 : ℝ))) F hi hn hp hm
  change Integrable (fun x : ℝ => Real.exp (-(θ * x)) *
    (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x))
    (volume.restrict (Set.Ioi (0 : ℝ)))
  have heq : (fun x : ℝ => Real.exp (-(θ * x)) *
    (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x)) =
    (fun x : ℝ => ∑' n : ℕ, F n x) := by
    funext x
    dsimp [F]
    rw [tsum_mul_left]
  rw [heq]
  exact h
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_discount_series_laplace_zero_q -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_discount_series_laplace_zero_q (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (β : ℝ) (hβ : 0 ≤ β) (hroot0 : Phi ψ 0 < β) :
    (∫ x in Set.Ioi (0 : ℝ), Real.exp (-(β * x)) *
      (∑' n : ℕ, (0 : ℝ) ^ n * scaleConvolutionPower (W 0) n x) ∂volume) =
      (ψ β)⁻¹ := by
  have hzero : ∀ x : ℝ,
      (∑' n : ℕ, (0 : ℝ) ^ n * scaleConvolutionPower (W 0) n x) =
      W 0 x := by
    intro x
    rw [tsum_eq_single 0]
    · simp [scaleConvolutionPower]
    · intro n hn
      cases n with
      | zero => exact (hn rfl).elim
      | succ n => simp
  have hmass := ((hW 0 (le_refl (0 : ℝ))).2.2.2.2.2 β hβ hroot0).2
  simpa only [hzero, neg_mul, sub_zero] using hmass
end Kyprianou.Ch08.StageB

/-! ### AvramDividend.Classical.nonnegative_renewal_integral_tsum_exchange -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open MeasureTheory

/-- The integral of a nonnegative L1 renewal series equals the sum of masses. -/
theorem nonnegative_renewal_integral_tsum_exchange
    {α : Type*} [MeasurableSpace α] (μ : Measure α)
    (F : ℕ → α → ℝ)
    (hFi : ∀ n : ℕ, Integrable (F n) μ)
    (hpos : ∀ n : ℕ, ∀ x : α, 0 ≤ F n x)
    (hmass : Summable (fun n : ℕ => ∫ x : α, F n x ∂μ)) :
    (∫ x : α, ∑' n : ℕ, F n x ∂μ) =
      ∑' n : ℕ, ∫ x : α, F n x ∂μ := by
  have hnorm (n : ℕ) :
      (fun x : α => ‖F n x‖) = F n := by
    funext x
    simp [Real.norm_eq_abs, abs_of_nonneg (hpos n x)]
  have hIntEq :
      (fun n : ℕ => ∫ x : α, ‖F n x‖ ∂μ) =
        (fun n : ℕ => ∫ x : α, F n x ∂μ) := by
    funext n
    rw [hnorm n]
  have hsumNorm :
      Summable (fun n : ℕ => ∫ x : α, ‖F n x‖ ∂μ) := by
    rw [hIntEq]
    exact hmass
  exact (integral_tsum_of_summable_integral_norm hFi hsumNorm).symm
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_geometric_renewal_total_mass_sum -/
namespace AvramDividend.Classical
set_option pp.explicit true
set_option pp.fullNames true
set_option pp.universes true

open MeasureTheory Set

/-- Total renewal mass is the geometric resolvent rho / (1-rho). -/
theorem causal_geometric_renewal_total_mass_sum
    (F : ℕ → ℝ → ℝ) (ρ : ℝ)
    (hρnonneg : 0 ≤ ρ) (hρlt : ρ < 1)
    (hmass : ∀ n : ℕ,
      (∫ x in Ioi (0 : ℝ), F n x ∂volume) = ρ ^ (n + 1)) :
    (∑' n : ℕ, ∫ x in Ioi (0 : ℝ), F n x ∂volume) =
      ρ / (1 - ρ) := by
  simp_rw [hmass, pow_succ]
  rw [tsum_mul_right]
  rw [tsum_geometric_of_lt_one hρnonneg hρlt]
  simp [div_eq_mul_inv, mul_comm]
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_geometric_laplace_series_integral -/
namespace AvramDividend.Classical
open AvramDividend.Classical MeasureTheory Set
theorem causal_geometric_laplace_series_integral
    (F : ℕ → ℝ → ℝ) (θ ρ : ℝ)
    (hρ0 : 0 ≤ ρ) (hρ1 : ρ < 1)
    (hFi : ∀ n : ℕ, IntegrableOn
      (fun x : ℝ => Real.exp (-(θ * x)) * F n x)
      (Ioi (0 : ℝ)) volume)
    (hpos : ∀ n : ℕ, ∀ x : ℝ, 0 ≤ F n x)
    (hmass : ∀ n : ℕ,
      (∫ x in Ioi (0 : ℝ), Real.exp (-(θ * x)) * F n x ∂volume) =
        ρ ^ (n + 1)) :
    (∫ x in Ioi (0 : ℝ),
      ∑' n : ℕ, Real.exp (-(θ * x)) * F n x ∂volume) =
        ρ / (1 - ρ) := by 
  rw [nonnegative_renewal_integral_tsum_exchange (volume.restrict (Ioi (0 : ℝ)))
    (fun n x => Real.exp (-(θ * x)) * F n x) hFi
    (fun n x => mul_nonneg (Real.exp_pos _).le (hpos n x)) ?_]
  · exact causal_geometric_renewal_total_mass_sum _ ρ hρ0 hρ1 hmass
  · simp only [hmass]
    exact (summable_geometric_of_lt_one hρ0 hρ1).mul_left ρ |>.congr fun n => by ring
end AvramDividend.Classical

/-! ### AvramDividend.Classical.causal_geometric_laplace_resolvent_series -/
namespace AvramDividend.Classical
open AvramDividend.Classical MeasureTheory Set
theorem causal_geometric_laplace_resolvent_series
    (F : ℕ → ℝ → ℝ) (θ ρ : ℝ)
    (hρ0 : 0 ≤ ρ) (hρ1 : ρ < 1)
    (hFi : ∀ n : ℕ, IntegrableOn
      (fun x : ℝ => Real.exp (-(θ * x)) * F n x)
      (Ioi (0 : ℝ)) volume)
    (hpos : ∀ n : ℕ, ∀ x : ℝ, 0 ≤ F n x)
    (hmass : ∀ n : ℕ,
      (∫ x in Ioi (0 : ℝ), Real.exp (-(θ * x)) * F n x ∂volume) =
        ρ ^ (n + 1)) :
    (∫ x in Ioi (0 : ℝ),
      Real.exp (-(θ * x)) * (∑' n : ℕ, F n x) ∂volume) =
        ρ / (1 - ρ) := by 
  simp_rw [← tsum_mul_left]
  exact causal_geometric_laplace_series_integral F θ ρ hρ0 hρ1 hFi hpos hmass
end AvramDividend.Classical

/-! ### Kyprianou.Ch08.StageB.source_scale_scaled_series_laplace -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_scaled_series_laplace (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q β : ℝ) (hq : 0 ≤ q) (hβ : 0 ≤ β)
    (hroot0 : Phi ψ 0 < β) (hrootq : Phi ψ q < β) :
    (∫ x in Set.Ioi (0 : ℝ), Real.exp (-(β * x)) *
      (∑' n : ℕ, q ^ (n + 1) *
        scaleConvolutionPower (W 0) n x) ∂volume) =
      (q / ψ β) / (1 - q / ψ β) := by
  have hgap := source_scale_laplace_gap_pos ψ W hW q β hq hβ hrootq
  have hψ : 0 < ψ β := lt_of_le_of_lt hq hgap
  have hρ0 : 0 ≤ q / ψ β := div_nonneg hq hψ.le
  have hρ1 : q / ψ β < 1 := (div_lt_one hψ).2 hgap
  let F : ℕ → ℝ → ℝ := fun n x =>
    q ^ (n + 1) * scaleConvolutionPower (W 0) n x
  have hFi : ∀ n : ℕ, IntegrableOn
      (fun x : ℝ => Real.exp (-(β * x)) * F n x)
      (Set.Ioi (0 : ℝ)) volume := by
    intro n
    have hi := (source_scale_power_weighted_integrable ψ W hW β hβ hroot0) n
    have hi' : IntegrableOn
        (fun x : ℝ => Real.exp (-(β * x)) *
           scaleConvolutionPower (W 0) n x)
        (Set.Ioi (0 : ℝ)) volume := by
      simpa only [neg_mul] using hi
    have heq : (fun x : ℝ => Real.exp (-(β * x)) * F n x) =
        (fun x : ℝ => q ^ (n + 1) *
          (Real.exp (-(β * x)) * scaleConvolutionPower (W 0) n x)) := by
      funext x
      dsimp [F]
      ring
    rw [heq]
    exact hi'.const_mul _
  have hpos : ∀ n : ℕ, ∀ x : ℝ, 0 ≤ F n x := by
    intro n x
    exact mul_nonneg (pow_nonneg hq _) ((source_scale_power_nonnegative_all_real ψ W hW) n x)
  have hmass : ∀ n : ℕ,
      (∫ x in Set.Ioi (0 : ℝ), Real.exp (-(β * x)) * F n x ∂volume) =
        (q / ψ β) ^ (n + 1) := by
    intro n
    have hpower := (source_scale_power_laplace_transform ψ W hW β hβ hroot0) n
    have hrewrite : (fun x : ℝ => Real.exp (-(β * x)) * F n x) =
        (fun x : ℝ => q ^ (n + 1) *
          (Real.exp (-(β * x)) * scaleConvolutionPower (W 0) n x)) := by
      funext x
      dsimp [F]
      ring
    rw [hrewrite, integral_const_mul]
    have hpower' :
        (∫ x in Set.Ioi (0 : ℝ), Real.exp (-(β * x)) *
          scaleConvolutionPower (W 0) n x ∂volume) =
        ((ψ β)⁻¹) ^ (n + 1) := by
      simpa only [neg_mul] using hpower
    rw [hpower']
    simp only [div_eq_mul_inv, mul_pow]
  have hmain := AvramDividend.Classical.causal_geometric_laplace_resolvent_series
    F β (q / ψ β) hρ0 hρ1 hFi hpos hmass
  simpa only [F] using hmain
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_discount_series_laplace_positive_q -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_discount_series_laplace_positive_q (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q β : ℝ) (hq : 0 < q) (hβ : 0 ≤ β)
    (hroot0 : Phi ψ 0 < β) (hrootq : Phi ψ q < β) :
    (∫ x in Set.Ioi (0 : ℝ), Real.exp (-(β * x)) *
      (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x) ∂volume) =
      (ψ β - q)⁻¹ := by
  have hgap := source_scale_laplace_gap_pos ψ W hW q β hq.le hβ hrootq
  have hψ : 0 < ψ β := lt_trans hq hgap
  have hden : 1 - q / ψ β ≠ 0 := by
    exact ne_of_gt (sub_pos.mpr ((div_lt_one hψ).2 hgap))
  have hseries : ∀ x : ℝ,
      (∑' n : ℕ, q ^ (n + 1) * scaleConvolutionPower (W 0) n x) =
        q * (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x) := by
    intro x
    calc
      (∑' n : ℕ, q ^ (n + 1) * scaleConvolutionPower (W 0) n x) =
          ∑' n : ℕ, q * (q ^ n * scaleConvolutionPower (W 0) n x) := by
            congr 1
            ext n
            rw [pow_succ]
            ring
      _ = q * (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x) :=
        tsum_mul_left
  have hmass := source_scale_scaled_series_laplace ψ W hW q β hq.le hβ hroot0 hrootq
  have hint : q * (∫ x in Set.Ioi (0 : ℝ),
       Real.exp (-(β * x)) *
         (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x) ∂volume) =
       (q / ψ β) / (1 - q / ψ β) := by
    calc
      q * (∫ x in Set.Ioi (0 : ℝ), Real.exp (-(β * x)) *
         (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x) ∂volume) =
       (∫ x in Set.Ioi (0 : ℝ), Real.exp (-(β * x)) *
         (∑' n : ℕ, q ^ (n+1) * scaleConvolutionPower (W 0) n x) ∂volume) := by
        simp_rw [hseries]
        have heq : (fun x : ℝ => Real.exp (-(β * x)) *
          (q * (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x))) =
          (fun x : ℝ => q * (Real.exp (-(β * x)) *
          (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x))) := by
          funext x
          ring
        rw [heq, integral_const_mul]
      _ = (q / ψ β) / (1 - q / ψ β) := hmass
  have hrat : (q / ψ β) / (1 - q / ψ β) =
      q * (ψ β - q)⁻¹ := by
    field_simp [ne_of_gt hψ, hden, ne_of_gt (sub_pos.mpr hgap)]
  apply mul_left_cancel₀ (ne_of_gt hq)
  exact hint.trans hrat
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_real_discount_series_weighted_laplace -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_real_discount_series_weighted_laplace (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q θ : ℝ) (hq : 0 ≤ q) (hθ : 0 ≤ θ)
    (hroot0 : Phi ψ 0 < θ) (hrootq : Phi ψ q < θ) :
    (∫ x in Set.Ioi (0 : ℝ), Real.exp (-(θ * x)) *
      (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x) ∂volume) =
      (ψ θ - q)⁻¹ := by
  by_cases hzero : q = 0
  · subst q
    simpa only [sub_zero] using
      source_discount_series_laplace_zero_q ψ W hW θ hθ hroot0
  · have hpositive : 0 < q := lt_of_le_of_ne hq (Ne.symm hzero)
    exact source_discount_series_laplace_positive_q ψ W hW q θ
      hpositive hθ hroot0 hrootq
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_real_series_laplace_premises -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_real_series_laplace_premises (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (q : ℝ) (hq : 0 ≤ q) :
    ∃ b : ℝ, ∀ θ : ℝ, b < θ →
      0 ≤ θ ∧ Phi ψ q < θ ∧
      IntegrableOn
        (fun x : ℝ => Real.exp (-(θ * x)) *
          (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x))
        (Set.Ioi (0 : ℝ)) volume ∧
      (∫ x in Set.Ioi (0 : ℝ),
        Real.exp (-(θ * x)) *
          (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x) ∂volume) =
        (ψ θ - q)⁻¹ := by
  refine ⟨max 0 (max (Phi ψ 0) (Phi ψ q)) + 1, ?_⟩
  intro θ hθ
  have hz : 0 ≤ θ := by
    linarith [le_max_left (0 : ℝ) (max (Phi ψ 0) (Phi ψ q))]
  have hroot0 : Phi ψ 0 < θ := by
    linarith [le_max_left (Phi ψ 0) (Phi ψ q),
      le_max_right (0 : ℝ) (max (Phi ψ 0) (Phi ψ q))]
  have hrootq : Phi ψ q < θ := by
    linarith [le_max_right (Phi ψ 0) (Phi ψ q),
      le_max_right (0 : ℝ) (max (Phi ψ 0) (Phi ψ q))]
  exact ⟨hz,hrootq,
    source_real_discount_series_weighted_integrable ψ W hW q θ hq hz hroot0 hrootq,
    source_real_discount_series_weighted_laplace ψ W hW q θ hq hz hroot0 hrootq⟩
end Kyprianou.Ch08.StageB

/-! ### AvramDividend.Classical.finiteMeasures_eq_of_complexMGF_eq_on_real_Iio -/
namespace AvramDividend.Classical
open MeasureTheory Filter Finset Real Complex
open scoped MeasureTheory ProbabilityTheory ENNReal NNReal Topology

open MeasureTheory Filter Finset Real Complex in
theorem finiteMeasures_eq_of_complexMGF_eq_on_real_Iio (μ ν : Measure ℝ) [IsFiniteMeasure μ] [IsFiniteMeasure ν]
    (b : ℝ) (hb : 0 < b)
    (hμ : AnalyticOnNhd ℂ (ProbabilityTheory.complexMGF id μ)
      {z : ℂ | z.re < b})
    (hν : AnalyticOnNhd ℂ (ProbabilityTheory.complexMGF id ν)
      {z : ℂ | z.re < b})
    (hreal : ∀ t : ℝ, t < b →
      ProbabilityTheory.complexMGF id μ (t : ℂ) =
        ProbabilityTheory.complexMGF id ν (t : ℂ)) :
    μ = ν := by
  have hU : IsPreconnected {z : ℂ | z.re < b} :=
    (convex_halfSpace_re_lt b).isPreconnected
  have h0 : (0 : ℂ) ∈ {z : ℂ | z.re < b} := by simpa using hb
  have htend : Tendsto (fun t : ℝ => (t : ℂ)) (𝓝[<] (0 : ℝ)) (𝓝[≠] (0 : ℂ)) := by
    refine tendsto_nhdsWithin_iff.2 ⟨?_, ?_⟩
    · have : Tendsto (fun t : ℝ => (t : ℂ)) (𝓝 (0 : ℝ)) (𝓝 ((0 : ℝ) : ℂ)) :=
        Complex.continuous_ofReal.tendsto 0
      simpa using this.mono_left nhdsWithin_le_nhds
    · filter_upwards [self_mem_nhdsWithin] with t ht
      simp only [Set.mem_compl_iff, Set.mem_singleton_iff, Complex.ofReal_eq_zero]
      exact ne_of_lt ht
  have hev : ∀ᶠ t : ℝ in 𝓝[<] (0 : ℝ),
      ProbabilityTheory.complexMGF id μ (t : ℂ) = ProbabilityTheory.complexMGF id ν (t : ℂ) := by
    filter_upwards [self_mem_nhdsWithin] with t ht
    exact hreal t (lt_trans (Set.mem_Iio.1 ht) hb)
  have hfreq : ∃ᶠ z in 𝓝[≠] (0 : ℂ),
      ProbabilityTheory.complexMGF id μ z = ProbabilityTheory.complexMGF id ν z :=
    htend.frequently hev.frequently
  have heq := hμ.eqOn_of_preconnected_of_frequently_eq hν hU h0 hfreq
  apply Measure.ext_of_charFun
  funext t
  rw [← ProbabilityTheory.complexMGF_id_mul_I, ← ProbabilityTheory.complexMGF_id_mul_I]
  apply heq
  simpa using hb
end AvramDividend.Classical

/-! ### AvramDividend.Classical.continuousOn_Ioi_eq_of_exponential_withDensity_eq -/
namespace AvramDividend.Classical
open MeasureTheory Filter Set Topology
open scoped MeasureTheory ProbabilityTheory ENNReal NNReal Topology

theorem continuousOn_Ioi_eq_of_exponential_withDensity_eq
    (f g : ℝ → ℝ) (B : ℝ)
    (hfcont : ContinuousOn f (Ioi 0))
    (hgcont : ContinuousOn g (Ioi 0))
    (hfnonneg : ∀ x : ℝ, 0 < x → 0 ≤ f x)
    (hgnonneg : ∀ x : ℝ, 0 < x → 0 ≤ g x)
    (hfdens : AEMeasurable
      (fun x : ℝ => ENNReal.ofReal (Real.exp (-B * x) * f x))
      (volume.restrict (Ioi 0)))
    (hgdens : AEMeasurable
      (fun x : ℝ => ENNReal.ofReal (Real.exp (-B * x) * g x))
      (volume.restrict (Ioi 0)))
    (hmeas :
      (volume.restrict (Ioi 0)).withDensity
          (fun x : ℝ => ENNReal.ofReal (Real.exp (-B * x) * f x)) =
        (volume.restrict (Ioi 0)).withDensity
          (fun x : ℝ => ENNReal.ofReal (Real.exp (-B * x) * g x))) :
    ∀ x : ℝ, 0 < x → f x = g x := by
  have hdens :
      (fun x : ℝ => ENNReal.ofReal (Real.exp (-B * x) * f x)) =ᵐ[
        volume.restrict (Ioi 0)]
      (fun x : ℝ => ENNReal.ofReal (Real.exp (-B * x) * g x)) :=
    (withDensity_eq_iff_of_sigmaFinite hfdens hgdens).mp hmeas
  have hfg : f =ᵐ[volume.restrict (Ioi 0)] g := by
    filter_upwards [hdens, ae_restrict_mem measurableSet_Ioi] with x hx hpos
    have hef : 0 ≤ Real.exp (-B * x) * f x :=
      mul_nonneg (Real.exp_pos _).le (hfnonneg x hpos)
    have heg : 0 ≤ Real.exp (-B * x) * g x :=
      mul_nonneg (Real.exp_pos _).le (hgnonneg x hpos)
    have hprod : Real.exp (-B * x) * f x = Real.exp (-B * x) * g x :=
      (ENNReal.ofReal_eq_ofReal_iff hef heg).mp hx
    exact mul_left_cancel₀ (Real.exp_ne_zero (-B * x)) hprod
  have hEqOn : EqOn f g (Ioi 0) :=
    MeasureTheory.Measure.eqOn_open_of_ae_eq hfg isOpen_Ioi hfcont hgcont
  intro x hx
  exact hEqOn hx
end AvramDividend.Classical

/-! ### AvramDividend.Classical.continuousOn_Ioi_eq_of_laplace_eq -/
namespace AvramDividend.Classical
open MeasureTheory Filter Set Topology
open scoped MeasureTheory ProbabilityTheory ENNReal NNReal Topology
open ProbabilityTheory
open AvramDividend.Classical

theorem continuousOn_Ioi_eq_of_laplace_eq
    (f g : ℝ → ℝ) (b : ℝ)
    (hfcont : ContinuousOn f (Ioi 0))
    (hgcont : ContinuousOn g (Ioi 0))
    (hfnonneg : ∀ x : ℝ, 0 < x → 0 ≤ f x)
    (hgnonneg : ∀ x : ℝ, 0 < x → 0 ≤ g x)
    (hlap : ∀ θ : ℝ, b < θ →
      IntegrableOn (fun x : ℝ => Real.exp (-θ * x) * f x) (Ioi 0) ∧
      IntegrableOn (fun x : ℝ => Real.exp (-θ * x) * g x) (Ioi 0) ∧
      ∫ x in Ioi (0 : ℝ), Real.exp (-θ * x) * f x =
        ∫ x in Ioi (0 : ℝ), Real.exp (-θ * x) * g x) :
    ∀ x : ℝ, 0 < x → f x = g x := by
  let B : ℝ := b + 1
  let μ0 : Measure ℝ := volume.restrict (Ioi 0)
  have hB : b < B := by
    dsimp [B]
    linarith
  have hfB : Integrable (fun x : ℝ => Real.exp (-B * x) * f x) μ0 := by
    dsimp [μ0]
    exact (hlap B hB).1.integrable
  have hgB : Integrable (fun x : ℝ => Real.exp (-B * x) * g x) μ0 := by
    dsimp [μ0]
    exact (hlap B hB).2.1.integrable
  have hf_ae : AEMeasurable f μ0 := by
    simpa [μ0] using hfcont.aemeasurable measurableSet_Ioi
  have hg_ae : AEMeasurable g μ0 := by
    simpa [μ0] using hgcont.aemeasurable measurableSet_Ioi
  have hexp_ae :
      AEMeasurable (fun x : ℝ => Real.exp (-B * x)) μ0 := by
    fun_prop
  have hfdens : AEMeasurable
      (fun x : ℝ => ENNReal.ofReal (Real.exp (-B * x) * f x)) μ0 :=
    (hexp_ae.mul hf_ae).ennreal_ofReal
  have hgdens : AEMeasurable
      (fun x : ℝ => ENNReal.ofReal (Real.exp (-B * x) * g x)) μ0 :=
    (hexp_ae.mul hg_ae).ennreal_ofReal
  let μf : Measure ℝ := μ0.withDensity
    (fun x : ℝ => ENNReal.ofReal (Real.exp (-B * x) * f x))
  let μg : Measure ℝ := μ0.withDensity
    (fun x : ℝ => ENNReal.ofReal (Real.exp (-B * x) * g x))
  letI : IsFiniteMeasure μf := by
    dsimp [μf]
    exact isFiniteMeasure_withDensity_ofReal hfB.hasFiniteIntegral
  letI : IsFiniteMeasure μg := by
    dsimp [μg]
    exact isFiniteMeasure_withDensity_ofReal hgB.hasFiniteIntegral

  have hf_mgf_int (t : ℝ) (ht : t < 1) :
      Integrable (fun x : ℝ => Real.exp (t * x)) μf := by
    have hθ : b < B - t := by
      dsimp [B]
      linarith
    have hbase : Integrable
        (fun x : ℝ => Real.exp (-(B - t) * x) * f x) μ0 := by
      dsimp [μ0]
      exact (hlap (B - t) hθ).1.integrable
    dsimp [μf]
    rw [integrable_withDensity_iff_integrable_smul₀' hfdens (by simp)]
    refine hbase.congr ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    have hfx : 0 ≤ f x := hfnonneg x hx
    rw [ENNReal.toReal_ofReal (mul_nonneg (Real.exp_pos _).le hfx)]
    simp only [smul_eq_mul]
    calc
      Real.exp (-(B - t) * x) * f x
          = (Real.exp (-B * x) * Real.exp (t * x)) * f x := by
        rw [← Real.exp_add]
        congr 2
        ring
      _ = (Real.exp (-B * x) * f x) * Real.exp (t * x) := by ring

  have hg_mgf_int (t : ℝ) (ht : t < 1) :
      Integrable (fun x : ℝ => Real.exp (t * x)) μg := by
    have hθ : b < B - t := by
      dsimp [B]
      linarith
    have hbase : Integrable
        (fun x : ℝ => Real.exp (-(B - t) * x) * g x) μ0 := by
      dsimp [μ0]
      exact (hlap (B - t) hθ).2.1.integrable
    dsimp [μg]
    rw [integrable_withDensity_iff_integrable_smul₀' hgdens (by simp)]
    refine hbase.congr ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    have hgx : 0 ≤ g x := hgnonneg x hx
    rw [ENNReal.toReal_ofReal (mul_nonneg (Real.exp_pos _).le hgx)]
    simp only [smul_eq_mul]
    calc
      Real.exp (-(B - t) * x) * g x
          = (Real.exp (-B * x) * Real.exp (t * x)) * g x := by
        rw [← Real.exp_add]
        congr 2
        ring
      _ = (Real.exp (-B * x) * g x) * Real.exp (t * x) := by ring

  have hf_strip : Iio (1 : ℝ) ⊆ interior (integrableExpSet id μf) := by
    apply interior_maximal
    · intro t ht
      exact hf_mgf_int t ht
    · exact isOpen_Iio
  have hg_strip : Iio (1 : ℝ) ⊆ interior (integrableExpSet id μg) := by
    apply interior_maximal
    · intro t ht
      exact hg_mgf_int t ht
    · exact isOpen_Iio

  have hf_an :
      AnalyticOnNhd ℂ (complexMGF id μf) {z : ℂ | z.re < 1} := by
    exact analyticOnNhd_complexMGF.mono (fun z hz => hf_strip hz)
  have hg_an :
      AnalyticOnNhd ℂ (complexMGF id μg) {z : ℂ | z.re < 1} := by
    exact analyticOnNhd_complexMGF.mono (fun z hz => hg_strip hz)

  have hmgf_f (t : ℝ) (ht : t < 1) :
      mgf id μf t =
        ∫ x in Ioi (0 : ℝ), Real.exp (-(B - t) * x) * f x := by
    have hθ : b < B - t := by
      dsimp [B]
      linarith
    rw [mgf]
    dsimp [μf]
    rw [integral_withDensity_eq_integral_toReal_smul₀ hfdens (by simp)]
    apply integral_congr_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    have hfx : 0 ≤ f x := hfnonneg x hx
    rw [ENNReal.toReal_ofReal (mul_nonneg (Real.exp_pos _).le hfx)]
    simp only [id_eq, smul_eq_mul]
    calc
      (Real.exp (-B * x) * f x) * Real.exp (t * x)
          = (Real.exp (-B * x) * Real.exp (t * x)) * f x := by ring
      _ = Real.exp (-(B - t) * x) * f x := by
        rw [← Real.exp_add]
        congr 2
        ring

  have hmgf_g (t : ℝ) (ht : t < 1) :
      mgf id μg t =
        ∫ x in Ioi (0 : ℝ), Real.exp (-(B - t) * x) * g x := by
    have hθ : b < B - t := by
      dsimp [B]
      linarith
    rw [mgf]
    dsimp [μg]
    rw [integral_withDensity_eq_integral_toReal_smul₀ hgdens (by simp)]
    apply integral_congr_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    have hgx : 0 ≤ g x := hgnonneg x hx
    rw [ENNReal.toReal_ofReal (mul_nonneg (Real.exp_pos _).le hgx)]
    simp only [id_eq, smul_eq_mul]
    calc
      (Real.exp (-B * x) * g x) * Real.exp (t * x)
          = (Real.exp (-B * x) * Real.exp (t * x)) * g x := by ring
      _ = Real.exp (-(B - t) * x) * g x := by
        rw [← Real.exp_add]
        congr 2
        ring

  have hreal : ∀ t : ℝ, t < 1 →
      complexMGF id μf (t : ℂ) = complexMGF id μg (t : ℂ) := by
    intro t ht
    rw [complexMGF_ofReal, complexMGF_ofReal, hmgf_f t ht, hmgf_g t ht]
    exact congrArg (fun r : ℝ => (r : ℂ))
      (hlap (B - t) (by dsimp [B]; linarith)).2.2

  have hmeasure : μf = μg :=
    finiteMeasures_eq_of_complexMGF_eq_on_real_Iio
      μf μg 1 zero_lt_one hf_an hg_an hreal
  exact continuousOn_Ioi_eq_of_exponential_withDensity_eq
    f g B hfcont hgcont hfnonneg hgnonneg hfdens hgdens hmeasure
end AvramDividend.Classical

/-! ### Kyprianou.Ch08.StageB.source_scale_discount_series_real_positive_x -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_discount_series_real_positive_x (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (x q : ℝ) (hx : 0 < x) (hq : 0 ≤ q) :
    W q x = ∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x := by
  have hreg := source_real_series_continuous_nonnegative ψ W hW q hq
  obtain ⟨b,hlap⟩ := source_real_series_laplace_premises ψ W hW q hq
  obtain ⟨hposq,_,hcontq⟩ := source_family_positive_monotone ψ W hW q hq
  have hcontq' : ContinuousOn (W q) (Set.Ioi (0 : ℝ)) :=
    hcontq.mono (by intro y hy; change 0 < y at hy; exact hy.le)
  apply AvramDividend.Classical.continuousOn_Ioi_eq_of_laplace_eq
    (W q) (fun y : ℝ => ∑' n : ℕ,
      q ^ n * scaleConvolutionPower (W 0) n y) b
    hcontq' hreg.1 (fun y _ => hposq y) hreg.2
  · intro θ hθ
    obtain ⟨hz,hrq,hSint,hSlap⟩ := hlap θ hθ
    have hqtransform := ((hW q hq).2.2.2.2.2 θ hz hrq)
    refine ⟨hqtransform.1, ?_, ?_⟩
    · simpa only [neg_mul] using hSint
    · apply hqtransform.2.trans
      simpa only [neg_mul] using hSlap.symm
  · exact hx
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_discount_series_positive_x -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_discount_series_positive_x (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (x q : ℝ) (hx : 0 < x) (hq : 0 ≤ q) :
    ((W q x : ℝ) : ℂ) =
      ∑' n : ℕ, (q : ℂ) ^ n *
        ((scaleConvolutionPower (W 0) n x : ℝ) : ℂ) := by
  have hreal := source_scale_discount_series_real_positive_x ψ W hW x q hx hq
  have hint := source_scale_all_power_local_integrability ψ W hW
  have hs := source_scale_discount_series_summable ψ W hW hint x q hx.le hq
  rw [hreal]
  calc
    (((∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n x) : ℝ) : ℂ) =
       ∑' n : ℕ, (((q ^ n * scaleConvolutionPower (W 0) n x) : ℝ) : ℂ) :=
      Complex.ofReal_tsum _
    _ = ∑' n : ℕ, (q : ℂ) ^ n *
        ((scaleConvolutionPower (W 0) n x : ℝ) : ℂ) := by
      congr 1
      ext n
      simp only [Complex.ofReal_mul, Complex.ofReal_pow]
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_resolvent_kernel_regular -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_resolvent_kernel_regular (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (q : ℝ) (hq : 0 ≤ q) :
    ContinuousOn (fun x : ℝ => W 0 x + q *
      (∫ s in Set.Ioc (0 : ℝ) x, W 0 s * W q (x - s) ∂volume))
      (Set.Ioi (0 : ℝ)) ∧
    (∀ x : ℝ, 0 < x → 0 ≤ (fun y : ℝ => W 0 y + q *
      (∫ s in Set.Ioc (0 : ℝ) y, W 0 s * W q (y - s) ∂volume)) x) := by
  have hcont0 := (source_family_positive_monotone ψ W hW 0
    (le_refl (0 : ℝ))).2.2
  have hpos0 := (source_family_positive_monotone ψ W hW 0
    (le_refl (0 : ℝ))).1
  have hposq := (source_family_positive_monotone ψ W hW q hq).1
  let β : ℝ := max 0 (Phi ψ q) + 1
  have hβ : 0 ≤ β := by
    dsimp [β]
    linarith [le_max_left (0 : ℝ) (Phi ψ q)]
  have hroot : Phi ψ q < β := by
    dsimp [β]
    linarith [le_max_right (0 : ℝ) (Phi ψ q)]
  have hi := ((hW q hq).2.2.2.2.2 β hβ hroot).1
  have hc := AvramDividend.Classical.positive_causal_convolution_continuous_of_weighted_integrable
    (W 0) (W q) β hcont0 (by simpa only [neg_mul] using hi)
  have hcont0' : ContinuousOn (W 0) (Set.Ioi (0 : ℝ)) :=
    hcont0.mono (by intro t ht; change 0 < t at ht; exact ht.le)
  constructor
  · exact hcont0'.add (continuousOn_const.mul hc)
  · intro x _
    have hknonneg : 0 ≤
        (∫ s in Set.Ioc (0 : ℝ) x, W 0 s * W q (x - s) ∂volume) := by
      apply integral_nonneg_of_ae
      filter_upwards [] with s
      exact mul_nonneg (hpos0 s) (hposq (x - s))
    exact add_nonneg (hpos0 x) (mul_nonneg hq hknonneg)
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_resolvent_weighted_integrable -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_resolvent_weighted_integrable (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (q θ : ℝ)
    (hq : 0 ≤ q) (hθ : 0 ≤ θ)
    (hroot0 : Phi ψ 0 < θ) (hrootq : Phi ψ q < θ) :
    IntegrableOn (fun x : ℝ => Real.exp (-θ * x) *
      (W 0 x + q * (∫ s in Set.Ioc (0 : ℝ) x,
        W 0 s * W q (x - s) ∂volume)))
      (Set.Ioi (0 : ℝ)) volume := by
  have h0 := ((hW 0 (le_refl (0 : ℝ))).2.2.2.2.2 θ hθ hroot0).1
  have hqint := ((hW q hq).2.2.2.2.2 θ hθ hrootq).1
  have hc := AvramDividend.Classical.positive_causal_convolution_laplace_integrable
    (W 0) (W q) θ (by simpa only [neg_mul] using h0)
      (by simpa only [neg_mul] using hqint)
  have hc' : IntegrableOn (fun x : ℝ =>
      Real.exp (-θ * x) * (∫ s in Set.Ioc (0 : ℝ) x,
        W 0 s * W q (x - s) ∂volume)) (Set.Ioi (0 : ℝ)) volume := by
    simpa only [neg_mul] using hc
  have heq : (fun x : ℝ => Real.exp (-θ * x) *
      (W 0 x + q * (∫ s in Set.Ioc (0 : ℝ) x,
        W 0 s * W q (x - s) ∂volume))) =
      (fun x : ℝ => Real.exp (-θ * x) * W 0 x +
        q * (Real.exp (-θ * x) * (∫ s in Set.Ioc (0 : ℝ) x,
          W 0 s * W q (x - s) ∂volume))) := by
    funext x
    ring
  rw [heq]
  exact h0.add (hc'.const_mul q)
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_resolvent_laplace_scalar -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_resolvent_laplace_scalar (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q β : ℝ) (hq : 0 ≤ q) (hβ : 0 ≤ β)
    (hroot0 : Phi ψ 0 < β) (hrootq : Phi ψ q < β) :
    (∫ x in Set.Ioi (0 : ℝ), Real.exp (-(β * x)) * W 0 x ∂volume) +
      q * (∫ x in Set.Ioi (0 : ℝ),
        Real.exp (-(β * x)) *
          (∫ s in Set.Ioc (0 : ℝ) x, W 0 s * W q (x - s) ∂volume) ∂volume) =
      (ψ β - q)⁻¹ := by
  have h0 := ((hW 0 (le_refl (0 : ℝ))).2.2.2.2.2 β hβ hroot0)
  have hqscale := ((hW q hq).2.2.2.2.2 β hβ hrootq)
  have hprod := AvramDividend.Classical.positive_causal_convolution_laplace_product
    (W 0) (W q) β
    (by simpa only [neg_mul] using h0.1)
    (by simpa only [neg_mul] using hqscale.1)
  have hp : 0 < ψ β :=
    source_scale_laplace_gap_pos ψ W hW 0 β (le_refl (0 : ℝ)) hβ hroot0
  have hd : 0 < ψ β - q :=
    sub_pos.mpr (source_scale_laplace_gap_pos ψ W hW q β hq hβ hrootq)
  have h0mass : (∫ t in Set.Ioi (0 : ℝ),
      Real.exp (-(β * t)) * W 0 t ∂volume) = (ψ β)⁻¹ := by
    simpa only [neg_mul, sub_zero] using h0.2
  have hqmass : (∫ t in Set.Ioi (0 : ℝ),
      Real.exp (-(β * t)) * W q t ∂volume) = (ψ β - q)⁻¹ := by
    simpa only [neg_mul] using hqscale.2
  rw [hprod, h0mass, hqmass]
  have hpn : ψ β ≠ 0 := ne_of_gt hp
  have hdn : ψ β - q ≠ 0 := ne_of_gt hd
  field_simp [hpn, hdn]
  ring
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_resolvent_weighted_integral_eq -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_resolvent_weighted_integral_eq (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (q θ : ℝ)
    (hq : 0 ≤ q) (hθ : 0 ≤ θ)
    (hroot0 : Phi ψ 0 < θ) (hrootq : Phi ψ q < θ) :
    (∫ x in Set.Ioi (0 : ℝ), Real.exp (-θ * x) * W q x ∂volume) =
    (∫ x in Set.Ioi (0 : ℝ), Real.exp (-θ * x) *
      (W 0 x + q * (∫ s in Set.Ioc (0 : ℝ) x,
        W 0 s * W q (x - s) ∂volume)) ∂volume) := by
  have h0 := ((hW 0 (le_refl (0 : ℝ))).2.2.2.2.2 θ hθ hroot0)
  have hqscale := ((hW q hq).2.2.2.2.2 θ hθ hrootq)
  have hc := AvramDividend.Classical.positive_causal_convolution_laplace_integrable
    (W 0) (W q) θ
    (by simpa only [neg_mul] using h0.1)
    (by simpa only [neg_mul] using hqscale.1)
  have hc' : IntegrableOn (fun x : ℝ => Real.exp (-θ * x) *
      (∫ s in Set.Ioc (0 : ℝ) x, W 0 s * W q (x - s) ∂volume))
      (Set.Ioi (0 : ℝ)) volume := by
    simpa only [neg_mul] using hc
  have hdist :
      (∫ x in Set.Ioi (0 : ℝ), Real.exp (-θ * x) *
        (W 0 x + q * (∫ s in Set.Ioc (0 : ℝ) x,
          W 0 s * W q (x - s) ∂volume)) ∂volume) =
      (∫ x in Set.Ioi (0 : ℝ), Real.exp (-θ * x) * W 0 x ∂volume) +
      q * (∫ x in Set.Ioi (0 : ℝ), Real.exp (-θ * x) *
        (∫ s in Set.Ioc (0 : ℝ) x,
          W 0 s * W q (x - s) ∂volume) ∂volume) := by
    have heq : (fun x : ℝ => Real.exp (-θ * x) * (W 0 x +
        q * (∫ s in Set.Ioc (0 : ℝ) x, W 0 s * W q (x - s) ∂volume))) =
      (fun x : ℝ => Real.exp (-θ * x) * W 0 x +
        q * (Real.exp (-θ * x) * (∫ s in Set.Ioc (0 : ℝ) x,
          W 0 s * W q (x - s) ∂volume))) := by
      funext x
      ring
    rw [heq, integral_add h0.1 (hc'.const_mul q), integral_const_mul]
  rw [hdist]
  have hscalar :
      (ψ θ - q)⁻¹ =
      (∫ x in Set.Ioi (0 : ℝ), Real.exp (-θ * x) * W 0 x ∂volume) +
        q * (∫ x in Set.Ioi (0 : ℝ), Real.exp (-θ * x) *
          (∫ s in Set.Ioc (0 : ℝ) x, W 0 s * W q (x - s) ∂volume) ∂volume) := by
    simpa only [neg_mul] using
      (source_scale_resolvent_laplace_scalar ψ W hW q θ hq hθ hroot0 hrootq).symm
  exact hqscale.2.trans hscalar
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_resolvent_laplace_uniqueness_premises -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_resolvent_laplace_uniqueness_premises (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (q : ℝ) (hq : 0 ≤ q) :
    ∃ b : ℝ, ∀ θ : ℝ, b < θ →
      IntegrableOn (fun x : ℝ => Real.exp (-θ * x) * W q x)
        (Set.Ioi (0 : ℝ)) volume ∧
      IntegrableOn (fun x : ℝ => Real.exp (-θ * x) * (W 0 x +
        q * (∫ s in Set.Ioc (0 : ℝ) x, W 0 s * W q (x - s) ∂volume)))
        (Set.Ioi (0 : ℝ)) volume ∧
      (∫ x in Set.Ioi (0 : ℝ), Real.exp (-θ * x) * W q x ∂volume) =
      (∫ x in Set.Ioi (0 : ℝ), Real.exp (-θ * x) *
        (W 0 x + q * (∫ s in Set.Ioc (0 : ℝ) x,
          W 0 s * W q (x - s) ∂volume)) ∂volume) := by
  refine ⟨max 0 (max (Phi ψ 0) (Phi ψ q)) + 1, ?_⟩
  intro θ hθ
  have hz : 0 ≤ θ := by
    linarith [le_max_left (0 : ℝ) (max (Phi ψ 0) (Phi ψ q))]
  have h0 : Phi ψ 0 < θ := by
    linarith [le_max_left (Phi ψ 0) (Phi ψ q),
      le_max_right (0 : ℝ) (max (Phi ψ 0) (Phi ψ q))]
  have hqroot : Phi ψ q < θ := by
    linarith [le_max_right (Phi ψ 0) (Phi ψ q),
      le_max_right (0 : ℝ) (max (Phi ψ 0) (Phi ψ q))]
  exact ⟨((hW q hq).2.2.2.2.2 θ hz hqroot).1,
    source_resolvent_weighted_integrable ψ W hW q θ hq hz h0 hqroot,
    source_resolvent_weighted_integral_eq ψ W hW q θ hq hz h0 hqroot⟩
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_resolvent_positive_x -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_resolvent_positive_x (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q x : ℝ) (hq : 0 ≤ q) (hx : 0 < x) :
    W q x = W 0 x +
      q * (∫ s in Set.Ioc (0 : ℝ) x,
        W 0 s * W q (x - s) ∂volume) := by
  obtain ⟨hcontg,hposg⟩ := source_scale_resolvent_kernel_regular ψ W hW q hq
  obtain ⟨b,hlap⟩ := source_scale_resolvent_laplace_uniqueness_premises ψ W hW q hq
  obtain ⟨hposq,_,hcontq⟩ := source_family_positive_monotone ψ W hW q hq
  exact AvramDividend.Classical.continuousOn_Ioi_eq_of_laplace_eq
    (W q) (fun y => W 0 y + q * (∫ s in Set.Ioc (0 : ℝ) y,
      W 0 s * W q (y - s) ∂volume)) b
    (hcontq.mono (by intro y hy; change 0 < y at hy; exact hy.le)) hcontg
    (fun y _ => hposq y) hposg hlap x hx
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_q0_causal_integrable -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_q0_causal_integrable (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q x : ℝ) (hq : 0 ≤ q) (hx : 0 ≤ x) :
    IntegrableOn (fun s : ℝ => W 0 s * W q (x - s))
      (Set.Ioc (0 : ℝ) x) volume := by
  let β : ℝ := max 0 (Phi ψ q) + 1
  have hβ : 0 ≤ β := by
    dsimp [β]
    linarith [le_max_left (0 : ℝ) (Phi ψ q)]
  have hroot : Phi ψ q < β := by
    dsimp [β]
    linarith [le_max_right (0 : ℝ) (Phi ψ q)]
  have hint := ((hW q hq).2.2.2.2.2 β hβ hroot).1
  have hcont := (source_family_positive_monotone ψ W hW 0
    (le_refl (0 : ℝ))).2.2
  exact causal_reflected_product_integrable_of_weighted
    (W q) (W 0) β x hx (by simpa only [neg_mul] using hint) hcont
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_origin_product_limit -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB Filter
open scoped Topology

theorem source_scale_origin_product_limit (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q : ℝ) (hq : 0 ≤ q) :
    Tendsto (fun x : ℝ => x * W 0 x * W q x)
      (nhdsWithin (0 : ℝ) (Set.Ioi (0 : ℝ))) (nhds (0 : ℝ)) := by
  have hW0cont := (source_family_positive_monotone ψ W hW 0
    (le_refl (0 : ℝ))).2.2
  have hWqcont := (source_family_positive_monotone ψ W hW q hq).2.2
  have hs : Set.Ioi (0 : ℝ) ⊆ Set.Ici (0 : ℝ) := by
    intro x hx
    change 0 < x at hx
    exact hx.le
  have hto0 : Tendsto (W 0) (𝓝[>] (0 : ℝ)) (𝓝 (W 0 0)) :=
    (hW0cont 0 (by simp)).mono_left (nhdsWithin_mono _ hs)
  have htoq : Tendsto (W q) (𝓝[>] (0 : ℝ)) (𝓝 (W q 0)) :=
    (hWqcont 0 (by simp)).mono_left (nhdsWithin_mono _ hs)
  have ht : Tendsto (fun x : ℝ => x) (𝓝[>] (0 : ℝ)) (𝓝 (0 : ℝ)) :=
    tendsto_id.mono_left nhdsWithin_le_nhds
  simpa only [zero_mul] using (ht.mul hto0).mul htoq
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_convolution_small_interval_bound -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08.StageB
open scoped ENNReal

theorem source_scale_convolution_small_interval_bound (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q x : ℝ) (hq : 0 ≤ q) (hx : 0 ≤ x)
    (hi : IntegrableOn (fun s : ℝ => W 0 s * W q (x - s))
      (Set.Ioc (0 : ℝ) x) volume) :
    0 ≤ (∫ s in Set.Ioc (0 : ℝ) x, W 0 s * W q (x - s) ∂volume) ∧
    (∫ s in Set.Ioc (0 : ℝ) x, W 0 s * W q (x - s) ∂volume) ≤
      x * W 0 x * W q x := by
  rcases source_family_positive_monotone ψ W hW 0 (le_refl (0 : ℝ)) with
    ⟨hpos0,hmono0,_⟩
  rcases source_family_positive_monotone ψ W hW q hq with
    ⟨hposq,hmonoq,_⟩
  have hlo : 0 ≤ (∫ s in Set.Ioc (0 : ℝ) x,
      W 0 s * W q (x - s) ∂volume) := by
    apply integral_nonneg_of_ae
    filter_upwards [] with s
    exact mul_nonneg (hpos0 s) (hposq (x - s))
  have hfinite : volume (Set.Ioc (0 : ℝ) x) ≠ ∞ := by
    simp [Real.volume_Ioc]
  have hic : IntegrableOn (fun _ : ℝ => W 0 x * W q x)
      (Set.Ioc (0 : ℝ) x) volume :=
    integrableOn_const (μ := volume) (s := Set.Ioc (0 : ℝ) x) (hs := hfinite)
  have hle : (∫ s in Set.Ioc (0 : ℝ) x, W 0 s * W q (x - s) ∂volume) ≤
      (∫ _ : ℝ in Set.Ioc (0 : ℝ) x, W 0 x * W q x ∂volume) := by
    apply integral_mono_ae hi hic
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with s hs
    have hxs : 0 ≤ x - s := sub_nonneg.mpr hs.2
    have h1 := hmono0 hs.1.le hx hs.2
    have h2 := hmonoq hxs hx (sub_le_self x hs.1.le)
    exact mul_le_mul h1 h2 (hposq (x - s)) (hpos0 x)
  constructor
  · exact hlo
  · calc
      (∫ s in Set.Ioc (0 : ℝ) x, W 0 s * W q (x - s) ∂volume) ≤
        (∫ _ : ℝ in Set.Ioc (0 : ℝ) x, W 0 x * W q x ∂volume) := hle
      _ = x * W 0 x * W q x := by
        simp [setIntegral_const, Real.volume_Ioc, hx]
        ring
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_convolution_vanishes_origin -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB Filter
open scoped Topology

theorem source_scale_convolution_vanishes_origin (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q : ℝ) (hq : 0 ≤ q) :
    Tendsto (fun x : ℝ => ∫ s in Set.Ioc (0 : ℝ) x,
        W 0 s * W q (x - s) ∂volume)
      (nhdsWithin (0 : ℝ) (Set.Ioi (0 : ℝ))) (nhds (0 : ℝ)) := by
  have hb := source_scale_convolution_small_interval_bound ψ W hW
  have hi := source_scale_q0_causal_integrable ψ W hW q
  have hlim := source_scale_origin_product_limit ψ W hW q hq
  have hlo : (fun _ : ℝ => (0 : ℝ)) ≤ᶠ[𝓝[>] (0 : ℝ)]
      (fun x : ℝ => ∫ s in Set.Ioc (0 : ℝ) x,
        W 0 s * W q (x - s) ∂volume) := by
    filter_upwards [self_mem_nhdsWithin] with x hx
    change 0 < x at hx
    exact (hb q x hq hx.le (hi x hq hx.le)).1
  have hhi : (fun x : ℝ => ∫ s in Set.Ioc (0 : ℝ) x,
      W 0 s * W q (x - s) ∂volume) ≤ᶠ[𝓝[>] (0 : ℝ)]
      (fun x : ℝ => x * W 0 x * W q x) := by
    filter_upwards [self_mem_nhdsWithin] with x hx
    change 0 < x at hx
    exact (hb q x hq hx.le (hi x hq hx.le)).2
  exact tendsto_of_tendsto_of_tendsto_of_le_of_le'
    tendsto_const_nhds hlim hlo hhi
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.right_origin_add_vanishing_eq -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open Filter
open scoped Topology

theorem right_origin_add_vanishing_eq (f g K : ℝ → ℝ) (q : ℝ)
    (hf : Tendsto f (nhdsWithin (0 : ℝ) (Set.Ioi (0 : ℝ))) (nhds (f 0)))
    (hg : Tendsto g (nhdsWithin (0 : ℝ) (Set.Ioi (0 : ℝ))) (nhds (g 0)))
    (hK : Tendsto K (nhdsWithin (0 : ℝ) (Set.Ioi (0 : ℝ))) (nhds (0 : ℝ)))
    (heq : ∀ x : ℝ, 0 < x → f x = g x + q * K x) :
    f 0 = g 0 := by
  have hconst : Tendsto (fun _ : ℝ => q) (𝓝[>] (0 : ℝ)) (𝓝 q) :=
    tendsto_const_nhds
  have hsum : Tendsto (fun x => g x + q * K x) (𝓝[>] (0 : ℝ))
      (𝓝 (g 0)) := by
    simpa only [mul_zero, add_zero] using hg.add (hconst.mul hK)
  have hevent : f =ᶠ[𝓝[>] (0 : ℝ)] (fun x => g x + q * K x) := by
    filter_upwards [self_mem_nhdsWithin] with x hx
    change 0 < x at hx
    exact heq x hx
  exact tendsto_nhds_unique hf (hsum.congr' hevent.symm)
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_origin_discount_invariant -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB Filter
open scoped Topology

theorem source_scale_origin_discount_invariant (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (q : ℝ) (hq : 0 ≤ q) :
    W q 0 = W 0 0 := by
  have hs : Set.Ioi (0 : ℝ) ⊆ Set.Ici (0 : ℝ) := by
    intro x hx
    change 0 < x at hx
    exact hx.le
  have hcq := (source_family_positive_monotone ψ W hW q hq).2.2
  have hc0 := (source_family_positive_monotone ψ W hW 0
    (le_refl (0 : ℝ))).2.2
  have htq := (hcq 0 (by simp)).mono_left (nhdsWithin_mono _ hs)
  have ht0 := (hc0 0 (by simp)).mono_left (nhdsWithin_mono _ hs)
  exact right_origin_add_vanishing_eq (W q) (W 0)
    (fun x : ℝ => ∫ s in Set.Ioc (0 : ℝ) x,
       W 0 s * W q (x - s) ∂volume) q htq ht0
    (source_scale_convolution_vanishes_origin ψ W hW q hq)
    (fun x hx => source_scale_resolvent_positive_x ψ W hW q x hq hx)
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_discount_series_at_zero -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08.StageB

theorem source_scale_discount_series_at_zero (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (q : ℝ) (hq : 0 ≤ q) :
    ((W q 0 : ℝ) : ℂ) =
      ∑' n : ℕ, (q : ℂ) ^ n *
        ((scaleConvolutionPower (W 0) n 0 : ℝ) : ℂ) := by
  have hzero : ∀ n : ℕ,
      scaleConvolutionPower (W 0) (n + 1) 0 = 0 := by
    intro n
    change (∫ s in Set.Ioc (0 : ℝ) 0, W 0 s *
      scaleConvolutionPower (W 0) n (0 - s) ∂volume) = 0
    simp
  have hsingle :
      (∑' n : ℕ, (q : ℂ) ^ n *
          ((scaleConvolutionPower (W 0) n 0 : ℝ) : ℂ)) =
      (q : ℂ) ^ 0 * ((scaleConvolutionPower (W 0) 0 0 : ℝ) : ℂ) := by
    apply tsum_eq_single 0
    intro n hn
    cases n with
    | zero => exact (hn rfl).elim
    | succ n => simp [hzero n]
  rw [hsingle]
  simpa only [pow_zero, one_mul, scaleConvolutionPower] using
    congrArg (fun t : ℝ => (t : ℂ))
      (source_scale_origin_discount_invariant ψ W hW q hq)
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_discount_convolution_series -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open Kyprianou.Ch08.StageB

theorem source_scale_discount_convolution_series :
    ∀ (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ),
      HasSourceScaleFamily ψ W →
      ∀ (x q : ℝ), 0 ≤ x → 0 ≤ q →
        ((W q x : ℝ) : ℂ) =
          ∑' n : ℕ, (q : ℂ) ^ n *
            ((scaleConvolutionPower (W 0) n x : ℝ) : ℂ) := by
  intro ψ W hW x q hx hq
  by_cases hzero : x = 0
  · simpa only [hzero] using source_scale_discount_series_at_zero ψ W hW q hq
  · have hxpos : 0 < x := lt_of_le_of_ne hx (Ne.symm hzero)
    exact source_scale_discount_series_positive_x ψ W hW x q hxpos hq
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_zscale_integrated_coefficient_bound -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08.StageB Set

theorem source_zscale_integrated_coefficient_bound (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (hconv : ∀ (n : ℕ) (x : ℝ), 0 ≤ x →
      IntegrableOn (fun s : ℝ =>
        W 0 s * scaleConvolutionPower (W 0) n (x - s))
        (Set.Ioc (0 : ℝ) x) volume)
    (x : ℝ) (hx : 0 < x) :
    ∀ n : ℕ,
      ‖(((∫ y in (0 : ℝ)..x,
        scaleConvolutionPower (W 0) n y) : ℝ) : ℂ)‖ ≤
      (x * W 0 x) * (x * W 0 x) ^ n / (Nat.factorial n : ℝ) := by
  intro n
  rcases source_family_positive_monotone ψ W hW 0 (le_refl (0 : ℝ)) with
    ⟨hpos, hmono, _⟩
  have hfac : 0 < (Nat.factorial n : ℝ) := by
    exact_mod_cast Nat.factorial_pos n
  let C : ℝ := (x ^ n / (Nat.factorial n : ℝ)) * W 0 x ^ (n + 1)
  have hb : ∀ y ∈ Set.uIoc (0 : ℝ) x,
      ‖scaleConvolutionPower (W 0) n y‖ ≤ C := by
    intro y hy
    have hy' : y ∈ Set.Ioc (0 : ℝ) x := by
      simpa [Set.uIoc_of_le hx.le] using hy
    have hfy : 0 ≤ scaleConvolutionPower (W 0) n y :=
      scaleConvolutionPower_nonnegative (W 0)
        (fun t _ => hpos t) n y hy'.1.le
    have hmajor := scaleConvolutionPower_factorial_majorant
      (W 0) (fun t _ => hpos t) hmono hconv n y hy'.1.le
    have hpow : y ^ n ≤ x ^ n := by
      gcongr
      · exact hy'.1.le
      · exact hy'.2
    have hWpow : W 0 y ^ (n + 1) ≤ W 0 x ^ (n + 1) := by
      gcongr
      · exact hpos y
      · exact hmono hy'.1.le hx.le hy'.2
    have hcoef : y ^ n / (Nat.factorial n : ℝ) ≤
        x ^ n / (Nat.factorial n : ℝ) :=
      div_le_div_of_nonneg_right hpow hfac.le
    have hcoefnonneg : 0 ≤ x ^ n / (Nat.factorial n : ℝ) := by positivity
    have hpow_nonneg : 0 ≤ W 0 y ^ (n + 1) :=
      pow_nonneg (hpos y) _
    calc
      ‖scaleConvolutionPower (W 0) n y‖ =
          scaleConvolutionPower (W 0) n y := by
        simp only [Real.norm_eq_abs, abs_of_nonneg hfy]
      _ ≤ (y ^ n / (Nat.factorial n : ℝ)) * W 0 y ^ (n + 1) := hmajor
      _ ≤ (x ^ n / (Nat.factorial n : ℝ)) * W 0 y ^ (n + 1) :=
        mul_le_mul_of_nonneg_right hcoef hpow_nonneg
      _ ≤ C := mul_le_mul_of_nonneg_left hWpow hcoefnonneg
  have hbound : ‖(∫ y in (0 : ℝ)..x,
      scaleConvolutionPower (W 0) n y)‖ ≤ C * |x - 0| :=
    intervalIntegral.norm_integral_le_of_norm_le_const hb
  calc
    ‖(((∫ y in (0 : ℝ)..x,
      scaleConvolutionPower (W 0) n y) : ℝ) : ℂ)‖ =
        ‖(∫ y in (0 : ℝ)..x, scaleConvolutionPower (W 0) n y)‖ :=
      Complex.norm_real _
    _ ≤ C * |x - 0| := hbound
    _ = (x * W 0 x) * (x * W 0 x) ^ n /
          (Nat.factorial n : ℝ) := by
      dsimp [C]
      simp only [sub_zero, abs_of_pos hx]
      rw [mul_pow]
      ring
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_zscale_convolution_series_entire -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_zscale_convolution_series_entire
    (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (x : ℝ) (hx : 0 < x) :
    Differentiable ℂ
      (fun z : ℂ => 1 + z * ∑' n : ℕ,
        z ^ n * (((∫ y in (0 : ℝ)..x,
          scaleConvolutionPower (W 0) n y) : ℝ) : ℂ)) := by
  let a : ℕ → ℝ := fun n =>
    ∫ y in (0 : ℝ)..x, scaleConvolutionPower (W 0) n y
  let R : ℝ := x * W 0 x
  have hpos := (source_family_positive_monotone ψ W hW 0
    (le_refl (0 : ℝ))).1 x
  have hR : 0 ≤ R := mul_nonneg hx.le hpos
  have hint := source_scale_all_power_local_integrability ψ W hW
  have hcoef : ∀ n : ℕ, ‖((a n : ℝ) : ℂ)‖ ≤
      R * R ^ n / (Nat.factorial n : ℝ) :=
    source_zscale_integrated_coefficient_bound ψ W hW hint x hx
  have hseries : Differentiable ℂ
      (fun z : ℂ => ∑' n : ℕ, z ^ n * ((a n : ℝ) : ℂ)) :=
    factorial_bounded_complex_series_entire a R R hR hR hcoef
  change Differentiable ℂ (fun z : ℂ => 1 + z *
    (∑' n : ℕ, z ^ n * ((a n : ℝ) : ℂ)))
  exact (differentiable_const (1 : ℂ)).add
    (differentiable_id.mul hseries)
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_discount_interval_mass_summable -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_discount_interval_mass_summable (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (x q : ℝ) (hx : 0 < x) (hq : 0 ≤ q) :
    Summable (fun n : ℕ =>
      ∫ y in (0 : ℝ)..x,
        q ^ n * scaleConvolutionPower (W 0) n y) := by
  have hu : Summable (fun n : ℕ =>
      (W 0 x * x) * ((q * x * W 0 x) ^ n /
        (Nat.factorial n : ℝ))) :=
    (Real.summable_pow_div_factorial (q * x * W 0 x)).mul_left _
  have hdom : ∀ n : ℕ,
      ‖∫ y in (0 : ℝ)..x,
        q ^ n * scaleConvolutionPower (W 0) n y‖ ≤
      (W 0 x * x) * ((q * x * W 0 x) ^ n /
        (Nat.factorial n : ℝ)) := by
    intro n
    have hbd : ∀ y ∈ Set.uIoc (0 : ℝ) x,
        ‖q ^ n * scaleConvolutionPower (W 0) n y‖ ≤
        W 0 x * (q * x * W 0 x) ^ n / (Nat.factorial n : ℝ) := by
      intro y hy
      have hy' : y ∈ Set.Ioc (0 : ℝ) x := by
        simpa only [Set.uIoc_of_le hx.le] using hy
      exact source_scale_compact_factorial_majorant
        ψ W hW q x hq hx.le n y ⟨hy'.1.le, hy'.2⟩
    have hnorm := intervalIntegral.norm_integral_le_of_norm_le_const hbd
    calc
      ‖∫ y in (0 : ℝ)..x, q ^ n * scaleConvolutionPower (W 0) n y‖ ≤
          (W 0 x * (q * x * W 0 x) ^ n /
            (Nat.factorial n : ℝ)) * |x - 0| := hnorm
      _ = (W 0 x * x) * ((q * x * W 0 x) ^ n /
            (Nat.factorial n : ℝ)) := by
          rw [sub_zero, abs_of_nonneg hx.le]
          ring
  have hdom' : ∀ n : ℕ,
      ‖∫ y in (0 : ℝ)..x,
        q ^ n * scaleConvolutionPower (W 0) n y‖ ≤
      (W 0 x * x) * ((q * x * W 0 x) ^ n /
        (Nat.factorial n : ℝ)) := hdom
  exact Summable.of_norm_bounded hu hdom'
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_power_interval_integrable -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_power_interval_integrable (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (x : ℝ) (hx : 0 ≤ x) :
    ∀ n : ℕ, IntervalIntegrable (scaleConvolutionPower (W 0) n)
      volume 0 x := by
  intro n
  let β : ℝ := max 0 (Phi ψ 0) + 1
  have hβ : 0 ≤ β := by
    dsimp [β]
    linarith [le_max_left (0 : ℝ) (Phi ψ 0)]
  have hroot : Phi ψ 0 < β := by
    dsimp [β]
    linarith [le_max_right (0 : ℝ) (Phi ψ 0)]
  have hw := (source_scale_power_weighted_integrable ψ W hW β hβ hroot) n
  have hsub : Set.Ioc (0 : ℝ) x ⊆ Set.Ioi (0 : ℝ) := by
    intro s hs
    exact hs.1
  have hwlocal : IntervalIntegrable
      (fun t : ℝ => Real.exp (-β * t) * scaleConvolutionPower (W 0) n t)
      volume 0 x :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hx).2 (hw.mono_set hsub)
  have hc : ContinuousOn (fun t : ℝ => Real.exp (β * t))
      (Set.uIcc (0 : ℝ) x) := by fun_prop
  have hp := hwlocal.mul_continuousOn hc
  convert hp using 1
  ext t
  have he : Real.exp (-β * t) * Real.exp (β * t) = 1 := by
    rw [← Real.exp_add]
    simp
  calc
    scaleConvolutionPower (W 0) n t =
        (Real.exp (-β * t) * Real.exp (β * t)) *
          scaleConvolutionPower (W 0) n t := by rw [he]; ring
    _ = (Real.exp (-β * t) * scaleConvolutionPower (W 0) n t) *
          Real.exp (β * t) := by ring
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_real_scale_series_interval_integral_exchange -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_real_scale_series_interval_integral_exchange (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (x q : ℝ) (hx : 0 < x) (hq : 0 ≤ q) :
    Summable (fun n : ℕ => q ^ n *
      (∫ y in (0 : ℝ)..x, scaleConvolutionPower (W 0) n y)) ∧
    (∫ y in (0 : ℝ)..x,
      (∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n y)) =
    ∑' n : ℕ, q ^ n *
      (∫ y in (0 : ℝ)..x, scaleConvolutionPower (W 0) n y) := by
  let F : ℕ → ℝ → ℝ := fun n y =>
    q ^ n * scaleConvolutionPower (W 0) n y
  have hm := source_scale_discount_interval_mass_summable ψ W hW x q hx hq
  have hmrewrite :
      (fun n : ℕ => ∫ y in (0 : ℝ)..x,
        q ^ n * scaleConvolutionPower (W 0) n y) =
      (fun n : ℕ => q ^ n *
        (∫ y in (0 : ℝ)..x, scaleConvolutionPower (W 0) n y)) := by
    funext n
    rw [intervalIntegral.integral_const_mul]
  rw [hmrewrite] at hm
  have hFi : ∀ n : ℕ, Integrable (F n)
      (volume.restrict (Set.Ioc (0 : ℝ) x)) := by
    intro n
    have hh := (source_scale_power_interval_integrable ψ W hW x hx.le) n
    have hi := (intervalIntegrable_iff_integrableOn_Ioc_of_le hx.le).mp hh
    exact hi.const_mul _
  have hpos : ∀ n : ℕ, ∀ y : ℝ, 0 ≤ F n y := by
    intro n y
    exact mul_nonneg (pow_nonneg hq _)
      (source_scale_power_nonnegative_all_real ψ W hW n y)
  have heq : (fun n : ℕ => ∫ y in Set.Ioc (0 : ℝ) x, F n y ∂volume) =
      (fun n : ℕ => q ^ n *
        (∫ y in (0 : ℝ)..x, scaleConvolutionPower (W 0) n y)) := by
    funext n
    dsimp [F]
    rw [integral_const_mul, intervalIntegral.integral_of_le hx.le]
  have hmass : Summable
      (fun n : ℕ => ∫ y in Set.Ioc (0 : ℝ) x, F n y ∂volume) := by
    rw [heq]
    exact hm
  have hs := AvramDividend.Classical.nonnegative_renewal_integral_tsum_exchange
    (volume.restrict (Set.Ioc (0 : ℝ) x)) F hFi hpos hmass
  have hident :
      (∫ y in (0 : ℝ)..x, ∑' n : ℕ, F n y) =
      ∑' n : ℕ, q ^ n *
        (∫ y in (0 : ℝ)..x, scaleConvolutionPower (W 0) n y) := by
    calc
      (∫ y in (0 : ℝ)..x, ∑' n : ℕ, F n y) =
        ∫ y in Set.Ioc (0 : ℝ) x, ∑' n : ℕ, F n y ∂volume :=
          intervalIntegral.integral_of_le hx.le
      _ = ∑' n : ℕ, ∫ y in Set.Ioc (0 : ℝ) x, F n y ∂volume := hs
      _ = ∑' n : ℕ, q ^ n *
          (∫ y in (0 : ℝ)..x, scaleConvolutionPower (W 0) n y) := by
            rw [heq]
  exact ⟨hm, hident⟩
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_scale_interval_convolution_tsum -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false
open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_scale_interval_convolution_tsum (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W)
    (x : ℝ) (hx : 0 < x) (q : ℝ) (hq : 0 ≤ q) :
    Summable (fun n : ℕ => q ^ n *
      (∫ y in (0 : ℝ)..x, scaleConvolutionPower (W 0) n y)) ∧
    (∫ y in (0 : ℝ)..x, W q y) =
      ∑' n : ℕ, q ^ n *
        (∫ y in (0 : ℝ)..x, scaleConvolutionPower (W 0) n y) := by
  have hseries := source_real_scale_series_interval_integral_exchange
    ψ W hW x q hx hq
  have hreal : ∀ y : ℝ, 0 ≤ y →
      W q y = ∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n y := by
    intro y hy
    have hc := source_scale_discount_convolution_series ψ W hW y q hy hq
    have hcast :
        (((∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n y) : ℝ) : ℂ) =
          ∑' n : ℕ, (q : ℂ) ^ n *
            ((scaleConvolutionPower (W 0) n y : ℝ) : ℂ) := by
      simp only [Complex.ofReal_tsum, Complex.ofReal_mul, Complex.ofReal_pow]
    exact Complex.ofReal_injective (hc.trans hcast.symm)
  have hInt :
      (∫ y in (0 : ℝ)..x, W q y) =
      (∫ y in (0 : ℝ)..x,
        ∑' n : ℕ, q ^ n * scaleConvolutionPower (W 0) n y) := by
    apply intervalIntegral.integral_congr
    intro y hy
    have hy' : y ∈ Set.Icc (0 : ℝ) x := by
      simpa only [Set.uIcc_of_le hx.le] using hy
    exact hreal y hy'.1
  exact ⟨hseries.1, hInt.trans hseries.2⟩
end Kyprianou.Ch08.StageB

/-! ### Kyprianou.Ch08.StageB.source_zscale_convolution_series_agrees -/
namespace Kyprianou.Ch08.StageB
set_option autoImplicit false

open MeasureTheory Kyprianou.Ch08 Kyprianou.Ch08.StageB

theorem source_zscale_convolution_series_agrees
    (ψ : ℝ → ℝ) (W : ℝ → ℝ → ℝ)
    (hW : HasSourceScaleFamily ψ W) (x : ℝ) (hx : 0 < x)
    (q : ℝ) (hq : 0 ≤ q) :
    (fun z : ℂ => 1 + z * ∑' n : ℕ,
        z ^ n * (((∫ y in (0 : ℝ)..x,
          scaleConvolutionPower (W 0) n y) : ℝ) : ℂ))
        (q : ℂ) = (Zscale q (W q) x : ℂ) := by
  have h := source_scale_interval_convolution_tsum ψ W hW x hx q hq
  change (1 : ℂ) + (q : ℂ) *
      (∑' n : ℕ, (q : ℂ) ^ n *
        (((∫ y in (0 : ℝ)..x, scaleConvolutionPower (W 0) n y) : ℝ) : ℂ)) =
      ((1 + q * (∫ y in (0 : ℝ)..x, W q y) : ℝ) : ℂ)
  rw [h.2]
  simp only [Complex.ofReal_add, Complex.ofReal_mul,
    Complex.ofReal_tsum, Complex.ofReal_pow, Complex.ofReal_one]
end Kyprianou.Ch08.StageB

theorem solution : Kyprianou.Ch08.StageB.sourceCertificate_result8_5 := by
  intro ψ W hW x hx
  refine ⟨fun z : ℂ => 1 + z * ∑' n : ℕ, z ^ n *
    (((∫ y in (0 : ℝ)..x, Kyprianou.Ch08.StageB.scaleConvolutionPower (W 0) n y) : ℝ) : ℂ), ?_⟩
  exact ⟨Kyprianou.Ch08.StageB.source_zscale_convolution_series_entire ψ W hW x hx,
    fun q hq =>
      Kyprianou.Ch08.StageB.source_zscale_convolution_series_agrees ψ W hW x hx q hq⟩
