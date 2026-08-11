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
import threading
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


LOCK = threading.Lock()

# `submit-problem` compile-checks server-side and is answered synchronously, so it is throttled
# rather than left free-running: with the original 450-module preambles a create took minutes and
# four at once got their connections closed.  Trimmed preambles (about 30 imports) made each
# create far cheaper, so a small amount of concurrency is affordable again — but not unlimited,
# because the platform closes any request that passes ~300s and the work is then discarded.
# Verification is unaffected: /verify returns a submission id immediately and builds
# asynchronously, so polling stays fully parallel.
CREATE_LOCK = threading.Semaphore(api.MAX_CONCURRENT)


def save(j):
    """Atomic, and safe to call from the parallel runner's workers."""
    with LOCK:
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


def poll_job(job_id, account, timeout=2400, interval=10):
    """Wait for a publish job to reach a terminal state.

    Since 0.8.0 publishing is asynchronous: `submit-problem` and `submit-definition` answer
    `202 Accepted` with a job id and compile in the background.  That removes the failure mode
    that dominated this run — a synchronous build whose response was cut at ~300s and whose work
    was then discarded.  A compile that overruns now comes back as a FAILED job with a message,
    which is a fact we can act on rather than a lost connection.
    """
    deadline = time.time() + timeout
    while True:
        r = api.call("GET", f"/publish-jobs/{job_id}", account=account, timeout=60, retries=3)
        st = r.get("status")
        if st in ("PUBLISHED", "FAILED", "ERROR"):
            return r
        if time.time() >= deadline:
            return {"status": "PENDING", "error_message": "job poll timed out", "id": job_id}
        time.sleep(interval)


def create(node, account, journal):
    """Queue a problem and wait for its publish job.

    The job id is journalled before polling, so an interrupted run resumes the existing job
    instead of queueing a second compile of the same statement.
    """
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
    job_id = journal.setdefault("jobs", {}).get(name)
    if not job_id:
        with CREATE_LOCK:
            r = api.call("POST", "/submit-problem", body=body, account=account,
                         timeout=180, retries=2)
        jobs = r.get("jobs") or []
        if not jobs:
            # `errors` holds only what was rejected before queueing; a duplicate name means an
            # earlier attempt already published it.
            tid = resolve(name, account)
            if tid:
                journal["created"][name] = tid
                save(journal)
                return tid
            raise RuntimeError(f"submit-problem did not queue {name}: {json.dumps(r)[:600]}")
        job_id = jobs[0]["job_id"]
        journal["jobs"][name] = job_id
        save(journal)
    res = poll_job(job_id, account)
    if res.get("status") != "PUBLISHED":
        # A failed job is retryable: drop the id so the next round queues a fresh compile.
        journal["jobs"].pop(name, None)
        save(journal)
        raise RuntimeError(f"publish job {res.get('status')} for {name}: "
                           f"{res.get('error_message', '')[:400]}")
    tid = res["theorem_id"]
    journal["created"][name] = tid
    save(journal)
    return tid


def resolve_with_grace(name, account, seconds=240, interval=20):
    """Wait for a name to appear, for when the response was lost but the work was not.

    A long `submit-problem` can have its connection closed by an intermediary while the server
    carries on building and inserts the theorem anyway.  Giving up at the moment the socket dies
    reports a spurious failure — and because these theorems sit low in the import order, one
    spurious failure blocks most of the tree behind it.
    """
    deadline = time.time() + seconds
    while True:
        tid = resolve(name, account)
        if tid or time.time() >= deadline:
            return tid
        time.sleep(interval)


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


def existing_submission(theorem_id, account, avoid=()):
    """The newest submission this account already has against `theorem_id`, if any.

    A dropped connection on POST /verify leaves the outcome unknown — the submission may well
    have landed. Checking before resubmitting is what keeps a resumed run from duplicating.

    `avoid` holds submissions already known to have failed. Without it this lookup resurrects
    them: the caller clears a failed verdict to force a retry, this returns the very submission
    that failed, and the poll replays its terminal ERROR — so a node retries forever while the
    corrected proof is never sent. The platform is not consulted about a fix it never received.
    """
    r = api.call("GET", "/submissions", {"limit": 50}, account=account)
    for s in r.get("submissions", []):
        if s.get("theorem_id") == theorem_id:
            sid = s.get("id") or s.get("submission_id")
            if sid in avoid:
                continue
            return sid
    return None


def verify(node, theorem_id, account, journal, fresh=False):
    """POST /verify, recording the submission_id *before* polling so a killed poll resumes.

    `fresh` says the theorem was created by this very call, so it cannot already have a
    submission — which lets us skip `existing_submission`.  That lookup is not cheap: the
    platform's /submissions endpoint ignores `limit` and returns every submission on the
    instance (700+ and growing), so paying it once per node was costing more than the verify.
    """
    name = node["name"]
    dead = set(journal.get("dead", {}).get(name, []))
    if journal["submitted"].get(name) in dead:
        # `resync` rebuilds `submitted` from the platform, so a submission we already gave up on
        # comes back as the journalled one. That entry short-circuits everything below — the
        # POST never happens and the poll returns the same terminal failure — so drop it here
        # too, not just in the `existing_submission` lookup.
        journal["submitted"].pop(name, None)
    if name not in journal["submitted"]:
        sid = None if fresh else existing_submission(theorem_id, account, dead)
        if sid is None:
            body, ctype = _multipart(
                {"theorem_id": theorem_id, "explanation": node["explanation"]},
                {"file": ("solution.lean", node["solution"])})
            for attempt in range(4):
                req = urllib.request.Request(api.BASE + "/verify", data=body, method="POST")
                req.add_header("Authorization", "Bearer " + api.token(account))
                req.add_header("Content-Type", ctype)
                try:
                    with api.GATE:
                        with urllib.request.urlopen(req, timeout=900) as r:
                            sid = json.load(r)["submission_id"]
                    break
                except (urllib.error.URLError, TimeoutError, ConnectionError, OSError) as e:
                    # The POST may have landed anyway; look before firing again.
                    sid = existing_submission(theorem_id, account, dead)
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
