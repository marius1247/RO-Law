---
title: "Concept — CRCF net removal accounting"
type: concept
domeniu: [climat, piete-carbon, CDR]
tags: [concept, CRCF, BioCCS, LCA, carbon-removal]
status: draft
created: 2026-08-05
---

# Concept — CRCF net removal accounting

**EN:** CRCF net carbon removal life-cycle accounting · **RO:** contabilizarea netă a eliminărilor de carbon conform CRCF

Regulation (EU) 2024/3012 quantifies BioCCS (and other) removals via strict **cradle-to-grave LCA** under Qu.A.L.ITY criteria.

Parent: [[Concept — CDR integrare EU ETS post-2030]] · feedstock gate: [[Concept — RED III si feedstock BioCCS]]

---

## Master equation

```
N_net = CO₂_stored − E_baseline − E_supply_chain − E_process − E_transport_inject − E_leakage
```

| Term | Meaning |
|---|---|
| **CO₂_stored** | Gross verified biogenic CO₂ injected into permanent geological storage |
| **E_baseline** | Standardised counterfactual baseline emissions |
| **E_supply_chain** | Cultivation, harvest, land-use change, logistics |
| **E_process** | Capture energy penalty, solvents, auxiliary chemicals |
| **E_transport_inject** | Liquefaction, shipping/pipeline, wellhead injection |
| **E_leakage** | Indirect leakage + buffer pool withholding |

1 certified unit = 1 net tonne CO₂e stored ≥ **200 years**.

---

## Step-by-step (BioCCS)

### Step 1 — Biogenic fractionation
Mixed-fuel plants (WtE, co-fired) must determine biogenic vs fossil share:
- **¹⁴C isotope analysis** or mass-balance under EU MRV
- Fossil CO₂ captured → excluded from CRCF credits (counts as emission reduction under ETS 1 only)

### Step 2 — Supply chain deductions
```
E_supply_chain = E_cultivation + E_harvest + E_processing + E_logistics + E_dLUC/iLUC
```
- RED III gating test must pass first
- Secondary residues (sawmill offcuts, black liquor) → E_dLUC ≈ 0

### Step 3 — Process energy penalty
```
E_process = (MWh_thermal × EF_heat) + (MWh_electric × EF_grid) + E_solvents
```
Fossil-heavy grid power substantially reduces net certified removals.

### Step 4 — Transport & injection
```
E_transport_inject = E_liquefaction + E_shipping/pipeline + E_pumping/injection
```

### Step 5 — Permanence & buffer
- Storage must comply with CCS Directive 2009/31/EC (≥200 years containment)
- Percentage withheld in **centralised CRCF Buffer Reserve Pool** against future leaks

---

## Worked example — Waste-to-Energy plant

| Variable | Value | Impact |
|---|---|---|
| Gross CO₂ captured | 1,000 kg | Input |
| Biogenic fraction (¹⁴C) | 55% | 550 kg eligible |
| E_supply_chain | MSW collection transport | −10 kg |
| E_process | Amine heat + power | −65 kg |
| E_transport_inject | Barge to Northern Lights | −25 kg |
| Buffer (5%) | Risk withholding | −25 kg |
| **Net CRCF units** | — | **425 kg (42.5%)** |

Only 42.5% of gross captured CO₂ qualifies as certified permanent removal.

---

## DACCS vs BioCCS accounting

| | BioCCS | DACCS |
|---|---|---|
| Supply chain complexity | High (biomass provenance, RED III, LUC) | Low (atmospheric feedstock) |
| Process energy | Lower capture energy; grid penalty matters | Very high energy; grid penalty critical |
| Biogenic fractionation | Required for mixed feeds | N/A (net removal from air) |

→ Open thread: full DACCS CRCF methodology comparison in [[Concept — EU ETS open threads]]

---

## Related
[[Concept — DACCS vs BioCCS economics]] · [[Concept — EU CO2 transport si storage hubs]] · [[_EU Carbon Market Analysis Index]]
