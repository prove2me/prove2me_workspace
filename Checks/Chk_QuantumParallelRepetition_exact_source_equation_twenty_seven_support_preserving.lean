import Theorems.Thm_QuantumParallelRepetition_exact_source_equation_twenty_seven_support_preserving
import Solutions.Sol_QuantumParallelRepetition_exact_source_equation_twenty_seven_support_preserving

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exact_source_equation_twenty_seven_support_preserving | throwError "missing statement QuantumParallelRepetition.exact_source_equation_twenty_seven_support_preserving"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exact_source_equation_twenty_seven_support_preserving"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exact_source_equation_twenty_seven_support_preserving (defeq: {same})\nstatement: {a}\nsolution:  {b}"
