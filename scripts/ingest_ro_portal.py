#!/usr/bin/env python3
"""Convert Portal Legislativ SOAP dumps into article-anchored Markdown act texts."""

from __future__ import annotations

import argparse
import json
import re
import sys
import unicodedata
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
ATTACHMENTS = ROOT / "99 Attachments" / "source-portal"
ACTS = ROOT / "10 Legislation"


def clean_raw(text: str) -> str:
    text = text.replace("\ufeff", "")
    text = text.replace("\xa0", " ")
    text = re.sub(r"\s+\+\s+", "\n\n", text)
    text = re.sub(r"[ \t]+\n", "\n", text)
    text = re.sub(r"\n{3,}", "\n\n", text)
    text = re.sub(r"[ \t]{2,}", " ", text)
    return text.strip()


def add_article_headings(text: str) -> str:
    # Normalize common portal markers before article detection
    text = re.sub(
        r"(?i)\bArticolul\s+(\d+(?:\^\d+)?)\.?\s*",
        r"\n\n## Articolul \1\n\n",
        text,
    )
    text = re.sub(
        r"(?i)\b(Capitolul|Sec(?:țiunea|tiunea)|Titlul|TITLUL)\s+([^\n]+?)\s*",
        r"\n\n## \1 \2\n\n",
        text,
    )
    text = re.sub(r"\n{3,}", "\n\n", text)
    return text.strip()


def count_articles(text: str) -> int:
    return len(re.findall(r"(?m)^## Articolul ", text))


def yaml_escape(value: str) -> str:
    return json.dumps(value, ensure_ascii=False)


def build_frontmatter(meta: dict, articole: int) -> str:
    lines = ["---"]
    for key in (
        "title",
        "type",
        "act_type",
        "issuer",
        "nr",
        "an",
        "domeniu",
        "mo_publicare",
        "portal_id",
        "portal_url",
        "versiune_text",
        "consolidare",
        "continut",
        "text_complet",
        "articole_numarate",
        "source_ingest",
        "tags",
    ):
        if key not in meta or meta[key] is None:
            continue
        val = meta[key]
        if isinstance(val, list):
            inner = ", ".join(val)
            lines.append(f"{key}: [{inner}]")
        elif isinstance(val, bool):
            lines.append(f"{key}: {'true' if val else 'false'}")
        elif isinstance(val, (int, float)):
            lines.append(f"{key}: {val}")
        else:
            lines.append(f"{key}: {yaml_escape(str(val))}")
    lines.append("---")
    return "\n".join(lines)


def convert_dump(
    dump_path: Path,
    out_path: Path,
    meta: dict,
    h1: str | None = None,
) -> None:
    raw = dump_path.read_text(encoding="utf-8", errors="replace")
    body = add_article_headings(clean_raw(raw))
    articole = count_articles(body)
    meta = dict(meta)
    meta.setdefault("type", "act-text")
    meta.setdefault("continut", "text-integral")
    meta.setdefault("text_complet", True)
    meta.setdefault("source_ingest", "portal-soap")
    meta.setdefault("articole_numarate", articole)
    meta.setdefault("tags", ["act-text"])

    title = meta.get("title", dump_path.stem)
    front = build_frontmatter(meta, articole)
    heading = h1 or title
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(f"{front}\n\n# {heading}\n\n{body}\n", encoding="utf-8")


def load_manifest(path: Path) -> list[dict]:
    return json.loads(path.read_text(encoding="utf-8"))


def ingest_manifest(manifest_path: Path) -> int:
    entries = load_manifest(manifest_path)
    ok = 0
    for entry in entries:
        dump = ATTACHMENTS / entry["dump"]
        if not dump.exists():
            print(f"Missing dump: {dump}", file=sys.stderr)
            continue
        out = ACTS / entry["subdir"] / entry["filename"]
        convert_dump(dump, out, entry["meta"], entry.get("h1"))
        print(f"Wrote {out}")
        ok += 1
    return ok


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--manifest", type=Path, help="JSON manifest for batch convert")
    parser.add_argument("--dump", type=Path, help="Single dump file")
    parser.add_argument("--out", type=Path, help="Output markdown path")
    parser.add_argument("--meta-json", type=Path, help="Frontmatter JSON for single convert")
    parser.add_argument("--h1", help="H1 heading override")
    args = parser.parse_args()

    if args.manifest:
        n = ingest_manifest(args.manifest)
        return 0 if n else 1

    if not args.dump or not args.out or not args.meta_json:
        parser.error("Provide --manifest or (--dump, --out, --meta-json)")
    meta = json.loads(args.meta_json.read_text(encoding="utf-8"))
    convert_dump(args.dump, args.out, meta, args.h1)
    print(f"Wrote {args.out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
