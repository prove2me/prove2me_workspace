import Theorems.Thm_QuantumParallelRepetition_exactSourceNormalizedWinningEffect_eq_conditional
import Solutions.Sol_QuantumParallelRepetition_exactSourceNormalizedWinningEffect_eq_conditional

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactSourceNormalizedWinningEffect_eq_conditional | throwError "missing statement QuantumParallelRepetition.exactSourceNormalizedWinningEffect_eq_conditional"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactSourceNormalizedWinningEffect_eq_conditional"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactSourceNormalizedWinningEffect_eq_conditional (defeq: {same})\nstatement: {a}\nsolution:  {b}"
