---
title: "Concept — Tarif de distributie TD"
type: concept
domain: [energetică, tarife, distribuție]
domeniu: [energetică, tarife, distribuție]
tags: [concept, energetică, TD, distribuție, DSO]
status: reviewed
created: 2026-08-06
updated: 2026-08-06
---

# Concept — Tarif de distribuție TD

**RO:** tariful de distribuție a energiei electrice · **EN:** distribution use-of-system tariff (TD)

## Definition

> **TD** is the regulated tariff for the **distribution service** provided by a **concessionaire DSO**, approved annually by ANRE under the [[ANRE — Metodologie tarife distributie EE 2024 (text)#Articolul 1|Ord. 67/2024]] *coș de tarife plafon* methodology. It is **voltage-specific** (IT / MT / JT) and usually billed as the **sum of components** (nonCPT + CPT + capitalised CPT) at the delimitation voltage — [[Tarife retea — snapshot 2026]].

## How it works

### Who faces TD?

- Users connected to that OD’s RED under a distribution contract — [[ANRE — Metodologie tarife distributie EE 2024 (text)#Articolul 4|art. 4]].
- Most wind/solar parks on **MT** pay the MT specific tariff of their concessionaire.
- Plants connected **only** at transport (RET) do **not** pay TD — only TG/TL/SS.

### Basket-cap vs revenue-cap

Unlike transport’s *venit plafon*, distribution uses a **tariff-basket cap**: ANRE constrains the quantity-weighted average of the OD’s tariff structure while still building VR from OPEX + amortization + RBAR + CPT (methodology arts. 1–2, 5). Efficiency sharing and merger-benefit sharing apply inside that frame.

### 2026 illustration (excl. VAT)

| DSO (snapshot) | Ordin | IT | MT | JT |
|---|---|---:|---:|---:|
| Delgaz Grid | 76/2025 | 40,46 | 85,25 | 262,20 |
| DEER | 77/2025 | 31,96 | 83,36 | 240,02 |

Always confirm operator ↔ Ordin mapping against annexes — working filenames may swap short-names.

### Stack position

```
Producer at MT delimitation
  TD (DSO, MT)  +  TG  +  SS  [+ TL if withdrawing]
```

→ [[Concept — Cost stack producator energie]]

## Governing provisions

- [[ANRE — Metodologie tarife distributie EE 2024 (text)#Articolul 1|Ord. 67/2024 arts. 1–4]] — purpose, scope, voltage application
- [[ANRE — Metodologie tarife distributie EE 2024 (text)#Articolul 5|Art. 5]] — IT/MT/JT, CPT util, specific tariff
- [[ANRE — Metodologie tarife distributie EE 2024 (text)#Articolul 10|Arts. 10–11]] — merger tariff continuity
- Annual rate Ordine 76/77/2025 — values in [[Tarife retea — snapshot 2026]]
- [[Legea 123-2012 — energia electrica si gazele naturale (text)|L123/2012]] — distribution service + ANRE tariff power

## Related

- [[Concept — Tarif de transport TG si TL]]
- [[Concept — Servicii de sistem si tariful SS]]
- [[Concept — Racordare la rețea]] — connection vs ongoing TD
- [[ANRE — Metodologie tarife distributie EE 2024 (notă)]]
- [[MOC — Energetică]] · [[ANRE]]

## Notes / conclusions

> In financial models, TD is often the **largest regulated lei/MWh line** for MT-connected RES — larger than TG+SS combined. Pin the delimitation voltage in the ATR / connection contract before picking a column from the snapshot.
