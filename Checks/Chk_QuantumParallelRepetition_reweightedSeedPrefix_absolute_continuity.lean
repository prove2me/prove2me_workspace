import Theorems.Thm_QuantumParallelRepetition_reweightedSeedPrefix_absolute_continuity
import Solutions.Sol_QuantumParallelRepetition_reweightedSeedPrefix_absolute_continuity

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.reweightedSeedPrefix_absolute_continuity | throwError "missing statement QuantumParallelRepetition.reweightedSeedPrefix_absolute_continuity"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.reweightedSeedPrefix_absolute_continuity"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.reweightedSeedPrefix_absolute_continuity (defeq: {same})\nstatement: {a}\nsolution:  {b}"
