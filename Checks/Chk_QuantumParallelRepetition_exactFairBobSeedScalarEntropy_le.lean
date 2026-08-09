import Theorems.Thm_QuantumParallelRepetition_exactFairBobSeedScalarEntropy_le
import Solutions.Sol_QuantumParallelRepetition_exactFairBobSeedScalarEntropy_le

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactFairBobSeedScalarEntropy_le | throwError "missing statement QuantumParallelRepetition.exactFairBobSeedScalarEntropy_le"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactFairBobSeedScalarEntropy_le"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactFairBobSeedScalarEntropy_le (defeq: {same})\nstatement: {a}\nsolution:  {b}"
