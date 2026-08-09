import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStageHazardRatio_le_relative_diagonal
import Solutions.Sol_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStageHazardRatio_le_relative_diagonal

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStageHazardRatio_le_relative_diagonal | throwError "missing statement QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStageHazardRatio_le_relative_diagonal"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStageHazardRatio_le_relative_diagonal"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStageHazardRatio_le_relative_diagonal (defeq: {same})\nstatement: {a}\nsolution:  {b}"
