#!/usr/bin/env python3
"""Thin Prove2me API client: auto-refreshes the access token and pretty-prints JSON.

Two accounts are in play for this mission, and which one a call goes out on is a deliberate
attribution choice, so it is always explicit:

  "self"       credentials.json            — the human's own account.  Used only for the
                                             reductions that connect the mission's goal and
                                             milestones to OpenAI's proof.
  "community"  credentials_community.json  — used for everything transplanted from
                                             openai/ten-proofs, so that work is not credited
                                             to the human's personal account.

Usage:  python3 port/api.py GET /missions '{"limit":50}' [account]
"""
import json
import os
import sys
import threading
import time
import urllib.error
import urllib.parse
import urllib.request

# The platform cannot absorb many requests at once: submit-problem and submit-definition are
# answered synchronously after a server-side Lean build, and concurrent ones queue until they
# pass the ~300s response ceiling and are discarded.  So every call this client makes — creates,
# verifies and polls alike — passes through one semaphore.  This is a property of the service,
# not of any one endpoint, which is why it lives here rather than at a call site.
MAX_CONCURRENT = 4
GATE = threading.Semaphore(MAX_CONCURRENT)

BASE = "https://beta.prove2.me/api/v1"
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ACCOUNTS = {
    "self": os.path.join(ROOT, "credentials.json"),
    "community": os.path.join(ROOT, "credentials_community.json"),
}


def _cred_path(account):
    if account not in ACCOUNTS:
        raise KeyError(f"unknown account {account!r}; expected one of {sorted(ACCOUNTS)}")
    return ACCOUNTS[account]


def _post_json(path, payload):
    req = urllib.request.Request(
        BASE + path,
        data=json.dumps(payload).encode(),
        headers={"Content-Type": "application/json"},
        method="POST",
    )
    with urllib.request.urlopen(req, timeout=60) as r:
        return json.load(r)


_TOKEN_LOCK = threading.Lock()


def token(account="self"):
    """Return a live access token for `account`, refreshing (and re-saving) near expiry.

    Serialised: the parallel uploader has several requests in flight, and two threads racing to
    refresh would spend one refresh token twice and corrupt the saved credentials.
    """
    with _TOKEN_LOCK:
        return _token_locked(account)


def _token_locked(account):
    path = _cred_path(account)
    c = json.load(open(path))
    if c.get("expires_at", 0) - time.time() > 120:
        return c["access_token"]
    fresh = _post_json("/refresh", {"refresh_token": c["refresh_token"]})
    c.update({k: fresh[k] for k in ("access_token", "refresh_token", "expires_at") if k in fresh})
    if "expires_in" in fresh and "expires_at" not in fresh:
        c["expires_at"] = int(time.time()) + int(fresh["expires_in"])
    with open(path, "w") as f:
        json.dump(c, f, indent=2)
    os.chmod(path, 0o600)
    return c["access_token"]


def call(method, path, params=None, body=None, account="self", timeout=120, retries=4):
    """One request, retrying transport errors with exponential backoff.

    HTTP errors are returned rather than raised — the caller decides what a 4xx means — but
    transport failures (the endpoint drops TLS connections under load) are retried, because a
    long upload run hits them regularly and they carry no information.
    """
    url = BASE + path
    if params:
        url += "?" + urllib.parse.urlencode(params)
    data = json.dumps(body).encode() if body is not None else None
    for attempt in range(retries):
        req = urllib.request.Request(url, data=data, method=method)
        req.add_header("Authorization", "Bearer " + token(account))
        if data:
            req.add_header("Content-Type", "application/json")
        try:
            with GATE:
                with urllib.request.urlopen(req, timeout=timeout) as r:
                    return json.load(r)
        except urllib.error.HTTPError as e:
            return {"_http_error": e.code, "_body": e.read().decode()[:4000]}
        except (urllib.error.URLError, TimeoutError, ConnectionError, OSError) as e:
            if attempt == retries - 1:
                return {"_transport_error": str(e)}
            time.sleep(2 ** attempt)


def whoami(account="self"):
    return call("GET", "/me", account=account)


if __name__ == "__main__":
    m, p = sys.argv[1], sys.argv[2]
    q = json.loads(sys.argv[3]) if len(sys.argv) > 3 and sys.argv[3] else None
    acct = sys.argv[4] if len(sys.argv) > 4 else "self"
    out = call(m, p, q if m == "GET" else None, None if m == "GET" else q, account=acct)
    print(json.dumps(out, indent=2)[:20000])
