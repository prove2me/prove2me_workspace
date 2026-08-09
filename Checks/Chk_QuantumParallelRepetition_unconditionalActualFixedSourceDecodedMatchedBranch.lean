import Theorems.Thm_QuantumParallelRepetition_unconditionalActualFixedSourceDecodedMatchedBranch
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualFixedSourceDecodedMatchedBranch

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualFixedSourceDecodedMatchedBranch | throwError "missing statement QuantumParallelRepetition.unconditionalActualFixedSourceDecodedMatchedBranch"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualFixedSourceDecodedMatchedBranch"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualFixedSourceDecodedMatchedBranch (defeq: {same})\nstatement: {a}\nsolution:  {b}"
