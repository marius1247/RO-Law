---
title: "Convenții vault"
type: reference
tags: [reference, meta]
created: 2026-07-26
---

# Convenții vault — Romanian Law

Mirror of the Moldovan Law conventions, adapted for Romanian sources.

## Folders
- `00 Inbox` — capture / download checklist / unfiled drops
- `01 Sistemul juridic` — meta-layer: how RO law works
- `10 Acte normative` — **working** legal texts (cleaned, article-anchored), by act type:
  - `Constituție` · `Coduri` · `Legi` · `Ordonanțe de urgență & Ordonanțe` · `Hotărâri de Guvern` · `Acte ANRE & autorități`
- `20 Domenii` — thematic EN analysis
- `30 Concepte` — atomic concept notes
- `50 MOCs` — navigation hubs
- `60 Autorități & Instituții`
- `90 Templates`
- `99 Attachments/`
  - `source-portal/` — **raw Portal Legislativ dumps** (named by `portal_id`). Index: [[SOURCE INDEX]]. Do not edit; re-ingest into `10` when updating.
  - `source-opcom/` — OPCOM originals (procedures, contractual models)
  - `source-hg/` — Government Decision texts / annexes / MO extras not from Portal dumps
  - `source-anre/` — ANRE Ordine / methodologies (PDF)

> [!important] One vault, two layers for texts
> 1. **Raw originals** → only in `99 Attachments/source-portal/`
> 2. **Working corpus** → only in `10 Acte normative/`
>
> Open **`Romanian Law/`** as the Obsidian vault root.

## File naming
- Acts: `<Denumire> (text)` and `<Denumire> (notă)`
- Large codes: `<Cod> — text — Titlul N` + `<Cod> (text) — Index`
- Concepts: `Concept — <Denumire>`
- Maps: `MOC — <Domeniu>`
- Filenames: ASCII-safe (no diacritics); full RO title lives in `title` frontmatter / H1

## Two-layer rule
Raw law (RO) lives in `10` as `— text`. English analysis lives in the `— notă` companion and in `20`/`30`. **Never edit the substance of a `— text` note** except to update to a newer consolidation.

## Frontmatter (acts)
`type, act_type, nr, an, domeniu[], forta_juridica, in_vigoare, mo_publicare, portal_id, portal_url, versiune_text, consolidare, continut, text_complet, articole_numarate`

**`act_type`:** `constituție | cod | lege | ordonanță-urgență | ordonanță | hotărâre-guvern | act-anre | tratat`

**`forta_juridica`:** 1=Constituție … 8=act-autoritate (same scale as MD vault)

## Linking
Article-anchored: `[[<act> (text)#Articolul N]]`. Every act text uses `### Articolul N.` headings.

## Ingestion workflow
1. Find the act on [legislatie.just.ro](https://legislatie.just.ro) (prefer **forma consolidată**).
2. Save raw dump into `99 Attachments/source-portal/` (browser Forma printabilă / WebFetch / SOAP).
3. Convert with `python3 scripts/ingest_ro_portal.py --convert KEY` (or `--batch-a`).
4. **Verify currency** — SOAP and some HTML dumps are not always the latest consolidation. Flag with `currency_warning` / `[!warning]` when needed. Update [[Currency ledger]].

Helpers:
- `scripts/download_ro_portal.py` — SOAP GetToken / Search (HTTP). Good for base texts; **not** latest consolidări.
- `scripts/ingest_ro_portal.py` — convert dumps → article-anchored `— text` notes.

> [!warning] Known retrieval limits
> - Portal HTML viewers are often JS-rendered (`Se încarcă…`); HTTPS from some agents fails with empty reply.
> - WebFetch truncates ~1 MB — large consolidations of Codul fiscal / CPF need manual PDF/print download.
> - SOAP API (`/apiws/FreeWebService.svc/SOAP` over **HTTP**) returns full text for many codes/republications but **not** the newest consolidare.

## Currency
Keep [[Currency ledger]] current whenever an act is re-ingested. Dataview queries: [[Dataview — currency & corpus]].
