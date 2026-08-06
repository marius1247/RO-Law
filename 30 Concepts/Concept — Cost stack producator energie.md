---
title: "Concept — Cost stack producator energie"
type: concept
domeniu: [energetică, tarife, piețe, producție]
tags: [concept, energetică, tarife, producător, cost-stack, due-diligence]
status: draft
created: 2026-08-05
updated: 2026-08-06
---

# Concept — Cost stack producător energie

**RO:** stack de costuri operaționale al producătorului · **EN:** producer operational cost stack

Practitioner map of **regulated network charges, market-access costs, and imbalance exposure** for grid-connected electricity producers (Solar PV, wind, BESS, conventional). Figures tie to [[Tarife retea — snapshot 2026]] — verify live ANRE Ordine before billing advice.

> [!warning] Not the energy commodity price
> This note covers **use-of-system tariffs and market-participation costs**, not the wholesale energy price (PZU, PPA, CfD strike). VAT applies separately unless stated *fără TVA*.

## The stack (in billing order)

```
Injection / withdrawal at metering point
    ├── TG  — tarif introducere (Transelectrica)
    ├── TD  — tarif distribuție (DSO), if connected below transmission
    ├── SS  — servicii de sistem (Transelectrica)
    ├── TL  — tarif extragere (when withdrawing from grid — BESS charge, aux load)
    ├── Reactive — if outside power-factor band (Ord. 33/2014 methodology)
    ├── Imbalance — PRE settlement (variable, not a fixed tariff)
    └── OPCOM / trading — guarantees, fees (if on organised markets)
```

Cross-links: [[Concept — Tarif de transport TG si TL]] · [[Concept — Tarif de distributie TD]] · [[Concept — BESS economics si tarifare stocare]] · [[Concept — PRE si responsabilitate de echilibrare]] · [[Concept — Servicii de sistem si tariful SS]] · [[Concept — Decontare dezechilibre 15 minute]] · [[Concept — Curtailment si redispatch RES]] · [[MOC — Piete de echilibrare]] · [[_Energy Investment Due Diligence Index]] · [[ANRE — Metodologii tarifare EE (notă)]]

---

## 1. Regulated network tariffs (fixed unit rates)

All rates below **excluding VAT**, **from 1 January 2026** unless noted.

### 1.1 Transmission injection — **TG** (all exporters)

| Component | lei/MWh | Notes |
|---|---:|---|
| **TG total** | **3,63** | ANRE Ord. 74/2025 — [[ANRE — Ordin 74-2025 Tarife transport EE (notă)|analysis]] |
| — CPT recovery (C_CPT_P) | 3,18 | Recovered from producers |
| — Supplementary CPT (C_CPT_S_P) | 0,45 | Capitalised CPT |

**Solar / wind:** payable on every MWh **injected** and measured as export at the connection point. Doctrine: [[Concept — Tarif de transport TG si TL]].

### 1.2 System services — **SS**

| Period | lei/MWh | Ordin |
|---|---:|---|
| 1 Sep – 31 Dec 2025 | 12,79 | Ord. 60/2025 |
| **From 1 Jan 2026** | **14,70** | Ord. 73/2025 |

Payable on injected energy (same base as TG for merchant producers). BESS re-injection exempt — see [[Concept — BESS economics si tarifare stocare]].

> **What SS is / is not:** collective pass-through for PCE capacity procurement — **not** the balancing energy price for individual PRE deviations. → [[Concept — Servicii de sistem si tariful SS]]

### 1.3 Distribution — **TD** (DSO-specific, voltage-specific)

Only if the plant connects at **distribution** level (typical MT for many wind/solar parks). Doctrine: [[Concept — Tarif de distributie TD]] · methodology [[ANRE — Metodologie tarife distributie EE 2024 (notă)]]. Examples 2026:

| DSO | IT (110 kV) | MT | JT |
|---|---:|---:|---:|
| Delgaz Grid (Ord. 76/2025) | 40,46 | 85,25 | 262,20 |
| DEER / Electrica (Ord. 77/2025) | 31,96 | 83,36 | 240,02 |

Billing = sum of tariff components for the **voltage at the delimitation point** (contract de distribuție). Full table → [[Tarife retea — snapshot 2026]].

### 1.4 Extraction — **TL** (withdrawal from grid)

| Rate | lei/MWh | When |
|---|---:|---|
| **TL** | **36,45** | Drawing energy from SEN/RED (BESS charging, aux imports, station load) |

Ord. 74/2025. **Not** payable on normal solar/wind export-only operation.

### 1.5 Reactive energy

| Operator | Price | Unit |
|---|---:|---|
| Transelectrica (transport) | 0,1821 | lei/kVArh |
| Delgaz Grid | 0,2047 | lei/kVArh |
| DEER | 0,2023 | lei/kVArh |

Only if measured reactive exceeds obligations under Ord. 33/2014 methodology. RES plants with modern inverters often stay in band — but **utility-scale parks must model this** in EPC/O&M.

### 1.6 Cross-border scheduled flows (traders / import-export)

