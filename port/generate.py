#!/usr/bin/env python3
"""Phase 3-4: write the staged files exactly as they will be uploaded.

For every node this emits the two files the platform will hold:

  Theorems/Thm_<slug>.lean   the `preamble` and `formal_statement` of the problem
  Solutions/Sol_<slug>.lean  the proof submitted against it

and for every definition bundle a single `Definitions/Def_<name>.lean`.  Building these locally
is the Phase 5 gate: because the staged tree mirrors the platform's own module layout, a green
`lake build` is a faithful rehearsal of what the server will do, imports and all.

Two Phase 4 rewrites are applied to the staged text:

  - the node's own declaration is renamed to `solution`, which is the name `/verify` requires;
  - `posSemidef_blockDiagonal'` becomes `posSemidef_blockDiagonal_prime`, the file's only
    identifier that cannot survive the `Thm_<name>` module-name mapping.

Everything else is the source verbatim.  Ambient context is reproduced by *flattening* the
`namespace`/`section` chain that encloses a declaration — each `namespace N` becomes `open N`,
and every `open` / `variable` / `set_option` / `attribute` header line is replayed in source
order — so the declaration elaborates in the scope it was written in.
"""
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import plan  # noqa: E402
import stage  # noqa: E402

ROOT = stage.ROOT
BUNDLE_PREFIX = "qpr_core_"
BASE_IMPORT = "Definitions.Def_quantum_parallel_repetition_game"
MATHLIB_IMPORTS = json.load(open(os.path.join(ROOT, "port", "mathlib_imports.json")))
RENAMES = [("posSemidef_blockDiagonal'", "posSemidef_blockDiagonal_prime")]

# Modules that supply the *scopes* the source opens (`open scoped MatrixOrder`, the
# `Matrix.Norms.*` instances, `attribute [local instance] Matrix.normedAddCommGroup`, ...).
# These carry no constants of their own into `mathlibMods`, so they have to be listed.
SCOPE_PRELUDE = [
    "Mathlib.Algebra.BigOperators.Group.Finset.Defs",
    "Mathlib.Algebra.Star.Basic",
    "Mathlib.Analysis.RCLike.Basic",
    "Mathlib.Data.Matrix.Basic",
    "Mathlib.LinearAlgebra.Matrix.Kronecker",
    "Mathlib.Analysis.Matrix.Order",
    "Mathlib.Analysis.Matrix.Normed",
    "Mathlib.Analysis.InnerProductSpace.Basic",
    "Mathlib.Analysis.Normed.Lp.WithLp",
    "Mathlib.Topology.Defs.Filter",
    "Mathlib.MeasureTheory.Measure.MeasureSpace",
]

_OPENERS = "([{⟨⦃"
_CLOSERS = ")]}⟩⦄"


def apply_renames(text):
    for a, b in RENAMES:
        text = text.replace(a, b)
    return text


def slug(name):
    return apply_renames(name).replace(".", "_")


def thm_module(name):
    return f"Theorems.Thm_{slug(name)}"


def strip_docstring(text):
    """Drop a leading `/-- ... -/`; the prose lives in `natural_language_statement`."""
    s = text.lstrip("\n")
    if not s.startswith("/--"):
        return text
    end = s.find("-/")
    return s[end + 2:].lstrip("\n") if end != -1 else text


