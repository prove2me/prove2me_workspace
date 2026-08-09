import Theorems.Thm_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_nonneg
import Solutions.Sol_QuantumParallelRepetition_exactReverseBobConditionalSeedWeight_nonneg

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseBobConditionalSeedWeight_nonneg | throwError "missing statement QuantumParallelRepetition.exactReverseBobConditionalSeedWeight_nonneg"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseBobConditionalSeedWeight_nonneg"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseBobConditionalSeedWeight_nonneg (defeq: {same})\nstatement: {a}\nsolution:  {b}"
