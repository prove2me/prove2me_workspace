import Theorems.Thm_QuantumParallelRepetition_sourceHistoryAcceptedMass_eq_uniform
import Solutions.Sol_QuantumParallelRepetition_sourceHistoryAcceptedMass_eq_uniform

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.sourceHistoryAcceptedMass_eq_uniform | throwError "missing statement QuantumParallelRepetition.sourceHistoryAcceptedMass_eq_uniform"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.sourceHistoryAcceptedMass_eq_uniform"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.sourceHistoryAcceptedMass_eq_uniform (defeq: {same})\nstatement: {a}\nsolution:  {b}"
