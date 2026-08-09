import Theorems.Thm_QuantumParallelRepetition_exact_source_equation_twenty_seven_support_preserving_unconditional
import Solutions.Sol_QuantumParallelRepetition_exact_source_equation_twenty_seven_support_preserving_unconditional

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exact_source_equation_twenty_seven_support_preserving_unconditional | throwError "missing statement QuantumParallelRepetition.exact_source_equation_twenty_seven_support_preserving_unconditional"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exact_source_equation_twenty_seven_support_preserving_unconditional"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exact_source_equation_twenty_seven_support_preserving_unconditional (defeq: {same})\nstatement: {a}\nsolution:  {b}"
