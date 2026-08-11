import Theorems.Thm_QuantumParallelRepetition_exactRevealCode_eq_iff_fair_question_masks
import Solutions.Sol_QuantumParallelRepetition_exactRevealCode_eq_iff_fair_question_masks

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactRevealCode_eq_iff_fair_question_masks | throwError "missing statement QuantumParallelRepetition.exactRevealCode_eq_iff_fair_question_masks"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactRevealCode_eq_iff_fair_question_masks"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactRevealCode_eq_iff_fair_question_masks (defeq: {same})\nstatement: {a}\nsolution:  {b}"
