import Theorems.Thm_QuantumParallelRepetition_exactBobQuestionMass_eq_jointPrefixQuestionMass
import Solutions.Sol_QuantumParallelRepetition_exactBobQuestionMass_eq_jointPrefixQuestionMass

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactBobQuestionMass_eq_jointPrefixQuestionMass | throwError "missing statement QuantumParallelRepetition.exactBobQuestionMass_eq_jointPrefixQuestionMass"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactBobQuestionMass_eq_jointPrefixQuestionMass"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactBobQuestionMass_eq_jointPrefixQuestionMass (defeq: {same})\nstatement: {a}\nsolution:  {b}"
