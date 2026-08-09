import Theorems.Thm_QuantumParallelRepetition_exactFairWinningOutcomeBornMass_eq_fiber_conditional
import Solutions.Sol_QuantumParallelRepetition_exactFairWinningOutcomeBornMass_eq_fiber_conditional

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactFairWinningOutcomeBornMass_eq_fiber_conditional | throwError "missing statement QuantumParallelRepetition.exactFairWinningOutcomeBornMass_eq_fiber_conditional"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactFairWinningOutcomeBornMass_eq_fiber_conditional"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactFairWinningOutcomeBornMass_eq_fiber_conditional (defeq: {same})\nstatement: {a}\nsolution:  {b}"
