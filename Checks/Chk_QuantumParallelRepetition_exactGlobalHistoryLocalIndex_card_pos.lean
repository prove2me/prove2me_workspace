import Theorems.Thm_QuantumParallelRepetition_exactGlobalHistoryLocalIndex_card_pos
import Solutions.Sol_QuantumParallelRepetition_exactGlobalHistoryLocalIndex_card_pos

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactGlobalHistoryLocalIndex_card_pos | throwError "missing statement QuantumParallelRepetition.exactGlobalHistoryLocalIndex_card_pos"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactGlobalHistoryLocalIndex_card_pos"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactGlobalHistoryLocalIndex_card_pos (defeq: {same})\nstatement: {a}\nsolution:  {b}"
