import Theorems.Thm_QuantumParallelRepetition_exactReverseAliceCanonicalPartition_otherSide
import Solutions.Sol_QuantumParallelRepetition_exactReverseAliceCanonicalPartition_otherSide

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactReverseAliceCanonicalPartition_otherSide | throwError "missing statement QuantumParallelRepetition.exactReverseAliceCanonicalPartition_otherSide"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactReverseAliceCanonicalPartition_otherSide"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactReverseAliceCanonicalPartition_otherSide (defeq: {same})\nstatement: {a}\nsolution:  {b}"
