---
title: "Roadmap"
type: project
tags: [project, roadmap]
created: 2026-07-26
updated: 2026-07-28
---

# Roadmap — Romanian Law

## Done — Foundations (2026-07-26)
- Vault scaffold (folders, [[Convenții vault]], templates, [[Home]], [[SOURCE INDEX]])
- Ingest script: `scripts/ingest_ro_portal.py` · SOAP helper: `scripts/download_ro_portal.py`
- **Batch A texts** ingested as article-anchored markdown:
  - [[Legea 123-2012 — energia electrica si gazele naturale (text)|L123/2012]]
  - [[Legea 220-2008 — promovare energie regenerabila (text)|L220/2008]]
  - [[Legea 31-1990 — societatile (text)|L31/1990]]
  - [[Codul fiscal 227-2015 (text) — Index|Codul fiscal]] (Titluri I–XI)
  - [[Codul de procedura fiscala 207-2015 (text) — Index|CPF]] (Titluri I–XII)
- **Meta layer:** [[Constitutia Romaniei (text)|Constituție]], [[Legea 24-2000 — tehnica legislativa (text)|L24/2000]], [[OUG 33-2007 — organizarea ANRE (text)|OUG 33/2007]], [[Ierarhia actelor normative]], [[Monitorul Oficial]], [[Glosar juridic]], [[Currency ledger]]
- **Five + meta `— notă` companions** filled (draft analysis, not stubs)
- **Domain MOCs + EN syntheses** (Energetică · Societăți · Fiscalitate) · concepts · ANRE/ONRC/ANAF
- **Productize:** `.obsidian` + Dataview query note · cross-vault wiring in energy notes
- Batch B: SOAP stubs for ANRE Ord. 59/2013 & 5/2023 + [[Download checklist — Batch B ANRE]]

## Done — Analysis expansion (2026-07-28)

### Batch 1 — Constitutional & system architecture (enhanced)
- [[Constitutia Romaniei (notă)]] — executive briefing, OUG risk matrix, CCR mechanics
- [[Sistemul de drept al RO (overview)]] — sources of law, ÎCCJ RIL/HP, administrative litigation
- [[Ierarhia actelor normative]] — conflict-resolution matrix, strategic risk notes

### Batches 2–3 — Energy & tax (enhanced)
- [[Legea 123-2012 — energia electrica si gazele naturale (notă)]] — executive briefing (PPA, ATR, licensing)
- [[Codul fiscal 227-2015 (notă)]] · [[Codul de procedura fiscala 207-2015 (notă)]] — 2025–2026 reform briefing tables
- CfD stack already at practice-note depth: [[HG 318-2024 — cadru general CfD (notă)]] · [[ANRE — Ordin 52-2024 Contracte-cadru CfD (notă)]]

### Batch 4 — Competition & employment (analysis-only; text pending)
- [[Legea 21-1996 — concurenta (notă)]]
- [[Legea 53-2003 — codul muncii (notă)]]

### Batch 5 — Sectoral & special (analysis-only; text pending)
- [[Legea 98-2016 — achizitii publice (notă)]]
- [[Legea 208-2015 — piete de capital (notă)]]
- [[OUG 195-2005 — protectia mediului (notă)]]

### RAG cross-reference indexes
- [[_Energy Investment Due Diligence Index]]
- [[_M&A Regulatory Compliance Checklist]]
- [[_Regulatory Risk & Litigation Matrix]]

### Uploads ingested (2026-07-28)
- [[ANRE — Ordin 25-2004 Cod comercial piata angro EE (text)]] + anexă + [[ANRE — Ordin 25-2004 Cod comercial piata angro EE (notă)|notă]]
- [[ANRE — Ordin 77-2017 Regulament PCV (text)]] + [[ANRE — Ordin 77-2017 Regulament PCV (notă)|notă]]
- [[OPCOM — Procedura inregistrare PEE rev 17 (text)]] + [[OPCOM — Procedura inregistrare PEE rev 17 (notă)|notă]]
- [[ANRE — Ordin 9-2026 Reguli comunitati energie (text)]] · [[ANRE — Ordin 50-2026 Procedura registru comunitati (text)]] — linked to existing notes

## Next
1. **Manual portal PDFs** for latest Cod fiscal (`311621`/`311622`, 01.07.2026) + CPF (`309359`, 08.05.2026) → full re-ingest (agent blocked by HTTPS/1 MB WebFetch)
2. Batch B ANRE Ordine with **annexes**: racordare, piețe, network codes, tariff methodologies, green certificates (normative Ordine only)
3. Spot-check L24/2000 newer consolidare; L220 after next GC amendments
4. Deepen concept notes with more `#Articolul N` citations as secondary layer lands
5. Keep cross-links current to `EU Law/` and Moldovan Law parallels

## Watch list
| Item | Why |
|---|---|
| L123/2012 consolidări 2025–2026 | Market-design OUGs; ANRE adaptation deadlines |
| Cod fiscal / CPF | High amendment velocity — [[Currency ledger]] |
| ANRE Ordine re-issues | Parallel to MD HANRE currency lesson |
| Gas/hydrogen package (Dir 2024/1788) | Title II of L123 will move |
