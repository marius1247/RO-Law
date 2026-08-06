---
title: "ANRE — Ordin 213-2020 Decontare dezechilibre (notă)"
type: act-note
act: "[[ANRE — Ordin 213-2020 Decontare dezechilibre (text)]]"
act_type: act-anre
issuer: ANRE
nr: 213
an: 2020
domain: [energetică, piețe, echilibrare, PRE]
domeniu: [energetică, piețe, echilibrare, PRE]
tags: [act-note, analysis, ANRE, dezechilibru, PRE, IBS]
status: reviewed
source_missing: false
depth: expert
updated: 2026-08-06
---

# ANRE Ordin 213/2020 — Imbalance settlement — Analysis

**Raw text:** [[ANRE — Ordin 213-2020 Decontare dezechilibre (text)|decontare regulament (SOAP base)]] · [[ANRE — Ordin 213-2020 Aprobare regulament decontare (text)|Ord. 213 shell]] · **Hub:** [[MOC — Piete de echilibrare]] · **Concept:** [[Concept — Decontare dezechilibre 15 minute]] · [[Concept — PRE si responsabilitate de echilibrare]] · **PE parent:** [[ANRE — Ordin 127-2021 Piata echilibrare (notă)|Ord. 127/2021]]

> [!warning] Partial SOAP currency
> Full article-anchored text is the **Ord. 61/2020** regulament (portal `224753`). Ord. **213/2020** introduced **single imbalance price** but its anexă is **truncated in SOAP** (dump `234462`). Later amendments: Ord. 33/2021, 96/2021, 92/2022. Prefer Forma printabilă consolidare before pinning price formulas.

## Thesis

Settlement engine for **balance responsible parties (PRE)**: 15-minute imbalance settlement periods, physical notifications, single imbalance price linked to PE, and TSO neutrality. Determines the imbalance cost line in every producer / supplier / storage commercial model.

## Architecture

| Element | Role |
|---|---|
| **ISP** | 96 × 15-minute intervals / day |
| **NF (notificare fizică)** | PRE declares net physical position |
| **Imbalance volume** | Measured − notified, per PRE per ISP |
| **Single price** | One imbalance price per ISP (PE-linked; PZU fallback when no balancing energy activated — confirm in consolidare) |
| **Settlement cycle** | Preliminary ~T+5; monthly; TSO neutrality true-up |
| **Operator** | Transelectrica calculates and settles |

Full practitioner math → [[Concept — Decontare dezechilibre 15 minute]].

## Operative regime (by problem)

### Who is exposed
- Every PRE — including suppliers carrying <400 kW prosumer balancing responsibility under L123 (OUG 143 layer).
- Generators / BESS in their own PRE or hosted in a third-party PRE.
- Aggregators once licensed and balancing-responsible for pooled sites.

### Interaction with wholesale
| Act | Link |
|---|---|
| [[ANRE — Ordin 127-2021 Piata echilibrare (notă)|Ord. 127/2021]] | PE marginal/activation prices feed IBS |
| [[OPCOM — PO-PZU Rev7 2025 (notă)]] | PZU as fallback reference when PE inactive |
| [[OPCOM — Procedura NF PZU-PRE 2015 (notă)]] | NF transfer on PRE change |
| [[Concept — Participant PEE OPCOM]] | Wholesale registration before PRE operations |

### DD checklist (until text lands)
1. Confirm single vs dual pricing in current consolidare.
2. Gate closure / NF revision windows.
3. Collateral / payment deadlines PRE ↔ Transelectrica.
4. Treatment of storage charging/discharging inside measured volume.
5. Amendment chain after 2020 (15-min full rollout).

## Hard edges

- Stub status: do **not** pin lei figures or article numbers until `(text)` exists.
- Ord. 25/2004 commercial-code imbalance chapters are historical — live rules are here + Ord. 127.
- Currency risk: EBGL platform go-lives (PICASSO/MARI) can change price formation without a neat Ord. renumber.

## Interactions

- Parent law: [[Legea 123-2012 — energia electrica si gazele naturale (text)|L123]] (balancing responsibility)
- EU: EBGL Art. 53
- Concepts: [[Concept — Decontare dezechilibre 15 minute]] · [[Concept — PRE si responsabilitate de echilibrare]] · [[Concept — PE — piata energiei de echilibrare]]

## Ingest checklist

- [x] Portal SOAP dump in `source-portal/`
- [x] Companion `(text)` · currency row pending verify
- [ ] Deepen `#Articolul N` anchors in concept notes against ingested text

## Related

[[MOC — Piete de echilibrare]] · [[MOC — Energetică]] · [[_Energy Investment Due Diligence Index]]
