import Theorems.Thm_QuantumParallelRepetition_winProbabilities_bddAbove
import Solutions.Sol_QuantumParallelRepetition_winProbabilities_bddAbove

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.winProbabilities_bddAbove | throwError "missing statement QuantumParallelRepetition.winProbabilities_bddAbove"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.winProbabilities_bddAbove"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.winProbabilities_bddAbove (defeq: {same})\nstatement: {a}\nsolution:  {b}"
