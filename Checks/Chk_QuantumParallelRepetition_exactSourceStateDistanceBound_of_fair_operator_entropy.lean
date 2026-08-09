import Theorems.Thm_QuantumParallelRepetition_exactSourceStateDistanceBound_of_fair_operator_entropy
import Solutions.Sol_QuantumParallelRepetition_exactSourceStateDistanceBound_of_fair_operator_entropy

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactSourceStateDistanceBound_of_fair_operator_entropy | throwError "missing statement QuantumParallelRepetition.exactSourceStateDistanceBound_of_fair_operator_entropy"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactSourceStateDistanceBound_of_fair_operator_entropy"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactSourceStateDistanceBound_of_fair_operator_entropy (defeq: {same})\nstatement: {a}\nsolution:  {b}"
