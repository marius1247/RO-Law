---
title: "ANRE — Ordin 127-2021 Piata echilibrare (notă)"
type: act-note
act: "[[ANRE — Ordin 127-2021 Piata echilibrare (text)]]"
act_type: act-anre
issuer: ANRE
nr: 127
an: 2021
domain: [energetică, piețe, echilibrare]
domeniu: [energetică, piețe, echilibrare]
tags: [act-note, analysis, ANRE, echilibrare, PCE, PE, EBGL]
status: reviewed
source_missing: false
depth: expert
updated: 2026-08-06
---

# ANRE Ordin 127/2021 — Balancing market rules — Analysis

**Raw text:** [[ANRE — Ordin 127-2021 Piata echilibrare (text)|BSP/FSE]] · [[ANRE — Regulament PRE 2021 (text)|PRE]] · [[ANRE — Ordin 127-2021 Aprobare regulamente echilibrare (text)|Ord. shell]] · **Hub:** [[MOC — Piete de echilibrare]] · **Synthesis:** [[Piete de echilibrare — synthesis]] · **Settlement twin:** [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)|Ord. 213/2020]]

> [!info] Currency
> Working texts are SOAP **base** regulamente approved by Ord. 127/2021 (portal `249313` BSP/FSE · `249314` PRE). Later amendments (e.g. Ord. 60/2024, Ord. 9/2025 PRE) are **not folded** — verify consolidare before transactional use.

## Thesis

Core secondary act for Romania’s **balancing stack**: daily capacity auctions on **PCE** (FCR / aFRR / mFRR) and real-time activation on **PE**, operated by Transelectrica, with EBGL alignment toward PICASSO (aFRR) and MARI (mFRR). Together with Ord. 213/2020 it determines BSP revenue and PRE imbalance cost.

## Architecture

| Layer | Function |
|---|---|
| **PCE** — piața capacităților | D-1 capacity auctions; typically 4-hour blocks; MW reserved |
| **PE** — piața energiei | 15-minute activation energy; up/down |
| **BSP / FSE qualification** | Technical prequalification to offer products |
| **DAMAS / platforms** | Bidding, coupling, European platforms |
| **SS tariff recovery** | Capacity costs recovered via SS — [[ANRE — Metodologie tarife servicii sistem 2022 (notă)|Ord. 116/2022]] · live rate [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)|Ord. 73/2025]] |

## Operative regime (practitioner map)

### Capacity (PCE)
- Products: **FCR**, **aFRR**, **mFRR** (see [[Concept — PCE — piata capacitatilor de echilibrare]] · [[Concept — FCR — operare si constrangeri]]).
- Auctions usually D-1; accepted capacity paid even if not activated (capacity payment ≠ energy payment).
- BESS / demand response participation depends on prequalification and product-specific duration / energy reservoir rules.

### Energy (PE)
- Activation in **15-minute** ISPs; marginal/pay-as-bid details must be confirmed in consolidare.
- PE prices feed imbalance settlement under [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)|Ord. 213/2020]] ([[Concept — PE — piata energiei de echilibrare]] · [[Concept — Decontare dezechilibre 15 minute]]).

### Who must care
| Actor | Why |
|---|---|
| BSP / BESS operator | Revenue stacking — [[Concept — BESS revenue stacking]] |
| PRE / BRP | Imbalance price risk from PE |
| Supplier / aggregator | Balancing responsibility for customers (L123 / OUG 143) |
| Investor DD | Curtailment / redispatch interaction — [[Concept — Curtailment si redispatch RES]] |

## Hard edges

- **Partial repeal of Ord. 25/2004** commercial code chapters — wholesale balancing migrated here; do not cite Cod comercial for live PE/PCE rules ([[ANRE — Ordin 25-2004 Cod comercial piata angro EE (notă)]]).
- Amendment chain (incl. Ord. 60/2024 and later) must be rebuilt on ingest.
- SS lei/MWh is **not** the auction clearing price — it is the regulated recovery tariff.

## Interactions

| Act | Link |
|---|---|
| [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)|Ord. 213/2020]] | PE prices → PRE settlement |
| [[ANRE — Metodologie tarife servicii sistem 2022 (text)|Ord. 116/2022]] | PCE cost recovery via SS |
| [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)|Ord. 73/2025]] | SS unit rate from 2026 |
| [[ANRE — Ordin 25-2004 Cod comercial piata angro EE (notă)|Ord. 25/2004]] | Superseded balancing chapters |
| EBGL Reg. 2017/2195 | EU parent |

## Ingest checklist

- [x] Portal SOAP dump in `source-portal/`
- [x] Companion `(text)` generated
- [ ] Deepen `#Articolul N` anchors against ingested regulamente
- [ ] Update [[Currency ledger]] · concept notes with article pins
- [ ] Map full amendment chain

## Related

[[MOC — Piete de echilibrare]] · [[MOC — Energetică]] · [[Download checklist — Batch B ANRE]]
