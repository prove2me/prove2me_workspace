import Theorems.Thm_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_fine_all
import Solutions.Sol_QuantumParallelRepetition_UnconditionalActualFairSourceRoundingContext_fine_all

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.UnconditionalActualFairSourceRoundingContext.fine_all | throwError "missing statement QuantumParallelRepetition.UnconditionalActualFairSourceRoundingContext.fine_all"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.UnconditionalActualFairSourceRoundingContext.fine_all"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.UnconditionalActualFairSourceRoundingContext.fine_all (defeq: {same})\nstatement: {a}\nsolution:  {b}"
