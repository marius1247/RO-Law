---
title: "Concept — BESS economics si tarifare stocare"
type: concept
domeniu: [energetică, stocare, BESS, tarife]
tags: [concept, energetică, BESS, stocare, tarifare, OUG-134, Ord-56-2025]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# Concept — BESS economics și tarifare stocare

**RO:** stocarea energiei electrice · **EN:** battery energy storage / BESS economics

Practitioner note on **Romanian BESS tariff treatment** after **[[OUG 134-2024 — stocare energie electrica (notă)|OUG 134/2024]]** and **[[ANRE — Norme stocare BESS 2025 (notă)|ANRE Ord. 56/2025]]** (Norme metodologice privind scutirea de la plata tarifelor reglementate pentru energia electrică stocată). Parent cost map → [[Concept — Cost stack producator energie]].

> [!info] Policy intent
> Eliminate **double taxation** of energy cycled through storage: previously, grid withdrawal (charge) and re-injection (discharge) each triggered full use-of-system stacks — making standalone BESS uneconomic relative to EU peers.

## Legal cascade

```
[[OUG 134-2024 — stocare energie electrica (text)|OUG 134/2024]] (Nov 2024) — storage definitions & tariff policy in L123
    ↓
[[ANRE — Norme stocare BESS 2025 (text)|ANRE Ord. 56/2025]] (MO; aplicabil ~10 iulie 2025)
    ↓
Operatori de rețea — aplicare scutiri + raportare cantități stocate
```

L123 definitions for **stocare**, co-located storage, and storage licensing: [[Legea 123-2012 — energia electrica si gazele naturale (notă)|L123 notă]] (art. 3, art. 10).

---

## What Ord. 56/2025 changes

For **energy that is stored and then re-introduced into the grid**, the following **regulated tariffs do not apply** on the **stored quantity** (re-injection leg):

| Exempt tariff | Code | Operator |
|---|---|---|
| Extraction (transport) | **TL** | Transelectrica |
| System services | **SS** | Transelectrica |
| Distribution (final-customer component) | **TDc** | DSO concesionar |
| Distribution (non-concessionaire) | TD | OD neconcesionar |
| **Green certificate purchase** | CV | On stored energy re-injected |

### What remains payable

| Situation | Tariffs |
|---|---|
| **Charging from grid** | **TL** (+ **TD** if DSO-connected) on withdrawn energy |
| **Auxiliary / technological consumption** | Full stack (TG/TL/TD/SS as applicable) |
| **Storage losses / efficiency** | Treated as consumption — no exemption |
| **Injection leg (TG)** | May apply on discharge metering — model charge and discharge separately |
| **Internal site load** | Full tariffs |

> [!warning] Scope limit
> Exemptions apply **only** to energy **sourced from the grid, stored, and fed back**. They do **not** wrap co-located solar/wind output stored before export — that path follows normal producer rules unless separately qualified.

---

## BESS vs solar/wind — tariff comparison (2026)

| Flow | Solar / wind export | BESS (store → re-inject) |
|---|---|---|
| Inject to grid | TG 3,63 + SS 14,70 (+ TD if MT) | TG on discharge; **SS exempt** on stored qty |
| Withdraw from grid | N/A (export-only) | TL 36,45 + TD — **full stack on charge** |
| Double charge on cycle | N/A | **Removed** on re-injection (was TL+SS+TD again) |
| Green certificates | Receive (legacy RES) | **Exempt** on stored re-injection |

Illustrative **round-trip grid arbitrage** network cost (MT Delgaz, simplified):
- **Charge:** ~36,45 (TL) + ~85,25 (TD) ≈ **122 lei/MWh**
- **Discharge:** ~3,63 (TG) only (SS/TD/TL exempt on stored energy)
- **Round-trip network:** ~**125 lei/MWh** + losses — must be covered by spread between buy and sell energy prices

Before Ord. 56/2025, discharge added another ~130+ lei/MWh — often prohibitive.

---

## Licensing & market access (BESS-specific)

| Size | Requirement |
|---|---|
| **>1 MW** standalone storage | Establishment authorisation + **storage licence** (L123 art. 10) |
| **≤1 MW** | No establishment authorisation; notification/reporting under ANRE rules (Ord. **6/2025** — *not yet ingested*) |
| Co-located with generation | Storage may sit under generation licence (art. 10(1) lit. a) |

Market participation:
- **PRE/BRP** required for scheduled trading — [[Concept — PRE si responsabilitate de echilibrare]]
- **OPCOM registration** if using PZU/IDM — [[OPCOM — Procedura inregistrare PEE rev 17 (notă)]]
- **CfD contribution** — storage operators supplying own/consumers added as plătitori (Ord. 71/2025 amending Ord. 52/2024) — [[ANRE — Ordin 52-2024 Contracte-cadru CfD (notă)]]

Balancing / ancillary revenue: prequalification rules for BESS as BSP still evolving; cross-market optimisation (DA/ID/aFRR/mFRR) is merchant opportunity but **regulatory access to reserve markets** depends on network codes (Batch B remainder).

---

## Metering & reporting

Ord. 56/2025 assigns:
- **Determination of stored quantity** → network operator owning the connection
- **Reporting obligations** → DSO concesionar / neconcesionar to ANRE
- **Unified procedure** → concessionaire and non-concessionaire operators

Due diligence: confirm **metering architecture** (separate charge/discharge metering, storage register) in connection contract and PRE data conventions.

---

## Investment implications

1. **Standalone BESS** — Ord. 56/2025 is a **necessary** not **sufficient** condition for bankability; energy spread and imbalance still dominate.
2. **Hybrid solar+BESS** — model RES export and storage legs separately; co-location does not automatically inherit BESS exemptions on PV-to-battery-to-grid flows.
3. **Version risk** — ANRE signalled future **cost–benefit-based storage tariff** once network studies complete (Ord. 56/2025 art. 5: interim exemption *până la stabilirea* sistemului de tarifare).
4. **EU alignment** — measure framed against ACER differentiated-network-tariff recommendations.

## Open gaps (vault)

- **Ord. 6/2025** authorisation procedure — missing
- Network-code provisions on storage prequalification — Batch B remainder
- Permanent cost–benefit storage tariff methodology (post-interim Ord. 56/2025) — pending ANRE

## Related

[[Concept — Cost stack producator energie]] · [[Concept — PRE si responsabilitate de echilibrare]] · [[Tarife retea — snapshot 2026]] · [[Legea 123-2012 — energia electrica si gazele naturale (notă)]] · [[MOC — Energetică]]

## Notes / conclusions

> BESS economics in Romania flipped in **2025** when discharge-side SS+TD+TL stacking was removed. Charging-side costs and imbalance management still define whether a project clears hurdle rates.
