import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourcePhysicalStopBornWitness
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualFairSourcePhysicalStopBornWitness

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualFairSourcePhysicalStopBornWitness | throwError "missing statement QuantumParallelRepetition.unconditionalActualFairSourcePhysicalStopBornWitness"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualFairSourcePhysicalStopBornWitness"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualFairSourcePhysicalStopBornWitness (defeq: {same})\nstatement: {a}\nsolution:  {b}"