def split_statement(text):
    """Split a theorem's source into (statement, proof) at its top-level `:=`.

    Bracket depth is tracked so a `:=` inside a binder default or a structure instance in the
    statement is not mistaken for the start of the proof.  Depth alone is not enough: several
    statements in this file bind local abbreviations with `let width : Fin 1 → ℝ := fun _ => w`
    *inside* the proposition, and that `:=` also sits at depth zero.  So pending `let` / `have`
    binders are counted, and a `:=` closes the innermost one before any is treated as the start
    of the proof.
    """
    depth = 0
    pending = 0
    i, n = 0, len(text)
    while i < n:
        c = text[i]
        if depth == 0 and (c == "l" or c == "h") and (i == 0 or not (
                text[i - 1].isalnum() or text[i - 1] in "_'.")):
            for kw in ("let", "have"):
                if text.startswith(kw, i) and i + len(kw) < n and not (
                        text[i + len(kw)].isalnum() or text[i + len(kw)] in "_'"):
                    pending += 1
                    i += len(kw)
                    break
            else:
                i += 1
            continue
        if c == "-" and text.startswith("--", i):
            j = text.find("\n", i)
            i = n if j == -1 else j
            continue
        if c == "/" and text.startswith("/-", i):
            j = text.find("-/", i)
            i = n if j == -1 else j + 2
            continue
        if c == '"':
            i += 1
            while i < n and text[i] != '"':
                i += 2 if text[i] == "\\" else 1
            i += 1
            continue
        if c in _OPENERS:
            depth += 1
        elif c in _CLOSERS:
            depth -= 1
        elif depth == 0 and text.startswith(":=", i):
            if pending == 0:
                return text[:i].rstrip(), text[i + 2:].lstrip("\n")
            pending -= 1
            i += 2
            continue
        i += 1
    raise ValueError("no top-level ':=' in:\n" + text[:400])


# The keyword may be preceded on its own line by attributes (`@[simp] theorem ...`) or by
# `private`, so this is matched wherever it first appears rather than anchored to line start.
_DECL_RE = re.compile(r"(?:^|(?<=[\s\]]))(theorem|lemma)\s+([^\s({\[:]+)")


def rename_to_solution(text):
    """Rename the declaration a block introduces to `solution`."""
    m = _DECL_RE.search(text)
    if not m:
        raise ValueError("no theorem header in:\n" + text[:300])
    return text[:m.start(2)] + "solution" + text[m.end(2):]


