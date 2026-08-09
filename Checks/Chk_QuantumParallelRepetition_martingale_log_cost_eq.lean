import Theorems.Thm_QuantumParallelRepetition_martingale_log_cost_eq
import Solutions.Sol_QuantumParallelRepetition_martingale_log_cost_eq

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.martingale_log_cost_eq | throwError "missing statement QuantumParallelRepetition.martingale_log_cost_eq"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.martingale_log_cost_eq"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.martingale_log_cost_eq (defeq: {same})\nstatement: {a}\nsolution:  {b}"
