#!/usr/bin/env python3
"""Idempotent Prove2me uploader (Phase 7 of `upload_full_project.md`).

Every action is journalled to a state file *before and after* its API call, so an interrupted
run — token expiry, gateway timeout, a reclaimed container — resumes with no duplicates. The
journal is committed to git, which is what makes the run survive this container.

Nodes are uploaded leaves-first through the solution-import DAG: by the time a node's solution
is submitted, every theorem it imports is already Proved, so it resolves straight to ACCEPTED
rather than lingering as a sketch.

    python3 port/upload.py plan          # print the topological order, upload nothing
    python3 port/upload.py run           # create + prove, resuming from the journal
    python3 port/upload.py status        # what the journal knows

Account policy (see port/api.py): everything transplanted from openai/ten-proofs goes out on
the `community` account; only the reductions that connect the mission's goal and milestones to
that work go out on `self`.
"""
import json
import os
import sys
import time
import urllib.error
import urllib.request

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import api  # noqa: E402

JOURNAL = os.path.join(os.path.dirname(os.path.abspath(__file__)), "upload_journal.json")
POLL_INTERVAL = 15
POLL_TIMEOUT = 1800
TERMINAL = {"ACCEPTED", "SKETCH_ACCEPTED", "CE", "WA", "SORRY", "FAILED", "ERROR"}


def load():
    if os.path.exists(JOURNAL):
        return json.load(open(JOURNAL))
    return {"created": {}, "submitted": {}, "verdict": {}}


def save(j):
    tmp = JOURNAL + ".tmp"
    with open(tmp, "w") as f:
        json.dump(j, f, indent=2, sort_keys=True)
    os.replace(tmp, JOURNAL)


def toposort(nodes):
    """Leaves-first order over the solution-import DAG."""
    by_name = {n["name"]: n for n in nodes}
    order, mark = [], {}

    def visit(name, stack):
        if mark.get(name) == "done":
            return
        if mark.get(name) == "open":
            raise ValueError("dependency cycle: " + " -> ".join(stack + [name]))
        mark[name] = "open"
        for d in by_name[name]["deps"]:
            if d in by_name:
                visit(d, stack + [name])
        mark[name] = "done"
        order.append(name)

    for n in nodes:
        visit(n["name"], [])
    return [by_name[n] for n in order]


def create(node, account, journal):
    """POST /submit-problem, unless the journal already records this name as created."""
    name = node["name"]
    if name in journal["created"]:
        return journal["created"][name]
    body = {"problems": [{
        "theorem_name": name,
        "theorem_title": node["title"],
        "formal_statement": node["formal_statement"],
        "natural_language_statement": node["nl"],
        "preamble": node["preamble"],
        "source": node["source"],
        "tags": node.get("tags", []),
    }]}
    journal.setdefault("inflight", {})[name] = "create"
    save(journal)
    r = api.call("POST", "/submit-problem", body=body, account=account, timeout=900)
    # `submit-problem` returns HTTP success with a populated `errors` list on rejection, so the
    # message is not a reliable success signal — key on `submitted`/`errors`.
    if r.get("errors"):
        # A duplicate-key error on a retry is proof the first attempt landed; resolve by name.
        tid = resolve(name, account)
        if tid:
            journal["created"][name] = tid
            journal["inflight"].pop(name, None)
            save(journal)
            return tid
        raise RuntimeError(f"submit-problem failed for {name}: {r['errors']}")
    tid = r["submitted"][0]["theorem_id"]
    journal["created"][name] = tid
    journal["inflight"].pop(name, None)
    save(journal)
    return tid


def resolve(name, account):
    """POST /verify wants a theorem_id; search resolves it from the short name."""
    short = name.rsplit(".", 1)[-1]
    r = api.call("GET", "/theorems", {"q": short, "limit": 50}, account=account)
    for t in r.get("theorems", []):
        if t.get("theorem_name") == name:
            return t.get("theorem_id")
    return None