class Generator:
    def __init__(self, target=200):
        self.P = plan.Plan()
        self.S = self.P.S
        self.bundles, self.nodes, self.sizes = self.P.choose(target)
        self._close_statement_deps()
        self.bundle_of = {}
        for i, bl in enumerate(self.bundles):
            for b in bl:
                self.bundle_of[b] = i
        self.node_list = sorted(self.nodes, key=lambda b: self.P.pos[b])
        self.name_of = {b: self.P.principal[b] for b in self.node_list}

    def _close_statement_deps(self):
        """A theorem cited by another node's *statement* must itself be a node: the citing
        node's `preamble` has to import it before the statement can elaborate."""
        P, S = self.P, self.S
        changed = True
        while changed:
            changed = False
            for b in list(self.nodes):
                for d in S.decls_in[b]:
                    for x in S.G[d]["typeDeps"]:
                        if x in stage.BUNDLE_PROVIDES:
                            continue
                        ob = P.owner.get(x)
                        if ob is None or ob == b or P.is_def_block[ob] or ob in self.nodes:
                            continue
                        self.nodes.add(ob)
                        changed = True
        self.sizes = {b: P.skeleton(b, self.nodes) for b in self.nodes}

    # ------------------------------------------------------------------ scope

    def bundle_name(self, i):
        return f"{BUNDLE_PREFIX}{i:02d}"

    def context_lines(self, b):
        """The enclosing `namespace`/`section` chain of block `b`, flattened to top level."""
        S = self.S
        chain, f = [], S.frame_of_block[b]
        while f is not None:
            chain.append(f)
            f = S.frames[f]["parent"]
        out = []
        for fi in reversed(chain):
            fr = S.frames[fi]
            if fr["open"] is not None:
                line = S.src[fr["open"] - 1].strip()
                m = re.match(r"^(?:noncomputable\s+)?namespace\s+(\S+)", line)
                if m:
                    out.append(f"open {m.group(1)}")
            for i in fr["header"]:
                out.append(S.src[i - 1])
        for i in S.modifier_of_block[b]:
            out.append(S.src[i - 1])
        return out

    def stub_imports(self, b, node_deps, up_to_bundle):
        """A *statement's* imports, kept as small as the statement actually needs.

        `submit-problem` compile-checks synchronously and the platform's gateway closes the
        connection at ~300s, discarding the work — so a statement whose preamble takes longer
        than that to elaborate can never be submitted at all.  The 450-module set the solutions
        use is far more than a statement needs (measured: 5-33 modules for the nodes that were
        timing out), so stubs carry only their own modules plus the scopes the source opens.
        """
        mods = set(SCOPE_PRELUDE)
        for d in self.S.decls_in[b]:
            mods |= {m for m in self.S.G[d]["mathlibMods"] if m.startswith("Mathlib")}
        lines = [f"import {BASE_IMPORT}"]
        if up_to_bundle is not None:
            lines.append(f"import Definitions.Def_{self.bundle_name(up_to_bundle)}")
        for d in sorted(node_deps, key=lambda x: self.P.pos[x]):
            lines.append(f"import {thm_module(self.name_of[d])}")
        lines += [f"import {m}" for m in sorted(mods)]
        return "\n".join(lines)

    def imports_for(self, blocks, node_deps, up_to_bundle):
        """Imports for a solution file, scoped to what these blocks actually reference.

        `/verify` compiles the submitted file with its own ~300s budget, so a solution carrying
        the whole 450-module set can time out on nothing but imports — one did, at 456 imports
        for a proof whose declarations reference 81 modules.  Same treatment as statements and
        bundles: the modules these blocks name, plus the scopes the source opens.
        """
        mods = set(SCOPE_PRELUDE)
        for b in blocks:
            for d in self.S.decls_in[b]:
                mods |= {m for m in self.S.G[d]["mathlibMods"] if m.startswith("Mathlib")}
        lines = [f"import {BASE_IMPORT}"]
        if up_to_bundle is not None:
            lines.append(f"import Definitions.Def_{self.bundle_name(up_to_bundle)}")
        for d in sorted(node_deps, key=lambda x: self.P.pos[x]):
            lines.append(f"import {thm_module(self.name_of[d])}")
        lines += [f"import {m}" for m in sorted(mods)]
        return "\n".join(lines)

    def _imports_all_mathlib(self, blocks, node_deps, up_to_bundle):
        lines = [f"import {BASE_IMPORT}"]
        if up_to_bundle is not None:
            lines.append(f"import Definitions.Def_{self.bundle_name(up_to_bundle)}")
        for d in sorted(node_deps, key=lambda x: self.P.pos[x]):
            lines.append(f"import {thm_module(self.name_of[d])}")
        lines += [f"import {m}" for m in MATHLIB_IMPORTS]
        return "\n".join(lines)

    def max_bundle(self, blocks):
        """The last definition bundle any of `blocks` depends on; bundles chain-import."""
        need = set()
        for b in blocks:
            for d in self.P.bdeps[b]:
                if self.P.is_def_block[d]:
                    need.add(self.bundle_of[d])
        return max(need) if need else None

    # ------------------------------------------------------------------ files

    def bundle_file(self, i):
        blocks = self.bundles[i]
        node_deps = {d for b in blocks for d in self.P.bdeps[b] if d in self.nodes}
        prev = i - 1 if i > 0 else None
        # `submit-definition` compile-checks synchronously too, so bundles are subject to the
        # same ~300s ceiling as statements and get the same treatment: their own modules plus
        # the scopes the source opens, rather than the whole 450-module set.
        mods = set(SCOPE_PRELUDE)
        for b in blocks:
            for d in self.S.decls_in[b]:
                mods |= {m for m in self.S.G[d]["mathlibMods"] if m.startswith("Mathlib")}
        lines = [f"import {BASE_IMPORT}"]
        if prev is not None:
            lines.append(f"import Definitions.Def_{self.bundle_name(prev)}")
        for d in sorted(node_deps, key=lambda x: self.P.pos[x]):
            lines.append(f"import {thm_module(self.name_of[d])}")
        lines += [f"import {m}" for m in sorted(mods)]
        return apply_renames(self.S.render_blocks(set(blocks), "\n".join(lines)))

    def statement_of(self, b):
        s, _e = self.S.blocks[b]
        text = "\n".join(self.S.src[s - 1:self.S.blocks[b][1]])
        stmt, _proof = split_statement(strip_docstring(text))
        return apply_renames(stmt)

    def stub_file(self, b):
        """`preamble` + `formal_statement`, as the platform will store them."""
        name = self.name_of[b]
        deps = {d for d in self.P.bdeps[b] if d in self.nodes}
        # Only the statement's dependencies belong in a preamble.
        tdeps = set()
        for d in self.S.decls_in[b]:
            for x in self.S.G[d]["typeDeps"]:
                ob = self.P.owner.get(x)
                if ob is not None and ob != b and ob in self.nodes:
                    tdeps.add(ob)
        pre = self.stub_imports(b, tdeps & deps, self.max_bundle([b]))
        ctx = "\n".join(self.context_lines(b))
        stmt = self.statement_of(b)
        preamble = pre + "\n\n" + ctx
        m = _DECL_RE.search(stmt)
        stmt = stmt[:m.start(2)] + apply_renames(name) + stmt[m.end(2):]
        return preamble, stmt + " := by sorry"

    def solution_file(self, b):
        skel = self.sizes[b]
        deps = {d for d in self.P.bdeps[b] if d in self.nodes}
        for x in skel:
            deps |= {d for d in self.P.bdeps[x] if d in self.nodes}
        header = self.imports_for([b] + list(skel), deps, self.max_bundle([b] + list(skel)))
        body = self.S.render_blocks(set(skel), header)
        own = "\n".join(self.S.src[self.S.blocks[b][0] - 1:self.S.blocks[b][1]])
        own = rename_to_solution(strip_docstring(own))
        ctx = "\n".join(self.context_lines(b))
        return apply_renames(body + "\n\n" + ctx + "\n\n" + own + "\n")


