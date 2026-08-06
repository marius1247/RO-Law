---
title: "Concept — FCR — operare si constrangeri"
type: concept
domeniu: [energetică, echilibrare, FCR, BESS]
tags: [concept, energetică, FCR, frecventa, LFSM, BESS, SoC]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# Concept — FCR — operare și constrângeri

**RO:** Rezerva de Contenție a Frecvenței · **EN:** Frequency Containment Reserve (FCR)

What FCR **capacity** imposes on an asset — and why only PCE-awarded units participate in normal frequency stabilisation.

Parent: [[Concept — PCE — piata capacitatilor de echilibrare#FCR capacity|PCE § FCR]] · BESS: [[Concept — EMS BESS moduri operationale]] · Revenue: [[Concept — BESS revenue stacking]]

---

## What FCR capacity is paid for

The RON/MW/h capacity payment compensates:

1. **Opportunity cost** — MW withheld from PZU, PI, and bilateral schedules
2. **Instantaneous standby** — physical governor/inverter speed for sub-second response
3. **Operational wear** — continuous micro-adjustments (thermal stress, battery degradation)

FCR **energy** is **not** separately remunerated — net flows settle via the asset's PRE → [[Concept — PE — piata energiei de echilibrare#FCR energy]]

---

## Operational constraints on the provider

### Mandatory capacity withholding

FCR is procured **symmetrically (±MW)**. Selling 10 MW FCR requires:

- **10 MW upward headroom** (can increase output)
- **10 MW downward footroom** (can decrease output)

→ **20 MW total band** unavailable for wholesale trading in that 4-hour block.

### Autonomous local reaction

Unlike aFRR (remote AGC signal), FCR requires **decentralised frequency control** on the plant governor or battery EMS:

- Response starts when frequency leaves deadband (**49.99–50.01 Hz** typical)
- **100% delivery within 30 seconds**
- **Sustained ≥15 minutes** per incident (ENTSO-E standard)

### State of charge (BESS)

BESS providing FCR must maintain **≈50% SoC** continuously — never fully empty or full when a grid event occurs. SoC rebalancing uses deadband windows and intraday trades → [[Concept — EMS BESS moduri operationale#4. SoC Management]]

### Continuous wear

Grid frequency fluctuates around 50.00 Hz constantly. FCR providers tweak output hundreds of times daily — accelerating mechanical wear and cell degradation.

---

## FCR vs aFRR — operational comparison

| Feature | FCR | aFRR |
|---|---|---|
| **Role** | Contain frequency deviations (seconds) | Restore frequency to 50.00 Hz |
| **Trigger** | Local frequency sensor | TSO SCADA AGC signal |
| **Full speed** | 0–30 seconds | 30 s – 5 minutes |
| **Direction** | Symmetric (±MW together) | Asymmetric (Up/Down separate) |
| **Capacity pay** | Yes (PCE) | Yes (PCE) |
| **Energy pay** | No (BRP nets) | Yes (PE marginal price) |

---

## Who participates in normal conditions?

| Mode | Who | Trigger range | Remunerated? |
|---|---|---|---|
| **Commercial FCR** | Only PCE-awarded units | 49.99–50.01 Hz (deadband edges) | Yes — capacity RON/MW/h |
| **Normal operations** | Non-contracted assets | Follow commercial schedule | No |
| **LFSM safety net** | **All** connected generators (Grid Code) | <49.80 Hz or >50.20 Hz | No — mandatory connection rule |

### Why non-contracted assets stay out

1. **No reserved margin** — operating at max schedule leaves no headroom for upward FCR
2. **Control deadbands** — governors set to fixed P_ref or wide deadband when not in FCR mode
3. **Imbalance penalties** — unilateral output changes create PRE exposure without FCR capacity payment to offset cost

### LFSM exception (emergency)

Under EU Requirements for Generators (RfG) and national Grid Code:

- **LFSM-O** (>50.20 Hz): all generators must cut output automatically
- **LFSM-U** (<49.80 Hz): operating generators with headroom must increase output

Mandatory — not commercially remunerated.

---

## Governing provisions

- [[ANRE — Ordin 127-2021 Piata echilibrare (notă)|Ord. 127/2021]] — FCR product rules (*stub*)
- ENTSO-E FCR technical requirements
- National Grid Code — LFSM thresholds

## Related

[[Concept — PCE — piata capacitatilor de echilibrare]] · [[Concept — PE — piata energiei de echilibrare]] · [[Concept — BESS revenue stacking]] · [[MOC — Piete de echilibrare]]

## Notes / conclusions

> FCR is not "standby waiting for a phone call." It is a **continuous automatic control mode** that locks symmetric MW bands and imposes real opportunity and degradation costs — which is why FCR capacity prices must clear above day-ahead spread opportunity for BESS operators.
