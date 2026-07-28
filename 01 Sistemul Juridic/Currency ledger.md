---
title: "Currency ledger"
type: reference
domeniu: [sistemul-juridic]
tags: [reference, currency, meta]
created: 2026-07-26
updated: 2026-07-26
---

# Currency ledger — per-act version tracking

Single table for **keystone acts** in this vault. Status meanings:

| Status | Meaning |
|---|---|
| **current** | Working text matches a recent portal consolidare adequate for operational citation |
| **lagging** | Full working text exists but is older than the portal’s latest consolidare |
| **partial** | Dump incomplete / truncated / SOAP-only annex gaps — do not treat as complete consolidare |

Last checked: **2026-07-26**. Re-check before advising. Source map: [[SOURCE INDEX]] · download queues: [[Download checklist — Batch A currency]] · [[Download checklist — Batch B ANRE]].

## Primary & Batch A

| Act | portal_id | versiune_text | consolidare (note) | Last checked | Status |
|---|---|---|---|---|---|
| [[Constitutia Romaniei (text)\|Constituția]] | 47355 | 2003-10-31 | Republicată 2003 (L429/2003) | 2026-07-26 | **current** |
| [[Legea 24-2000 — tehnica legislativa (text)\|L24/2000]] | 118116 | 2010-01-01 | SOAP republicată; newer portal consolidări exist | 2026-07-26 | **lagging** |
| [[OUG 33-2007 — organizarea ANRE (text)\|OUG 33/2007]] | 257158 | 2022-07-22 | Afis 257158 (incl. L221/2022 notes) | 2026-07-26 | **current** |
| [[Legea 123-2012 — energia electrica si gazele naturale (text)\|L123/2012]] | 307058 | 2026-02-27 | Portal consolidare (incl. OUG 9/2026 notes) | 2026-07-26 | **current** |
| [[Legea 220-2008 — promovare energie regenerabila (text)\|L220/2008]] | 98742 | 2025-11-07 | Portal consolidare → nov. 2025 | 2026-07-26 | **current** |
| [[Legea 31-1990 — societatile (text)\|L31/1990]] | print-31-1990 | 2024-12-06 | Forma printabilă (L265/2022, L299/2024 visible) | 2026-07-26 | **current** |
| [[Codul fiscal 227-2015 (text) — Index\|Cod fiscal L227/2015]] | 171282 *(work)* / 307010 · 311622 *(newer trunc.)* | 2016-01-01 | SOAP full; portal consolidări through **01.07.2026** not ingested | 2026-07-26 | **lagging** |
| [[Codul de procedura fiscala 207-2015 (text) — Index\|CPF L207/2015]] | 170007 *(work)* / 309359 *(newer trunc.)* | 2016-01-01 | SOAP full; portal history through **08.05.2026** | 2026-07-26 | **lagging** |

## Planned ANRE Ordine (Batch B — normative only)

| Act (planned) | portal_id (if known) | versiune_text | consolidare (note) | Last checked | Status |
|---|---|---|---|---|---|
| ANRE Ordin **59/2013** — racordare EE (+ amends) | 150711 | *(SOAP dump)* | Connection regulation — ingest after currency check | 2026-07-26 | **partial** |
| ANRE Ordin **5/2023** — furnizare EE | 264610 | *(SOAP dump)* | Supply regulation — ingest after currency check | 2026-07-26 | **partial** |
| ANRE Ordine — **piețe** (EE / gaz) | *TBD* | — | Market rules — normative Ordine only | 2026-07-26 | **partial** |
| ANRE Ordine — **coduri de rețea** | *TBD* | — | Network codes | 2026-07-26 | **partial** |
| ANRE Ordine — **metodologii tarifare** | *TBD* | — | Tariff methodologies (not individual tariff Decizii) | 2026-07-26 | **partial** |
| ANRE Ordine — **certificate verzi** / L220 support | *TBD* | — | GC quota / trading / issuance methodologies | 2026-07-26 | **partial** |

> [!important] Scope rule (same as MD)
> Ingest **normative Ordine** (rules, codes, procedures, methodologies). Do **not** ingest individual **Decizii** (licences, site-specific tariffs) — they date fast and swamp the graph. → [[Download checklist — Batch B ANRE]]

## How to update a row
1. Pull latest **formă consolidată** from legislatie.just.ro / ANRE.
2. Drop raw file into `99 Attachments/source-portal/`.
3. Re-ingest into `10 Acte normative/`.
4. Update `versiune_text`, consolidare note, last checked, and status in this table.
