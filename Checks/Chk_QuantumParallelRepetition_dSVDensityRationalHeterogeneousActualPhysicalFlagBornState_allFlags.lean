import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags
import Solutions.Sol_QuantumParallelRepetition_dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags | throwError "missing statement QuantumParallelRepetition.dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.dSVDensityRationalHeterogeneousActualPhysicalFlagBornState_allFlags (defeq: {same})\nstatement: {a}\nsolution:  {b}"
