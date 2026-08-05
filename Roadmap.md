---
title: "Roadmap"
type: project
tags: [project, roadmap]
created: 2026-07-26
updated: 2026-08-05
---

# Roadmap — Romanian Law

Master build plan. **Done** = in vault today. **Next** = gaps, split by whether sources are **retrievable** (portal / ANRE / OPCOM / Transelectrica PDFs) vs **manual or out-of-scope**.

Hubs: [[Home]] · [[MOC — Energetică]] · [[Currency ledger]] · [[Download checklist — Batch B ANRE]]

---

## Done — Vault infrastructure

- Folder scaffold, [[Convenții vault]], `.obsidian`, templates, [[Home]], [[SOURCE INDEX]]
- Ingest: `scripts/ingest_ro_portal.py` · `scripts/download_ro_portal.py`
- Meta layer: [[Ierarhia actelor normative]] · [[Monitorul Oficial]] · [[Glosar juridic]] · [[Procesul legislativ]] · [[Sistemul de drept al RO (overview)]] · [[Currency ledger]] · [[Dataview — currency & corpus]]
- Inbox checklists: [[Download checklist — Batch A currency]] · [[Download checklist — Batch B ANRE]]
- Cross-vault RAG indexes: [[_Energy Investment Due Diligence Index]] · [[_M&A Regulatory Compliance Checklist]] · [[_Regulatory Risk & Litigation Matrix]]

---

## Done — Primary legislation (`10 Acte normative/`)

### Full `— text` + `— notă` (operational)

| Act | Text | Analysis | Currency |
|---|---|---|---|
| Constituția (republicată 2003) | [[Constitutia Romaniei (text)]] | [[Constitutia Romaniei (notă)]] | current |
| L24/2000 — tehnica legislativă | [[Legea 24-2000 — tehnica legislativa (text)]] | [[Legea 24-2000 — tehnica legislativa (notă)]] | lagging SOAP |
| OUG 33/2007 — ANRE | [[OUG 33-2007 — organizarea ANRE (text)]] | [[OUG 33-2007 — organizarea ANRE (notă)]] | current |
| **L123/2012 — energie & gaze** | [[Legea 123-2012 — energia electrica si gazele naturale (text)]] | [[Legea 123-2012 — energia electrica si gazele naturale (notă)]] | current (~2026-02) |
| **L220/2008 — regenerabile** | [[Legea 220-2008 — promovare energie regenerabila (text)]] | [[Legea 220-2008 — promovare energie regenerabila (notă)]] | current (~2025-11) |
| L31/1990 — societăți | [[Legea 31-1990 — societatile (text)]] | [[Legea 31-1990 — societatile (notă)]] | current |
| Codul fiscal L227/2015 | [[Codul fiscal 227-2015 (text) — Index]] (Titluri I–XI) | [[Codul fiscal 227-2015 (notă)]] | **lagging** |
| CPF L207/2015 | [[Codul de procedura fiscala 207-2015 (text) — Index]] | [[Codul de procedura fiscala 207-2015 (notă)]] | **lagging** |

### Analysis-only (`— notă` without working text)

| Act | Note | Energy relevance |
|---|---|---|
| L21/1996 — concurență | [[Legea 21-1996 — concurenta (notă)]] | SPV acquisitions |
| L53/2003 — Codul muncii | [[Legea 53-2003 — codul muncii (notă)]] | O&M workforce |
| L98/2016 — achiziții publice | [[Legea 98-2016 — achizitii publice (notă)]] | EPC / public grid |
| L208/2015 — piețe de capital | [[Legea 208-2015 — piete de capital (notă)]] | Listed issuers |
| OUG 195/2005 — mediu | [[OUG 195-2005 — protectia mediului (notă)]] | EIA / AIM |
| OUG 163/2022 — RED II / L220 | [[OUG 163-2022 — promovare energie regenerabila (notă)]] | RES amendments |

---

## Done — Energy secondary acts & procedures

### ANRE — full or partial ingest

