import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceSideMarkedPosteriorConditional_eq_fixedSeedFiber
import Solutions.Sol_QuantumParallelRepetition_exactReverseAliceSideMarkedPosteriorConditional_eq_fixedSeedFiber

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseAliceSideMarkedPosteriorConditional_eq_fixedSeedFiber | throwError "missing statement QuantumParallelRepetition.exactReverseAliceSideMarkedPosteriorConditional_eq_fixedSeedFiber"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseAliceSideMarkedPosteriorConditional_eq_fixedSeedFiber"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseAliceSideMarkedPosteriorConditional_eq_fixedSeedFiber (defeq: {same})\nstatement: {a}\nsolution:  {b}"
