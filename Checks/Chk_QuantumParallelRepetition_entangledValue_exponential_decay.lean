import Theorems.Thm_QuantumParallelRepetition_entangledValue_exponential_decay
import Solutions.Sol_QuantumParallelRepetition_entangledValue_exponential_decay

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.entangledValue_exponential_decay | throwError "missing statement QuantumParallelRepetition.entangledValue_exponential_decay"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.entangledValue_exponential_decay"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.entangledValue_exponential_decay (defeq: {same})\nstatement: {a}\nsolution:  {b}"