| Item | Text | Analysis | Status |
|---|---|---|---|
| Ord. 25/2004 — Cod comercial angro EE | [[ANRE — Ordin 25-2004 Cod comercial piata angro EE (text)]] + [[ANRE — Ordin 25-2004 Cod comercial piata angro EE — Anexa (text)]] | [[ANRE — Ordin 25-2004 Cod comercial piata angro EE (notă)]] | ✅ text; partially repealed |
| Ord. 77/2017 — PCV | [[ANRE — Ordin 77-2017 Regulament PCV (text)]] | [[ANRE — Ordin 77-2017 Regulament PCV (notă)]] | ✅ |
| Ord. 9/2026 — comunități energie | [[ANRE — Ordin 9-2026 Reguli comunitati energie (text)]] | [[ANRE — Ordin 9-2026 Comunitati energie (notă)]] | ✅ |
| Ord. 50/2026 — registru comunități | [[ANRE — Ordin 50-2026 Procedura registru comunitati (text)]] | [[ANRE — Ordin 50-2026 Registru comunitati energie (notă)]] | ✅ |
| Ord. 52/2024 — contracte-cadru CfD | — | [[ANRE — Ordin 52-2024 Contracte-cadru CfD (notă)]] | notă + PDF ref |
| Ord. 59/2025 — smart grid KPIs | — | [[ANRE — Ordin 59-2025 Metodologie indicatori retea inteligenta (notă)]] | notă + PDF ref |
| Ord. 12/2023 — tranzacționare OPCOM | — | [[ANRE — Ordin 12-2023 Regulament tranzactionare OPCOM (notă)]] | notă only |
| Ord. 134/2022 — piață termen | — | [[ANRE — Ordin 134-2022 Piata termen (notă)]] | notă only |
| Ord. 98/2015 — autorizare gaze | — | [[ANRE — Ordin 98-2015 Autorizare gaze (notă)]] | notă only |
| Ord. 60/2025 + 73/2025 + 10/2026 — tarife SS/ITC | — | [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]] | notă only; SS **14,70** from 2026 |

### HG — CfD framework

| Item | Status |
|---|---|
| [[HG 318-2024 — cadru general CfD (notă)]] | ✅ practice note |
| [[HG 318-2024 — Anexa CfD eolian solar (notă)]] | ✅ practice note |

### OPCOM — procedures (mostly notă + PDF refs)

| Item | Text | Analysis |
|---|---|---|
| Înregistrare PEE Rev. 17 | [[OPCOM — Procedura inregistrare PEE rev 17 (text)]] | [[OPCOM — Procedura inregistrare PEE rev 17 (notă)]] |
| PO-PZU Rev. 7 | — | [[OPCOM — PO-PZU Rev7 2025 (notă)]] |
| Garanții PZU/PI | — | [[OPCOM — Procedura garantii PZU-PI 2025 (notă)]] |
| Act adițional PZU-PI | — | [[OPCOM — Act aditional model unic PZU-PI 2025 (notă)]] |
| NF PZU-PRE | — | [[OPCOM — Procedura NF PZU-PRE 2015 (notă)]] |

### Raw attachments (`99 Attachments/`)

| Dump | Use |
|---|---|
| `307058` — L123 consolidat | Source for working text |
| `98742` — L220 consolidat | Source for working text |
| `264610` — Ord. 5/2023 furnizare (SOAP) | **Not converted** — currency-check then ingest |
| `257158` / `195958` — OUG 33/2007 | ANRE organic law |
| Truncated CF/CPF (`311622`, `309359`, `307010`) | Pending Batch A re-ingest |

> [!note] Missing dump
> Checklist references `150711` (Ord. 59/2013 racordare) — **file not in repo**; must be downloaded.

---

## Done — Analysis & navigation layer

### Domain syntheses (`20 Domenii/`)

- [[Energetică — sinteza sectorului]]
- [[Tarife retea — snapshot 2026]] *(2026-08-05)*
- [[Fiscalitate — sinteza sistemului fiscal]]
- [[Societăți & guvernanță — sinteza]]

### Energy concepts (`30 Concepte/`)

