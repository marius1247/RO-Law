#!/usr/bin/env python3
"""Download legal texts from Portal Legislativ SOAP Search API."""

from __future__ import annotations

import argparse
import json
import re
import sys
import urllib.request
import xml.sax.saxutils as xu
from pathlib import Path

SOAP_URL = "http://legislatie.just.ro/apiws/FreeWebService.svc/SOAP"
ROOT = Path(__file__).resolve().parents[1]
ATTACHMENTS = ROOT / "99 Attachments" / "source-portal"


def soap_call(action: str, body_inner: str, timeout: int = 120) -> str:
    envelope = f"""<?xml version="1.0" encoding="utf-8"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
  <s:Body>{body_inner}</s:Body>
</s:Envelope>"""
    req = urllib.request.Request(
        SOAP_URL,
        data=envelope.encode("utf-8"),
        headers={
            "Content-Type": "text/xml; charset=utf-8",
            "SOAPAction": f"http://tempuri.org/IFreeWebService/{action}",
        },
    )
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        return resp.read().decode("utf-8", errors="replace")


def get_token() -> str:
    resp = soap_call("GetToken", '<GetToken xmlns="http://tempuri.org/" />', timeout=30)
    m = re.search(r"<GetTokenResult>([^<]+)</GetTokenResult>", resp)
    if not m:
        raise RuntimeError("GetToken failed")
    return m.group(1)


def search(token: str, params: dict) -> list[dict]:
    parts = [
        "<d4p1:NumarPagina>0</d4p1:NumarPagina>",
        "<d4p1:RezultatePagina>20</d4p1:RezultatePagina>",
    ]
    field_map = {
        "an": "SearchAn",
        "num": "SearchNumar",
        "text": "SearchText",
        "titlu": "SearchTitlu",
    }
    for key, xml_name in field_map.items():
        if key in params and params[key]:
            parts.append(f"<d4p1:{xml_name}>{xu.escape(str(params[key]))}</d4p1:{xml_name}>")
    body = f"""<Search xmlns="http://tempuri.org/">
  <SearchModel xmlns:d4p1="http://schemas.datacontract.org/2004/07/FreeWebService">
    {''.join(parts)}
  </SearchModel>
  <tokenKey>{token}</tokenKey>
</Search>"""
    resp = soap_call("Search", body)
    links = re.findall(r"<a:LinkHtml>([^<]*)</a:LinkHtml>", resp)
    titles = re.findall(r"<a:Titlu>([^<]*)</a:Titlu>", resp)
    texts = re.findall(r"<a:Text>([^<]*)</a:Text>", resp)
    emit = re.findall(r"<a:Emitent>([^<]*)</a:Emitent>", resp)
    tip = re.findall(r"<a:TipAct>([^<]*)</a:TipAct>", resp)
    out = []
    for i, link in enumerate(links):
        out.append(
            {
                "portal_id": link.rstrip("/").split("/")[-1],
                "link": link,
                "title": titles[i] if i < len(titles) else "",
                "text": texts[i] if i < len(texts) else "",
                "emitent": emit[i] if i < len(emit) else "",
                "tip_act": tip[i] if i < len(tip) else "",
            }
        )
    return out


def fetch_by_portal_id(token: str, portal_id: str, search_params: dict) -> dict | None:
    for row in search(token, search_params):
        if row["portal_id"] == str(portal_id):
            return row
    return None


def save_dump(row: dict, stem: str | None = None) -> Path:
    ATTACHMENTS.mkdir(parents=True, exist_ok=True)
    pid = row["portal_id"]
    name = stem or f"{pid}_portal_soap.md"
    path = ATTACHMENTS / name
    path.write_text(row["text"], encoding="utf-8")
    meta = path.with_suffix(".meta.json")
    meta.write_text(
        json.dumps(
            {
                "portal_id": pid,
                "portal_url": row.get("link", f"https://legislatie.just.ro/Public/DetaliiDocumentAfis/{pid}"),
                "title": row.get("title", ""),
                "emitent": row.get("emitent", ""),
                "tip_act": row.get("tip_act", ""),
                "chars": len(row.get("text", "")),
            },
            ensure_ascii=False,
            indent=2,
        ),
        encoding="utf-8",
    )
    return path


def main() -> int:
    parser = argparse.ArgumentParser(description="Download Portal Legislativ texts via SOAP")
    parser.add_argument("--portal-id", required=True)
    parser.add_argument("--search-text", help="SearchText parameter")
    parser.add_argument("--search-num", help="SearchNumar parameter")
    parser.add_argument("--search-an", help="SearchAn parameter")
    parser.add_argument("--search-titlu", help="SearchTitlu parameter")
    parser.add_argument("--stem", help="Output filename under source-portal/")
    args = parser.parse_args()

    params = {}
    if args.search_text:
        params["text"] = args.search_text
    if args.search_num:
        params["num"] = args.search_num
    if args.search_an:
        params["an"] = args.search_an
    if args.search_titlu:
        params["titlu"] = args.search_titlu
    if not params:
        parser.error("Provide at least one search parameter")

    token = get_token()
    row = fetch_by_portal_id(token, args.portal_id, params)
    if not row:
        print(f"Not found: portal_id={args.portal_id}", file=sys.stderr)
        return 1
    path = save_dump(row, args.stem)
    print(f"Saved {path} ({len(row['text'])} chars)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
