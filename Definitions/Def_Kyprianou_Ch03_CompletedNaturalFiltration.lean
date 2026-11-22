import Mathlib
import Definitions.Def_PerfCorrMSQ_NaturalFiltration
open MeasureTheory
open scoped NNReal
set_option autoImplicit false

namespace Kyprianou.Ch03

/-- The P-completed natural filtration includes subsets of measurable P-null
sets. Completion of an arbitrary process filtration need not be right continuous. -/
def IsCompletedNaturalFiltration
    {Omega : Type} [m : MeasurableSpace Omega]
    (P : Measure Omega) (X : NNReal -> Omega -> Real)
    (F : Filtration NNReal m) : Prop :=
  forall t : NNReal,
    F t = PerfCorrMSQ.natFiltr X t ⊔
      MeasurableSpace.generateFrom
        {A : Set Omega |
          exists N : Set Omega,
            MeasurableSet N ∧ P N = 0 ∧ A ⊆ N}

end Kyprianou.Ch03
