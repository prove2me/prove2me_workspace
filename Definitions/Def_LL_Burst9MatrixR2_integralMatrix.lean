import Mathlib
import Definitions.Def_LL_Burst9MatrixR2_grid
import Definitions.Def_LL_Burst9MatrixR2_tableKernel

namespace LL_Burst9MatrixR2

noncomputable section

open Finset

def integralMatrix (i j : Fin 9) : ℝ :=
  ∫ t in grid ⟨j.val, by omega⟩..grid ⟨j.val + 1, by omega⟩,
    tableKernel i t

end

end LL_Burst9MatrixR2