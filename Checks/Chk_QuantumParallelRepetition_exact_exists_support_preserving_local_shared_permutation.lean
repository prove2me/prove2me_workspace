import Theorems.Thm_QuantumParallelRepetition_exact_exists_support_preserving_local_shared_permutation
import Solutions.Sol_QuantumParallelRepetition_exact_exists_support_preserving_local_shared_permutation

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exact_exists_support_preserving_local_shared_permutation | throwError "missing statement QuantumParallelRepetition.exact_exists_support_preserving_local_shared_permutation"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exact_exists_support_preserving_local_shared_permutation"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exact_exists_support_preserving_local_shared_permutation (defeq: {same})\nstatement: {a}\nsolution:  {b}"
