import Theorems.Thm_QuantumParallelRepetition_exactFairAcceptedJointStatistic_reindex
import Solutions.Sol_QuantumParallelRepetition_exactFairAcceptedJointStatistic_reindex

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactFairAcceptedJointStatistic_reindex | throwError "missing statement QuantumParallelRepetition.exactFairAcceptedJointStatistic_reindex"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactFairAcceptedJointStatistic_reindex"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactFairAcceptedJointStatistic_reindex (defeq: {same})\nstatement: {a}\nsolution:  {b}"
