import Theorems.Thm_QuantumParallelRepetition_reweightedSeed_source_equation_twenty_six
import Solutions.Sol_QuantumParallelRepetition_reweightedSeed_source_equation_twenty_six

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.reweightedSeed_source_equation_twenty_six | throwError "missing statement QuantumParallelRepetition.reweightedSeed_source_equation_twenty_six"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.reweightedSeed_source_equation_twenty_six"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.reweightedSeed_source_equation_twenty_six (defeq: {same})\nstatement: {a}\nsolution:  {b}"
