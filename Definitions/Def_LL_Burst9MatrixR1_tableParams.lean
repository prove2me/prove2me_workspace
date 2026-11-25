import Mathlib
import Definitions.Def_LL_Burst9MatrixR1_Params

namespace LL_Burst9MatrixR1

noncomputable section

open Real Set MeasureTheory
open scoped Classical

def tableParams : Fin 4 → Params :=
  ![⟨2.2, 4.54, 3.53, 2.90, 2.44⟩, ⟨2.3, 4.50, 3.54, 2.88, 2.43⟩,
    ⟨2.4, 4.46, 3.57, 2.87, 2.40⟩, ⟨2.5, 4.12, 3.56, 2.91, 2.50⟩]

end

end LL_Burst9MatrixR1