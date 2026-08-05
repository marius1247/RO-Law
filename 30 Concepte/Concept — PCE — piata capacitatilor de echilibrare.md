---
title: "Concept — PCE — piata capacitatilor de echilibrare"
type: concept
domeniu: [energetică, piețe, echilibrare, capacitate]
tags: [concept, energetică, PCE, capacitate, FCR, aFRR, mFRR, BSP]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# Concept — PCE — piața capacităților de echilibrare

**RO:** Piața Capacităților de Echilibrare (PCE) · **EN:** Balancing Capacity Market

Market where Transelectrica procures **standby availability (MW)** in advance. BSPs are paid to withhold headroom/footroom and remain technically ready to respond. Governed by [[ANRE — Ordin 127-2021 Piata echilibrare (notă)|Ord. 127/2021]] and EU EBGL.

Parent: [[Piețe de echilibrare — sinteza]] · Energy counterpart: [[Concept — PE — piata energiei de echilibrare]] · Recovery: [[Concept — Servicii de sistem si tariful SS]]

---

## Market mechanics (common to all products)

| Attribute | Value |
|---|---|
| **Platform** | Transelectrica DAMAS |
| **Auction frequency** | Daily (**D-1**) |
| **Product duration** | **4-hour blocks** (6/day: 00–04, 04–08, 08–12, 12–16, 16–20, 20–24) |
| **Bidding unit** | RON/MW/h or EUR/MW/h |
| **Clearing** | Competitive auction — cheapest bids until security requirement met |
| **Qualification** | Technical tests → Balancing Service Provider (BSP / FSE) status |

---

## FCR capacity

| Attribute | Detail |
|---|---|
| **Full activation time** | ≤30 seconds |
| **Symmetry** | **Symmetric (±MW)** — equal upward headroom and downward footroom |
| **Activation trigger** | Local frequency sensor — **no TSO dispatch signal** |
| **Energy remuneration** | **None** — net energy flows to BRP imbalance settlement |

Operational constraints: [[Concept — FCR — operare si constrangeri]]

---

## aFRR capacity

| Attribute | Detail |
|---|---|
| **Full activation time** | 30 seconds – 5 minutes |
| **Symmetry** | **Asymmetric** — procured separately: |
| | • aFRR Positive (upward / discharge headroom) |
| | • aFRR Negative (downward / charge footroom) |
| **Activation trigger** | Continuous AGC signal from Transelectrica SCADA (IEC 60870-5-104; PICASSO integration path) |
| **Energy remuneration** | Yes — on PE when dispatched → [[Concept — PE — piata energiei de echilibrare#aFRR energy]] |

---

## mFRR capacity

| Attribute | Detail |
|---|---|
| **Full activation time** | ≤12.5 minutes (up to 15 min per product rules) |
| **Symmetry** | **Asymmetric** — Upward and Downward contracted independently |
| **Activation trigger** | Manual TSO dispatch instruction |
| **Energy remuneration** | Yes — scheduled and direct activation on PE → [[Concept — PE — piata energiei de echilibrare#mFRR energy]] |

---

## Summary table

| Product | Direction | FAT | Auction | Granularity | Unit |
|---|---|---|---|---|---|
| **FCR** | Symmetric ±MW | ≤30 s | D-1 | 4-hour blocks | RON/MW/h |
| **aFRR** | Asymmetric Up/Down | 30 s–5 min | D-1 | 4-hour blocks | RON/MW/h |
| **mFRR** | Asymmetric Up/Down | ≤12.5 min | D-1 | 4-hour blocks | RON/MW/h |

---

## Who can participate

Qualified **BSPs** after Transelectrica technical tests:

- Conventional generators (hydro, thermal)
- **BESS** — [[Concept — BESS revenue stacking]]
- Demand-response aggregators
- Wind/solar where technically qualified (less common for FCR)

Requires valid market access: [[Concept — PRE si responsabilitate de echilibrare]] · OPCOM registration if also trading energy.

---

## Revenue vs. SS tariff

BSPs receive **auction clearing prices** (variable, product-specific). End consumers fund the **aggregate** via the SS tariff — Transelectrica recovers total approved procurement costs, not bid-by-bid pass-through.

---

## Governing provisions

- [[ANRE — Ordin 127-2021 Piata echilibrare (notă)|Ord. 127/2021]] — market rules (*stub; text pending*)
- EU Reg. 2017/2195 (EBGL) — European balancing guidelines
- [[ANRE — Metodologie tarife servicii sistem 2022 (text)|Ord. 116/2022]] — cost recovery via SS

## Related

[[Concept — FCR — operare si constrangeri]] · [[Concept — PE — piata energiei de echilibrare]] · [[MOC — Piețe de echilibrare]]

## Notes / conclusions

> PCE is a **capacity reservation market**. Winning a bid means locking MW bands out of wholesale trading for 4 hours — opportunity cost is the main bid driver, especially for symmetric FCR.
