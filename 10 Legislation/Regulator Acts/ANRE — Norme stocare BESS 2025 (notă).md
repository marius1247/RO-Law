---
title: "ANRE — Norme stocare BESS 2025 (notă)"
type: act-note
act: "[[ANRE — Norme stocare BESS 2025 (text)]]"
act_type: act-anre
issuer: ANRE
nr: 56
an: 2025
domain: [energetică, stocare, BESS, tarife]
domeniu: [energetică, stocare, BESS, tarife]
tags: [act-note, analysis, ANRE, BESS, stocare, tarife]
status: reviewed
depth: expert
mo_publicare: "MO nr. 704 / 08.07.2025"
portal_id: "299750"
created: 2026-08-05
updated: 2026-08-06
---

# Ord. 56/2025 — BESS tariff exemption norme — Analysis

**Raw text:** [[ANRE — Norme stocare BESS 2025 (text)]] · **Parent law:** [[OUG 134-2024 — stocare energie electrica (notă)|OUG 134/2024 art. 66³]] · **Hub:** [[MOC — Energetică]] · **Concept:** [[Concept — BESS economics si tarifare stocare]] · [[Concept — Cost stack producator energie]] · **Rates:** [[Tarife retea — snapshot 2026]]

## Thesis

Short but commercially decisive ANRE instrument: until a permanent cost–benefit storage tariff methodology exists, **stored electricity that is withdrawn from the grid and later re-injected is exempt from TL (extraction), SS, concession TD and non-concession TD**. Everything else (charging losses, auxiliaries, non-stored offtake) stays fully tariffed. This is the operative reading of L123 art. 66³.

## Architecture

11 articles. Complements (does not replace) Ord. **68/2024** (transport), **116/2022** (SS), **67/2024** (concession TD) and **102/2016** (non-concession TD) methodologies — art. 1.

| Arts. | Function |
|---|---|
| 1–2 | Scope — TSO + all DSOs |
| 3 | Definitions — “energie electrică stocată” |
| 4–5 | Default rule + interim exemptions |
| 6 | Cascade: exemptions apply even when storage sits behind a downstream DSO |
| 7–9 | Quantity determination, reporting, tariff-forecast math |
| 10–11 | Framework contracts + single operational procedure (60/90-day clocks) |

## Operative regime (by problem)

### What quantity is exempt
Art. 3: **energie electrică stocată** = electricity extracted from the network, held in the storage installation for a limited time, then evacuated back to the network (includes CHEAP pumping mode).

Art. 4: stored electricity remains subject to regulated tariffs **except** those listed in art. 5.

### Interim exemption basket (art. 5)
Until ANRE sets a permanent storage tariff system based on network CBA:
- **a)** TL — extraction component (TSO)
- **b)** SS — system-services purchase tariff (TSO)
- **c)** TD — concession DSO tariff applied to final distribution customers
- **d)** TD — non-concession DSO tariff

Not listed (hence still due): TG (injection), connection charges, reactive energy, CV / CfD / other invoice lines outside this norme — CV/cogeneration exemptions sit in L123 art. 66³ itself, not re-listed here.

### Cascade across voltage / ownership layers (art. 6)
- Concession DSO applies art. 5 exemptions even if the storage unit is connected to a **non-concession** DSO network.
- TSO applies exemptions even if storage is connected only at distribution level.

### Metering & reporting (art. 7)
- Quantity determined by the network operator that owns the networks to which the storage unit is connected.
- Downstream DSOs report monthly upstream; non-concession DSOs also report annually to ANRE by **31 May** for the prior year.
- Concession operators report via monitoring templates; forecast stored volumes for tariff-setting use ≤ 2 years of history.

### How exemptions enter tariff math (arts. 8–9)
Stored volumes are **subtracted** from the extraction / distributed quantities used to set TL/SS (art. 8) and concession TD (art. 9) for year t+1 and for prior-year corrections — so the exemption is not a pure bill credit floating outside the allowed-revenue system; it reshapes the volume base.

### Contracts & procedures (arts. 10–11)
- Network operators must use ANRE framework contracts for stored-energy relations (art. 10); until approved, existing contracts are adapted.
- Concession operators: single joint operational procedure (invoicing reflection, regularisation, reporting) — file with ANRE and publish within **60 days** of entry into force.
- Non-concession operators: adopt that procedure or file their own within **90 days**.

## Definitions

| Term | Art. |
|---|---|
| Energie electrică stocată | 3.A.1 |
| Tarife reglementate | 3.A.7 |
| Operatori de rețea / concesionari / neconcesionari | 3.A.3–6 |

## Obligations

| Who | Duty |
|---|---|
| TSO / DSOs | Apply art. 5 to measured stored quantities; cascade under art. 6; report under art. 7; adjust tariff forecasts under arts. 8–9 |
| Concession operators | Joint procedure in 60 days (art. 11) |
| Storage operators | Cooperate on metering; ensure contractual setup under art. 10 |

## Enforcement

ANRE monitoring via machete + procedure filing. Failure to reflect exemptions in invoices is a regulated-activity compliance issue under OUG 33 / L123 sanction powers. No separate fine schedule in this norme.

## Hard edges

- **Interim only** — art. 5 sunset when permanent CBA methodology lands; model bankability on that risk.
- Exemption is for **stored-and-reinjected** energy, not for all MWh charged into the battery.
- Co-located RES generation that never hits the public network as “extracted then stored” may fall outside art. 3’s definition — measure the commercial path carefully.
- CV / cogeneration contribution relief is statutory (OUG 134 / L123 66³), complementary to this tariff norme — do not assume Ord. 56 alone covers the full stack.
- Live lei/MWh values → [[Tarife retea — snapshot 2026]]; methodology parents → [[ANRE — Metodologii tarifare EE (notă)]].

## Interactions

- Implements: [[OUG 134-2024 — stocare energie electrica (notă)|OUG 134/2024]]
- Complements: Ord. 68/2024 · 116/2022 · 67/2024 · 102/2016
- Related concepts: [[Concept — BESS economics si tarifare stocare]] · [[Concept — BESS revenue stacking]] · [[Concept — Tarif de transport TG si TL]] · [[Concept — Tarif de distributie TD]] · [[Concept — Servicii de sistem si tariful SS]]
- Authorities: [[ANRE]] · Transelectrica · DSOs

## File checklist

- [x] `(text)` linked (portal `299750`)
- [x] Concept / snapshot wiring
- [ ] Track replacement by permanent storage CBA methodology
- [ ] Confirm framework-contract Ordin under art. 10 when published

## Sources

- [[ANRE — Norme stocare BESS 2025 (text)]]
- [[OUG 134-2024 — stocare energie electrica (text)]]
