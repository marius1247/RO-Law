---
title: "Concept — PE — piata energiei de echilibrare"
type: concept
domeniu: [energetică, piețe, echilibrare, energie]
tags: [concept, energetică, PE, energie-de-echilibrare, aFRR, mFRR, FCR]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# Concept — PE — piața energiei de echilibrare

**RO:** Piața de Echilibrare (PE) · **EN:** Balancing Energy Market

Market where Transelectrica procures **physical energy (MWh)** delivered or absorbed in real time when reserves are activated to correct grid imbalances. Distinct from capacity procurement on PCE — [[Concept — PCE — piata capacitatilor de echilibrare]].

Parent: [[Piețe de echilibrare — sinteza]] · PRE settlement: [[Concept — Decontare dezechilibre 15 minute]]

---

## Market mechanics (common)

| Attribute | Value |
|---|---|
| **Delivery granularity** | **15-minute** Imbalance Settlement Periods (ISPs) — 96/day |
| **Gate closure (GCT)** | 25–45 minutes before target ISP (product-dependent) |
| **Pricing** | **Marginal clearing price** (pay-as-cleared) per 15-min interval |
| **Bid submission** | Continuous up to GCT |

The 15-minute marginal price also feeds the **single imbalance price** for all PREs in that ISP — [[Concept — Decontare dezechilibre 15 minute]].

---

## FCR energy

| Attribute | Detail |
|---|---|
| **Activation** | Automatic local droop — no TSO dispatch order |
| **Gate closure** | N/A (continuous real-time) |
| **Price** | **0 RON/MWh** — not remunerated as balancing energy |
| **Settlement** | Net physical energy enters asset meter → settled via asset's **BRP/PRE** imbalance |

Why unpaid: FCR is decentralised; up/down activations largely cancel; no explicit dispatch instruction from Transelectrica.

→ [[Concept — FCR — operare si constrangeri]]

---

## aFRR energy

| Attribute | Detail |
|---|---|
| **Activation** | Fully automated AGC signal from Transelectrica SCADA (PICASSO platform integration) |
| **GCT** | **25 minutes** before target ISP |
| **Pricing** | Marginal clearing price (RON/MWh) per 15-min ISP — highest activated bid sets price for all dispatched units in interval |
| **Requirement** | Must hold corresponding **aFRR capacity** award from PCE for that period |

---

## mFRR energy

Two activation modes:

### Scheduled activation (*Activare Programată*)

| Attribute | Detail |
|---|---|
| **Trigger** | TSO operator dispatch before ISP start |
| **Use case** | Planned structural imbalances |
| **GCT** | 25–45 min before ISP |
| **Pricing** | 15-min marginal clearing price |
| **Platform** | MARI (European mFRR integration) |

### Direct activation (*Activare Directă*)

| Attribute | Detail |
|---|---|
| **Trigger** | Emergency manual order during active ISP |
| **Use case** | Sudden trips, urgent grid events |
| **GCT** | Real-time within ISP |
| **Pricing** | Emergency / marginal pricing rules |

---

## Product comparison

| Energy product | Activation source | Granularity | GCT | Pricing |
|---|---|---|---|---|
| **FCR energy** | Local governor/sensor | Continuous | N/A | Unpaid → BRP imbalance |
| **aFRR energy** | TSO AGC SCADA | 15-min ISP | 25 min prior | Marginal RON/MWh |
| **mFRR scheduled** | Manual TSO order | 15-min ISP | 25–45 min prior | Marginal RON/MWh |
| **mFRR direct** | Emergency manual | Immediate in ISP | Real-time | Emergency / marginal |

Capacity-side mirror: [[Concept — PCE — piata capacitatilor de echilibrare#Summary table|PCE summary table]]

---

## Merit-order clearing (15-minute price)

Within each ISP, Transelectrica activates balancing energy bids in **merit order** (cheapest first) until system imbalance is resolved. The **marginal price** — price of the last activated bid — sets the clearing price for all activated standard products in that interval.

When **no balancing energy is activated**, the imbalance price defaults to the **Day-Ahead Market (PZU)** price for that interval.

Detail: [[Concept — Decontare dezechilibre 15 minute#4. The Single Imbalance Price Mechanism]]

---

## Not covered by PE (separate mechanisms)

| Item | Where |
|---|---|
| FCR **capacity** payments | PCE auctions → SS tariff recovery |
| SS collective tariff | [[Concept — Servicii de sistem si tariful SS]] |
| Wholesale energy schedules | OPCOM PZU / PI |

---

## Governing provisions

- [[ANRE — Ordin 127-2021 Piata echilibrare (notă)|Ord. 127/2021]] — PE rules (*stub*)
- [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)|Ord. 213/2020]] — links PE prices to PRE settlement (*stub*)
- EBGL Art. 53 — 15-minute imbalance settlement alignment

## Related

[[Concept — PCE — piata capacitatilor de echilibrare]] · [[Concept — PRE si responsabilitate de echilibrare]] · [[MOC — Piețe de echilibrare]]

## Notes / conclusions

> PE is where **variable** balancing costs live. The SS tariff funds **standing reserve capacity**; PE prices fund **actual activations** — and simultaneously price every PRE's schedule deviation in the same 15-minute window.
