---
title: "Concept — PRE si responsabilitate de echilibrare"
type: concept
domeniu: [energetică, piețe, echilibrare]
tags: [concept, energetică, PRE, BRP, balancing, Transelectrica]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# Concept — PRE și responsabilitate de echilibrare

**RO:** partea responsabilă de echilibrare (PRE) · **EN:** Balancing Responsible Party (BRP)

Onboarding guide for **financial balancing responsibility** in Romania — the gate between holding an ANRE licence and trading on wholesale / organised markets. Distinct from **aggregation** (operational pooling) — see comparison below.

Parent: [[Concept — Cost stack producator energie]] · Market access index: [[_Energy Investment Due Diligence Index]]

---

## What PRE status is

The **PRE** (also referred to as **BRP** in OPCOM English documents) is the market participant that:

- assumes **financial responsibility** for deviations between **scheduled** and **actual** injections/withdrawals;
- posts **collateral** to the TSO (Transelectrica);
- receives **imbalance settlements** from the balancing market (*Piața de Echilibrare*);
- manages **schedule and metering data flows** with Transelectrica and, where applicable, OPCOM.

[[Legea 123-2012 — energia electrica si gazele naturale (text)#Articolul 67|L123 art. 67]] — market participants must assume balancing financial responsibility and pay for imbalances.

### Exemptions / delegation

| Actor | Balancing responsibility |
|---|---|
| **Prosumer <400 kW** | Falls on **supplier**, not prosumer (art. 67(3)) |
| **Producer/trader without PRE** | Must **delegate** to an existing PRE (contractual) |
| **OPCOM default BRG** | OPCOM registers dedicated BRGs for DAM settlement mechanics — not a substitute for producer PRE unless structured that way |

---

## PRE vs aggregation (do not conflate)

| | **PRE / BRP** | **Aggregation** |
|---|---|---|
| Nature | **Financial** responsibility | **Regulated operational** function |
| Controls assets | No | Yes (dispatch, UD/CD/ISD) |
| TSO capability test | Registration + collateral | TEL-07 / EMS validation |
| Needed for | Imbalance settlement | Demand response / pooled flexibility |
| Licence | Production, supply, or trading | Separate **aggregation** licence (L123 art. 10) |

A producer can be PRE without being an aggregator, and vice versa.

---

## Onboarding workflow (typical producer)

```
1. ANRE licence (generation / trading as needed)
        ↓
2. EIC code + metering / data aggregation conventions with TSO/DSO
        ↓
3. Apply to Transelectrica for PRE registration
        ↓
4. Sign Convenția de responsabilitate de echilibrare (+ annexes)
        ↓
5. Post financial guarantee / collateral (amount per TSO procedure)
        ↓
6. Operational testing of schedule submission
        ↓
7. OPCOM market registration (requires PRE or delegated PRE proof)
        ↓
8. Live trading — schedules → DAM/IDM → real-time imbalance
```

Timeline: budget **8–12 weeks** alongside OPCOM registration ([[OPCOM — Procedura inregistrare PEE rev 17 (notă)]] cites similar horizon).

---

## Step-by-step (documents & gates)

### 1 — Licence prerequisite

Valid ANRE **generation licence** (or trading licence if pure trader structure). [[Concept — Licență în energetică]].

Sub-1 MW generation may operate without licence but balancing still sits with supplier or delegated PRE.

### 2 — EIC and metering

- Obtain **EIC** code for market identification.
- Conclude **measurement and data aggregation conventions** with Transelectrica / DSO for settlement-quality metering.
- Confirm **15-minute** (or applicable) interval data path — imbalance settlement aligns with EU single-price imbalance framework (implementation via TSO rules — **full rulebook not yet in vault**).

### 3 — Balancing Agreement with Transelectrica

Core contract: **Convenția de responsabilitate de echilibrare** (Balancing Responsibility Agreement).

Typical content (verify live TSO template):
- scope of balancing groups (BRG);
- schedule submission deadlines;
- collateral amount and top-up triggers;
- suspension for collateral breach;
- data exchange with OPCOM for coupled markets.

### 4 — Financial collateral

- **Bank guarantee or cash deposit** to Transelectrica — amount driven by portfolio size, forecast risk, and TSO methodology.
- Separate from **OPCOM SGB** for PZU/PI ([[OPCOM — Procedura garantii PZU-PI 2025 (notă)]]): **two collateral pools** in a full merchant model.

### 5 — Delegation alternative

Producer may **transfer balancing responsibility** to a licensed supplier/trader PRE while retaining operational control. Contract must specify:
- who submits schedules;
- who pays imbalances;
- who holds collateral;
- curtailment / dispatch instructions.

Common in **corporate PPA** structures where offtaker's supplier is PRE.

### 6 — OPCOM gate

OPCOM registration procedure (Rev. 17) requires proof of:
- PRE status **or**
- valid delegation to another PRE.

See [[OPCOM — Procedura inregistrare PEE rev 17 (notă)]] — steps 2 and 5 in OPCOM's published checklist.

---

## Settlement mechanics

| Element | Detail |
|---|---|
| **Balancing market operator** | **Transelectrica** (not OPCOM) |
| **Settlement interval** | **15-minute** ISP — [[Concept — Decontare dezechilibre 15 minute]] |
| **Price formation** | Single-price imbalance per ISP — marginal PE clearing price (or PZU fallback) |
| **Schedule horizon** | Day-ahead (OPCOM PZU / bilateral) + intraday adjustments → real-time balance |
| **Cost driver** | Forecast error, outages, curtailment without schedule update, FCR net energy |

Imbalance is **not a fixed lei/MWh tariff** — it is the difference between contracted/scheduled position and metered quantity, valued at balancing energy prices. Highly volatile; 2025 saw sharp swings from prosumers, hydro, and supplier forecast quality (Transelectrica quarterly reports).

**Three separate cost layers** — do not conflate:

| Layer | Mechanism | Note |
|---|---|---|
| SS tariff | Flat **14,70 lei/MWh** (Jan 2026) on extraction | Collective PCE cost recovery — [[Concept — Servicii de sistem si tariful SS]] |
| PE activations | Variable marginal price per 15-min ISP | aFRR/mFRR energy — [[Concept — PE — piata energiei de echilibrare]] |
| PRE imbalance | Same marginal price × your deviation | [[Concept — Decontare dezechilibre 15 minute]] |

Full market architecture: [[Piete de echilibrare — synthesis]] · [[MOC — Piete de echilibrare]]

---

## Ongoing obligations

- Submit **day-ahead and intraday schedules** per TSO/market rules.
- Maintain **collateral** above minimum; respond to margin calls.
- Reconcile **metering vs. schedule** continuously — RES forecast tools are operational necessity.
- Update PRE registration on **M&A**, licence changes, metering point changes.
- Coordinate with **OPCOM** on PRE transfer when changing market participation.

---

## Risk flags for due diligence

1. **PRE not registered** but plant trading → market-rule violation.
2. **Collateral shortfall** → TSO suspension → cascade to OPCOM suspension.
3. **Delegated PRE** without back-to-back imbalance pass-through in PPA.
4. **Curtailment** without schedule adjustment → imbalance charges ([[Concept — Curtailment si redispatch RES]]).
5. **Missing normative texts** — balancing rulebook and network-code redispatch articles not ingested; Transelectrica PRE procedures are operator-site docs — pull live for named projects.

---

## Governing provisions

- [[Legea 123-2012 — energia electrica si gazele naturale (text)#Articolul 67|L123 art. 67]] — balancing financial responsibility
- [[ANRE — Ordin 25-2004 Cod comercial piata angro EE (notă)|Ord. 25/2004 Cod comercial]] — surviving commercial rules (partially repealed)
- [[OPCOM — PO-PZU Rev7 2025 (notă)]] — DAM requires PRE before registration (art. 6.1.8 lineage)
- Transelectrica balancing procedures — operator-site (not in vault; normative market rules still Batch B remainder)

## Related

[[Concept — Cost stack producator energie]] · [[Concept — Decontare dezechilibre 15 minute]] · [[Concept — PE — piata energiei de echilibrare]] · [[MOC — Piete de echilibrare]] · [[OPCOM — Procedura inregistrare PEE rev 17 (notă)]] · [[OPCOM — Procedura garantii PZU-PI 2025 (notă)]] · [[ANRE — Ordin 25-2004 Cod comercial piata angro EE (notă)]] · [[MOC — Energetică]]

## Notes / conclusions

> **No PRE, no organised market.** Every utility-scale solar/wind/BESS merchant model must answer: *who is PRE, who posts collateral, and who bears imbalance?* before the first MWh is scheduled.
