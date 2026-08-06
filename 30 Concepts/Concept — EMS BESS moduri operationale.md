---
title: "Concept — EMS BESS moduri operationale"
type: concept
domeniu: [energetică, stocare, BESS, echilibrare]
tags: [concept, energetică, BESS, EMS, FCR, aFRR, control]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# Concept — EMS BESS moduri operaționale

**RO:** Sistem de Management al Energiei (EMS) · **EN:** BESS Energy Management System — operational modes

How site EMS software coordinates **FCR**, **aFRR**, and **wholesale** schedules across a single battery asset.

Parent: [[Concept — BESS revenue stacking]] · FCR constraints: [[Concept — FCR — operare si constrangeri]]

---

## Three-tier control hierarchy

```
┌───────────────────────────────────────────────────────────────┐
│ Tier 1: Cloud Market Optimiser / Algorithmic Trader           │
│ Clears PZU, PI, FCR, aFRR capacity auctions (D-1)             │
└───────────────────────────────────────────────────────────────┘
                              │ bids & awarded schedules
                              ▼
┌───────────────────────────────────────────────────────────────┐
│ Tier 2: Site EMS (edge controller)                          │
│ Co-optimisation, SoC, priority engine, signal adder           │
└───────────────────────────────────────────────────────────────┘
                              │ real-time P_ref setpoint
                              ▼
┌───────────────────────────────────────────────────────────────┐
│ Tier 3: PCS inverters & BMS                                   │
│ Sub-second P/Q execution, thermal & voltage protection        │
└───────────────────────────────────────────────────────────────┘
```

| Tier | Function | Time horizon |
|---|---|---|
| **1 — Optimiser** | Price forecasts, degradation model, auction bidding | Hours to days |
| **2 — Site EMS** | Mode routing, SoC management, setpoint aggregation | Seconds to hours |
| **3 — PCS/BMS** | Hardware execution, cell safety | Milliseconds |

---

## Operational modes

| Mode | Trigger | Control loop | Response | Target SoC |
|---|---|---|---|---|
| **Wholesale / arbitrage** | Commercial schedule \(P_{\text{schedule}}\) | Open-loop time setpoint | Seconds–minutes | 0–100% (variable) |
| **FCR** | Local frequency sensor | Closed-loop droop | <1 second | ≈50% (symmetric) |
| **aFRR** | TSO SCADA (IEC 60870-5-104) | Closed-loop remote tracking | 1–30 seconds | Dynamic 20–80% |

---

## Strategy A — Temporal partitioning (time-slicing)

Single capacity block committed 100% to one service per time window:

| Block | Mode |
|---|---|
| 08:00–12:00 | FCR — local droop controls inverter |
| 12:00–16:00 | aFRR — droop disabled; AGC signal only |
| 16:00–18:00 | Wholesale — fixed charge/discharge schedule |

Switch at cleared market block boundaries (4-hour EIC products on PCE).

---

## Strategy B — Dynamic capacity stacking (partitioning)

Multiple modes **simultaneously** on one asset by logical MW bands:

$$P_{\text{inverter}} = P_{\text{FCR\_droop}}(f) + P_{\text{aFRR\_TSO}} + P_{\text{Wholesale}} + P_{\text{SoC\_mgmt}}$$

Hard limiter enforces total ≤ rated MW and BMS constraints. Recalculated every ~100 ms.

→ [[Concept — BESS revenue stacking#Capacity partitioning example]]

---

## 4. SoC management — master controller

Grid-driven activations (FCR/aFRR) continuously drift SoC. EMS rebalancing techniques:

### Deadband exploitation (FCR)

When frequency inside deadband (49.99–50.01 Hz) and no FCR response required, EMS slowly charges/discharges to push SoC toward 50%.

### Asymmetric droop adjustment

ENTSO-E tolerances allow biasing FCR droop curve: if SoC high (>70%), discharge more aggressively on low frequency than charge on high frequency (within regulatory limits).

### Intraday market (PI) recovery

If SoC approaches critical thresholds (<20% or >80%), EMS triggers algorithmic trades on **PI continuous** (15-min products) to restore baseline without violating availability obligations.

---

## Communication protocols (TSO interface)

| Protocol | Use |
|---|---|
| **IEC 60870-5-104** | aFRR AGC signals from Transelectrica SCADA |
| **Modbus TCP / OPC-UA** | Local PCS/BMS integration |
| **PICASSO** (EU) | European aFRR platform layer |

Local FCR uses **on-site frequency measurement** — no TSO communication required for activation.

---

## Mode switching rules (safety)

1. **Priority:** grid-code limits > BMS limits > aFRR dispatch > FCR droop > wholesale schedule
2. **FCR ↔ aFRR:** disable droop before enabling AGC tracking (and reverse) — avoid fighting controllers
3. **Market block boundaries:** pre-position SoC 15–30 min before FCR block if switching from wholesale

---

## Related

[[Concept — BESS revenue stacking]] · [[Concept — FCR — operare si constrangeri]] · [[Concept — PCE — piata capacitatilor de echilibrare]] · [[Concept — PRE si responsabilitate de echilibrare]] · [[MOC — Piete de echilibrare]]

## Notes / conclusions

> Modern BESS economics depend on **Strategy B** (simultaneous stacking). The EMS is not a toggle — it is a real-time optimiser that sums control loops under hard physical limits.
