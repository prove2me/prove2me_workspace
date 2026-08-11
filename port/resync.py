#!/usr/bin/env python3
"""Rebuild the upload journal from the platform.

The journal is a local record of what has been published; the platform is the truth. They can
drift — a container restart loses an in-flight write, a git operation restores an older copy —
and a journal that is *behind* is the dangerous direction: the runner re-creates theorems that
already exist and resubmits proofs that already passed.

This walks the account's catalogue and rewrites `created` and `verdict` to match, so a resumed
run picks up exactly where the platform actually is.

    python3 port/resync.py            # report the drift, change nothing
    python3 port/resync.py --write    # rewrite the journal
"""
import json
import sys
import os

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import api  # noqa: E402
import generate  # noqa: E402
import run_tree  # noqa: E402
import upload  # noqa: E402

ACCOUNT = "community"


def catalogue(names, bundles):
    """Every name of ours the platform holds, with its status."""
    found, defs, off = {}, {}, 0
    while True:
        r = api.call("GET", "/theorems", {"limit": 200, "offset": off},
                     account=ACCOUNT, timeout=90, retries=3)
        ts = r.get("theorems", [])
        if not ts:
            break
        for x in ts:
            n = x.get("theorem_name")
            if n in names:
                found[n] = (x.get("theorem_id"), x.get("status"))
            elif n in bundles:
                defs[n] = x.get("theorem_id")
        off += len(ts)
        if len(ts) < 200:
            break
    return found, defs


def main(write):
    t = run_tree.Tree()
    names = {generate.apply_renames(t.g.name_of[b]) for b in t.g.node_list}
    bundles = {t.g.bundle_name(i) for i in range(len(t.g.bundles))}
    found, defs = catalogue(names, bundles)
    j = upload.load()
    added_c = added_v = added_d = 0
    for n, (tid, status) in found.items():
        if n not in j["created"]:
            j["created"][n] = tid
            added_c += 1
        if status == "Proved" and j["verdict"].get(n, {}).get("status") != "ACCEPTED":
            j["verdict"][n] = {"status": "ACCEPTED", "submission_id": "", "error_message": ""}
            added_v += 1
    for n, did in defs.items():
        if ("def:" + n) not in j["created"]:
            j["created"]["def:" + n] = did
            added_d += 1
    proved = sum(1 for s in found.values() if s[1] == "Proved")
    print(f"platform: {len(found)} nodes ({proved} Proved), {len(defs)} bundles")
    print(f"journal was missing: {added_c} created, {added_v} verdicts, {added_d} bundles")
    if write:
        upload.save(j)
        print("journal rewritten")
    else:
        print("dry run; pass --write to apply")


if __name__ == "__main__":
    main("--write" in sys.argv)
