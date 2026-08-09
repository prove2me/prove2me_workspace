import Theorems.Thm_QuantumParallelRepetition_commonPurificationSubspace_finiteDimensional
import Solutions.Sol_QuantumParallelRepetition_commonPurificationSubspace_finiteDimensional

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.commonPurificationSubspace_finiteDimensional | throwError "missing statement QuantumParallelRepetition.commonPurificationSubspace_finiteDimensional"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.commonPurificationSubspace_finiteDimensional"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.commonPurificationSubspace_finiteDimensional (defeq: {same})\nstatement: {a}\nsolution:  {b}"
