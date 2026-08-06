---
title: "Audit & Roadmap — downloads and analysis backlog"
type: project
tags: [project, roadmap, audit, inbox, download]
created: 2026-08-06
updated: 2026-08-06
---

# Audit & Roadmap — from here

Audit of the Romanian Law vault as of **2026-08-06**, plus the two operational queues you asked for:

1. **Manual downloads** — everything still missing as working `— text` (or lagging consolidare), with download-page links
2. **Analysis topics** — practitioner synthesis clusters to pre-build (same pattern as [[Piețe de echilibrare — sinteza]] / [[MOC — Piețe de echilibrare]])

Master plan remains [[Roadmap]]. Currency: [[Currency ledger]]. Raw map: [[SOURCE INDEX]].

---

## Vault snapshot (what you already have)

| Layer | Status |
|---|---|
| Infrastructure | Scaffold, templates, ingest scripts, [[Convenții vault]], [[Currency ledger]], checklists |
| Primary energy law | L123, L220, OUG 33/163/134/143 — full text + notă |
| Batch B core | Racordare, furnizare, metodologii tarifare, BESS norme, CfD stack, 2026 TG/TD/CV quota — ingested |
| Balancing analysis | ✅ synthesis + MOC + 7 concepts — **Ord. 127/2021 & 213/2020 texts still missing** |
| Producer economics | Cost stack, BESS economics/stacking, PRE, curtailment, tariff snapshot 2026 |
| Non-energy | CF/CPF lagging; L21/L53/L98/L208/OUG 195 = **notă only** |
| Gas Title II | Almost empty (only Ord. 98/2015 autorizare notă) |

**Pattern that works:** one domain synthesis + MOC hub + atomic concepts + act stubs → then backfill `— text` when PDFs land. Balancing is the template; everything in §2 below should follow it.

---

## 1. Full manual download list

> [!important] How to drop files
> 1. Browser → open link → **Forma consolidată** (portal) or PDF from ANRE / OPCOM / Transelectrica  
> 2. Save as Forma printabilă / PDF into `99 Attachments/source-portal/` (or `source-opcom/` / `source-anre/` / `source-hg/` as appropriate)  
> 3. Name: `<portal_id>_<stem>_consolidat-YYYY-MM-DD.pdf` (or `.md`)  
> 4. Ping for re-ingest via `python3 scripts/ingest_ro_portal.py`

SOAP/agent cannot pull latest large consolidări (HTTPS + ~1 MB WebFetch cap). **These must be done by hand.**

### 1.A — Critical currency (Batch A) — do first

