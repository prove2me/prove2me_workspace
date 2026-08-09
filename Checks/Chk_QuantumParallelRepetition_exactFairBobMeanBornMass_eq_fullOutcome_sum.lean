import Theorems.Thm_QuantumParallelRepetition_exactFairBobMeanBornMass_eq_fullOutcome_sum
import Solutions.Sol_QuantumParallelRepetition_exactFairBobMeanBornMass_eq_fullOutcome_sum

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.exactFairBobMeanBornMass_eq_fullOutcome_sum | throwError "missing statement QuantumParallelRepetition.exactFairBobMeanBornMass_eq_fullOutcome_sum"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.exactFairBobMeanBornMass_eq_fullOutcome_sum"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.exactFairBobMeanBornMass_eq_fullOutcome_sum (defeq: {same})\nstatement: {a}\nsolution:  {b}"
