#!/usr/bin/env python3
"""Batch download + ingest for Batch B energy texts."""

from __future__ import annotations

import json
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MANIFEST = ROOT / "scripts" / "batch_b_manifest.json"


def main() -> int:
    entries = json.loads(MANIFEST.read_text(encoding="utf-8"))
    failed = []
    for entry in entries:
        cmd = [
            sys.executable,
            str(ROOT / "scripts" / "download_ro_portal.py"),
            "--portal-id",
            entry["portal_id"],
            "--stem",
            entry["dump"],
        ]
        search = entry["search"]
        if "text" in search:
            cmd += ["--search-text", search["text"]]
        if "num" in search:
            cmd += ["--search-num", search["num"]]
        if "an" in search:
            cmd += ["--search-an", search["an"]]
        if "titlu" in search:
            cmd += ["--search-titlu", search["titlu"]]
        print("Downloading", entry["portal_id"], entry["filename"])
        rc = subprocess.call(cmd)
        if rc != 0:
            failed.append(entry["portal_id"])
    rc = subprocess.call(
        [sys.executable, str(ROOT / "scripts" / "ingest_ro_portal.py"), "--manifest", str(MANIFEST)]
    )
    if failed:
        print("Download failures:", ", ".join(failed), file=sys.stderr)
    return rc


if __name__ == "__main__":
    raise SystemExit(main())
