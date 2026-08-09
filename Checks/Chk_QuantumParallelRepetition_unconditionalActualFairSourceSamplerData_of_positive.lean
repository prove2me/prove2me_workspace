import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourceSamplerData_of_positive
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualFairSourceSamplerData_of_positive

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualFairSourceSamplerData_of_positive | throwError "missing statement QuantumParallelRepetition.unconditionalActualFairSourceSamplerData_of_positive"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualFairSourceSamplerData_of_positive"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualFairSourceSamplerData_of_positive (defeq: {same})\nstatement: {a}\nsolution:  {b}"
