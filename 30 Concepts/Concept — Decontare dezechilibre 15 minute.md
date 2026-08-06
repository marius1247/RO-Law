---
title: "Concept — Decontare dezechilibre 15 minute"
type: concept
domeniu: [energetică, piețe, echilibrare, PRE]
tags: [concept, energetică, PRE, BRP, dezechilibru, IBS, 15-minute]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# Concept — Decontare dezechilibre 15 minute

**RO:** Mecanismul de Decontare a Dezechilibrelor · **EN:** 15-minute Imbalance Settlement System (IBS)

Financial framework through which Transelectrica holds **PREs** accountable for real-time deviations between scheduled and actual energy. Governed by [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)|Ord. 213/2020]] (as amended).

Parent: [[Concept — PRE si responsabilitate de echilibrare]] · PE pricing: [[Concept — PE — piata energiei de echilibrare]] · Synthesis: [[Piete de echilibrare — synthesis]]

---

## Core formula (per ISP)

For each 15-minute Imbalance Settlement Period \(t\):

$$\text{Imbalance}_{\text{BRP}} = E_{\text{measured}} - E_{\text{notified}}$$

| Term | Meaning |
|---|---|
| \(E_{\text{measured}}\) | Sum of actual injections/withdrawals across the PRE portfolio (15-min smart metering) |
| \(E_{\text{notified}}\) | Sum of commercial physical schedules (PZU, PI, bilateral transfers) declared to TSO |

### Imbalance direction

| Position | Condition | Label |
|---|---|---|
| **Long** | Imbalance > 0 | Injected more / consumed less than scheduled |
| **Short** | Imbalance < 0 | Injected less / consumed more than scheduled |

---

## 1. The 15-minute ISP

| Attribute | Value |
|---|---|
| **Granularity** | 96 ISPs per delivery day |
| **EU alignment** | EBGL Art. 53 |
| **Physical notifications (NF)** | Net scheduled position submitted before gate closure for each ISP |

---

## 2. Single Imbalance Price (*Preț Unic*)

Romania uses a **single-price** model per ISP:

1. Transelectrica sums all physical deviations → determines if system is **Short** (needs upward energy) or **Long** (needs downward energy)
2. **\(P_{\text{imbalance}}\)** = marginal clearing price of last activated balancing energy bid (aFRR or mFRR) in that ISP
3. **Fallback:** if no balancing energy activated → \(P_{\text{imbalance}}\) = **PZU price** for that ISP

---

## 3. Settlement rules per ISP

All PREs settle at the **same unit price** in each 15-minute interval:

| BRP position | System status | Financial result |
|---|---|---|
| Short | System Short (needs up) | BRP **pays** TSO: \(P \times |\text{Imbalance}|\) |
| Long | System Short | TSO **pays** BRP: \(P \times \text{Imbalance}\) |
| Short | System Long (needs down) | BRP **pays** TSO (helps consume excess) |
| Long | System Long | TSO **pays** BRP (worsens excess — penalised directionally) |

> Direction matters: being long when the system needs upward energy is rewarded; being long when the system needs downward energy is penalised — and vice versa for short positions.

---

## 4. FCR energy in imbalance

FCR activations are **not** paid on PE. Net physical energy from FCR droop enters the asset's meter reading and flows into the PRE's \(E_{\text{measured}}\) — creating imbalance exposure **without** a dedicated FCR energy price.

→ [[Concept — FCR — operare si constrangeri]] · [[Concept — PE — piata energiei de echilibrare#FCR energy]]

This is why FCR providers need tight SoC management and why non-contracted assets avoid unilateral frequency response.

---

## 5. Settlement timeline

```
Real-time (T)     — 15-min metering collected by DSOs
T + 5 days        — Preliminary metering to Transelectrica (ODDPRE)
Monthly cycle     — Monthly Imbalance Settlement Notes (Note de Informare)
Invoicing         — Net payments BRP ↔ Transelectrica
```

### Monthly neutrality adjustment

Transelectrica operates **fără profit și fără pierdere** on balancing. Residual surplus/deficit from network losses or cross-border imbalances is redistributed to PREs proportionally at month-end.

---

## 6. Distinction from SS tariff

| | SS tariff (Ord. 73/2025) | IBS (this note) |
|---|---|---|
| **Basis** | Flat lei/MWh on extraction | Variable per 15-min ISP |
| **Driver** | Collective reserve procurement cost | Individual schedule vs. meter |
| **Pays for** | Capacity availability (PCE) | Forecast error + FCR net energy + system direction |
| **Who** | All market participants | Each PRE individually |

→ [[Concept — Servicii de sistem si tariful SS]]

---

## Governing provisions

- [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)|Ord. 213/2020]] — IBS rules (*stub; text pending*)
- [[Legea 123-2012 — energia electrica si gazele naturale (text)#Articolul 67|L123 art. 67]] — PRE financial responsibility
- EBGL Art. 53 — 15-minute settlement

## Related

[[Concept — PRE si responsabilitate de echilibrare]] · [[Concept — PE — piata energiei de echilibrare]] · [[OPCOM — PO-PZU Rev7 2025 (notă)]] · [[MOC — Piete de echilibrare]]

## Notes / conclusions

> Imbalance is **not a fixed tariff** — it is exposure to 15-minute marginal prices driven by system-wide balancing needs and your own forecast quality. RES and BESS projects must model this as a **stochastic cost/revenue line**, not a line item next to TG/SS.
