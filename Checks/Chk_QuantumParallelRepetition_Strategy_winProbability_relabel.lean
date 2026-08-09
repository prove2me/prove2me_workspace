import Theorems.Thm_QuantumParallelRepetition_Strategy_winProbability_relabel
import Solutions.Sol_QuantumParallelRepetition_Strategy_winProbability_relabel

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.Strategy.winProbability_relabel | throwError "missing statement QuantumParallelRepetition.Strategy.winProbability_relabel"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.Strategy.winProbability_relabel"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.Strategy.winProbability_relabel (defeq: {same})\nstatement: {a}\nsolution:  {b}"
