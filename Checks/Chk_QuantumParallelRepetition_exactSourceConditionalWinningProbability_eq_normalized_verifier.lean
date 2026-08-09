import Theorems.Thm_QuantumParallelRepetition_exactSourceConditionalWinningProbability_eq_normalized_verifier
import Solutions.Sol_QuantumParallelRepetition_exactSourceConditionalWinningProbability_eq_normalized_verifier

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactSourceConditionalWinningProbability_eq_normalized_verifier | throwError "missing statement QuantumParallelRepetition.exactSourceConditionalWinningProbability_eq_normalized_verifier"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactSourceConditionalWinningProbability_eq_normalized_verifier"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactSourceConditionalWinningProbability_eq_normalized_verifier (defeq: {same})\nstatement: {a}\nsolution:  {b}"
