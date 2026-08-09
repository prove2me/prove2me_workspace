import Theorems.Thm_QuantumParallelRepetition_distributionUniformExponential
import Solutions.Sol_QuantumParallelRepetition_distributionUniformExponential

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.distributionUniformExponential | throwError "missing statement QuantumParallelRepetition.distributionUniformExponential"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.distributionUniformExponential"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.distributionUniformExponential (defeq: {same})\nstatement: {a}\nsolution:  {b}"
