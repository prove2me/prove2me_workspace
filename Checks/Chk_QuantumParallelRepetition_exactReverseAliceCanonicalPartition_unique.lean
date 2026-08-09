import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceCanonicalPartition_unique
import Solutions.Sol_QuantumParallelRepetition_exactReverseAliceCanonicalPartition_unique

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseAliceCanonicalPartition_unique | throwError "missing statement QuantumParallelRepetition.exactReverseAliceCanonicalPartition_unique"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseAliceCanonicalPartition_unique"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseAliceCanonicalPartition_unique (defeq: {same})\nstatement: {a}\nsolution:  {b}"