**1,10 EUR/MWh** on import, export, transit with *țări perimetrice* (Ord. ANRE 10/2026). Relevant if the producer entity also schedules border flows — not a standard domestic RES export charge.

---

## 2. Illustrative totals by connection scenario (2026)

Use for **order-of-magnitude** modelling only — confirm DSO and delimitation voltage on the ATR.

| Scenario | TG | SS | TD | **Approx. network stack** |
|---|---:|---:|---:|---:|
| **Large plant at transmission (110 kV → Transelectrica)** | 3,63 | 14,70 | 0 | **~18,3 lei/MWh** |
| **Wind/solar at MT — Delgaz** | 3,63 | 14,70 | 85,25 | **~103,6 lei/MWh** |
| **Wind/solar at MT — DEER** | 3,63 | 14,70 | 83,36 | **~101,7 lei/MWh** |
| **BESS — energy re-injected after storage** | 3,63* | **0** | **0** | TG on discharge leg only; SS/TD/TL exempt on stored quantity (Ord. 56/2025) |
| **BESS — charging from grid** | — | — | TD + **TL 36,45** | Full withdrawal stack |

\*TG may still apply to the injection leg depending on metering and operator settlement rules — model both charge and discharge separately.

---

## 3. Market-access and trading costs (non-tariff)

| Item | Typical bearer | Notes |
|---|---|---|
| **ANRE licence / authorisation fees** | Producer SPV | [[Concept — Licență în energetică]]; >1 MW generation/storage |
| **PRE/BRP registration** | Producer or delegated BRP | Collateral to Transelectrica — [[Concept — PRE si responsabilitate de echilibrare]] |
| **Imbalance settlement** | PRE | Variable; 15-minute ISP; marginal PE price — [[Concept — Decontare dezechilibre 15 minute]] |
| **OPCOM registration** | Market participant | [[OPCOM — Procedura inregistrare PEE rev 17 (notă)]] |
| **OPCOM SGB (guarantees)** | PZU/PI participant | Bank guarantee — [[OPCOM — Procedura garantii PZU-PI 2025 (notă)]]; amount portfolio-specific |
| **OPCOM trading / settlement fees** | Participant | Published on OPCOM site per product segment |
| **CfD contribution** | Suppliers + certain self-suppliers | **0,000206 lei/kWh** (excl. VAT) from 1 Apr 2025 — not a per-export network charge; see [[ANRE — Ordin 52-2024 Contracte-cadru CfD (notă)]] |

---

## 4. Technology-specific overlays

### Solar PV & wind (merchant / GC / CfD)

| Line | Solar / wind |
|---|---|
| Network stack | TG + SS (+ TD if DSO-connected) — sections 1–2 |
| **Green certificates** | **Revenue** for legacy accredited plant (not a cost) — [[Concept — Certificat verde]] |
| CfD | Strike-price mechanics + mandatory organised-market sales — [[HG 318-2024 — cadru general CfD (notă)]] |
| Curtailment | Often **no energy payment** when constrained off — [[Concept — Curtailment si redispatch RES]] |
| Imbalance | Forecast error vs. schedule — PRE exposure |

### BESS

See dedicated note [[Concept — BESS economics si tarifare stocare]]. Key point: Ord. 56/2025 removes SS, TD, TL (and CV obligation) on **stored-then-reinjected** quantities; charging and aux losses remain fully tariffed.

---

## 5. Due-diligence checklist

1. **ATR delimitation voltage** → drives TD inclusion ([[Concept — Racordare la rețea]]).
2. **Who is PRE?** → imbalance cost sits there, not in TG/SS.
3. **Bilateral PPA only?** → OPCOM guarantees may still matter if any PZU/IDM hedging.
4. **Currency of tariff note** → SS and annual TD/TL/TG refresh every January; mid-year SS updates possible (2025 had three SS Ordine).
5. **Live Ordine** → [[Tarife retea — snapshot 2026]] + ANRE website; vault does not ingest individual Decizii.

## Governing provisions

- [[Legea 123-2012 — energia electrica si gazele naturale (text)#Articolul 75|L123/2012 art. 75]] — price/tariff typology
- Methodologies (ingested): [[ANRE — Metodologie tarife transport EE 2024 (text)|Ord. 68/2024 transport]] · [[ANRE — Metodologie tarife distributie EE 2024 (text)|Ord. 67/2024 distribution]] · [[ANRE — Metodologie tarife servicii sistem 2022 (text)|Ord. 116/2022 SS]] — index [[ANRE — Metodologii tarifare EE (notă)]]
- Snapshot values: [[Tarife retea — snapshot 2026]] · [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]]

## Related

[[Tarife retea — snapshot 2026]] · [[Concept — BESS economics si tarifare stocare]] · [[Concept — PRE si responsabilitate de echilibrare]] · [[Concept — Curtailment si redispatch RES]] · [[MOC — Energetică]] · [[Energetică — synthesis]]

## Notes / conclusions

> For a utility-scale RES model, **connection voltage is the dominant cost driver**: MT connection can add **~80–85 lei/MWh** of TD on top of **~18 lei/MWh** TG+SS. Always read the ATR before signing a merchant PPA.
