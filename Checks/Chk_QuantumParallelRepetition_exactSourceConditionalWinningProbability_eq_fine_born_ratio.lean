import Theorems.Thm_QuantumParallelRepetition_exactSourceConditionalWinningProbability_eq_fine_born_ratio
import Solutions.Sol_QuantumParallelRepetition_exactSourceConditionalWinningProbability_eq_fine_born_ratio

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactSourceConditionalWinningProbability_eq_fine_born_ratio | throwError "missing statement QuantumParallelRepetition.exactSourceConditionalWinningProbability_eq_fine_born_ratio"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactSourceConditionalWinningProbability_eq_fine_born_ratio"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactSourceConditionalWinningProbability_eq_fine_born_ratio (defeq: {same})\nstatement: {a}\nsolution:  {b}"
