import Theorems.Thm_QuantumParallelRepetition_common_finite_purification_pair_jensen
import Solutions.Sol_QuantumParallelRepetition_common_finite_purification_pair_jensen

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.common_finite_purification_pair_jensen | throwError "missing statement QuantumParallelRepetition.common_finite_purification_pair_jensen"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.common_finite_purification_pair_jensen"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.common_finite_purification_pair_jensen (defeq: {same})\nstatement: {a}\nsolution:  {b}"
