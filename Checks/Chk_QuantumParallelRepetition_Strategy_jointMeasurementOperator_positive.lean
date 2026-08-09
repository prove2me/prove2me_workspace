import Theorems.Thm_QuantumParallelRepetition_Strategy_jointMeasurementOperator_positive
import Solutions.Sol_QuantumParallelRepetition_Strategy_jointMeasurementOperator_positive

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.Strategy.jointMeasurementOperator_positive | throwError "missing statement QuantumParallelRepetition.Strategy.jointMeasurementOperator_positive"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.Strategy.jointMeasurementOperator_positive"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.Strategy.jointMeasurementOperator_positive (defeq: {same})\nstatement: {a}\nsolution:  {b}"
