import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalTerminalMass_le_pow
import Solutions.Sol_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalTerminalMass_le_pow

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalTerminalMass_le_pow | throwError "missing statement QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalTerminalMass_le_pow"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalTerminalMass_le_pow"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalTerminalMass_le_pow (defeq: {same})\nstatement: {a}\nsolution:  {b}"
