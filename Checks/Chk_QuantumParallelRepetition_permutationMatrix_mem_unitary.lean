import Theorems.Thm_QuantumParallelRepetition_permutationMatrix_mem_unitary
import Solutions.Sol_QuantumParallelRepetition_permutationMatrix_mem_unitary

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.permutationMatrix_mem_unitary | throwError "missing statement QuantumParallelRepetition.permutationMatrix_mem_unitary"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.permutationMatrix_mem_unitary"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.permutationMatrix_mem_unitary (defeq: {same})\nstatement: {a}\nsolution:  {b}"
