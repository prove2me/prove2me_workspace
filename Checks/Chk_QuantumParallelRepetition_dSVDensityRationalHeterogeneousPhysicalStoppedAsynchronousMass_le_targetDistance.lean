import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_le_targetDistance
import Solutions.Sol_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_le_targetDistance

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_le_targetDistance | throwError "missing statement QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_le_targetDistance"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_le_targetDistance"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalStoppedAsynchronousMass_le_targetDistance (defeq: {same})\nstatement: {a}\nsolution:  {b}"
