---
title: "ANRE — Metodologie tarife transport EE 2024 (notă)"
type: act-note
instrument: act-anre
act_type: act-anre
issuer: ANRE
nr: "68"
an: 2024
domain: [energetică, tarife, transport]
domeniu: [energetică, tarife, transport]
portal_id: "288733"
source_url: "https://legislatie.just.ro/Public/DetaliiDocumentAfis/288733"
tags: [act-note, analysis, ANRE, tarife, transport, TG, TL, BAR, venit-plafon]
status: reviewed
depth: expert
created: 2026-08-06
updated: 2026-08-06
---

# Ordin ANRE 68/2024 — Transport tariff methodology — Analysis

**Raw text:** [[ANRE — Metodologie tarife transport EE 2024 (text)]] · **2026 rates:** [[ANRE — Ordin 74-2025 Tarife transport EE (notă)]] · **Hub:** [[MOC — Energetică]] · **Concepts:** [[Concept — Tarif de transport TG si TL]] · [[Concept — Cost stack producator energie]] · **Index:** [[ANRE — Metodologii tarifare EE (notă)]]

## Thesis

This methodology is the **durable rulebook** for building Transelectrica’s regulated transmission revenue and splitting it into **TG** (injection) and **TL** (extraction). It uses a five-year **revenue-cap** (*venit plafon*) with RAB/RRR capital remuneration, efficiency factors, and annual corrections — **not** a pure cost-plus annual reset. System-services procurement costs are **expressly excluded** (art. 1(2)); those live under Ord. 116/2022 → [[ANRE — Metodologie tarife servicii sistem 2022 (notă)]].

## Architecture

| Block | What it does |
|---|---|
| Arts. 1–5 | Scope, users (OTS + ANRE), definitions (BAR, RRR, CPT, TG/TL, X-factors) |
| Arts. 6–21 | Principles: separate accounts, cost allocation, justified costs, annual approval, correction triggers |
| Arts. 22–79 | Building **VR** = VR_nonCPT + VR_CPT_total (OPEX, amortization, RBAR, TI, congestion, CPT) |
| Arts. 80–119 | Annual corrections (volume, cost, investment, CPT, capitalised CPT) |
| Arts. 120–126 | Inflation (RI) treatment — Period V rules |
| Arts. 127 | Quality / performance incentive envelope (≤ 2.5% of VR) |
| Arts. 128–143 | **Tariff assembly:** TG and TL component formulas |
| Remainder | Filing duties, transitional / final |

**Regulatory period:** 5 years (Period V running). Revenues for each year of the period are set *ex ante*; annual Ordine (e.g. Ord. 74/2025) crystallise unit rates after corrections.

## Operative regime (by problem)

### Problem A — What revenue is being capped?
- **VR(t) = VR_nonCPT(t) + VR_CPT_total(t)** — art. 22.
- **nonCPT** covers efficient OPEX (controllable / uncontrollable), regulated amortization, **RBAR** (return on BAR), inter-TSO compensation (TI), emergency aid (CAUA).
- **CPT total** covers purchase of energy for technical losses, allocated 110 kV transit CPT, and congestion costs — split between producers and extraction customers in tariff components.
- **SS purchase costs never enter** this VR — art. 1(2).

### Problem B — How is the OTS incentivised?
- Controllable OPEX (ex-personnel / R&D) path: `CC(t) = CCreferință × (1 − X_inițial_eficiență)^t` — art. 24.
- Efficiency gains above target are shared with customers (art. 89 mechanism; maintenance underspend is **not** treated as efficiency — art. 18).
- Cap on year-on-year **nonCPT unit component** growth: **10% real** — art. 136; unrecovered remainder deferred.

### Problem C — What may not enter the tariff?
Long exclusion list art. 16: connection costs paid by users, performance compensations, monopoly tax, fines, donations, accounting amortization (regulated amortization only), affiliate profit mark-ups on subcontracts, unrecognised investments’ OPEX, etc. Art. 15 four-part test: necessary · opportune · efficient · market conditions.

