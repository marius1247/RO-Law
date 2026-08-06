---
title: "Concept — Servicii de sistem si tariful SS"
type: concept
domeniu: [energetică, tarife, servicii-de-sistem]
tags: [concept, energetică, SS, servicii-de-sistem, Ord-73-2025, Transelectrica]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# Concept — Servicii de sistem și tariful SS

**RO:** tariful pentru achiziția serviciilor de sistem · **EN:** system services tariff (SS)

Clarifies what **ANRE Ord. 73/2025** actually sets — and what it does **not** set — in Romania's balancing cost stack.

Parent: [[Piete de echilibrare — synthesis]] · Cost map: [[Concept — Cost stack producator energie]] · Methodology: [[ANRE — Metodologie tarife servicii sistem 2022 (text)|Ord. 116/2022]]

---

## What Ord. 73/2025 is

| Question | Answer |
|---|---|
| Does it set the price Transelectrica **pays BSPs** at auction? | **No** |
| Does it set what **market participants pay** to reimburse Transelectrica? | **Yes** |
| What unit? | **lei/MWh** on energy extracted from the grid |
| Value from 1 Jan 2026 | **14,70 lei/MWh** (excl. VAT) |

The order approves the **regulated pass-through tariff** by which suppliers and grid users compensate Transelectrica for its **total approved costs** of procuring technological system services, divided by total energy extracted from the SEN.

→ [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)#I-b. Ordinul ANRE nr. 73/2025|Ord. 73/2025 analysis]] · [[Tarife retea — snapshot 2026]]

---

## What SS pays for (scope)

**Technological system services** (*servicii de sistem tehnologice*) — primarily **capacity reservations** procured in advance:

- **FCR** capacity (frequency containment)
- **aFRR** capacity (automatic frequency restoration)
- **mFRR** capacity (manual frequency restoration)
- Voltage control and black-start capabilities

Transelectrica buys these through competitive tenders on the **Balancing Capacity Market (PCE)** — see [[Concept — PCE — piata capacitatilor de echilibrare]].

---

## What SS does NOT cover

| Cost | Mechanism |
|---|---|
| **Balancing energy** (activated MWh) | Settled via **PRE imbalance** on the Balancing Energy Market (PE) — [[Concept — PE — piata energiei de echilibrare]] |
| **Individual PRE forecast errors** | 15-minute imbalance settlement — [[Concept — Decontare dezechilibre 15 minute]] |
| **Wholesale energy commodity** | PZU / PI / bilateral — separate from SS |

> [!warning] Common confusion
> The SS line on a producer invoice is **not** the balancing energy price for that producer's deviations. It is a **flat collective charge** funding reserve procurement for the whole system.

---

## How Transelectrica recovers costs (two-step)

```
Step 1 — Procurement (PCE)
  Transelectrica runs D-1 auctions → pays BSPs RON/MW/h for reserved capacity

Step 2 — Recovery (SS tariff)
  Total approved procurement costs ÷ total extracted MWh = SS unit rate (Ord. 73/2025)
  Suppliers pass through to end consumers on electricity bills
```

Auction clearing prices are **competitive and variable**; the SS tariff is **regulated and periodic** (updated when approved costs change).

---

## Impact on producer cost stack

| Actor | SS treatment |
|---|---|
| Merchant RES (export) | Pays SS on every injected MWh (with TG) |
| BESS re-injection | **Exempt** on stored quantity — [[Concept — BESS economics si tarifare stocare]] |
| Pure consumer / supplier | Pays SS on extracted energy |

Illustrative 2026 stack at transmission: TG 3,63 + SS 14,70 ≈ **18,3 lei/MWh** — [[Concept — Cost stack producator energie#1.2 System services — SS|cost stack § SS]].

---

## Governing provisions

- [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)|Ord. 73/2025]] — tariff value (analysis; text not ingested)
- [[ANRE — Metodologie tarife servicii sistem 2022 (text)|Ord. 116/2022]] — methodology
- [[Legea 123-2012 — energia electrica si gazele naturale (text)#Articolul 75|L123 art. 75–79]] — tariff-setting powers

## Related

[[Concept — PCE — piata capacitatilor de echilibrare]] · [[Concept — PE — piata energiei de echilibrare]] · [[MOC — Piete de echilibrare]] · [[MOC — Energetică]]

## Notes / conclusions

> Ord. 73/2025 answers: *"What do all market participants collectively pay per MWh to fund reserve procurement?"* It does not answer: *"What does my plant pay for being 5 MWh short in ISP 42?"* — that is PRE imbalance settlement.
