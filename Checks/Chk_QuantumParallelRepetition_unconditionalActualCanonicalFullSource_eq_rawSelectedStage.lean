import Theorems.Thm_QuantumParallelRepetition_unconditionalActualCanonicalFullSource_eq_rawSelectedStage
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualCanonicalFullSource_eq_rawSelectedStage

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualCanonicalFullSource_eq_rawSelectedStage | throwError "missing statement QuantumParallelRepetition.unconditionalActualCanonicalFullSource_eq_rawSelectedStage"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualCanonicalFullSource_eq_rawSelectedStage"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualCanonicalFullSource_eq_rawSelectedStage (defeq: {same})\nstatement: {a}\nsolution:  {b}"
