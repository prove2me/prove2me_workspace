import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_card
import Solutions.Sol_QuantumParallelRepetition_exactReverseRightSide_card

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseRightSide_card | throwError "missing statement QuantumParallelRepetition.exactReverseRightSide_card"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseRightSide_card"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseRightSide_card (defeq: {same})\nstatement: {a}\nsolution:  {b}"
