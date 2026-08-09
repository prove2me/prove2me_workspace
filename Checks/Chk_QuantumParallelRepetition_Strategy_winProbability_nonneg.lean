import Theorems.Thm_QuantumParallelRepetition_Strategy_winProbability_nonneg
import Solutions.Sol_QuantumParallelRepetition_Strategy_winProbability_nonneg

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.Strategy.winProbability_nonneg | throwError "missing statement QuantumParallelRepetition.Strategy.winProbability_nonneg"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.Strategy.winProbability_nonneg"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.Strategy.winProbability_nonneg (defeq: {same})\nstatement: {a}\nsolution:  {b}"
