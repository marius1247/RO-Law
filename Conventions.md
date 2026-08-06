---
title: "Conventions"
type: reference
tags: [reference, meta]
created: 2026-07-26
updated: 2026-08-06
---

# Conventions — Romanian Law

Identical model to the EU / Moldovan vaults: **legal corpus + analysis layer**, not a note dump.

## Core idea — two layers, always

| Layer | Role |
|---|---|
| `(text)` | Authoritative raw law (immutable substance; article-anchored) |
| `(notă)` | Expert English analysis you can work from without reopening the official source |

Industry / topic lives in **Domains + MOCs + frontmatter `domain[]`** — not as the main filing system under Legislation.

Open **`Romanian Law/`** (this repo root) as its own Obsidian vault root.

## Folder skeleton

| Folder | Role |
|---|---|
| `00 Inbox` | Capture, download lists, roadmaps, unfiled |
| `01 Legal system` | Meta: hierarchy, packages, procedures, bridges |
| `10 Legislation/` | Working corpus by **instrument type** |
| `20 Domains` | One synthesis per industry / practice area |
| `20 Position Papers` | Soft law / regulator guidance |
| `30 Concepts` | Atomic doctrine notes (`Concept — …`) |
| `50 MOCs` | Maps of content by domain |
| `60 Authorities` | Institutional profiles |
| `90 Templates` | Note templates |
| `99 Attachments/source-…` | Immutable raw dumps (HTML/PDF) |
| `uploads/` | Repo-level drop zone (cleared after each batch) |

### Under `10 Legislation` (RO instrument types)

`Constitution` · `Codes` · `Laws` · `Ordinances` · `Government Decisions` · `Regulator Acts`

> Industry stays in `20` / `50`, never as the primary taxonomy under `10`.

### Under `99 Attachments`

- `source-portal/` — raw Portal Legislativ dumps (named by `portal_id`). Index: [[SOURCE INDEX]]
- `source-opcom/` — OPCOM originals
- `source-hg/` — HG texts / annexes / MO extras
- `source-anre/` — ANRE Ordine / methodologies (PDF)

Do not edit dumps; re-ingest into `10` when updating.

## Naming conventions

| Kind | Pattern | Example |
|---|---|---|
| Legislation | `<Type Nr-Year> — <short name> (text)` / `(notă)` | `Legea 123-2012 — energia electrica si gazele naturale (text)` |
| Concepts | `Concept — <name>` | `Concept — Unbundling` |
| Domains | `<Industry> — synthesis` | `Energetică — synthesis` |
| Maps | `MOC — <domain>` | `MOC — Energetică` |
| Authorities | plain institution name | `ANRE` |
| Position papers | `<Issuer> — <short title> (notă)` | `ANRE — … (notă)` |

- Use `-` in filenames for numbers (`2012-123` style already used as `123-2012`); keep legal form in prose (`Legea nr. 123/2012`).
- Filenames: ASCII-safe (no diacritics preferred); full RO title lives in `title` frontmatter / H1.
- Large codes: `<Cod> — text — Titlul N` + `<Cod> (text) — Index`.

## Note types & linking rules

- **`(text)`** — full consolidated text; headings as `### Articolul N` so links resolve: `[[Act (text)#Articolul N]]`
- **`(notă)`** — expert analysis: thesis → architecture → operative regime by problem → definitions → obligations → enforcement → hard edges → interactions → file checklist
- **Concepts** — one doctrine/term; always cite defining article
- **MOCs** — hub linking acts, notes, concepts, authorities for one domain
- **Domains** — synthesis / architecture across a practice area
- **Authorities** — mandate, enabling acts, what they issue

**Never edit substance of `(text)`** except to update to a newer consolidation.

## Frontmatter

### Acts — cross-vault minimum

`type`, `instrument`, `portal_id` (national ID), `domain[]`, `in_force`, `source_url`, `version_date`

RO-specific companions (keep when useful): `nr`, `an`, `forta_juridica`, `mo_publicare`, `consolidare`, `continut`, `text_complet`, `articole_numarate`

| Canonical | RO alias (legacy) |
|---|---|
| `instrument` | `act_type` |
| `domain` | `domeniu` |
| `in_force` | `in_vigoare` |
| `source_url` | `portal_url` |
| `version_date` | `versiune_text` |

**`instrument`:** `constituție | cod | lege | ordonanță-urgență | ordonanță | hotărâre-guvern | act-anre | tratat`

**`forta_juridica`:** 1=Constituție … 8=act-autoritate

### Notes

`status` (`stub` / `reviewed`), `depth` (`expert`), link back to the `(text)`

## Ingestion workflow

1. Get the official consolidated source ([Portal Legislativ](https://legislatie.just.ro) — prefer **forma consolidată**).
2. Drop immutable dump in `99 Attachments/source-portal/` (or `source-anre/` / `source-opcom/` / `source-hg/`).
3. Convert to article-anchored markdown in `10` as `(text)` — `python3 scripts/ingest_ro_portal.py --convert KEY` (or `--batch-a`).
4. Write companion `(notă)` from [[Template — Act (notă)]].
5. Wire into the right `MOC — …` and update domain / concept links.
6. Keep [[SOURCE INDEX]] mapping dump → working note; update [[Currency ledger]].

Helpers:

- `scripts/download_ro_portal.py` — SOAP GetToken / Search (HTTP). Good for base texts; **not** always the latest consolidare.
- `scripts/ingest_ro_portal.py` — convert dumps → article-anchored `— text` notes.

> [!warning] Known retrieval limits
> - Portal HTML viewers are often JS-rendered; HTTPS from some agents fails with empty reply.
> - WebFetch truncates ~1 MB — large consolidations of Codul fiscal / CPF need manual PDF/print download.
> - SOAP API returns full text for many codes/republications but **not** always the newest consolidare.

## Currency

Keep [[Currency ledger]] current whenever an act is re-ingested. Dataview: [[Dataview — currency & corpus]].