### Problem D — How do unit tariffs TG / TL arise?
→ Full doctrine: [[Concept — Tarif de transport TG si TL]]

- **TG** (art. 130–133) = CPT_P + CPT_S_P — recovered from **producers** on injected MWh (`Qi`).
- **TL** (art. 134–139) = nonCPT + CPT_C + CPT_S_C — recovered from **extraction** customers on extracted MWh (`QE`), export carve-outs handled at SS layer separately.
- Applied under the transport / system-services framework contract (ANRE Ord. 132/2022).

### Problem E — Intra-period corrections
ANRE may reopen for incorrect data, calculation errors, double-counting, major legislative / ownership change, or significant power-price swings affecting CPT — arts. 21, 81+. Volume deviations on extraction feed negative/positive revenue corrections via the nonCPT component (art. 83).

## Definitions (operative)

| Term | Defining locus | Practitioner meaning |
|---|---|---|
| **BAR** | art. 5 | Net recognised fixed assets serving transport |
| **RRR / RBAR** | art. 5; Ord. 55/2024 for Period V rate | Allowed return on BAR |
| **Venit plafon** | arts. 2–3, 5 | Incentive revenue cap for the period |
| **CPT** | art. 5 | Technical losses (MWh / %) with ANRE targets |
| **TG / TL** | arts. 5, 129–139 | Injection / extraction unit tariffs |

## Obligations

| Who | Duty |
|---|---|
| **OTS** | Separate regulated accounts (art. 11); cost-allocation rules (art. 12); submit real-term forecasts; annual monitoring templates |
| **OTS** | Minimum own-funded investment floors vs approved plan / amortization (art. 5 definitions) |
| **ANRE** | Approve period revenues + annual tariffs; apply corrections; may cap components (art. 140) |

## Enforcement

- Cost refusal if art. 15 not evidenced (art. 15(3), 17).
- Cross-subsidy control via allocation audit (art. 13).
- Quality factor may trim / boost ≤ 2.5% of VR (art. 127).
- No private cause of action in this act — challenges go through administrative / contencios against the approving Ordin.

## Hard edges

- **SS excluded** — do not cite Ord. 68/2024 for PCE procurement pass-through.
- **Connection / user-funded assets** stay out of VR (art. 16 lit. c).
- **TG is CPT-only for producers** under current architecture — the heavy network cost sits in **TL nonCPT**; producer PPA models that ignore TL on aux / BESS charge understate stack.
- Period V inflation corrections narrowed (arts. 123–126) — modelling must use the RI rules in force for that period.
- Individual tariff **Decizii** remain out of vault scope; Ord. 74/2025 is the national rate instrument.

## Interactions

- Enabling: [[Legea 123-2012 — energia electrica si gazele naturale (text)|L123/2012]] arts. 75–79 · [[OUG 33-2007 — organizarea ANRE (text)|OUG 33/2007]]
- Sibling methodologies: [[ANRE — Metodologie tarife distributie EE 2024 (notă)]] · [[ANRE — Metodologie tarife servicii sistem 2022 (notă)]]
- Rate instrument: [[ANRE — Ordin 74-2025 Tarife transport EE (notă)]] · [[Tarife retea — snapshot 2026]]
- EU: Reg. (EU) 2019/943 · ITC Reg. 838/2010 (perimeter — Ord. 10/2026 track)
- Concepts: [[Concept — Tarif de transport TG si TL]] · [[Concept — Cost stack producator energie]] · [[Concept — Servicii de sistem si tariful SS]]

## File checklist

- [x] `(text)` ingested (portal 288733)
- [x] Wired into [[MOC — Energetică]]
- [x] Concepts extracted
- [x] [[SOURCE INDEX]] / [[ANRE — Metodologii tarifare EE (notă)]] updated

## Sources

- [[ANRE — Metodologie tarife transport EE 2024 (text)]] — portal_id `288733` · Ord. 68/2024 · MO 946/20.09.2024
