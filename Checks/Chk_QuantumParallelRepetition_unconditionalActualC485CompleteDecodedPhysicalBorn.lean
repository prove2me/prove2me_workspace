import Theorems.Thm_QuantumParallelRepetition_unconditionalActualC485CompleteDecodedPhysicalBorn
import Solutions.Sol_QuantumParallelRepetition_unconditionalActualC485CompleteDecodedPhysicalBorn

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.unconditionalActualC485CompleteDecodedPhysicalBorn | throwError "missing statement QuantumParallelRepetition.unconditionalActualC485CompleteDecodedPhysicalBorn"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.unconditionalActualC485CompleteDecodedPhysicalBorn"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.unconditionalActualC485CompleteDecodedPhysicalBorn (defeq: {same})\nstatement: {a}\nsolution:  {b}"
