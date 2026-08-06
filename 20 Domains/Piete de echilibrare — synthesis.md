---
title: "Piete de echilibrare — synthesis"
type: domain-note
domeniu: [energetică, piețe, echilibrare]
tags: [domain, analysis, energetică, echilibrare, PCE, PE, FCR, aFRR, mFRR]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# Piete de echilibrare — synthesis

Practitioner synthesis of **Romania's balancing architecture**: how Transelectrica procures reserves, how real-time energy is settled, and how those costs reach producers, suppliers, and consumers. Navigation hub: [[MOC — Piete de echilibrare]].

> [!info] Three cost layers — do not conflate
> 1. **SS tariff (Ord. 73/2025)** — collective pass-through for *capacity* procurement of technological system services → [[Concept — Servicii de sistem si tariful SS]]
> 2. **PCE capacity payments** — competitive auction remuneration to BSPs for reserved MW → [[Concept — PCE — piata capacitatilor de echilibrare]]
> 3. **PE imbalance settlement** — variable 15-minute energy prices charged to PREs → [[Concept — Decontare dezechilibre 15 minute]]

Parent sector map: [[Energetică — synthesis]] · Cost stack: [[Concept — Cost stack producator energie]] · PRE onboarding: [[Concept — PRE si responsabilitate de echilibrare]]

---

## 1. The two-market split

Transelectrica operates **two distinct procurement tiers** under EBGL-aligned ANRE rules (primarily [[ANRE — Ordin 127-2021 Piata echilibrare (notă)|Ord. 127/2021]]):

```
                    ┌─────────────────────────────────────┐
                    │     TRANSELECTRICA (TSO)            │
                    └─────────────────────────────────────┘
                           │                    │
              D-1 auctions │                    │ Real-time dispatch
                           ▼                    ▼
        ┌──────────────────────────┐   ┌──────────────────────────┐
        │  PCE — Capacity Market   │   │  PE — Balancing Energy   │
        │  (MW availability)       │   │  (MWh activation)        │
        └──────────────────────────┘   └──────────────────────────┘
              FCR ±MW                      FCR energy → BRP imbalance
              aFRR Up/Down MW              aFRR energy → marginal price
              mFRR Up/Down MW              mFRR energy → marginal price
```

| Market | RO name | What is traded | Who pays / settles |
|---|---|---|---|
| **PCE** | Piața Capacităților de Echilibrare | Standby **MW** (4-hour blocks) | Transelectrica → BSPs (auction); recovered via **SS tariff** |
| **PE** | Piața de Echilibrare | Activated **MWh** (15-min ISPs) | Transelectrica ↔ **PREs** via single imbalance price |

Detail: [[Concept — PCE — piata capacitatilor de echilibrare]] · [[Concept — PE — piata energiei de echilibrare]]

---

## 2. Reserve product ladder

| Product | Role | Response | Capacity paid? | Energy paid? |
|---|---|---|---|---|
| **FCR** | Primary — contain frequency deviations | 0–30 s, local droop | Yes (RON/MW/h) | **No** — nets via BRP |
| **aFRR** | Secondary — restore frequency to 50 Hz | 30 s–5 min, AGC signal | Yes | Yes (marginal / 15 min) |
| **mFRR** | Tertiary — manual restoration | ≤12.5 min, TSO dispatch | Yes | Yes (scheduled + direct) |

Operational comparison: [[Concept — FCR — operare si constrangeri]] · [[Concept — PE — piata energiei de echilibrare#Product comparison|PE product table]]

---

## 3. How costs reach the bill

### 3.1 System services tariff (SS) — Ord. 73/2025

**14,70 lei/MWh** from 1 January 2026. This is **not** the price Transelectrica pays BSPs at auction. It is the **regulated unit rate** billed to market participants (suppliers, grid users) on extracted energy, funding Transelectrica's **approved total costs** for procuring technological system services (capacity reserves), divided by total grid extraction.

→ [[Concept — Servicii de sistem si tariful SS]] · [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)#I-b. Ordinul ANRE nr. 73/2025|Ord. 73/2025 analysis]] · [[Tarife retea — snapshot 2026]]

### 3.2 Balancing energy — PRE settlement

Real-time activations (mainly aFRR/mFRR energy) are **not** rolled into the SS tariff. They flow through the **Imbalance Settlement System** (Decontarea Dezechilibrelor): each PRE pays or receives based on 15-minute deviations vs. schedule, valued at the **single imbalance price** for that ISP.

→ [[Concept — Decontare dezechilibre 15 minute]] · [[Concept — PRE si responsabilitate de echilibrare]]

---

## 4. Actor map

| Actor | RO | Role |
|---|---|---|
| TSO | Transelectrica | Procures reserves, dispatches balancing energy, settles PRE imbalances |
| BSP | Furnizor Servicii de Echilibrare (FSE) | Qualified provider selling FCR/aFRR/mFRR capacity (+ energy where applicable) |
| PRE / BRP | Parte Responsabilă de Echilibrare | Financially responsible for schedule vs. metered deviations |
| NEMO | OPCOM | Day-ahead / intraday energy markets — schedules feed into PRE position |

Qualification: generators, BESS, and demand-response aggregators must pass Transelectrica technical tests to become BSPs.

---

## 5. BESS-specific angle

Standalone and hybrid BESS assets can **stack revenues** across PCE capacity, PE energy activations, and wholesale arbitrage (PZU/PI). Constraints: FCR symmetry (±MW withholding), SoC management, PRE imbalance exposure on FCR energy.

→ [[Concept — BESS revenue stacking]] · [[Concept — EMS BESS moduri operationale]] · [[Concept — BESS economics si tarifare stocare]]

---

## 6. Governing provisions (vault status)

| Act | Subject | Vault |
|---|---|---|
| [[ANRE — Ordin 127-2021 Piata echilibrare (notă)|Ord. 127/2021]] | Balancing market rules (PCE + PE) | Stub — **text not ingested** |
| [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)|Ord. 213/2020]] | Imbalance settlement mechanism | Stub — **text not ingested** |
| [[ANRE — Metodologie tarife servicii sistem 2022 (text)|Ord. 116/2022]] | SS tariff methodology | Ingested |
| [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)|Ord. 73/2025]] | SS tariff value 14,70 lei/MWh (2026) | Analysis only |
| [[Legea 123-2012 — energia electrica si gazele naturale (text)#Articolul 67|L123 art. 67]] | PRE balancing responsibility | Ingested |
| EBGL (EU Reg. 2017/2195) | European balancing guidelines | Cross-vault: `EU Law/` |

---

## 7. Open gaps

- Full text ingest: Ord. **127/2021** (as amended by Ord. **60/2024**), Ord. **213/2020**
- Transelectrica BSP qualification / DAMAS auction procedures (operator-site)
- PICASSO / MARI platform integration details for aFRR/mFRR
- Worked revenue example for 100 MW / 200 MWh BESS with live price inputs

## Related

[[MOC — Piete de echilibrare]] · [[MOC — Energetică]] · [[_Energy Investment Due Diligence Index]] · [[Concept — Cost stack producator energie]]

## Notes / conclusions

> **SS pays for capacity availability; PE pays for real-time energy; PRE pays for forecast error.** Any BESS or RES merchant model must model all three layers separately before signing a PPA or bidding into PCE.
