import Theorems.Thm_QuantumParallelRepetition_exact_source_equation_twenty_three_of_conditioned_reverse_prefix
import Solutions.Sol_QuantumParallelRepetition_exact_source_equation_twenty_three_of_conditioned_reverse_prefix

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exact_source_equation_twenty_three_of_conditioned_reverse_prefix | throwError "missing statement QuantumParallelRepetition.exact_source_equation_twenty_three_of_conditioned_reverse_prefix"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exact_source_equation_twenty_three_of_conditioned_reverse_prefix"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exact_source_equation_twenty_three_of_conditioned_reverse_prefix (defeq: {same})\nstatement: {a}\nsolution:  {b}"
