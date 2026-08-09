import Theorems.Thm_QuantumParallelRepetition_posSemidef_blockDiagonal_prime
import Solutions.Sol_QuantumParallelRepetition_posSemidef_blockDiagonal_prime

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.posSemidef_blockDiagonal_prime | throwError "missing statement QuantumParallelRepetition.posSemidef_blockDiagonal_prime"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.posSemidef_blockDiagonal_prime"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.posSemidef_blockDiagonal_prime (defeq: {same})\nstatement: {a}\nsolution:  {b}"
