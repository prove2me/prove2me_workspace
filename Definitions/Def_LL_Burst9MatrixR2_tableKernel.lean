import Mathlib
import Definitions.Def_LL_Burst9MatrixR2_Xi1
import Definitions.Def_LL_Burst9MatrixR2_Xi2
import Definitions.Def_LL_Burst9MatrixR2_tableParams
import Definitions.Def_LL_Burst9MatrixR2_grid
import Definitions.Def_LL_Burst9MatrixR2_tableSp

namespace LL_Burst9MatrixR2

noncomputable section

open Finset

def tableKernel (i : Fin 9) (t : ℝ) : ℝ :=
  if hi : i.val < 4 then Xi2 (tableParams ⟨i.val, hi⟩) t
  else Xi1 (grid ⟨i.val + 1, by omega⟩)
    (tableSp ⟨i.val - 4, by omega⟩) t

end

end LL_Burst9MatrixR2