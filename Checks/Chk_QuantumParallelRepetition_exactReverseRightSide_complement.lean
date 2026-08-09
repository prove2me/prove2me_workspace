import Theorems.Thm_QuantumParallelRepetition_exactReverseRightSide_complement
import Solutions.Sol_QuantumParallelRepetition_exactReverseRightSide_complement

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseRightSide_complement | throwError "missing statement QuantumParallelRepetition.exactReverseRightSide_complement"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseRightSide_complement"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseRightSide_complement (defeq: {same})\nstatement: {a}\nsolution:  {b}"
