---
title: "ANRE — Ordin 74-2025 Tarife transport EE (notă)"
type: act-note
instrument: act-anre
act_type: act-anre
issuer: ANRE
nr: "74"
an: 2025
domain: [energetică, tarife, transport]
domeniu: [energetică, tarife, transport]
portal_id: "305628"
source_url: "https://legislatie.just.ro/Public/DetaliiDocumentAfis/305628"
tags: [act-note, analysis, ANRE, tarife, TG, TL, reactive, 2026]
status: reviewed
depth: expert
created: 2026-08-06
updated: 2026-08-06
---

# Ordin ANRE 74/2025 — 2026 transmission tariffs (TG/TL) — Analysis

**Raw text:** [[ANRE — Ordin 74-2025 Tarife transport EE (text)]] · **Methodology:** [[ANRE — Metodologie tarife transport EE 2024 (notă)]] · **Snapshot:** [[Tarife retea — snapshot 2026]] · **Concept:** [[Concept — Tarif de transport TG si TL]] · **Hub:** [[MOC — Energetică]]

## Thesis

Annual **rate order** applying Ord. 68/2024 to Transelectrica for **1 January 2026**: sets **TG = 3,63 lei/MWh** and **TL = 36,45 lei/MWh** (excl. VAT), with published CPT / nonCPT component splits, plus the regulated **reactive** price **0,1821 lei/kVArh**. It also revises Ord. 99/2024 into an investment / maintenance plan vehicle for Period V and locks maintenance plan values in real 2024 lei.

## Architecture

| Art. | Content |
|---|---|
| 1 | Approves TG + TL in Annex 1 |
| 2 | Reactive price 0,1821 lei/kVArh; billing per Ord. 33/2014 methodology; CPT reference price 607,03 lei/MWh |
| 3 | By 1 Mar 2026 Transelectrica must split controllable OPEX underlying the tariffs into Maintenance vs Other (minor/major maintenance) |
| 4 | Amends Ord. 99/2024 — strip 2025 tariff arts.; keep Period V investment logic; add maintenance plan Annex 4 |
| 5–6 | Implementation / entry into force **1 Jan 2026** |

## Operative regime (by problem)

### Problem A — What does a producer pay to inject?
Annex 1 Table 1 — **TG 3,63** of which:
- **C_CPT_P 3,18** — CPT recovery from producers
- **C_CPT_S_P 0,45** — capitalised supplementary CPT from producers

Matches methodology art. 130 structure (TG = CPT_P + CPT_S_P only). Network WACC / nonCPT is **not** in TG.

### Problem B — What does extraction cost?
Annex 1 Table 2 — **TL 36,45** of which:
- **CT_nonCPT 25,60**
- **C_CPT_C 9,14**
- **C_CPT_S_C 1,71**

Matches art. 134. BESS charge / aux import / station load see this line — [[Concept — BESS economics si tarifare stocare]].

### Problem C — Reactive
Art. 2: separate from TG/TL; priced off estimated active CPT energy (607,03 lei/MWh). Band / obligation rules remain in Ord. 33/2014 methodology — this Ordin only refreshes the unit price.

### Problem D — Relationship to SS
**Not in this Ordin.** SS 14,70 lei/MWh from 1 Jan 2026 is Ord. **73/2025** (same MO issue family) — [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]].

### Problem E — Period V housekeeping
Art. 4 turns Ord. 99/2024 into the investment/maintenance shell; Annex 2 sets maintenance plan 2025–2029 in real 2024 lei (peak 2027). Art. 3 transparency duty on OPEX split is a compliance hook for the next correction cycle under Ord. 68/2024.

## Definitions

Inherited from [[ANRE — Metodologie tarife transport EE 2024 (text)#Articolul 5|methodology art. 5]] — TG, TL, CPT components as labelled in Annex 1.

## Obligations

| Who | Duty |
|---|---|
| **Transelectrica** | Apply Annex tariffs from 1 Jan 2026; file OPEX split by 1 Mar 2026 (art. 3) |
| **Market participants** | Pay under Ord. 132/2022 framework contracts |
| **ANRE units** | Monitor compliance (art. 5) |

## Enforcement

Non-application → ANRE supervision / sanctions under L123 + OUG 33/2007. Tariff contestation: contencios against this Ordin within administrative deadlines.

## Hard edges

- Values **excl. VAT**; reactive excl. excise + VAT (art. 2(2)).
- Component labels in Annex are the authoritative split for invoice mapping — do not re-derive from totals alone when auditing bills.
- **+10% YoY** vs 2025 TG/TL levels (see snapshot) sits at the methodology’s nonCPT growth discipline boundary for the TL nonCPT story — verify against art. 136 headroom in advice letters.
- Filename/portal consolidare date vs MO date: text header cites MO 1173/18.12.2025; frontmatter may show adjacent SOAP stamps — cite MO line from the Ordin.

## Interactions

- Methodology: [[ANRE — Metodologie tarife transport EE 2024 (notă)|Ord. 68/2024]]
- RRR Period V: Ord. 55/2024 (cited in preamble)
- CPT extra-cost norms: Ord. 129/2022 (preamble)
- Sibling 2026 distribution Ordine 76/77 — [[Tarife retea — snapshot 2026]]
- Concepts: [[Concept — Tarif de transport TG si TL]] · [[Concept — Cost stack producator energie]]

## File checklist

- [x] `(text)` ingested (portal 305628)
- [x] Dedicated `(notă)` (no longer snapshot-only)
- [x] Concept + MOC + snapshot cross-links

## Sources

- [[ANRE — Ordin 74-2025 Tarife transport EE (text)]] — portal_id `305628` · MO nr. 1173 / 18.12.2025
