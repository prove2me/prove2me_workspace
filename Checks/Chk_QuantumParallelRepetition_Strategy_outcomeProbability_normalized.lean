import Theorems.Thm_QuantumParallelRepetition_Strategy_outcomeProbability_normalized
import Solutions.Sol_QuantumParallelRepetition_Strategy_outcomeProbability_normalized

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.Strategy.outcomeProbability_normalized | throwError "missing statement QuantumParallelRepetition.Strategy.outcomeProbability_normalized"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.Strategy.outcomeProbability_normalized"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.Strategy.outcomeProbability_normalized (defeq: {same})\nstatement: {a}\nsolution:  {b}"
