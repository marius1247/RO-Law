---
title: "Concept — Tarif de transport TG si TL"
type: concept
domain: [energetică, tarife, transport]
domeniu: [energetică, tarife, transport]
tags: [concept, energetică, TG, TL, transport, Transelectrica]
status: reviewed
created: 2026-08-06
updated: 2026-08-06
---

# Concept — Tarif de transport TG și TL

**RO:** tariful de transport — introducere (TG) / extragere (TL) · **EN:** transmission injection / extraction tariffs

## Definition

> **TG** and **TL** are the two regulated unit tariffs for the electricity **transport service**, built under [[ANRE — Metodologie tarife transport EE 2024 (text)#Articolul 129|Ord. 68/2024 art. 129]] and set annually (2026: [[ANRE — Ordin 74-2025 Tarife transport EE (text)|Ord. 74/2025]]).
>
> - **TG** — charge on energy **introduced** into the transport network (or, where applicable, into distribution networks) — recovered from **producers**.
> - **TL** — charge on energy **extracted** from the networks — recovered from transport-service customers.

## How it works

### Formula architecture (methodology)

| Tariff | Components | Base quantity |
|---|---|---|
| **TG** = CPT_P + CPT_S_P | Producer CPT + capitalised CPT | Injected MWh `Qi` — arts. 130–132 |
| **TL** = nonCPT + CPT_C + CPT_S_C | Network revenue (OPEX/RAB/…) + customer CPT legs | Extracted MWh `QE` — arts. 134–138 |

Critical design choice: **producers do not pay the nonCPT / RAB slice through TG**. That cost sits in **TL**. A solar park that only exports still pays TG (+ SS); a BESS that charges from the grid also pays TL on withdrawal.

### 2026 crystallised values (Ord. 74/2025, excl. VAT)

| | Total | Split |
|---|---:|---|
| **TG** | **3,63** lei/MWh | 3,18 + 0,45 |
| **TL** | **36,45** lei/MWh | 25,60 + 9,14 + 1,71 |

Live table: [[Tarife retea — snapshot 2026]].

### Revenue-cap background

VR is capped for a 5-year period (*venit plafon*), with annual corrections for volumes, costs, investments, CPT, inflation — see [[ANRE — Metodologie tarife transport EE 2024 (notă)]]. Art. 136 limits real YoY growth of the **nonCPT unit component** to 10%.

## Governing provisions

- [[ANRE — Metodologie tarife transport EE 2024 (text)#Articolul 1|Art. 1]] — SS costs excluded from transport VR
- [[ANRE — Metodologie tarife transport EE 2024 (text)#Articolul 22|Art. 22]] — VR = nonCPT + CPT_total
- [[ANRE — Metodologie tarife transport EE 2024 (text)#Articolul 130|Arts. 130–139]] — TG/TL assembly
- [[ANRE — Ordin 74-2025 Tarife transport EE (text)#Articolul 1|Ord. 74/2025 arts. 1–2]] — 2026 rates + reactive
- [[Legea 123-2012 — energia electrica si gazele naturale (text)|L123/2012]] arts. 75–79 — ANRE tariff competence

## Related

- [[Concept — Cost stack producator energie]] — billing order
- [[Concept — Servicii de sistem si tariful SS]] — separate pass-through
- [[Concept — Tarif de distributie TD]] — DSO layer
- [[Concept — BESS economics si tarifare stocare]] — TL on charge / SS exemption
- [[MOC — Energetică]] · [[ANRE]]

## Notes / conclusions

> For merchant RES DD, model **TG + SS** on every exported MWh and **TL** only on metered imports. Do not treat TG as a “full transport WACC” charge — read the component tables.
