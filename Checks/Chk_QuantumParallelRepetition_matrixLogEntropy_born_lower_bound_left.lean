import Theorems.Thm_QuantumParallelRepetition_matrixLogEntropy_born_lower_bound_left
import Solutions.Sol_QuantumParallelRepetition_matrixLogEntropy_born_lower_bound_left

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.matrixLogEntropy_born_lower_bound_left | throwError "missing statement QuantumParallelRepetition.matrixLogEntropy_born_lower_bound_left"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.matrixLogEntropy_born_lower_bound_left"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.matrixLogEntropy_born_lower_bound_left (defeq: {same})\nstatement: {a}\nsolution:  {b}"
