import Theorems.Thm_QuantumParallelRepetition_reweightedSeedPrefixPriorMarginal_ne_zero_of_positive_atom
import Solutions.Sol_QuantumParallelRepetition_reweightedSeedPrefixPriorMarginal_ne_zero_of_positive_atom

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.reweightedSeedPrefixPriorMarginal_ne_zero_of_positive_atom | throwError "missing statement QuantumParallelRepetition.reweightedSeedPrefixPriorMarginal_ne_zero_of_positive_atom"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.reweightedSeedPrefixPriorMarginal_ne_zero_of_positive_atom"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.reweightedSeedPrefixPriorMarginal_ne_zero_of_positive_atom (defeq: {same})\nstatement: {a}\nsolution:  {b}"
