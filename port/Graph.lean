import Solutions.QPRPort

open Lean

/- Declaration-graph extraction (Phase 1 of `upload_full_project.md`), specialised to the
single-module ported file.  Emits one JSON line per declaration with its source span, its
statement dependencies (`typeDeps`) and its proof dependencies (`valueDeps`), plus the set of
Mathlib modules the declaration touches (`mathlibMods`) so per-file imports can be computed
without ever writing `import Mathlib`. -/
run_meta do
  let env ← getEnv
  let projMod := `Solutions.QPRPort
  let modNames := env.header.moduleNames
  let getMod : Name → Option Name := fun n =>
    match env.getModuleIdxFor? n with
    | some idx => modNames[idx.toNat]?
    | none => none
  let isProj : Name → Bool := fun n => (getMod n) == some projMod
  let keep : Name → Bool := fun n => !n.isInternal || (privateToUserName? n).isSome
  let usedOf : ConstantInfo → Array Name := fun ci =>
    ci.type.getUsedConstants ++ (match ci with
      | .thmInfo t => t.value.getUsedConstants
      | .defnInfo d => d.value.getUsedConstants
      | .opaqueInfo o => o.value.getUsedConstants
      | _ => #[])
  let mut lines : Array String := #[]
  for (n, ci) in env.constants.toList do
    unless keep n do continue
    unless isProj n do continue
    let kind := match ci with
      | .thmInfo _ => "theorem" | .defnInfo _ => "def" | .axiomInfo _ => "axiom"
      | .opaqueInfo _ => "opaque" | .inductInfo _ => "inductive" | .ctorInfo _ => "ctor"
      | .recInfo _ => "rec" | .quotInfo _ => "quot"
    let usedT := ci.type.getUsedConstants
    let usedV := match ci with
      | .thmInfo t => t.value.getUsedConstants
      | .defnInfo d => d.value.getUsedConstants
      | .opaqueInfo o => o.value.getUsedConstants
      | _ => #[]
    -- Traverse *through* non-kept project constants (`foo.proof_1`, `foo.match_2`): they are
    -- filtered from the output but carry real dependencies.  Mathlib constants are recorded by
    -- defining module and not traversed.
    let collect (seed : Array Name) : Std.HashSet Name × Std.HashSet Name := Id.run do
      let mut acc : Std.HashSet Name := {}
      let mut mods : Std.HashSet Name := {}
      let mut visited : Std.HashSet Name := {}
      let mut work := seed.toList
      while h : work ≠ [] do
        let u := work.head h
        work := work.tail
        if u == n || visited.contains u then continue
        visited := visited.insert u
        match getMod u with
        | none => continue
        | some um =>
          if um != projMod then
            mods := mods.insert um
            continue
          if keep u then
            acc := acc.insert u
          else
            match env.find? u with
            | some ci' => work := (usedOf ci').toList ++ work
            | none => pure ()
      return (acc, mods)
    let (tdeps, tmods) := collect usedT
    let (vdeps, vmods) := collect usedV
    let allMods := tmods.toList ++ vmods.toList
    let range ← findDeclarationRanges? n
    let (sl, el) := match range with
      | some r => (r.range.pos.line, r.range.endPos.line)
      | none => (0, 0)
    let q : Name → String := fun x => "\"" ++ toString x ++ "\""
    let tstr := String.intercalate "," (tdeps.toList.map q)
    let vstr := String.intercalate "," (vdeps.toList.map q)
    let mstr := String.intercalate "," ((Std.HashSet.ofList allMods).toList.map q)
    let isPriv := (privateToUserName? n).isSome
    let userName := (privateToUserName? n).getD n
    lines := lines.push
      s!"\{\"name\":\"{n}\",\"kind\":\"{kind}\",\"isPrivate\":{isPriv},\"userName\":\"{userName}\",\"startLine\":{sl},\"endLine\":{el},\"typeDeps\":[{tstr}],\"valueDeps\":[{vstr}],\"mathlibMods\":[{mstr}]}"
  IO.FS.writeFile "port/decl_graph.jsonl" (String.intercalate "\n" lines.toList)
  logInfo s!"wrote {lines.size} declarations"
