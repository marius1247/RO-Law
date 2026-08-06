---
title: "Home — Romanian Law"
type: home
tags: [home, index]
created: 2026-07-26
updated: 2026-08-06
---

# Romanian Law

Working vault for Romanian law: **authoritative Romanian legal texts** from [Portal Legislativ](https://legislatie.just.ro) (Ministerul Justiției) with an **English analysis layer** on top — same two-layer model as [[Conventions]] (identical across EU / RO / MD vaults).

## How this vault is organised

1. **The law itself** → `10 Legislation/` — `(text)` notes (RO, article-anchored) + companion `(notă)` (EN), filed by instrument type.
2. **The value-add** → `20 Domains` · `30 Concepts` · `50 MOCs` · `60 Authorities` · `20 Position Papers`.
3. **Meta layer** → `01 Legal system/` — hierarchy, OUG, Monitorul Oficial, [[Currency ledger]].

See [[Conventions]] for naming, frontmatter, and ingestion.

## Start here

- [[Conventions]] — structure & ingestion rules
- [[Roadmap]] — build plan, vault inventory & energy gaps (`00 Inbox/`)
- [[Currency ledger]] — per-act currency status
- [[SOURCE INDEX]] — raw portal dumps → working texts
- [[Dataview — currency & corpus]] — live tables (Dataview plugin)
- `00 Inbox/` — download checklists (Batch A currency · Batch B ANRE)

## Foundations (meta)

| Note | Focus |
|---|---|
| [[Constitutia Romaniei (text)|Constituția]] | Supreme law (republicată 2003) · [[Constitutia Romaniei (notă)|notă]] |
| [[Legea 24-2000 — tehnica legislativa (text)|L24/2000]] | Legislative drafting · [[Legea 24-2000 — tehnica legislativa (notă)|notă]] |
| [[Ierarhia actelor normative]] | Force ranking incl. **OUG** |
| [[OUG 33-2007 — organizarea ANRE (text)|OUG 33/2007]] | ANRE organic statute |

## Batch A — keystone texts

| Act | Working text | Analysis | Currency |
|---|---|---|---|
| L123/2012 — energie & gaze | [[Legea 123-2012 — energia electrica si gazele naturale (text)]] | [[Legea 123-2012 — energia electrica si gazele naturale (notă)|notă]] | current (~2026-02) |
| L220/2008 — regenerabile | [[Legea 220-2008 — promovare energie regenerabila (text)]] | [[Legea 220-2008 — promovare energie regenerabila (notă)|notă]] | current → 2025-11 |
| L31/1990 — societăți | [[Legea 31-1990 — societatile (text)]] | [[Legea 31-1990 — societatile (notă)|notă]] | current (print) |
| Codul fiscal (L227/2015) | [[Codul fiscal 227-2015 (text) — Index]] | [[Codul fiscal 227-2015 (notă)|notă]] | **lagging** SOAP |
| CPF (L207/2015) | [[Codul de procedura fiscala 207-2015 (text) — Index]] | [[Codul de procedura fiscala 207-2015 (notă)|notă]] | **lagging** SOAP |

> [!warning] Currency — Cod fiscal & CPF
> Full SOAP working texts lag portal consolidări through **01.07.2026** (CF) and **08.05.2026** (CPF). Truncated newer dumps are in `99 Attachments/source-portal/`. Browser Forma printabilă still required for full re-ingest — see [[Download checklist — Batch A currency]].

## Domain maps

| Hub | Synthesis | Authorities |
|---|---|---|
| [[MOC — Energetică]] | [[Energetică — synthesis]] | [[ANRE]] |
| [[MOC — Societăți & Guvernanță]] | [[Societăți & guvernanță — synthesis]] | [[ONRC]] |
| [[MOC — Fiscalitate]] | [[Fiscalitate — synthesis]] | [[ANAF]] |

## Cross-disciplinary indexes (RAG hubs)

- [[_Energy Investment Due Diligence Index]] — RES / conventional energy DD pipeline
- [[Tarife retea — snapshot 2026]] — regulated network tariff snapshot (producers)
- [[_M&A Regulatory Compliance Checklist]] — competition, tax, HR, sectoral licensing
- [[_Regulatory Risk & Litigation Matrix]] — forums, appeals, suspension mechanisms

## Batch B — energy normative (ingested 2026-08-05)

Racordare · furnizare · metodologii tarifare · OUG 134/143/163 · BESS norme · 2026 tariff Ordine — see [[MOC — Energetică]] · [[Currency ledger]] · [[SOURCE INDEX]].

## Batch C1 — network tariff deep analysis (2026-08-06)

Deep `(notă)` + concepts for transport / distribution / SS methodologies and Ord. **74/2025** — [[ANRE — Metodologii tarifare EE (notă)]] · [[Concept — Tarif de transport TG si TL]] · [[Concept — Tarif de distributie TD]].

## Batches C2–C5 — CV / CfD / communities / wholesale / keystones (2026-08-06)

- **C2:** [[ANRE — Metodologie quota certificate verzi 2022 (notă)|Ord. 96/2022]] · [[ANRE — Ordin 81-2025 Quota certificate verzi 2026 (notă)|Ord. 81/2025]] · [[ANRE — Metodologie contributie CfD 2024 (notă)|Ord. 51/2024]] · [[Concept — Cota obligatorie certificate verzi]] · [[Concept — Contributie CfD]]
- **C3:** [[Concept — Comunitate de energie]] wired into Ord. 9/50 notes
- **C4:** [[Concept — Participant PEE OPCOM]] wired into Cod comercial + OPCOM registration
- **C5 (partial):** concept graphs on [[Legea 123-2012 — energia electrica si gazele naturale (notă)|L123]] · [[Legea 220-2008 — promovare energie regenerabila (notă)|L220]]

Backlog: [[Analysis backlog — texts without notă-concepts]].

## Quality pass (2026-08-06)

Corrected Ord. **76/77** Delgaz/DEER text filenames · fixed broken `\|` wikilinks · deepened OUG 134/143 · Ord. 56 BESS · furnizare · racordare notes.

## Sectoral analysis (text pending ingestion)

| Act | Analysis |
|---|---|
| [[Legea 21-1996 — concurenta (notă)|L21/1996 — concurență]] | Antitrust, merger control, dawn raids |
| [[Legea 53-2003 — codul muncii (notă)|L53/2003 — Codul muncii]] | Employment, REGES, termination |
| [[Legea 98-2016 — achizitii publice (notă)|L98/2016 — achiziții publice]] | SEAP, CNSC, tender disputes |
| [[Legea 208-2015 — piete de capital (notă)|L208/2015 — piețe financiare]] | BNR/ASF, mandatory takeover bids |
| [[OUG 195-2005 — protectia mediului (notă)|OUG 195/2005 — mediu]] | EIA, AIM, ESG / contamination liability |

## Sibling vaults

- `Moldovan Law/` — structural model · comparative L164/L108/L10
- `EU Law/` — EU acquis cross-links (Dir. 2019/944, RED III, gas package)
