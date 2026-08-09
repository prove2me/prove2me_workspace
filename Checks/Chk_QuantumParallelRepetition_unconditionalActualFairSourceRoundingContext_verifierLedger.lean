import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFairSourceRoundingContext_verifierLedger
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualFairSourceRoundingContext_verifierLedger

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualFairSourceRoundingContext_verifierLedger | throwError "missing statement QuantumParallelRepetition.unconditionalActualFairSourceRoundingContext_verifierLedger"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualFairSourceRoundingContext_verifierLedger"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualFairSourceRoundingContext_verifierLedger (defeq: {same})\nstatement: {a}\nsolution:  {b}"
