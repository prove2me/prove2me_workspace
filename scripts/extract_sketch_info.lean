/-
Stage 2 of the full-project upload pipeline — the sketch oracle.
See references/upload_full_project.md (Phase 3–4) for the playbook this belongs
to, and examples/upload_full_project/ for a worked run.

Stage 1 (scripts/extract_decl_graph.lean) answers every declaration-level
question from the environment. This script answers the questions *inside* a
declaration that the environment cannot see — the ones agents are tempted to
answer with regex, and must not:

  1. Where does the statement end and the proof begin?
     → cut there and append `:= by sorry` to make the sketch stub.
  2. Where exactly is every reference to a project constant?
     → rewrite those exact ranges to apply the upload namespace and renames.

How to run (from inside the built source project, so imports resolve):
  lake env lean --run extract_sketch_info.lean <File.lean> [namePrefix] > sketch_info.jsonl
The optional namePrefix (e.g. `SumSquares`) filters `ref` facts to project
constants; omit it to emit every reference.

It re-elaborates the one file with InfoTree recording enabled and prints one
JSON object per line:

  {"kind":"decl","nameText":…,"declStart":P,"declEnd":P,"valStart":P|null,"valKind":…}
     One per top-level declaration command — including `lemma`-style macro
     commands and anonymous `instance`s (whose `nameText` is null; join decl
     facts by position, not name). `declStart`/`declEnd` span the whole
     command including modifiers and docstring. `valStart` is the position of
     the `:=` (or `where`/equation block) that begins the value: the sketch stub
     is  text[declStart.offset : valStart.offset] ++ ":= by sorry".
     `docstring` and `privateTok` are the exact ranges (or null) of the
     docstring and the `private` keyword — use them to strip the docstring from
     a formal_statement and to drop `private` when promoting a helper to a
     node; never locate either by searching the text.
  {"kind":"ref","const":…,"start":P,"end":P}
     One per resolved constant reference with an original source position —
     e.g. every place `SumSquares.sumSq_succ` is *used*. Rename by rewriting
     these ranges (right-to-left so earlier offsets stay valid); never by
     pattern-matching source text.

Every position P is {"line":…,"col":…,"offset":…} — 1-based line, 0-based
column, byte offset into the file.

Caveats:
  - Only occurrences whose syntax carries an *original* position are emitted;
    references fabricated by macro expansion are invisible here (they follow
    the renamed source automatically once the visible occurrences are rewritten,
    because the macro re-expands from the rewritten text).
  - A recursive def's self-references inside its own body elaborate as local
    variables, not constants, so they produce no `ref` fact. Wrapping the
    project in an upload namespace does not need them (short names still
    resolve); if you must rename a recursive def itself, rename its binding
    occurrence and re-elaborate — the stale self-references fail loudly at
    reported positions.
  - Elaboration errors in the target file abort with exit code 1 — fix the file
    first; the oracle is only meaningful on code that compiles.
-/
import Lean
open Lean Elab Parser

/-- First node of syntax kind `k` inside `stx`, depth-first. -/
partial def findKind? (stx : Syntax) (k : SyntaxNodeKind) : Option Syntax :=
  if stx.getKind == k then some stx
  else stx.getArgs.findSome? (findKind? · k)

def posJson (fm : FileMap) (p : String.Pos.Raw) : Json :=
  let pos := fm.toPosition p
  Json.mkObj [("line", toJson pos.line), ("col", toJson pos.column),
              ("offset", toJson p.byteIdx)]

/-- `{"start":…,"end":…}` for a syntax node's source range, null if absent. -/
def rangeJson (fm : FileMap) (stx? : Option Syntax) : Json :=
  match stx?.bind fun s => do pure (← s.getPos?, ← s.getTailPos?) with
  | some (s, e) => Json.mkObj [("start", posJson fm s), ("end", posJson fm e)]
  | none => Json.null

/-- Collect (constant, start, end) for every TermInfo node that elaborated an
original piece of syntax to a constant reference. -/
partial def collectRefs (t : InfoTree) (acc : Array (Name × String.Pos.Raw × String.Pos.Raw)) :
    Array (Name × String.Pos.Raw × String.Pos.Raw) :=
  match t with
  | .context _ t => collectRefs t acc
  | .hole _ => acc
  | .node info children =>
    let acc := match info with
      | .ofTermInfo ti =>
        match ti.expr with
        | .const c _ =>
          let isOriginal := match ti.stx.getHeadInfo with
            | .original .. => true
            | _ => false
          if isOriginal then
            match ti.stx.getPos?, ti.stx.getTailPos? with
            | some s, some e => acc.push (c, s, e)
            | _, _ => acc
          else acc
        | _ => acc
      | _ => acc
    children.foldl (fun a c => collectRefs c a) acc

