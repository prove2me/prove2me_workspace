import Mathlib
import Definitions.Def_LL_Burst9MatrixC1_Xi1
import Definitions.Def_LL_Burst9MatrixC1_Xi2
import Definitions.Def_LL_Burst9MatrixC1_tableParams
import Definitions.Def_LL_Burst9MatrixC1_grid
import Definitions.Def_LL_Burst9MatrixC1_tableSp

namespace LL_Burst9MatrixC1

noncomputable section

open Finset

def tableKernel (i : Fin 9) (t : ℝ) : ℝ :=
  if hi : i.val < 4 then Xi2 (tableParams ⟨i.val, hi⟩) t
  else Xi1 (grid ⟨i.val + 1, by omega⟩)
    (tableSp ⟨i.val - 4, by omega⟩) t

end

end LL_Burst9MatrixC1