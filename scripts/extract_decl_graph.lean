/-
Stage 1 of the full-project upload pipeline — the declaration-graph extractor.
See references/upload_full_project.md (Phase 1) for the playbook this belongs to,
and examples/upload_full_project/ for a worked run.

What it does: emits one JSON line per project declaration — name, module, kind,
privacy, source span, and project-internal dependencies split into
  typeDeps  (used by the statement → decides what must become importable Definitions)
  valueDeps (used by the proof     → decides reduction edges / inline helpers)

How to run: copy this file into the BUILT source project, edit the two EDIT
lines, then from the project root:
  lake env lean extract_decl_graph.lean
It writes decl_graph.jsonl next to where you ran it.

This file only reads the elaborated environment (stable API, cheap, whole-project
in one pass). It answers every *declaration-level* question. For positions
*inside* a declaration (proof boundary, reference occurrences) use Stage 2:
scripts/extract_sketch_info.lean.
-/
-- EDIT: import every root module of the project (transitively covers the rest)
import SumSquares
open Lean

run_meta do
  let env ← getEnv
  -- EDIT: the project's top-level namespace/module prefix
  let projPrefix := `SumSquares
  let isProj : Name → Bool := fun m => projPrefix.isPrefixOf m
  let modNames := env.header.moduleNames
  let getMod : Name → Option Name := fun n =>
    match env.getModuleIdxFor? n with
    | some idx => modNames[idx.toNat]?
    | none => none
  -- PITFALL: private decls are `_private.…` and isInternal-true; dropping them makes
  -- their spans and dependencies invisible. Keep them via privateToUserName?.
  let keep : Name → Bool := fun n => !n.isInternal || (privateToUserName? n).isSome
  let mut lines : Array String := #[]
  for (n, ci) in env.constants.toList do
    unless keep n do continue
    let some m := getMod n | continue
    unless isProj m do continue
    let kind := match ci with
      | .thmInfo _ => "theorem" | .defnInfo _ => "def" | .axiomInfo _ => "axiom"
      | .opaqueInfo _ => "opaque" | .inductInfo _ => "inductive" | .ctorInfo _ => "ctor"
      | .recInfo _ => "rec" | .quotInfo _ => "quot"
    -- PITFALL: on Lean ≥ 4.30 `ci.value?` returns none for theorems — match directly.
    let usedT := ci.type.getUsedConstants
    let usedV := match ci with
      | .thmInfo t => t.value.getUsedConstants
      | .defnInfo d => d.value.getUsedConstants
      | .opaqueInfo o => o.value.getUsedConstants
      | _ => #[]
    -- PITFALL: some compiler auxiliaries (`foo.proof_1`) are isInternal and thus
    -- filtered here, yet carry real deps (e.g. a structure-literal def's proof
    -- field) — traverse THROUGH non-kept project constants instead of dropping
    -- them. Others (`foo.match_1`, `foo.eq_*`, class internals) are NOT internal
    -- and DO appear in the output, with startLine 0 (no source span). Consumers
    -- must drop spanless rows after computing reachability: each is regenerated
    -- automatically when its parent declaration compiles, so reaching one needs
    -- no action of its own.
    let collect (seed : Array Name) : Std.HashSet Name := Id.run do
      let mut acc : Std.HashSet Name := {}
      let mut visited : Std.HashSet Name := {}
      let mut work := seed.toList
      while h : work ≠ [] do
        let u := work.head h
        work := work.tail
        if u == n || visited.contains u then continue
        visited := visited.insert u
        let some um := getMod u | continue
        unless isProj um do continue
        if keep u then
          acc := acc.insert u
        else
          match env.find? u with
          | some ci' =>
            let more := ci'.type.getUsedConstants ++ (match ci' with
              | .thmInfo t => t.value.getUsedConstants
              | .defnInfo dd => dd.value.getUsedConstants
              | _ => #[])
            work := more.toList ++ work
          | none => pure ()
      return acc
    let tdeps := collect usedT
    let vdeps := collect usedV
    let range ← findDeclarationRanges? n
    let (sl, el) := match range with
      | some r => (r.range.pos.line, r.range.endPos.line)
      | none => (0, 0)
    let tstr := String.intercalate "," (tdeps.toList.map (s!"\"{·}\""))
    let vstr := String.intercalate "," (vdeps.toList.map (s!"\"{·}\""))
    let isPriv := (privateToUserName? n).isSome
    let userName := (privateToUserName? n).getD n
    -- Instances vanish from elaborated proof terms, so reachability alone
    -- would drop them; consumers use this flag to add every instance in the
    -- vendored tree as an extra reachability root (overriding dead-code
    -- elimination). Never detect instances by searching source text.
    let isInst ← Lean.Meta.isInstance n
    lines := lines.push s!"\{\"name\":\"{n}\",\"module\":\"{m}\",\"kind\":\"{kind}\",\"isPrivate\":{isPriv},\"isInstance\":{isInst},\"userName\":\"{userName}\",\"startLine\":{sl},\"endLine\":{el},\"typeDeps\":[{tstr}],\"valueDeps\":[{vstr}]}"
  IO.FS.writeFile "decl_graph.jsonl" (String.intercalate "\n" lines.toList)
  logInfo s!"wrote {lines.size} declarations"
