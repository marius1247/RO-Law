---
title: "EU ETS — sinteza pietei carbon"
type: domain-note
domeniu: [climat, piete-carbon, EU]
tags: [domain, analysis, EU-ETS, CBAM, carbon-pricing]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# EU ETS — carbon market synthesis

The reasoning layer for **EU carbon pricing**: legislative supply mechanics, demand drivers, and the parallel ETS 2 / CBAM / CDR stack. Navigation hub: [[MOC — EU Carbon Pricing]]. Practitioner checklist: [[_EU Carbon Market Analysis Index]].

> [!info] Scope
> This note covers **EU-level cap-and-trade policy and market structure**, not Romanian transposition. For RO energy regulation see [[Energetică — sinteza sectorului]]. Primary EU legal texts live in sibling vault `EU Law/`.

---

## 1. The one thing to understand first

The EU Emissions Trading System is a **supply-constrained allowance market**. Total EUA volume falls every year (Linear Reduction Factor). Price is set where **compliance demand** (verified emissions from ~10,000 installations + aviation + maritime) meets **auction + free-allocation supply**, moderated by the **Market Stability Reserve (MSR)**. Trading is financialised on ICE/EEX, but the fundamental buyer is the compliance entity surrendering allowances by **30 September** each year.

Practical consequence: **legislative cap changes dominate long-run price**; **fuel-switching and industrial output dominate short-run demand**. → [[Concept — EU ETS arhitectura Phase 4]] · [[Concept — Fuel switching price si clean spreads]]

---

## 2. Legislative architecture (Phase 4 & Fit for 55)

```
Directive 2003/87/EC (EU ETS)
    ├── Linear Reduction Factor (LRF)     cap shrinks 4.3% (2024–27) → 4.4% (2028–30)
    ├── Market Stability Reserve (MSR)      TNAC > 833M → 24% intake from auctions
    ├── Scope extension                   maritime (phased to 100% by 2026) · aviation
    ├── CBAM + free-allocation phase-out  synchronized 2026–2034
    └── ETS 2 (parallel market)           buildings · road transport · small industry from 2027
```

Detail: [[Concept — EU ETS arhitectura Phase 4]]

**2030 target:** 62% net emissions reduction vs 2005 in ETS 1 sectors.

---

## 3. Market analysis — 4-pillar model

```
                    EUA MARKET VALUE
                           │
     ┌──────────┬──────────┼──────────┬──────────┐
     ▼          ▼          ▼          ▼          │
Fundamentals  Energy &    Policy &    Market     │
  S/D         Switching   Regulatory  Dynamics   │
                                              positioning
```

| Pillar | Key inputs | Release cadence |
|---|---|---|
| **I — Fundamentals** | Auction volumes (EEX) · MSR intake/reinjection · verified emissions (April) · industrial output | Monthly auctions · annual compliance data |
| **II — Energy complex** | TTF gas · API2 coal · clean spark/dark spreads · power burn | Daily / weekly |
| **III — Policy risk** | Fit for 55 reviews · national coal phase-outs · MSR Article 29a triggers · CBAM milestones | Event-driven |
| **IV — Positioning** | ICE/EEX Dec-futures liquidity · COT reports · options OI at strike clusters | Weekly COT |

Detail: [[Concept — EUA market analysis 4 pillars]] · [[Concept — Fuel switching price si clean spreads]]

---

## 4. Two markets: ETS 1 vs ETS 2

| | ETS 1 | ETS 2 |
|---|---|---|
| Sectors | Power · heavy industry · maritime · aviation | Buildings · road transport · small industry |
| Regulation point | Downstream emitters (smokestack) | Upstream fuel distributors |
| Free allocation | Phasing out via CBAM (2026–2034) | 100% auction from day one |
| Price control | MSR intake | Dedicated MSR + ~€45/t soft ceiling (2020 real) |
| Allowances | EUAs | Separate EUA2 — **non-fungible** |

Detail: [[Concept — ETS 1 vs ETS 2]] · [[Concept — ETS 2 pass-through si Social Climate Fund]]

**Retail impact (ETS 2):** ΔP ≈ EF_fuel × P_ETS2 — near 100% pass-through to pump and heating bills. Social Climate Fund (~€86.7B) offsets via structural retrofits and temporary income support.

---

## 5. CBAM — replacing free allocation

Synchronized phase-out prevents double protection (WTO). **CBAM Factor** drops free allocation to importers' parity adjustment each year:

| Year | Free allocation remaining | CBAM phase-in |
|---|---:|---:|
| 2026 | 97.5% | 2.5% |
| 2030 | 51.5% | 48.5% |
| 2034 | 0% | 100% |

**Industrial impact:** permanent structural EUA buyers; forward hedging 1–3 years; export vulnerability (no CBAM rebate on non-EU sales).

Detail: [[Concept — CBAM si phase-out alocari gratuite]] · [[Concept — CBAM formula calcul certificate]]

---

## 6. Post-2030 — merger, CDR, and the cap endgame

**Merger review:** Commission report by 2031 (Article 30i) on integrating ETS 1 and ETS 2. Consensus: full immediate merger unlikely — elasticity asymmetry (inelastic households vs elastic industry) creates spillover risk.

Detail: [[Concept — Post-2030 ETS merger scenarios]]

**CDR integration:** As LRF drives cap toward zero (~late 2030s), hard-to-abate process emissions (cement calcination, aviation, maritime) need **CRCF-certified permanent removals** (DACCS, BioCCS, biochar). Two models: EU central procurement pool vs capped direct surrender (5–10%).

Detail: [[Concept — CDR integrare EU ETS post-2030]] · [[Concept — CRCF net removal accounting]]

**Technology stack:**
- Near-term: BioCCS on pulp/paper, WtE, bioethanol (€130–250/t) — constrained by RED III biomass rules → [[Concept — RED III si feedstock BioCCS]]
- Long-term: DACCS (€300–1,000+/t FOAK) — constrained by clean power → [[Concept — DACCS vs BioCCS economics]]
- Infrastructure: North Sea hubs operational (Northern Lights, Porthos); Mediterranean emerging → [[Concept — EU CO2 transport si storage hubs]]

---

## 7. Where the risk sits — practitioner's read

1. **Cap trajectory is law, not forecast.** LRF and MSR rules are in the directive; scenario analysis should stress-test legislative amendments, not just commodity cycles.
2. **CBAM 2029–2031 acceleration** is the steepest free-allocation cliff — industrial EUA demand inflects sharply.
3. **ETS 2 ring-fencing** means ETS 1 price shocks do not (yet) pass to households — merger would change this fundamentally.
4. **CDR price gap** (€200–500/t removal vs €80–100/t EUA) requires public bridging until CRCF units enter compliance markets.
5. **Romania:** no domestic CO₂ storage — BioCCS/DACCS projects depend on cross-border transport and London Protocol bilateral agreements.

---

## 8. Open threads
Topics identified but not yet deep-dived in this vault:

→ [[Concept — EU ETS open threads]]

- MSR TNAC calculation mechanics & Article 29a/30h price triggers
- Maritime ETS surrender schedule & FuelEU Maritime interaction
- Aviation free-allocation phase-out & CORSIA overlap
- COT interpretation & compliance calendar shift (April → September surrender)
- Innovation Fund & Modernisation Fund revenue recycling
- National carbon floors (DE nEHS) & EU–UK ETS linking

---

## Related
[[MOC — EU Carbon Pricing]] · [[_EU Carbon Market Analysis Index]] · [[Energetică — sinteza sectorului]] · [[Concept — Cost stack producator energie]] · [[OUG 163-2022 — promovare energie regenerabila (notă)]]
