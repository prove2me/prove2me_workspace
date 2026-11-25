import Mathlib
import Definitions.Def_LL_Burst9MatrixR1_grid
import Definitions.Def_LL_Burst9MatrixR1_tableKernel

namespace LL_Burst9MatrixR1

noncomputable section

open Finset

def integralMatrix (i j : Fin 9) : ℝ :=
  ∫ t in grid ⟨j.val, by omega⟩..grid ⟨j.val + 1, by omega⟩,
    tableKernel i t

end

end LL_Burst9MatrixR1