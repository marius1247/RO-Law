---
title: "MOC — Piete de echilibrare"
type: moc
domeniu: energetică
tags: [moc, index, energetică, echilibrare, PCE, PE, FCR, aFRR, mFRR, PRE]
created: 2026-08-05
updated: 2026-08-05
status: draft
---

# MOC — Piete de echilibrare

Domain hub for **balancing capacity markets (PCE)**, **balancing energy markets (PE)**, **system services tariff pass-through**, and **PRE imbalance settlement** in Romania.

> [!tip] Start here
> **[[Piete de echilibrare — synthesis]]** — two-market architecture, cost layers, actor map.

Parent: [[MOC — Energetică]] · Sector: [[Energetică — synthesis]]

---

## Architecture & synthesis
- **[[Piete de echilibrare — synthesis]]** — master synthesis
- **[[Concept — Cost stack producator energie]]** — where SS fits in producer bills
- **[[Concept — PRE si responsabilitate de echilibrare]]** — PRE onboarding & obligations

---

## Cost layers (read in this order)

| Layer | Note | Mechanism |
|---|---|---|
| 1 | [[Concept — Servicii de sistem si tariful SS]] | Collective SS tariff (Ord. 73/2025: 14,70 lei/MWh) |
| 2 | [[Concept — PCE — piata capacitatilor de echilibrare]] | D-1 capacity auctions → BSP payments |
| 3 | [[Concept — PE — piata energiei de echilibrare]] | Real-time aFRR/mFRR energy dispatch |
| 4 | [[Concept — Decontare dezechilibre 15 minute]] | PRE 15-min single-price settlement |

---

## Reserve products

| Product | Capacity | Energy | Deep dive |
|---|---|---|---|
| **FCR** | [[Concept — PCE — piata capacitatilor de echilibrare#FCR capacity|PCE § FCR]] | Unpaid — BRP nets | [[Concept — FCR — operare si constrangeri]] |
| **aFRR** | PCE — asymmetric Up/Down | PE — AGC dispatch | [[Concept — PE — piata energiei de echilibrare#aFRR energy|PE § aFRR]] |
| **mFRR** | PCE — asymmetric Up/Down | PE — scheduled + direct | [[Concept — PE — piata energiei de echilibrare#mFRR energy|PE § mFRR]] |

---

## BESS & flexibility

- [[Concept — BESS revenue stacking]] — multi-market revenue partition
- [[Concept — EMS BESS moduri operationale]] — FCR / aFRR / wholesale mode switching
- [[Concept — BESS economics si tarifare stocare]] — network tariff treatment (Ord. 56/2025)

---

## Governing acts

| Act | Status | Note |
|---|---|---|
| [[ANRE — Ordin 127-2021 Piata echilibrare (notă)|Ord. 127/2021]] | Stub | PCE + PE market rules (EBGL) |
| [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)|Ord. 213/2020]] | Stub | 15-min IBS for PREs |
| [[ANRE — Metodologie tarife servicii sistem 2022 (text)|Ord. 116/2022]] | Ingested | SS methodology |
| [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)|Ord. 73/2025]] | Analysis | SS = 14,70 lei/MWh from Jan 2026 |
| [[Legea 123-2012 — energia electrica si gazele naturale (text)#Articolul 67|L123 art. 67]] | Ingested | PRE responsibility |

---

## Market access (OPCOM / schedules)

- [[OPCOM — PO-PZU Rev7 2025 (notă)]] — day-ahead 15-min products
- [[OPCOM — Procedura NF PZU-PRE 2015 (notă)]] — physical notifications on PRE change
- [[OPCOM — Procedura garantii PZU-PI 2025 (notă)]] — collateral (separate from PRE collateral)

---

## Cross-disciplinary

- [[_Energy Investment Due Diligence Index]] — Phase 4 market access
- [[Tarife retea — snapshot 2026]] — SS / TG / TL / TD values

## Open threads

- Ingest Ord. 127/2021 (+ amendments) and Ord. 213/2020
- Link `#Articolul N` anchors once texts are in vault
- BESS revenue worked example with 2026 market prices
- PICASSO / MARI integration note (EU platform layer)
