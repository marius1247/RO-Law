---
title: "Roadmap"
type: project
tags: [project, roadmap]
created: 2026-07-26
updated: 2026-07-26
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
