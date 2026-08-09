#!/usr/bin/env python3
"""Thin Prove2me API client: auto-refreshes the access token and pretty-prints JSON.

Usage:  python3 port/api.py GET /missions '{"limit":50}'
"""
import json
import os
import sys
import time
import urllib.error
import urllib.request

BASE = "https://beta.prove2.me/api/v1"
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CRED = os.path.join(ROOT, "credentials.json")


def _post_json(path, payload, token=None):
    req = urllib.request.Request(
        BASE + path,
        data=json.dumps(payload).encode(),
        headers={"Content-Type": "application/json"},
        method="POST",
    )
    if token:
        req.add_header("Authorization", "Bearer " + token)
    with urllib.request.urlopen(req, timeout=60) as r:
        return json.load(r)


def token():
    """Return a live access token, refreshing (and re-saving) when near expiry."""
    c = json.load(open(CRED))
    if c.get("expires_at", 0) - time.time() > 120:
        return c["access_token"]
    fresh = _post_json("/refresh", {"refresh_token": c["refresh_token"]})
    c.update({k: fresh[k] for k in ("access_token", "refresh_token", "expires_at") if k in fresh})
    if "expires_in" in fresh and "expires_at" not in fresh:
        c["expires_at"] = int(time.time()) + int(fresh["expires_in"])
    with open(CRED, "w") as f:
        json.dump(c, f, indent=2)
    os.chmod(CRED, 0o600)
    return c["access_token"]


def call(method, path, params=None, body=None):
    url = BASE + path
    if params:
        url += "?" + urllib.parse.urlencode(params)
    data = json.dumps(body).encode() if body is not None else None
    req = urllib.request.Request(url, data=data, method=method)
    req.add_header("Authorization", "Bearer " + token())
    if data:
        req.add_header("Content-Type", "application/json")
    try:
        with urllib.request.urlopen(req, timeout=120) as r:
            return json.load(r)
    except urllib.error.HTTPError as e:
        return {"_http_error": e.code, "_body": e.read().decode()[:4000]}


if __name__ == "__main__":
    import urllib.parse

    m, p = sys.argv[1], sys.argv[2]
    q = json.loads(sys.argv[3]) if len(sys.argv) > 3 else None
    print(json.dumps(call(m, p, q if m == "GET" else None, None if m == "GET" else q), indent=2)[:20000])
