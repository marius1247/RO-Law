---
title: "Concept — BESS revenue stacking"
type: concept
domeniu: [energetică, stocare, BESS, piețe]
tags: [concept, energetică, BESS, revenue-stacking, PCE, PE, arbitrage]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# Concept — BESS revenue stacking

**RO:** stivuirea veniturilor BESS · **EN:** BESS revenue stacking / multi-market optimisation

How battery assets simultaneously capture cash flows across **wholesale energy**, **balancing capacity (PCE)**, and **balancing energy (PE)** in Romania.

Parent: [[Concept — BESS economics si tarifare stocare]] · Markets: [[Piete de echilibrare — synthesis]] · Execution: [[Concept — EMS BESS moduri operationale]]

---

## Three revenue streams

```
┌─────────────────────────────────────────────────────────────────────────┐
│                         BESS REVENUE STACK                              │
├──────────────────────┬────────────────────────┬─────────────────────────┤
│ 1. Wholesale         │ 2. Capacity (PCE)      │ 3. Energy dispatch (PE) │
│    Arbitrage PZU/PI  │    FCR & aFRR          │    aFRR activations     │
├──────────────────────┼────────────────────────┼─────────────────────────┤
│ Buy low, sell high   │ RON/MW/h for reserved  │ Marginal RON/MWh per    │
│ Settled per MWh      │ MW — paid whether or   │ 15-min ISP when TSO     │
│                      │ not activated          │ dispatches aFRR         │
└──────────────────────┴────────────────────────┴─────────────────────────┘
```

| Stream | Market | Unit | FCR included? |
|---|---|---|---|
| Arbitrage | PZU / PI | RON/MWh | Uses unreserved MW only |
| Capacity standby | PCE | RON/MW/h | FCR ±MW + aFRR Up/Down |
| Energy activation | PE | RON/MWh | aFRR only — FCR energy unpaid |

Network tariff treatment: [[Concept — BESS economics si tarifare stocare]]

---

## Capacity partitioning example (100 MW / 200 MWh)

4-hour block 08:00–12:00:

| Band | Allocation | Revenue | Constraint |
|---|---|---:|---|
| **FCR** | ±20 MW symmetric | 20 MW × 4 h × FCR price | ±20 MW locked; SoC ≈50% |
| **aFRR Up** | +30 MW | 30 MW × 4 h × aFRR Up price | TSO AGC dispatch headroom |
| **Wholesale** | 50 MW unreserved | Spot spread on discharge hours | Normal arbitrage |

$$\text{Total capacity} = P_{\text{FCR}} + P_{\text{aFRR}} + P_{\text{Wholesale}}$$

EMS aggregates real-time setpoint:

$$P_{\text{setpoint}} = P_{\text{FCR\_droop}}(f) + P_{\text{aFRR\_TSO}} + P_{\text{Wholesale\_schedule}} + P_{\text{SoC\_mgmt}}$$

→ [[Concept — EMS BESS moduri operationale]]

---

## Chronological workflow (D-1 → real-time)

| Step | When | Action |
|---|---|---|
| **1. PCE bids** | D-1 morning | Submit FCR / aFRR capacity for each 4-hour block (DAMAS) |
| **2. PZU optimisation** | D-1 midday | Bid unreserved MW/MWh into day-ahead after PCE awards known |
| **3. PI fine-tuning** | D-1 → real-time | Rebalance SoC via 15-min intraday if drift from ≈50% |
| **4. Physical notifications** | Before GCT | Submit NF to Transelectrica per ISP |
| **5. Real-time execution** | ISP delivery | FCR droop + aFRR AGC + wholesale schedule combined |

PRE requirement: [[Concept — PRE si responsabilitate de echilibrare]]

---

## Key constraints

| Constraint | Impact |
|---|---|
| **FCR symmetry** | 1 MW FCR = 1 MW up + 1 MW down withheld — double opportunity cost |
| **C-rate / duration** | 1h battery degrades faster on continuous aFRR than 2–4h battery |
| **SoC recovery** | Cannot recharge in ways that create unannounced PRE imbalances |
| **FCR energy** | Unpaid — nets through PRE imbalance; needs SoC management |
| **SS exemption** | Ord. 56/2025 exempts SS on stored re-injection — not on charge leg |

---

## Typical revenue mix (illustrative, EU/CEE mature markets)

| Component | Share of cash flow | Driver |
|---|---:|---|
| aFRR capacity + energy | 45–60% | High capacity prices + frequent activations |
| FCR capacity | 20–30% | Steady RON/MW/h standby |
| Wholesale arbitrage | 15–25% | Intraday spreads, solar-driven midday dips |

*Romania-specific split will depend on PCE clearing prices and activation rates — model with live data.*

---

## Governing provisions

- [[ANRE — Ordin 127-2021 Piata echilibrare (notă)|Ord. 127/2021]] — BSP qualification & market access (*stub*)
- [[ANRE — Norme stocare BESS 2025 (notă)|Ord. 56/2025]] — discharge-side tariff exemption
- [[OUG 134-2024 — stocare energie electrica (notă)|OUG 134/2024]] — storage licensing framework

## Related

[[Concept — EMS BESS moduri operationale]] · [[Concept — PCE — piata capacitatilor de echilibrare]] · [[Concept — PE — piata energiei de echilibrare]] · [[Concept — Decontare dezechilibre 15 minute]] · [[MOC — Piete de echilibrare]]

## Notes / conclusions

> Revenue stacking is the **economic reason** BESS beats pure arbitrage in Romania — but it requires EMS-grade co-optimisation, PRE registration, and BSP qualification. Tariff reform (Ord. 56/2025) removed the network barrier; market access is now the gating item.
