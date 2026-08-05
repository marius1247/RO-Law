---
title: "Concept — Fuel switching price si clean spreads"
type: concept
domeniu: [climat, piete-carbon, energie]
tags: [concept, EU-ETS, fuel-switching, power]
status: draft
created: 2026-08-05
---

# Concept — Fuel switching price si clean spreads

**EN:** fuel-switching price and clean spark/dark spreads · **RO:** preț de comutare combustibil și spread-uri curate

Power-sector EUA demand is driven by the **marginal fuel** in the generation stack. When coal is cheaper than gas (after efficiency and carbon costs), coal burn rises and EUA demand increases.

Parent: [[Concept — EUA market analysis 4 pillars]] · [[EU ETS — sinteza pietei carbon]]

---

## Fuel-switching logic

```
Cheap gas relative to coal  →  more gas burn  →  lower EUA demand
Gas price spike           →  more coal burn  →  higher EUA demand
```

Inputs:
- **TTF** — European gas benchmark
- **API2** — European coal benchmark
- Plant efficiency factors (CCGT ~50–55% · coal ~35–40%)
- **EUA price** (€/tCO₂)

---

## Clean spreads

| Spread | Definition | Interpretation |
|---|---|---|
| **Clean Spark Spread (CSS)** | Gas plant margin after fuel + EUA cost | Profitable gas generation → gas on margin |
| **Clean Dark Spread (CDS)** | Coal plant margin after fuel + EUA cost | Profitable coal generation → coal on margin |

The **switching price** is the EUA level (holding gas/coal constant) at which the marginal plant flips from coal to gas or vice versa.

---

## Practitioner use

1. Track TTF/API2 ratio alongside EUA — correlation is strongest in NW European power markets.
2. Cold winter → gas demand for heating + power → complex interaction with EUA.
3. Renewable output displaces thermal margin — high wind/solar reduces both coal and gas burn.

---

## Romania link

Romanian power mix includes coal (e.g. Rovinari, Turceni) and gas CCGT. EUA exposure on thermal generation sits in the **commodity margin**, separate from regulated network tariffs → [[Concept — Cost stack producator energie]].

---

## Related
[[Concept — EU ETS arhitectura Phase 4]] · [[MOC — Energetică]] · [[Energetică — sinteza sectorului]]
