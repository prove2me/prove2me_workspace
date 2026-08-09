import Theorems.Thm_QuantumParallelRepetition_directDSVActualStoppingSelectedHistory_sourceProduct
import Solutions.Sol_QuantumParallelRepetition_directDSVActualStoppingSelectedHistory_sourceProduct

open Lean in
run_meta do
  let env ← getEnv
  let some stub := env.find? `QuantumParallelRepetition.directDSVActualStoppingSelectedHistory_sourceProduct | throwError "missing statement QuantumParallelRepetition.directDSVActualStoppingSelectedHistory_sourceProduct"
  let some sol := env.find? `solution | throwError "missing solution for QuantumParallelRepetition.directDSVActualStoppingSelectedHistory_sourceProduct"
  unless stub.type == sol.type do
    let a ← Meta.ppExpr stub.type
    let b ← Meta.ppExpr sol.type
    let same ← Meta.isDefEq stub.type sol.type
    throwError "type mismatch for QuantumParallelRepetition.directDSVActualStoppingSelectedHistory_sourceProduct (defeq: {same})\nstatement: {a}\nsolution:  {b}"