def _multipart(fields, files):
    boundary = "----prove2me-upload-boundary"
    out = []
    for k, v in fields.items():
        out.append(f"--{boundary}\r\nContent-Disposition: form-data; name=\"{k}\"\r\n\r\n{v}\r\n")
    for k, (fname, content) in files.items():
        out.append(f"--{boundary}\r\nContent-Disposition: form-data; name=\"{k}\"; "
                   f"filename=\"{fname}\"\r\nContent-Type: text/plain\r\n\r\n{content}\r\n")
    out.append(f"--{boundary}--\r\n")
    return "".join(out).encode(), f"multipart/form-data; boundary={boundary}"


def existing_submission(theorem_id, account):
    """The newest submission this account already has against `theorem_id`, if any.

    A dropped connection on POST /verify leaves the outcome unknown — the submission may well
    have landed. Checking before resubmitting is what keeps a resumed run from duplicating.
    """
    r = api.call("GET", "/submissions", {"limit": 50}, account=account)
    for s in r.get("submissions", []):
        if s.get("theorem_id") == theorem_id:
            return s.get("id") or s.get("submission_id")
    return None


def verify(node, theorem_id, account, journal):
    """POST /verify, recording the submission_id *before* polling so a killed poll resumes."""
    name = node["name"]
    if name not in journal["submitted"]:
        sid = existing_submission(theorem_id, account)
        if sid is None:
            body, ctype = _multipart(
                {"theorem_id": theorem_id, "explanation": node["explanation"]},
                {"file": ("solution.lean", node["solution"])})
            for attempt in range(4):
                req = urllib.request.Request(api.BASE + "/verify", data=body, method="POST")
                req.add_header("Authorization", "Bearer " + api.token(account))
                req.add_header("Content-Type", ctype)
                try:
                    with urllib.request.urlopen(req, timeout=900) as r:
                        sid = json.load(r)["submission_id"]
                    break
                except (urllib.error.URLError, TimeoutError, ConnectionError, OSError) as e:
                    # The POST may have landed anyway; look before firing again.
                    sid = existing_submission(theorem_id, account)
                    if sid is not None:
                        break
                    if attempt == 3:
                        raise
                    time.sleep(2 ** attempt)
        journal["submitted"][name] = sid
        save(journal)
    sid = journal["submitted"][name]
    if journal["verdict"].get(name, {}).get("status") in TERMINAL:
        return journal["verdict"][name]
    deadline = time.time() + POLL_TIMEOUT
    while time.time() < deadline:
        r = api.call("GET", "/verify", {"submission_id": sid}, account=account)
        if r.get("status") in TERMINAL:
            journal["verdict"][name] = {"submission_id": sid, "status": r["status"],
                                        "error_message": r.get("error_message", "")}
            save(journal)
            return journal["verdict"][name]
        time.sleep(POLL_INTERVAL)
    return {"submission_id": sid, "status": "PENDING", "error_message": "poll timed out"}


def run(nodes, account, journal, stop_on_failure=True):
    for node in toposort(nodes):
        name = node["name"]
        v = journal["verdict"].get(name, {})
        if v.get("status") in ("ACCEPTED", "SKETCH_ACCEPTED"):
            print(f"  [skip] {name} already {v['status']}")
            continue
        tid = create(node, account, journal)
        print(f"  [create] {name} -> {tid}")
        v = verify(node, tid, account, journal)
        print(f"  [verify] {name} -> {v['status']} {v.get('error_message', '')[:300]}")
        if stop_on_failure and v["status"] not in ("ACCEPTED", "SKETCH_ACCEPTED"):
            print("  stopping: a leaf must be Proved before its parents are submitted")
            return False
    return True


if __name__ == "__main__":
    cmd = sys.argv[1] if len(sys.argv) > 1 else "status"
    j = load()
    if cmd == "status":
        print(json.dumps(j, indent=2)[:8000])
    else:
        print("import this module from a batch script; it has no standalone node source")