def already_uploaded():
    """Names whose statement is already published, and therefore immutable.

    Their staged `Thm_` file must keep mirroring what the platform stores, so it is never
    regenerated — a re-cut plan may well produce a different-but-equivalent statement, and the
    local build would then stop being a faithful rehearsal of the server's.
    """
    p = os.path.join(ROOT, "port", "upload_journal.json")
    if not os.path.exists(p):
        return set()
    return set(json.load(open(p)).get("created", {}))


def write_all(gen, only=None, outdir=ROOT):
    written = []
    frozen = already_uploaded()
    for i in range(len(gen.bundles)):
        p = os.path.join(outdir, "Definitions", f"Def_{gen.bundle_name(i)}.lean")
        if only is None:
            open(p, "w").write(gen.bundle_file(i))
            written.append(p)
    for b in gen.node_list:
        name = gen.name_of[b]
        if only is not None and name not in only:
            continue
        if name in frozen:
            # Already published: its statement is immutable and its proof is accepted, so the
            # staged pair must keep mirroring what the platform holds.  Regenerating the
            # solution from a later plan produced a file whose type no longer matched the frozen
            # statement — caught by the type-agreement gate, on a node that was already Proved.
            continue
        pre, stmt = gen.stub_file(b)
        p = os.path.join(outdir, "Theorems", f"Thm_{slug(name)}.lean")
        open(p, "w").write(pre + "\n\n" + stmt + "\n")
        q = os.path.join(outdir, "Solutions", f"Sol_{slug(name)}.lean")
        open(q, "w").write(gen.solution_file(b))
        written.append(p)
        written.append(q)
    return written


if __name__ == "__main__":
    g = Generator(int(sys.argv[1]) if len(sys.argv) > 1 else 200)
    print(f"bundles {len(g.bundles)}  nodes {len(g.node_list)}")
    n = write_all(g)
    print(f"wrote {len(n)} files")
