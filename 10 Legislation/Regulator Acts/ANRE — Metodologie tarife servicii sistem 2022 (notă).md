---
title: "ANRE — Metodologie tarife servicii sistem 2022 (notă)"
type: act-note
instrument: act-anre
act_type: act-anre
issuer: ANRE
nr: "116"
an: 2022
domain: [energetică, tarife, servicii-sistem]
domeniu: [energetică, tarife, servicii-sistem]
portal_id: "259593"
source_url: "https://legislatie.just.ro/Public/DetaliiDocumentAfis/259593"
tags: [act-note, analysis, ANRE, tarife, SS, PCE, venit-reglementat]
status: reviewed
depth: expert
created: 2026-08-06
updated: 2026-08-06
---

# Ordin ANRE 116/2022 — System-services tariff methodology — Analysis

**Raw text:** [[ANRE — Metodologie tarife servicii sistem 2022 (text)]] · **Live SS rate:** [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]] · **Concept:** [[Concept — Servicii de sistem si tariful SS]] · **Hub:** [[MOC — Piete de echilibrare]] · [[MOC — Energetică]]

## Thesis

Short, sharp methodology (29 articles) that converts Transelectrica’s **market-based purchase costs** for technological system services into a **single regulated unit tariff (SS)** charged on energy **extracted** from the grids (exports excluded). It is a **pass-through with forecast + correction**, not a RAB/RRR building-block regime — that is why SS is volatile intra-year while TG/TL move on the annual Ord. 68/2024 cycle.

## Architecture

| Chapter | Arts. | Content |
|---|---|---|
| I — General | 1–7 | Purpose, scope, what SS buys, definitions |
| II — Principles | 8–15 | Non-discrimination, single-counting, annual proposal, mid-year revision gate |
| III — Regulated revenue | 16 | `V_t` from Σ(p_i × Q_i) − penalties + K_cv |
| IV — Corrections | 17–19 | Forecast vs out-turn on prices/volumes; >10% may be phased |
| V — Tariff | 20–21 | `T_t = V_t / Q_extt` on extraction excl. export |
| VI — Mid-year revision | 22–24 | 5% trigger; OTS must file 1 May / 1 Aug |
| VII — Data | 25–27 | 1 October filing pack |
| VIII — Final | 28–29 | Transitional corrections; monitoring |

## Operative regime (by problem)

### Problem A — What costs enter SS?
Art. 2: services listed in the **technical qualification procedure** (ANRE Ord. 89/2021) — FCR / aFRR / mFRR capacity and related technological services Transelectrica buys on competitive markets (art. 6; EBGL / electricity market framework). Non-frequency services bought under an art. 36(16) L123 derogation still flow into SS if the derogation instrument so provides (art. 6(2)).

### Problem B — How is V_t built?
Art. 16: forecast purchase prices × quantities by service type and activation direction, minus forecast penalty revenues, plus correction **K_cv** from H2 of t−2 and H1 of t−1. Monthly breakdown required.

### Problem C — Who pays the tariff?
Arts. 4, 20–21: applied to **energy extracted from networks**, **except exported energy**. Denominator `Q_extt` is that extraction forecast. This is why SS sits on the producer injection invoice in practice as a use-of-system charge aligned with metering — confirm contract annex mapping against Ord. 132/2022 framework.

### Problem D — Why does SS jump mid-year?
Arts. 22–24: if realised vs forecast cost/revenue gap for Q1 or H1 exceeds **5%** of forecast revenues for that window, OTS **must** apply for revision (filings 1 May / 1 Aug). ANRE may also refresh the residual-year forecast. Arts. 17–19 correct with IPC; corrections >10% of `V_t` may be staggered — dampener, not a freeze.

### Problem E — What SS is *not*
Does **not** set BSP clearing prices on PCE, PE energy prices, or PRE imbalance prices. Those are market outcomes — [[Concept — PCE — piata capacitatilor de echilibrare]] · [[Concept — PE — piata energiei de echilibrare]] · [[Concept — Decontare dezechilibre 15 minute]].

## Definitions

| Term | Art. | Meaning |
|---|---|---|
| **Tarif pentru achiziția serviciilor de sistem** | 7(2) | Unit charge recovering OTS purchase costs |
| **Perioadă tarifară** | 7(2) | Usually calendar year from 1 Jan |
| **Sensuri de activare** | 7(2) | Up / down (increase / decrease) |

## Obligations

| Who | When | Duty |
|---|---|---|
| **OTS** | by 1 Oct of t−1 | Full forecast pack (art. 25) |
| **OTS** | 1 May / 1 Aug | Mid-year gap test + optional revision file (art. 26) |
| **ANRE** | annually (+ ad hoc) | Approve / revise SS tariff (arts. 14–15, 23–24) |

## Enforcement

- Double-counted cost/revenue clawed back via next-period VR (art. 13).
- Monitoring via OTS reporting guide (art. 29).
- Challenge path: administrative contestation of the approving Ordin (e.g. Ord. 73/2025), not of this methodology in isolation.

## Hard edges

- **Export carve-out** in the charge base (arts. 4, 20) — cross-border schedules interact with perimeter ITC tariff (Ord. 10/2026), not with SS denominator design.
- **No RAB logic** — modelling SS as a stable “network WACC charge” is wrong; treat as **procurement pass-through with lagging corrections**.
- Qualification / product definitions live in Ord. 89/2021 and balancing rules (Ord. 127/2021) — this act only prices the recovery.

## Interactions

- Enabling: [[Legea 123-2012 — energia electrica si gazele naturale (text)|L123/2012]] art. 36 · arts. 75–79
- Rate instruments: Ord. 60/2025 → Ord. 73/2025 — [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]]
- Excluded from: [[ANRE — Metodologie tarife transport EE 2024 (notă)|Ord. 68/2024 art. 1(2)]]
- EU: Reg. (EU) 2017/2195 (EBGL) · Reg. (EU) 2019/943 · Dir. (EU) 2019/944
- Concepts: [[Concept — Servicii de sistem si tariful SS]] · [[Concept — Cost stack producator energie]] · [[Piete de echilibrare — synthesis]]

## File checklist

- [x] `(text)` ingested (portal 259593)
- [x] Deep `(notă)` replaces thin umbrella mention
- [x] Concept links bidirectional
- [x] MOC wiring

## Sources

- [[ANRE — Metodologie tarife servicii sistem 2022 (text)]] — portal_id `259593` · Ord. 116/2022 · MO 936/23.09.2022