| Concept | Topic |
|---|---|
| [[Concept — Licență în energetică]] | Licensing gate |
| [[Concept — Racordare la rețea]] | Connection / ATR |
| [[Concept — Unbundling]] | Vertical separation |
| [[Concept — Furnizor de ultimă instanță]] | FUI |
| [[Concept — Certificat verde]] | GC scheme |
| [[Concept — Cost stack producator energie]] | TG/SS/TD/TL/reactive/imbalance *(2026-08-05)* |
| [[Concept — BESS economics si tarifare stocare]] | Ord. 56/2025 *(2026-08-05)* |
| [[Concept — PRE si responsabilitate de echilibrare]] | BRP onboarding *(2026-08-05)* |
| [[Concept — Curtailment si redispatch RES]] | RES constraint risk *(2026-08-05)* |

### Authorities (`60 Autorități & Instituții/`)

- [[ANRE]] · [[ANAF]] · [[ONRC]] · [[00 - Harta instituțională]]

### MOCs (`50 MOCs/`)

- [[MOC — Energetică]] · [[MOC — Fiscalitate]] · [[MOC — Societăți & Guvernanță]] · [[00 - Index general]]

---

## Done — Producer / market practitioner pass (2026-08-05)

- [[Concept — Cost stack producator energie]] — technology × voltage cost matrix
- [[Concept — BESS economics si tarifare stocare]] — double-taxation removal
- [[Concept — PRE si responsabilitate de echilibrare]] — Transelectrica BRP path
- [[Concept — Curtailment si redispatch RES]] — statutory + DD framing
- [[Tarife retea — snapshot 2026]] — live 2026 tariff table (verify-before-advice)
- Updated [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]] — Ord. 73/2025 SS **14,70 lei/MWh**
- Wired into [[MOC — Energetică]] · [[_Energy Investment Due Diligence Index]] · [[Home]]

---

## Next — Energy (retrievable)

Normative sources available from **Portal Legislativ**, **ANRE**, **OPCOM**, or **Transelectrica** public sites. Drop into `99 Attachments/source-anre/` or `source-opcom/` then ingest.

### A. Batch B core — normative Ordine (high priority)

| Act | Why | Retrieve from |
|---|---|---|
| **Ord. 59/2013** (+ consolidations) — racordare EE | ATR, connection charges, reinforcement | Portal / ANRE — dump `150711` **missing from repo** |
| **Ord. 5/2023** — furnizare EE | Metering, billing, supply switching | SOAP `264610` **in repo** → currency-check + convert |
| **Electricity market rules** (current normative Ordin) | Balancing, scheduling, commercial rules post-2014 repeal | ANRE / portal |
| **Electricity network code(s)** | Redispatch, curtailment compensation, technical requirements | ANRE |
| **Tariff methodologies** Ord. **67/2024** (distribuție), **68/2024** (transport), **116/2022** (SS) | Explain TG/TL/SS/TD building blocks | ANRE PDFs |
| **GC stack** — Ord. **96/2022** (quota methodology), **81/2025** (2026 quota), issuance/billing Ordine | Legacy RES revenue/compliance | Portal / ANRE |

### B. 2024–2026 market-design acts (retrievable from portal)

| Act | Why |
|---|---|
| **OUG 134/2024** — stocare | Parent law for Ord. 56/2025; definitions in L123 |
| **OUG 143/2021** — Dir. 2019/944 | Clean Energy Package transposition into L123 |
| **OUG 59/2025**, **OUG 80/2025** | Recent L123 amendments (check consolidare `307058`) |
| **ANRE Ord. 6/2025** — autorizare producție/stocare | BESS licensing procedure |
| **ANRE Ord. 56/2025** — norme stocare tarife | Full text for BESS note |
| **ANRE Ord. 51/2024** + **Ord. 10/2025** — contribuție CfD | CfD levy mechanics |
| **Tariff Ordine 73/2025, 74/2025, 76/2025, 77/2025** | Ingest alongside snapshot refresh |

### C. TSO / market operator procedures (retrievable from operator sites)

