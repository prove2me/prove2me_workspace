import Theorems.Thm_QuantumParallelRepetition_exactConditionedReverseBobNextPrior_marked_joint_factor
import Solutions.Sol_QuantumParallelRepetition_exactConditionedReverseBobNextPrior_marked_joint_factor

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactConditionedReverseBobNextPrior_marked_joint_factor | throwError "missing statement QuantumParallelRepetition.exactConditionedReverseBobNextPrior_marked_joint_factor"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactConditionedReverseBobNextPrior_marked_joint_factor"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactConditionedReverseBobNextPrior_marked_joint_factor (defeq: {same})\nstatement: {a}\nsolution:  {b}"