| # | Act | Why manual | Download page | Drop as |
|---|---|---|---|---|
| A1 | **Codul fiscal L227/2015** — consolidare **01.07.2026** | Working text is old SOAP (`171282`); truncated dumps only | [Portal consolidare 311621](https://legislatie.just.ro/Public/DetaliiDocument/311621) → Afis text [311622](https://legislatie.just.ro/Public/DetaliiDocumentAfis/311622) → **Forma printabilă** | `311622_cod-fiscal-227-2015_consolidat-2026-07-01.pdf` |
| A2 | **CPF L207/2015** — consolidare **08.05.2026** | Same SOAP lag (`170007`); truncated `309359` | [Portal L207 shell](https://legislatie.just.ro/Public/DetaliiDocument/170005) → Afis [309359](https://legislatie.just.ro/Public/DetaliiDocumentAfis/309359) → **Forma printabilă** · ANAF HTML mirror: [anaf.ro CPF](https://static.anaf.ro/static/10/Anaf/cod_procedura/Cod_Procedura_Fiscala_2023.htm) | `309359_cod-procedura-fiscala-207-2015_consolidat-2026-05-08.pdf` |
| A3 | **L24/2000** tehnica legislativă — newer consolidare | SOAP republicată lagging | Search on [legislatie.just.ro](https://legislatie.just.ro) → L24/2000 forma consolidată | `<_id>_lege-24-2000_consolidat-YYYY-MM-DD.pdf` |
| A4 | **L220/2008** spot-check | Current to ~2025-11; re-pull after next GC/aid OUG | [Portal L220](https://legislatie.just.ro) search `220/2008` · existing dump `98742` | only if newer than vault |

### 1.B — Balancing / markets (unlocks existing analysis stubs)

| # | Act | Why | Download page | Drop as |
|---|---|---|---|---|
| B1 | **Ord. 127/2021** + Anexe 1–2 (BSP/FCR + PRE regulamente) | Hub for PCE/PE; stub exists, **no text** | [Portal Ord. 127/2021](https://legislatie.just.ro/Public/DetaliiDocument/259018) · consolidare track [282873](https://legislatie.just.ro/Public/DetaliiDocument/282873) · amendments e.g. [Ord. 121/2022](https://legislatie.just.ro/Public/DetaliiDocumentAfis/259744) | Prefer **full anexă** consolidare; also check [ANRE](https://www.anre.ro) PDF |
| B2 | **Ord. 213/2020** Regulament decontare dezechilibre | IBS 15-min; partially superseded by Ord. 127 from 2023-10 but still cited | [Portal Ord. 213/2020](https://legislatie.just.ro/Public/DetaliiDocument/234462) · consolidare [256358](https://legislatie.just.ro/Public/DetaliiDocument/256358) · Regulament Afis [234630](https://legislatie.just.ro/Public/DetaliiDocument/234630) | `234630_regulament-decontare-dezechilibre_soap.md` / PDF |
| B3 | **Ord. 60/2024** (EBGL product updates to Ord. 127) | Amendment chain for B1 | Search portal / [ANRE](https://www.anre.ro) for Ord. 60/2024 echilibrare | with B1 pack |
| B4 | **Ord. 12/2023** Regulament tranzacționare OPCOM | Notă only | Portal / ANRE search Ord. 12/2023 | text ingest |
| B5 | **Ord. 134/2022** Piața pe termen | Notă only | Portal / ANRE search Ord. 134/2022 | text ingest |

### 1.C — Licensing, network codes, connection tech

| # | Act | Why | Download page | Drop as |
|---|---|---|---|---|
| C1 | **Ord. 6/2025** Regulament licențe & autorizații EE (+ Ord. **26/2025** amend) | BESS / producție licensing gate | [Portal Ord. 6/2025](https://legislatie.just.ro/Public/DetaliiDocument/295859) · consolidare [298637](https://legislatie.just.ro/Public/DetaliiDocument/298637) · [Ord. 26/2025](https://legislatie.just.ro/Public/DetaliiDocumentAfis/299167) · ANRE hub: [Licențe EE](https://anre.ro/participanti-la-piata-de-energie/persoane-juridice/energie-electrica/) | `295859_ordin-6-2025_licente-autorizatii.pdf` + regulament anexă |
| C2 | **Cod tehnic RET** — Ord. **20/2004** (+ amendments) | Redispatch / curtailment technical backbone | [Portal Ord. 20/2004](https://legislatie.just.ro/Public/DetaliiDocumentAfis/55019) · full code often on [ANRE](https://www.anre.ro) / [Transelectrica](https://www.transelectrica.ro) | `source-anre/` PDF |
| C3 | **Cod tehnic RED** — Ord. **128/2008** | Distribution technical rules | [Forma printabilă / portal](https://legislatie.just.ro/Public/FormaPrintabila/00000G01VD8QYNYSYE91UYID1WGUPD3R) · ANRE PDF | `source-anre/` |
| C4 | **RFG** — Ord. **72/2017** (cerințe grupuri generatoare) | Grid-code compliance for RES/BESS | [Portal Ord. 72/2017](https://legislatie.just.ro/Public/DetaliiDocumentAfis/192524) · consolidare [209730](https://legislatie.just.ro/Public/DetaliiDocumentAfis/209730) | |
| C5 | **Notificare / conformitate** — Ord. **51/2019** | NFP / compliance testing | [Portal Ord. 51/2019](https://legislatie.just.ro/Public/DetaliiDocumentAfis/213253) | anexă bis may need MO purchase / ANRE PDF |
| C6 | **Ord. 59/2025** smart-grid KPI methodology | Notă + PDF ref only | ANRE site / portal Ord. 59/2025 | text if PDF available |

### 1.D — Tariffs still missing as text (optional but useful)

| # | Act | Why | Download page |
|---|---|---|---|
| D1 | **Ord. 73/2025** — SS **14,70** lei/MWh from 2026 | Analysis exists; text not ingested | Portal search Ord. 73/2025 · example PDF mirrors exist; prefer [legislatie.just.ro](https://legislatie.just.ro) / [ANRE](https://www.anre.ro) |
| D2 | **Ord. 60/2025** — SS 12,79 (historical Sep–Dec 2025) | Amendment history | [Portal Ord. 60/2025](https://legislatie.just.ro/public/DetaliiDocument/301622) |
| D3 | **Ord. 10/2026** — perimeter / ITC component | Cited in tarifare notă | Portal / ANRE search Ord. 10/2026 |
| D4 | **Ord. 10/2025** — CfD contribution rate amend | Levy mechanics | Portal / ANRE search Ord. 10/2025 |
| D5 | Remaining **TD 2026** Ordine for other DSOs (beyond DEER/Delgaz) | Complete [[Tarife retea — snapshot 2026]] | ANRE tariff Ordine Dec 2025 pack |

### 1.E — Gas (Title II L123) — Batch B remainder

| # | Act | Why | Download page |
|---|---|---|---|
| E1 | **Ord. 7/2022** Regulament racordare gaze (distribuție) | Gas connection parallel to EE Ord. 59/2013 | [Portal Ord. 7/2022](https://legislatie.just.ro/Public/DetaliiDocumentAfis/252208) |
| E2 | **Ord. 29/2016** Regulament furnizare gaze (+ consolidări) | Gas supply | Portal search Ord. 29/2016 · ANRE archive [reglementări comerciale gaz](https://arhiva.anre.ro/ro/gaze-naturale/legislatie/piata-gazelor-naturale/alte-reglementari-comerciale) |
| E3 | Gas market rules / centralised offering Ordine (e.g. lineage of Ord. 143/2020, 144/2020, 138/2022) | Title II wholesale | Same ANRE archive + portal |
| E4 | Gas network code(s) / transport methodology | TSO SNTGN rules | ANRE + Transgaz public docs |
| E5 | Gas tariff methodologies (transport / distribution) | Parallel to EE metodologii | ANRE |

### 1.F — Operator procedures (not portal — download from operator sites)

| # | Document | Why | Download page |
|---|---|---|---|
| F1 | Transelectrica **PO PRE** TEL-01.18 — înregistrare / retragere / revocare PRE | Operationalise [[Concept — PRE si responsabilitate de echilibrare]] | [Înregistrare PRE](https://www.transelectrica.ro/web/tel/inregistrare-revocare-pre1) · [Piața de Echilibrare docs](https://www.transelectrica.ro/ro/web/tel/piata-echilibrare) |
| F2 | Transelectrica **Procedura Decontare PRE 2024** + anexe | IBS operational detail | Same PE page |
| F3 | Transelectrica **PO FSE/BSP** registration (TEL-01.17 lineage) | BSP onboarding for PCE/PE | Same PE page |
| F4 | Transelectrica **garanții PRE** procedure | Collateral / bank guarantee | Linked from PRE page (`PO Garantii`) |
| F5 | Transelectrica **Convenție măsurare OMEPA** + PO TEL 09.23 | Metering convention for PRE | [Documentație](https://www.transelectrica.ro/ro/web/tel/documentatie) |
| F6 | OPCOM **PO-PZU Rev.7** full PDF | Notă exists; ensure PDF in `source-opcom/` | [OPCOM PZU](https://www.opcom.ro/tranzactii-produse/ro/46) |
| F7 | OPCOM **garanții PZU/PI**, **Act adițional**, **NF PZU-PRE**, **PI-SIDC** settlement | Complete short-term stack | [OPCOM tranzacții](https://www.opcom.ro/tranzactii-produse/ro/1) · product pages |
| F8 | OPCOM **trading fee schedules** | Finish [[Concept — Cost stack producator energie]] | OPCOM site — tarife / comisioane |
| F9 | Ministerul Energiei **Ord. 1290/2024** (CfD auction rules) | CfD DD beyond HG 318 | Search [energie.gov.ro](https://energie.gov.ro) / portal for Ord. 1290/2024 |

### 1.G — Sectoral primary texts (notă-only today)

| # | Act | Download page |
|---|---|---|
| G1 | **L21/1996** concurență — forma consolidată | [legislatie.just.ro](https://legislatie.just.ro) search `21/1996` |
| G2 | **L53/2003** Codul muncii | portal search `53/2003` |
| G3 | **L98/2016** achiziții publice | portal search `98/2016` |
| G4 | **L208/2015** piețe de capital / financiare | portal search `208/2015` |
| G5 | **OUG 195/2005** protecția mediului | portal search `195/2005` |
| G6 | Crisis / intervention OUGs (OUG **27/2022** lineage — windfall, caps) if doing retail DD | portal consolidări + amendment chain |

### 1.H — Do **not** download / ingest (scope rule)

| Item | Reason |
|---|---|
| Individual ANRE **Decizii** (licences, named FUI, site tariffs) | Dates fast — pull live from [anre.ro](https://www.anre.ro) per client |
| Project ATR / connection contracts | Transaction docs |
| Historical tariff Decizii archive | Covered by methodology + [[Tarife retea — snapshot 2026]] |

---

### Recommended download order (effort vs unlock)

```
1. A1–A2 (CF/CPF)           → tax advice currency
2. B1–B2 (+ B3)             → ground balancing concepts in law
3. C1 (Ord. 6/2025)         → licensing / BESS gate
4. F1–F5 (Transelectrica)   → PRE/BSP operational path
5. C2–C5 (network codes)    → curtailment / RFG depth
6. F6–F9 (OPCOM + CfD ord.) → markets & auctions
7. E1–E5 (gas)              → Title II
8. G1–G5 (sectoral texts)   → M&A / labour / EIA DD
9. D1–D5 (optional tariffs) → nice-to-have text completeness
```

---

## 2. Analysis topics backlog (pre-prepare like balancing)

Same recipe as balancing: **`20 Domenii/` synthesis → `50 MOCs/` hub → `30 Concepte/` atoms → act stubs with ingest checklist**.

### Already done (reference templates)

| Cluster | Synthesis | MOC | Concepts |
|---|---|---|---|
| Sector overview | [[Energetică — sinteza sectorului]] | [[MOC — Energetică]] | Licență, Racordare, Unbundling, FUI, CV, Cost stack, BESS econ, PRE, Curtailment |
| Balancing & capacity | [[Piețe de echilibrare — sinteza]] | [[MOC — Piețe de echilibrare]] | SS, PCE, PE, FCR, IBS 15′, BESS stacking, EMS modes |
| Tariffs snapshot | [[Tarife retea — snapshot 2026]] | (via Energetică) | — |
| Fiscal / corporate | [[Fiscalitate — sinteza sistemului fiscal]] · [[Societăți & guvernanță — sinteza]] | [[MOC — Fiscalitate]] · [[MOC — Societăți & Guvernanță]] | TVA, Impozit profit, Capital social, SRL, SA |

---

### Priority 1 — Energy practitioner clusters (build next)

#### Cluster P1 — Wholesale & organised markets (OPCOM)

| Note to create | Scope |
|---|---|
| `Piețe angro energie — sinteza` | PZU / PI / forward / bilateral vs organised; SDAC/SIDC; relationship to PRE schedules |
| `MOC — Piețe angro OPCOM` | Navigation hub |
| `Concept — PZU si cuplare SDAC` | Gate closure, 15′ products, EUPHEMIA, decoupled fallback (expand from PO-PZU notă) |
| `Concept — Piata intrazilnica SIDC` | Continuous + auctions; collateral |
| `Concept — Piata pe termen si bilaterale` | Ord. 134/2022 · Ord. 12/2023 |
| `Concept — PPA corporate bankability` | Off-exchange offtake vs CfD / GC constraints |
| `Concept — Comisioane OPCOM cost stack` | Fee schedules → producer model |

Depends on: F6–F8 downloads · B4–B5 texts.

#### Cluster P2 — Licensing & authorisations (Ord. 6/2025)

| Note to create | Scope |
|---|---|
| `Licențiere energetică — sinteza` | AI vs licență exploatare; >1 MW thresholds; storage standalone vs hybrid |
| `MOC — Licențe & autorizații ANRE` | Hub |
| `Concept — Autorizatie de infiintare` | Capex / timeline / GIS reporting |
| `Concept — Licenta exploatare comerciala` | Types under Ord. 6/2025 art. 10 |
| `Concept — Licentiere BESS standalone` | Ord. 6 + OUG 134 + Ord. 56 interaction |
| Expand [[Concept — Licență în energetică]] | `#Articolul N` links once C1 ingested |

Depends on: C1.

#### Cluster P3 — Grid connection & ATR lifecycle

| Note to create | Scope |
|---|---|
| `Racordare & ATR — sinteza` | Steps, reinforcement costs, validity, financial guarantees, NFP/probe |
| Expand [[Concept — Racordare la rețea]] | Deep article links to Ord. 59/2013 text already in vault |
| `Concept — Lucrari de intarire si alocare costuri` | Who pays grid upgrades |
| `Concept — ATR transferabilitate si scadenta` | DD checklist item |
| `Concept — Perioada de probe NFP` | Link Ord. 127 / Ord. 51/2019 |

Depends on: C5 partially; racordare text ✅.

#### Cluster P4 — Network codes & technical compliance

| Note to create | Scope |
|---|---|
| `Coduri de rețea EE — sinteza` | RET + RED + RFG/DCC/HVDC stack; who must comply |
| `MOC — Coduri de rețea` | Hub |
| `Concept — RFG categorii A–D` | Type thresholds, capabilities |
| `Concept — Conformitate si notificare generatoare` | Ord. 51/2019 process |
| Expand [[Concept — Curtailment si redispatch RES]] | Network-code article anchors |

Depends on: C2–C5.

#### Cluster P5 — CfD support scheme (full stack)

| Note to create | Scope |
|---|---|
| `CfD România — sinteza` | HG 318 → Ord. 52 → methodology Ord. 51 → auction Ord. 1290 → OPCOM as counterparty |
| `MOC — CfD` | Hub |
| `Concept — CfD mecanism strike si settlement` | Two-way CfD cashflows |
| `Concept — Contributie CfD pe factura` | Levy passthrough |
| `Concept — Eligibilitate licitatie CfD` | Negative-price rules, state aid |
| `Concept — CfD vs certificat verde` | Overlap / mutual exclusion for assets |

Depends on: F9; Ord. 52/51 texts ✅; HG notes ✅.

#### Cluster P6 — Green certificates & renewables support

| Note to create | Scope |
|---|---|
| `Certificate verzi — sinteza` | L220 + OUG 163 + PCV + quota methodology |
| Expand [[Concept — Certificat verde]] | Issuance, trading, quota obligation, bankability |
| `Concept — PCV OPCOM` | Ord. 77/2017 mechanics |
| `Concept — Cota obligatorie CV anuala` | Ord. 96/2022 + Ord. 81/2025 |
| `Concept — Ajutor de stat regenerabile` | Interaction with CfD / EU rules |

Depends on: texts mostly ✅; deepen analysis.

#### Cluster P7 — Storage & hybrids (beyond current BESS notes)

| Note to create | Scope |
|---|---|
| `Stocare energie — sinteza` | OUG 134 policy → Ord. 56 tariffs → Ord. 6 licensing → market stacking |
| Expand existing BESS concepts | Link Ord. 6 once ingested |
| `Concept — Hybrid RES + BESS` | Shared connection, PRE, tariff perimeter |
| `Concept — Exceptare tarife energie stocata` | Ord. 56 deep dive already started — finish article anchors |
| `Concept — Studiu tarifare stocare permanent` | Watch ANRE permanent methodology |

#### Cluster P8 — Aggregation, demand response, communities

| Note to create | Scope |
|---|---|
| `Agregare & flexibilitate — sinteza` | Aggregators, independent aggregation, DR |
| `Concept — Agregare` *(already flagged in Roadmap)* | L123 art. 3 / 10 + market rules |
| `Concept — Demand response` | BSP path via PE/PCE |
| Expand energy communities notes | Ord. 9/2026 · Ord. 50/2026 → synthesis |
| `Concept — Prosumator vs comunitate energie` | Boundaries |

#### Cluster P9 — Supply, FUI, retail & crisis measures

| Note to create | Scope |
|---|---|
| `Furnizare & consumatori — sinteza` | Ord. 5/2023 + FUI + vulnerable customers |
| Expand [[Concept — Furnizor de ultimă instanță]] | Designation mechanics (no Decizii ingest) |
| `Concept — Contracte furnizare EE` | Cadru / essential clauses |
| `Concept — Masuri de criza OUG 27-2022` | Caps, windfall, contribution — DD for retail/trading |
| `Concept — Client vulnerabil` | Social protection interface |

#### Cluster P10 — Gas Title II (parallel to electricity)

| Note to create | Scope |
|---|---|
| `Gaze naturale — sinteza sectorului` | L123 Title II map |
| `MOC — Gaze naturale` | Hub |
| `Concept — Racordare gaze` | Ord. 7/2022 |
| `Concept — Furnizare gaze` | Ord. 29/2016 |
| `Concept — Piata angro gaze OPCOM` | Offering obligations |
| `Concept — Unbundling gaze` | Parallel to EE |
| Hydrogen / gas package watch note | Dir. 2024/1788 → RO transposition |

Depends on: E1–E5.

---

### Priority 2 — Cross-cutting DD clusters

#### Cluster X1 — Environmental & land for RES

| Note to create | Scope |
|---|---|
| `Mediu & autorizare RES — sinteza` | EIA, AIM, urbanism interface |
| `Concept — Acord de mediu si AIM` | OUG 195 |
| `Concept — PUZ / certificat urbanism pentru centrale` | Planning choke points |
| `Concept — Expropriere utilitate publica energie` | If relevant to corridors |

Depends on: G5 text.

#### Cluster X2 — Competition & M&A energy

| Note to create | Scope |
|---|---|
| Expand [[_M&A Regulatory Compliance Checklist]] with energy-specific thresholds | L21 + sector licences |
| `Concept — Control concentratii RES portfolios` | When SPV bundles notify |
| `Concept — Unbundling in M&A` | Buyer restrictions |

Depends on: G1 text.

#### Cluster X3 — Tax for energy SPVs (after CF re-ingest)

| Note to create | Scope |
|---|---|
| `Fiscalitate energetică — sinteza` | IMCA, dividend WHT, VAT on energy, local taxes on turbines/panels |
| Expand [[Concept — Impozit pe profit]] · [[Concept — TVA]] | Energy-specific edges |
| `Concept — IMCA si SPV energetice` | Turnover test |
| `Concept — e-Factura energie` | ANAF XML obligations |
| `Concept — Impozit constructii / speciale` | Asset tax on plant |

Depends on: A1–A2.

#### Cluster X4 — Labour & O&M

| Note to create | Scope |
|---|---|
| `Concept — Forța de muncă O&M centrale` | L53 / REGES / posted workers |
| Link from DD index phase 3 | After G2 text |

#### Cluster X5 — Public procurement (grid / EPC public)

| Note to create | Scope |
|---|---|
| `Concept — Achizitii publice in energetică` | L98 / SEAP / CNSC for DSO/TSO works |
| After G3 text | |

---

### Priority 3 — Meta / navigation polish

| Item | Why |
|---|---|
| Deepen `#Articolul N` links across all Batch B concepts | Texts already in vault |
| Wire every new cluster into [[_Energy Investment Due Diligence Index]] | RAG usability |
| Authority notes: Transelectrica, OPCOM, Ministerul Energiei, CNSC, Consiliul Concurenței | Parallel to [[ANRE]] / [[ANAF]] / [[ONRC]] |
| `MOC — Due diligence energetică` thin wrapper over DD index | Optional |
| EU Law cross-links: EBGL, RfG, Dir. 2019/944, RED III, gas package | Sibling vault |

---

## Suggested build sequence (analysis, independent of downloads)

You can write analysis **stubs** before texts land (as with balancing). Suggested order:

1. **P5 CfD** — high DD value; most sources already in vault  
2. **P2 Licensing** — unblock Ord. 6 narrative even before full anexă  
3. **P1 Wholesale OPCOM** — complete market map next to balancing  
4. **P3 ATR lifecycle** — racordare text already ingested  
5. **P6 CV deepen** — texts ✅  
6. **P7 Storage synthesis** — glue existing BESS notes  
7. **P8 Aggregation / communities**  
8. **P4 Network codes** — after C2–C5 downloads  
9. **P9 Retail / crisis**  
10. **P10 Gas** — after E downloads  
11. **X1–X5** — as sectoral texts arrive  

---

## Related

[[Roadmap]] · [[Home]] · [[Download checklist — Batch A currency]] · [[Download checklist — Batch B ANRE]] · [[MOC — Energetică]] · [[MOC — Piețe de echilibrare]] · [[_Energy Investment Due Diligence Index]]
