import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStageContinue_le_uniform
import Solutions.Sol_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStageContinue_le_uniform

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStageContinue_le_uniform | throwError "missing statement QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStageContinue_le_uniform"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStageContinue_le_uniform"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStageContinue_le_uniform (defeq: {same})\nstatement: {a}\nsolution:  {b}"