| Source | Why |
|---|---|
| Transelectrica — **PRE/BRP** registration, Balancing Agreement, collateral procedure | Operationalise [[Concept — PRE si responsabilitate de echilibrare]] |
| Transelectrica — **balancing market** / redispatch rules | Imbalance pricing; curtailment compensation detail |
| OPCOM — **PO-PZU Rev.7**, **PI-SIDC**, settlement procedures (full text ingest) | Complement existing notă-only OPCOM set |
| OPCOM — **trading fee schedules** | Complete producer cost stack |
| Ministerul Energiei — **Ord. 1290/2024** CfD auction rules | CfD DD |

### D. Synthesis notes still to write (after ingest)

| Note | Depends on |
|---|---|
| `Concept — Metodologii tarifare retea` | Ord. 67/68/116 ingest |
| `Concept — Agregare` | Market rules + L123 art. 3 / art. 10 |
| `Concept — CfD mecanism` (beyond existing HG/Ord. 52 notes) | Ord. 1290/2024, auction results |
| Expand [[Concept — Curtailment si redispatch RES]] with network-code articles | Network code ingest |
| Refresh [[Tarife retea — snapshot 2026]] when new Ordine publish | Ongoing |

---

## Next — Energy (manual, blocked, or out-of-scope)

### Out of scope by design (do not ingest)

| Item | Reason |
|---|---|
| Individual **ANRE Decizii** (licences, site-specific tariffs, named FUI) | Dates fast; pull live from anre.ro per operator |
| **Historical tariff Decizii** archive | Covered by methodology + [[Tarife retea — snapshot 2026]] snapshot |
| **Project-specific ATR / connection contracts** | Transaction documents, not normative law |

### Manual / blocked retrieval

| Item | Blocker |
|---|---|
| L123 **post–Feb 2026 consolidare** if portal moves before next pull | Re-check `307058` |
| **Cod fiscal / CPF** full 2026 consolidare | Portal HTTPS / ~1 MB WebFetch truncation → manual PDF ([[Download checklist — Batch A currency]]) |
| **Gas network code / gas market rules** (Title II L123) | Lower priority; same Batch B pattern |
| **OUG 163/2022** full text | Note only; portal ingest pending |
| **Crisis OUGs** (27/2022 lineage — windfall, price caps) | Needed for retail/intervention DD; scattered amendments |

### Operator-specific (retrieve when advising named client)

- Live **TG/SS/TD** invoice breakdown from Transelectrica / DSO
- **BRP collateral** amount letters
- **Curtailment logs** / constraint maps from TSO
- **CfD contract** and auction award for specific SPV

---

## Next — Non-energy (brief)

| Item | Status |
|---|---|
| Batch A — CF/CPF full re-ingest (01.07.2026 / 08.05.2026) | **lagging** — manual portal |
| L21, L53, L98, L208, OUG 195 — primary **text** ingest | notă only today |
| L24/2000 newer consolidare | lagging SOAP |
| Deepen concept notes with `#Articolul N` links as Batch B lands | ongoing |
| Cross-link `EU Law/` · Moldovan Law parallels | ongoing |
| Gas/hydrogen package (Dir 2024/1788) → L123 Title II | watch |

---

## Watch list

| Item | Why |
|---|---|
| L123/2012 consolidări 2025–2026 | OUG 59/80/134/143; ANRE adaptation deadlines |
| ANRE Ordine re-issues (SS, TG, TD) | SS changed **3× in 2025**; snapshot note needs refresh |
| BESS / storage rulemaking | Ord. 56/2025 interim; permanent storage tariff study pending |
| CfD scheme operational maturity | Ord. 5/2025, 71/2025 amendments to Ord. 52/2024 |
| PICASSO / MARI / 15-min imbalance | EU platforms affecting PRE economics |
| Gas/hydrogen package | Title II L123 rewrite vs amend-in-place |
| Cod fiscal / CPF | High amendment velocity — [[Currency ledger]] |

---

## Maintenance rhythm

1. **Quarterly:** refresh [[Tarife retea — snapshot 2026]] when ANRE publishes tariff Ordine (Jan + ad-hoc SS).
2. **On MO publish:** check L123/L220 consolidare on portal; update [[Currency ledger]].
3. **Per ingest batch:** add `— text`, companion `— notă`, link from [[MOC — Energetică]].
4. **Never:** bulk-ingest individual Decizii — see [[Convenții vault]] scope rule.
