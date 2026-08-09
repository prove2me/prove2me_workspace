#!/usr/bin/env python3
"""Phase 6 input: what a metadata writer needs to describe each node accurately.

Writes `port/metadata_input/batch_NN.json`, one file per sub-agent, each holding a slice of the
node list with the node's statement, its proof, the upstream lines it came from, and the names
of the theorems it reduces to.  The prose is written from *this*, not from the node name, so
that `natural_language_statement` says what the lemma actually asserts.
"""
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import generate  # noqa: E402
import linemap  # noqa: E402

OUT = os.path.join(generate.ROOT, "port", "metadata_input")
PROOF_LIMIT = 90


def build():
    g = generate.Generator(200)
    frozen = generate.already_uploaded()
    nodes = []
    for b in g.node_list:
        name = g.name_of[b]
        if name in frozen:
            continue
        s, e = g.S.blocks[b]
        text = "\n".join(g.S.src[s - 1:e])
        stmt, proof = generate.split_statement(generate.strip_docstring(text))
        doc = ""
        head = text.lstrip("\n")
        if head.startswith("/--"):
            doc = head[3:head.find("-/")].strip()
        plines = proof.split("\n")
        deps = sorted(g.name_of[d] for d in g.P.bdeps[b] if d in g.nodes)
        a, z = linemap.span(s, e)
        nodes.append(dict(
            name=name,
            upstream_lines=[a, z],
            docstring=doc,
            statement=generate.apply_renames(stmt),
            proof="\n".join(plines[:PROOF_LIMIT]) + (
                f"\n... ({len(plines) - PROOF_LIMIT} more lines)"
                if len(plines) > PROOF_LIMIT else ""),
            imports_theorems=deps,
        ))
    return nodes


if __name__ == "__main__":
    per = int(sys.argv[1]) if len(sys.argv) > 1 else 18
    nodes = build()
    os.makedirs(OUT, exist_ok=True)
    batches = [nodes[i:i + per] for i in range(0, len(nodes), per)]
    for i, batch in enumerate(batches):
        p = os.path.join(OUT, f"batch_{i:02d}.json")
        json.dump(batch, open(p, "w"), indent=2, ensure_ascii=False)
    print(f"{len(nodes)} nodes -> {len(batches)} batches of <= {per} in {OUT}")
    missing = [n["name"] for n in nodes if not n["upstream_lines"][0]]
    print("nodes without an upstream span:", len(missing), missing[:3])
