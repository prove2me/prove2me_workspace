import Theorems.Thm_QuantumParallelRepetition_scalarResolventFilter_memLp_two
import Solutions.Sol_QuantumParallelRepetition_scalarResolventFilter_memLp_two

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.scalarResolventFilter_memLp_two | throwError "missing statement QuantumParallelRepetition.scalarResolventFilter_memLp_two"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.scalarResolventFilter_memLp_two"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.scalarResolventFilter_memLp_two (defeq: {same})\nstatement: {a}\nsolution:  {b}"