unsafe def main (args : List String) : IO UInt32 := do
  let some fileName := args[0]?
    | do IO.eprintln "usage: lake env lean --run extract_sketch_info.lean <File.lean> [namePrefix]"
         return 1
  let prefixFilter : Option Name := args[1]?.map String.toName
  let input ← IO.FS.readFile (⟨fileName⟩ : System.FilePath)
  Lean.initSearchPath (← Lean.findSysroot)
  Lean.enableInitializersExecution
  let inputCtx := Parser.mkInputContext input fileName
  let (header, parserState, messages) ← Parser.parseHeader inputCtx
  let (env, messages) ← processHeader header {} messages inputCtx
  let cmdState := Command.mkState env messages {}
  let cmdState := { cmdState with infoState := { enabled := true } }
  let s ← IO.processCommands inputCtx parserState cmdState
  if s.commandState.messages.hasErrors then
    for msg in s.commandState.messages.toList do
      IO.eprintln (← msg.toString)
    return 1
  let fm := inputCtx.fileMap
  -- decl facts: one per top-level declaration command
  for cmd in s.commands do
    -- search INSIDE the command: `include … in` / `set_option … in` / `open … in`
    -- wrap the declaration in an outer command node. Span the outer node (so the
    -- wrapper, attributes, and docstring all sit inside [declStart, declEnd]) but
    -- read declId/value off the inner declaration.
    -- A declaration announces itself by EITHER marker, not both:
    --   * `lemma` (a Batteries macro command) is not `Command.declaration` at the
    --     top level, but contains a `declId`;
    --   * an anonymous `instance : Foo := ⟨…⟩` is a `Command.declaration` but has
    --     no `declId` (nameText is null then — consumers join by position anyway).
    -- Requiring both silently drops these, making their spans undeletable in the
    -- skeleton subtraction. Commands with neither marker (notation, macro, syntax)
    -- correctly emit no decl fact and stay undeletable.
    let declaration? := findKind? cmd ``Command.declaration
    let decl := declaration?.getD cmd
    let declId? := findKind? decl ``Command.declId
    unless declaration?.isSome || declId?.isSome do continue
    let nameText? := declId?.map fun d => d[0].getId
    let valStx :=
      (findKind? decl ``Command.declValSimple).orElse fun _ =>
      (findKind? decl ``Command.declValEqns).orElse fun _ =>
      findKind? decl ``Command.whereStructInst
    let valKind := valStx.map fun v =>
      if v.isOfKind ``Command.declValSimple then "simple"
      else if v.isOfKind ``Command.declValEqns then "eqns" else "whereStructInst"
    let some ds := cmd.getPos? | continue
    let some de := cmd.getTailPos? | continue
    -- Exact spans for the two modifier edits Phase 2/4 mandate: stripping the
    -- docstring from a formal_statement, and dropping `private` on promotion.
    let docStx := findKind? cmd ``Command.docComment
    let privStx := findKind? cmd ``Command.private
    let fields := [("kind", Json.str "decl"),
                   ("nameText", nameText?.map (Json.str ·.toString) |>.getD Json.null),
                   ("declStart", posJson fm ds), ("declEnd", posJson fm de),
                   ("valStart", (valStx.bind (·.getPos?)).map (posJson fm ·) |>.getD Json.null),
                   ("valKind", valKind.map Json.str |>.getD Json.null),
                   ("docstring", rangeJson fm docStx),
                   ("privateTok", rangeJson fm privStx)]
    IO.println (Json.mkObj fields).compress
  -- ref facts: every resolved constant occurrence, deduped and sorted
  let mut refs : Array (Name × String.Pos.Raw × String.Pos.Raw) := #[]
  for t in s.commandState.infoState.trees do
    refs := collectRefs t refs
  let keep : Name → Bool := fun c =>
    match prefixFilter with
    | some p => p.isPrefixOf c || p.isPrefixOf ((privateToUserName? c).getD c)
    | none => true
  let deduped := refs.foldl (init := (Std.HashSet.emptyWithCapacity, #[]))
    fun (seen, out) r@(c, s', e) =>
      let key := s!"{c}:{s'.byteIdx}:{e.byteIdx}"
      if seen.contains key || !keep c then (seen, out)
      else (seen.insert key, out.push r)
  let sorted := deduped.2.qsort fun (_, s1, _) (_, s2, _) => s1 < s2
  for (c, s', e) in sorted do
    IO.println (Json.mkObj [("kind", Json.str "ref"), ("const", Json.str c.toString),
      ("start", posJson fm s'), ("end", posJson fm e)]).compress
  return 0
