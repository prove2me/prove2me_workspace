import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceContext_prefix_before_marked
import Solutions.Sol_QuantumParallelRepetition_exactReverseAliceContext_prefix_before_marked

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseAliceContext_prefix_before_marked | throwError "missing statement QuantumParallelRepetition.exactReverseAliceContext_prefix_before_marked"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseAliceContext_prefix_before_marked"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseAliceContext_prefix_before_marked (defeq: {same})\nstatement: {a}\nsolution:  {b}"
