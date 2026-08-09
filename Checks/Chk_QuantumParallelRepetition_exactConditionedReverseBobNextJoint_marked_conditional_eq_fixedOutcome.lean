import Theorems.Thm_QuantumParallelRepetition_exactConditionedReverseBobNextJoint_marked_conditional_eq_fixedOutcome
import Solutions.Sol_QuantumParallelRepetition_exactConditionedReverseBobNextJoint_marked_conditional_eq_fixedOutcome

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactConditionedReverseBobNextJoint_marked_conditional_eq_fixedOutcome | throwError "missing statement QuantumParallelRepetition.exactConditionedReverseBobNextJoint_marked_conditional_eq_fixedOutcome"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactConditionedReverseBobNextJoint_marked_conditional_eq_fixedOutcome"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactConditionedReverseBobNextJoint_marked_conditional_eq_fixedOutcome (defeq: {same})\nstatement: {a}\nsolution:  {b}"
