import Theorems.Thm_QuantumParallelRepetition_arbitrarily_large_purified_divisor_greedy_conditioning_with_rounding
import Solutions.Sol_QuantumParallelRepetition_arbitrarily_large_purified_divisor_greedy_conditioning_with_rounding

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.arbitrarily_large_purified_divisor_greedy_conditioning_with_rounding | throwError "missing statement QuantumParallelRepetition.arbitrarily_large_purified_divisor_greedy_conditioning_with_rounding"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.arbitrarily_large_purified_divisor_greedy_conditioning_with_rounding"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.arbitrarily_large_purified_divisor_greedy_conditioning_with_rounding (defeq: {same})\nstatement: {a}\nsolution:  {b}"
