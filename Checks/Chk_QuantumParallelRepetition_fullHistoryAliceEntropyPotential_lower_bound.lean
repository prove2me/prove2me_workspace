import Theorems.Thm_QuantumParallelRepetition_fullHistoryAliceEntropyPotential_lower_bound
import Solutions.Sol_QuantumParallelRepetition_fullHistoryAliceEntropyPotential_lower_bound

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.fullHistoryAliceEntropyPotential_lower_bound | throwError "missing statement QuantumParallelRepetition.fullHistoryAliceEntropyPotential_lower_bound"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.fullHistoryAliceEntropyPotential_lower_bound"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.fullHistoryAliceEntropyPotential_lower_bound (defeq: {same})\nstatement: {a}\nsolution:  {b}"
