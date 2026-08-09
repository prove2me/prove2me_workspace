import Theorems.Thm_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalDiagonalSurvival_budget
import Solutions.Sol_QuantumParallelRepetition_dSVDensityRationalHeterogeneousPhysicalDiagonalSurvival_budget

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalDiagonalSurvival_budget | throwError "missing statement QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalDiagonalSurvival_budget"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalDiagonalSurvival_budget"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.dSVDensityRationalHeterogeneousPhysicalDiagonalSurvival_budget (defeq: {same})\nstatement: {a}\nsolution:  {b}"
