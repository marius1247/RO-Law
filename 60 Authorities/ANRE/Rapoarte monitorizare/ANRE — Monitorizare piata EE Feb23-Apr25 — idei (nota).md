---
title: "ANRE — Monitorizare piață EE Feb23–Aug25 — idei (notă)"
type: note
nivel: analiza
domeniu: [energetică]
tags: [anre, monitorizare, piață-angro, piață-amănuntul, MACEE, PZU, FUI]
created: 2026-08-08
updated: 2026-08-08
coverage: Feb 2023 – Aug 2025 (8 monthly reports)
sources:
  - "[[99 Attachments/source-anre/monitorizare-ee/Monit-feb23.pdf|Monit feb 2023]]"
  - "[[99 Attachments/source-anre/monitorizare-ee/Monit-apr23.pdf|Monit apr 2023]]"
  - "[[99 Attachments/source-anre/monitorizare-ee/Monit-aug23.pdf|Monit aug 2023]]"
  - "[[99 Attachments/source-anre/monitorizare-ee/Monit-apr24.pdf|Monit apr 2024]]"
  - "[[99 Attachments/source-anre/monitorizare-ee/Monit-apr25.pdf|Monit apr 2025]]"
  - "[[99 Attachments/source-anre/monitorizare-ee/Monit-dec23.pdf|Monit dec 2023]]"
  - "[[99 Attachments/source-anre/monitorizare-ee/Monit-aug24.pdf|Monit aug 2024]]"
  - "[[99 Attachments/source-anre/monitorizare-ee/Monit-aug25.pdf|Monit aug 2025]]"
related:
  - "[[ANRE]]"
  - "[[anre_monitorizare_data.sql]]"
  - "[[Legea 123-2012 — energia electrica si gazele naturale (text)]]"
  - "[[OUG 33-2007 — organizarea ANRE (text)]]"
  - "[[Concept — Furnizor de ultimă instanță]]"
---

# Thesis

The [[ANRE]] monthly electricity-market monitoring reports in this extract (Feb 2023 → Aug 2025; initially five, extended with Dec 2023 / Aug 2024 / Aug 2025) describe a market moving through three overlapping transitions:

1. from the 2022 price-crisis hangover into lower but still volatile wholesale prices;
2. from the administratively concentrated **MACEE** single-buyer mechanism back toward bilateral and organized forward trading;
3. from an OPCOM-centred spot architecture toward **parallel OPCOM and BRM** day-ahead and intraday venues.

The central tension: the reports describe both a formally competitive market and a heavily policy-mediated one. Through 2023–2024, large volumes ran through MACEE at **450 lei/MWh**, retail invoices were protected under [[OUG 27-2022]]-era support, and FUI supplied residual customers under a special UI regime. Yet the monitoring indicators still measure contractual prices, individual legal entities and gross wholesale turnover as if they were pure market observations. The data are highly valuable **only if** the legal perimeter and accounting conventions stay visible.

Quantitative companion: [[anre_monitorizare_data.sql]].

---

# 1. Nature, legal basis and reporting universe

The reports summarise ANRE monitoring of:

- **PAN** — *piața angro de energie electrică*;
- **PAM** — *piața cu amănuntul de energie electrică*.

Primary statute: [[Legea 123-2012 — energia electrica si gazele naturale (text)]], plus directly applicable EU regulations and ANRE secondary acts. Monitoring mandate: [[OUG 33-2007 — organizarea ANRE (text)]] (approved by Law 160/2012). Operative methodologies across all five reports:

- **Ordinul ANRE nr. 18/2023** — *Metodologia PAN*;
- **Ordinul ANRE nr. 17/2023** — *Metodologia PAM*.

Stated purpose: evaluate **efficiency, transparency and competition**. Participants report monthly; ANRE correlates with market operators, CNTEE Transelectrica and concessionary DSO data. The documents are informational; ANRE disclaims legal responsibility for inadvertent errors or improper use.

**PAN universe:** monitored producers (classic + RES), *entități agregate*/aggregators, storage operators, suppliers/traders, PRE, OTS, and concessionary DSOs (especially for CPT procurement).

A “monitored producer” is **not** every generator: licence holder with ≥1 unit **>5 MW** subject to the transmission entry tariff **TG** — including firms whose main business is supply. Active wholesale participants grew from **201** (Feb 2023) to **241** (Apr 2025), plus OPCOM and BRM.

**PAM participant:** licensed supplier *or* monitored producer supplying final customers from own installations under the complementary generation-licence right. Includes suppliers’ consumption at own sites. Indicators characterize **customers, not supply points**, following Regulation (EU) 2016/1952 bands (IA–IG / DA–DE).

---

# 2. Market-architecture snapshot

## Organized venues

Two licensed market operators:

- **OPCOM** (since Dec 2001);
- **BRM** (since Mar 2022).

OPCOM forward mechanisms named in the reports: PCCB-LE-flex, PCCB-NC, PC-OTC, PCCB-PC, PMC, PCSU, PCE-ESRE-CV, PCTL. BRM: PMC-BRM, PCT-BRM, OTC. **PCT-BRM** becomes quantitatively visible in Apr 2025 (**143 GWh** delivered at **525.25 lei/MWh**).

## PZU, PI, coupling

OPCOM as OPEED for PZU/PI: SDAC via Interim Coupling (Jun 2021), RO–BG (Oct 2021), CORE flow-based (8 Jun 2022). PI in SIDC since Nov 2019; OPCOM IDA from 13 Jun 2024 alongside continuous IDCT.

BRM OPEED designation: ANRE Decision 1739/4 Jul 2023. BRM PI operational **22 May 2024**; BRM PZU **19 Nov 2024**. By Apr 2025 parallel venues:

| Venue | Apr 2025 volume |
|---|---:|
| PZU OPCOM | 1,154 GWh |
| PZU BRM | 376 GWh |
| PI OPCOM | 209 GWh |
| PI BRM | 163 GWh |

## MACEE and balancing

**MACEE** (OUG 153/2022 amending OUG 27/2022): OPCOM as single buyer. Present through Apr 2024 reports; **absent** from Apr 2025 wholesale table.

OTS operates **PE** on 15-minute settlement (since Feb 2021), with single imbalance price generally and dual deficit/surplus prices in qualifying intervals. Romanian control block in **IGCC** since 17 Dec 2021 (offsetting opposing secondary-control actions).

---

# 3. Generation mix and physical balance

Share of electricity **delivered to networks** by monitored producers:

| Source | Feb 23 | Apr 23 | Aug 23 | Apr 24 | Apr 25 |
|---|---:|---:|---:|---:|---:|
| Hydro | 27.90% | 41.91% | 28.65% | 38.73% | 32.60% |
| Nuclear | 18.28% | 19.45% | 22.14% | 24.92% | 26.18% |
| Wind | 17.53% | 14.88% | 11.17% | 13.21% | 14.85% |
| Coal | 12.11% | 13.70% | 15.66% | 10.92% | 11.41% |
| Gas | 21.59% | 7.74% | 18.56% | 7.96% | 8.64% |
| Solar | 1.09% | 1.69% | 3.19% | 3.25% | 5.30% |
| Storage | 0.002% | 0.005% | 0.01% | 0.01% | 0.28% |

Hydro seasonality dominates. Solar is the clearest structural growth signal (1.69% → 5.30% April-to-April). Storage is emergent, not yet system-scale.

| Indicator (GWh) | Feb 23 | Apr 23 | Aug 23 | Apr 24 | Apr 25 |
|---|---:|---:|---:|---:|---:|
| Produced (>5 MW) | 4,956.85 | 5,020.40 | 4,206.92 | 3,826.63 | 3,650.38 |
| Delivered | 4,699.74 | 4,764.92 | 3,997.69 | 3,632.86 | 3,459.16 |
| SEN internal consumption | 4,528.18 | 4,296.82 | 4,413.55 | 4,146.98 | 4,135.90 |

April-to-April decline in monitored delivery is material (**4,764.92 → 3,459.16 GWh**) while consumption falls much less — consistent with the shift from strong Apr 2023 net export to net imports in 2024–2025.

Hydro-reserve charts compare daily reservoir energy to prior years and historical min/median/max; the reports do **not** state a textual adequacy conclusion. Do not infer “dry year” from generation share alone.

---

# 4. Wholesale restructuring and prices

Volumes as **% of SEN internal consumption** (not additive market shares — resales inflate the sum):

| Component | Feb 23 | Apr 23 | Aug 23 | Apr 24 | Apr 25 |
|---|---|---|---|---|---|
| Direct bilaterals | 950 / 21.0% | 657 / 15.3% | 542 / 12.3% | 752 / 18.1% | 1,166 / 28.2% |
| Centralized bilaterals | 1,475 / 32.6% | 1,346 / 31.3% | 1,301 / 29.5% | 566 / 13.6% | 1,930 / 46.7% |
| MACEE | 1,116 / 24.6% | 1,654 / 38.5% | 1,361 / 30.8% | 913 / 22.0% | — |
| PZU | 1,554 / 34.3% | 1,566 / 36.4% | 1,223 / 27.7% | 1,680 / 40.5% | 1,530 / 37.0% |
| PI | 87 / 1.9% | 98 / 2.3% | 150 / 3.4% | 212 / 5.1% | 372 / 9.0% |
| PE | 146 / 3.2% | 215 / 5.0% | 165 / 3.7% | 178 / 4.3% | 87 / 2.1% |

**Regime break — April 2025:** MACEE gone; direct bilaterals 28.2%; centralized bilaterals 46.7%. Directionally consistent with restoring commercial contracting space; reports do not prove causality for every incremental MWh.

Intraday liquidity rises steadily (1.9% → 9.0% of internal consumption) — compatible with more variable renewables, shorter adjustment horizons, OPCOM IDA and BRM PI.

| Avg lei/MWh | Feb 23 | Apr 23 | Aug 23 | Apr 24 | Apr 25 |
|---|---:|---:|---:|---:|---:|
| Direct bilaterals | 937.41 | 904.02 | 855.07 | 428.09 | 482.43 |
| Centralized bilaterals | 1,018.13 | 952.55 | 905.70 | 495.62 | 512.75 |
| MACEE | 450.00 | 450.00 | 450.00 | 450.00 | — |
| PZU (weighted, RO hours) | 691.30 | 475.68 | 541.33 | 329.10 | 465.24 combined |
| PI (weighted, RO hours) | 705.15 | 505.22 | 519.32 | 265.78 | 382.01 combined |
| PE deficit | 531.54 | 361.00 | 648.08 | **-34.72** | 385.17 |
| PE surplus | 397.76 | 294.68 | 432.68 | **-458.55** | 260.93 |

2023 crisis legacy: forward averages stayed ~900–1,000 lei/MWh while PZU had already fallen to ~476–541. By Apr 2024, forwards largely repriced.

MACEE at 450 was **below** PZU in selected 2023 months but **above** Apr 2024 PZU (329.10) — not uniformly “cheap energy”; a price-and-volume stabilizer whose relative benefit depended on spot conditions.

Apr 2024 shows **negative** average balancing prices — PE cannot be reduced to a simple scarcity premium.

**Comparability break:** from July 2024, PE statistics use energy **angajată** (engaged), not effectively delivered (Ordin ANRE 127/2021). Apr 2025 PE 87 GWh is not a pure operational decline vs earlier months.

---

# 5. Retail: competition, SU, UI

| Month | HH clients competitive / SU / UI | HH cons. (GWh) same | NH clients competitive / UI | NH cons. (GWh) same |
|---|---|---|---|---|
| Feb 23 | 5.42M / 3.18M / 8,030 | 624.90 / 308.41 / 0.95 | 284k / 17.6k | 2,375.59 / 384.62 |
| Apr 23 | 5.48M / 3.15M / 8,783 | 804.41 / 310.93 / 0.93 | 284k / 18.0k | 2,099.70 / 373.79 |
| Aug 23 | 5.57M / 3.08M / 10,310 | 791.65 / 312.66 / 1.16 | 285k / 17.2k | 2,608.80 / 251.13 |
| Apr 24 | 5.69M / 3.00M / 9,724 | 767.10 / 294.56 / 1.09 | 291k / 10.7k | 2,549.46 / 132.20 |
| Apr 25 | 6.04M / 2.73M / 10,863 | 877.84 / 278.35 / 1.29 | 293k / 9.0k | 2,535.51 / 74.67 |

Household competition advances: competitive share of HH consumption ~**66.9%** (Feb 23) → ~**76%** (Apr 25). SU customers fall from 3.18M to 2.73M.

UI is tiny for households (~0.1% of customers) but was economically material for non-households in early 2023 (**384.62 GWh**) and contracted to **74.67 GWh** by Apr 2025 — a normalization signal (reports do not decompose switching vs exits vs post-failure migration).

| Contractual avg lei/MWh | Feb 23 | Apr 23 | Aug 23 | Apr 24 | Apr 25 |
|---|---:|---:|---:|---:|---:|
| HH total | 1,703.50 | 1,802.63 | 1,443.06 | 1,067.55 | 966.05 |
| HH competitive | 1,650.94 | 1,784.18 | 1,491.84 | 1,114.03 | 963.12 |
| HH SU | 1,811.22 | 1,851.29 | 1,321.36 | 947.42 | 976.40 |
| NH total | 1,460.40 | 1,214.12 | 1,043.78 | 752.96 | 752.96 |

Wholesale declines reached retail with a lag (HH averages even rose Feb→Apr 2023 while PZU fell).

**Critical caveat:** these are **contractual** averages (energy acquisition incl. TG + supply component + regulated network tariffs). They exclude CV/cogeneration/excise/VAT and are **not** the capped invoice prices under the support scheme.

---

# 6. Concentration

Monthly generation concentration (monitored delivery):

| Month | C1 | C3 | HHI |
|---|---:|---:|---:|
| Feb 23 | 29.43 | 67.23 | 1,676 |
| Apr 23 | 41.51 | 72.17 | 2,268 |
| Aug 23 | 28.86 | 66.33 | 1,769 |
| Apr 24 | 38.54 | 71.71 | 2,207 |
| Apr 25 | 32.65 | 68.28 | 1,881 |

Hidroelectrica dominates cumulative charts, but Jan–Apr 2025 lead narrowed (Hidro 24.58%, Nuclearelectrica 23.28%, CE Oltenia 11.47%) vs Jan–Apr 2023 Hidro 33.46%.

**PE / reserves are far more concentrated** than energy production (fast tertiary often C1 ≥60–77%, HHI often >5,000) — a narrow technically qualified flexibility pool.

OPCOM PZU selling was usually less concentrated than production, except Apr 2024 (C1 29.96%, HHI 1,728). In Apr 2025 venue-split: OPCOM selling HHI **530** vs BRM selling HHI **1,754** — fragmentation can make per-venue HHI diverge from combined-market concentration.

Competitive-retail concentration: C1/C3/HHI **16/39/783** (Jan–Feb 2023 chart) → **11.50/29.39/543** (Apr 2024) → **15.57/41.41/756.35** (Apr 2025). Household supply remains much more concentrated than non-household (Apr 2025 HH HHI 2,261 vs NH 559).

ANRE explicitly does **not** apply the dominance principle — affiliates counted separately.

---

# 7. Imports, exports, coupling

Commercial exchanges **excluding transit**:

| Month | Export | Import | Net |
|---|---:|---:|---|
| Feb 23 | 873 | 381 | Net export 492 |
| Apr 23 | 1,117 | 337 | Net export 780 |
| Aug 23 | 410 | 589 | Net import 179 |
| Apr 24 | 597 | 797 | Net import 200 |
| Apr 25 | 709 | 1,104 | Net import 395 |

April 2023 strong export capability → April 2024/2025 import dependence. In Apr 2025, coupled PZU+PI carried 390 GWh exports and 587 GWh imports — coupling is a main channel, not a marginal adjustment. Import prices consistently above export prices in these snapshots (different hours/products/borders — not automatic proof of inefficient arbitrage).

---

# 8. FUI and UI pricing

Under Ordin ANRE **91/2022**, ANRE nominates one [[Concept — Furnizor de ultimă instanță|FUI]] monthly for automatic takeover. Selected nominations:

| Month | Nominated FUI |
|---|---|
| Feb 2023 | Enel Energie Muntenia |
| Apr 2023 | CEZ Vânzare |
| Aug 2023 | E.ON Energie România |
| Apr 2024 | PPC Energie |
| Apr 2025 | Premier Energy Furnizare |

UI prices under Art. 18(3) of the FUI regulation; while OUG 27/2022 applies, Art. 18(4) overlays invoice rules from that ordinance. **Three distinct objects:** report contractual UI price ≠ regulatory UI formula ≠ capped customer invoice.

---

# 9. Policy ideas extractable from the text

### MACEE as stabilizer and distortion
MACEE delivered a fixed **450 lei/MWh** block equal to **24.6–38.5%** of internal consumption in selected 2023 months and **22.0%** in Apr 2024. It stabilized procurement and supported retail-price policy, but also displaced bilateral/organized forward contracting, concentrated counterparty functions in OPCOM, and suppressed forward price discovery for affected volumes. Post-MACEE bilateral rebound raises the counterfactual: how much of restored liquidity is competitive vs relocated mandatory procurement?

### Prosumers and storage
Supplier purchases from prosumers grow across the series (visible in participant balances). Self-consumption remains **excluded** from these PAM consumption totals (separate ANRE reporting). Storage rises from ~0 to **0.28%** of monitored deliveries by Apr 2025 — emergence, not adequacy.

### Aggregation and bilateral transparency
Aggregator/entity-agregată bilaterals remain niche (~18–39 GWh/month). Art. 15(3) OUG 27/2022 two-working-day bilateral reporting yields contract counts (88 → 59 → 77 → 201 → 119 across the five months) — useful transparency, but counts ≠ volumes; many prices are formula-based.

### Dual spot venues
Parallel OPCOM/BRM PZU–PI is a competition experiment **and** a liquidity-fragmentation risk. Concentration must now be read per venue; combined-market HHI is not directly published.

---

# 10. Hard edges when using the data

1. Wholesale turnover ≠ physical energy (resales).
2. Producer coverage = monitored >5 MW + TG, not all generation.
3. Prosumer self-consumption excluded.
4. Physical cross-border rows **include** transit; commercial import/export tables **exclude** it — do not mix.
5. Wholesale prices include **TG**.
6. PZU clocks differ (RO hours in tables vs CET in OPCOM publications; arithmetic vs weighted).
7. Retail averages are contractual, not capped invoices.
8. Retail concentration ignores dominance / group consolidation.
9. Industrial self-supply can inflate competitive-supplier shares.
10. Customer counts = month-end regime; consumption allocated by intra-month regime periods.
11. CPT reconstructed from operators’ market purchases + PRE imbalances.
12. PE methodology changes July 2024 (delivered → engaged).
13. Hydro graphs are contextual, not reserve-adequacy opinions.
14. See `data_quality_notes` in SQL for printed anomalies (e.g. Apr23 PCCB-LE-flex March %, Aug23 competitive HH Total C1/HHI, occasional import-PI % misalignment).

---

# 11. Strategic questions for further work

- Did MACEE’s end restore durable forward liquidity, or relocate mandatory procurement?
- Do parallel OPCOM/BRM spots increase competition or fragment discovery?
- Why April net export **780 GWh** (2023) → net import **395 GWh** (2025) despite rising solar?
- How should reservoir water value enter adequacy analysis when hydro also drives generation concentration?
- Can storage / aggregation / demand response reduce extreme fast-balancing concentration?
- Do falling contractual retail prices create real switching incentives while invoice caps remain?
- What explains the Apr 2025 rebound in competitive-retail C3/HHI?
- How will DSOs/OTS procure CPT after MACEE, and how much imbalance risk is socialized in network tariffs?
- Can Art. 15 bilateral reporting evolve from contract counts to anonymized volume-weighted maturity curves?
- How to integrate prosumer output and self-consumption into one national balance without double-counting?

---

# 12. Key quantitative anchors

- Hydro: **27.90%** (Feb 23) → **41.91%** (Apr 23) → **32.60%** (Apr 25).
- Solar: **1.69%** (Apr 23) → **3.25%** (Apr 24) → **5.30%** (Apr 25).
- Monitored delivery: **4,764.92 GWh** (Apr 23) vs **3,459.16 GWh** (Apr 25).
- MACEE peak in sample: **1,654 GWh @ 450** (Apr 23); **913 GWh @ 450** (Apr 24); absent Apr 25.
- PZU weighted: **691.30** (Feb 23) → **329.10** (Apr 24) → **465.24 combined** (Apr 25).
- Centralized bilateral share of consumption: **13.6%** (Apr 24) → **46.7%** (Apr 25).
- PI volume: **87 → 372 GWh** (Feb 23 → Apr 25).
- Commercial balance: net export **780** (Apr 23) → net import **395** (Apr 25).
- HH competitive consumption share: ~**67% → ~76%**.
- NH UI consumption: **384.62 → 74.67 GWh**.
- HH contractual average (April): **1,802.63 → 1,067.55 → 966.05**.
- Generation C1/C3/HHI: **41.51/72.17/2,268** (Apr 23) → **32.65/68.28/1,881** (Apr 25).
- Competitive retail: **11.50/29.39/543** (Apr 24) → **15.57/41.41/756.35** (Apr 25).

---

# Filing

| Artifact | Path |
|---|---|
| Ideas (this note) | `60 Authorities/ANRE/Rapoarte monitorizare/` |
| SQL dataset | same folder — `anre_monitorizare_data.sql` |
| Immutable PDFs | `99 Attachments/source-anre/monitorizare-ee/` |
| Authority profile | [[ANRE]] |


---

# Addendum — Dec 2023, Aug 2024, Aug 2025

## Extended arc

These three reports sharpen the Feb23→Apr25 transition into three observable stages:

1. **December 2023 — MACEE at full-year intensity.** The year closes with MACEE still comparable in scale to organized forwards and day-ahead. Annual averages preserve the 2022–early-2023 price shock in legacy contracts even though December spot had already fallen.
2. **August 2024 — hybrid transition.** MACEE remains material, but its price becomes a blend of annual and supplemental auctions; OPCOM adds IDA; BRM’s new PI has begun trading. BRM PZU is **not yet** operational. Overlap month, not mature dual-venue architecture.
3. **August 2025 — post-MACEE, dual-operator market.** MACEE absent. Direct and centralized bilaterals expand; both OPCOM and BRM operate PZU and PI; BRM adds IDA during the month; PCT-BRM is quantitatively relevant.

Against **August 2023**, the sequence is not simple liberalization: Aug 2024 still mixes administrative procurement with first BRM spot activity; Aug 2025 restores contracting space but also shows stronger competitive-retail concentration and substantial net imports. Against **April 2025**, Aug 2025 confirms the post-MACEE structure while adding stronger summer direct/spot volumes, lower spot prices, a narrower net-import gap, and a retail-price comparability break after July 2025.

## Physical system and generation mix

| Indicator | Dec 2023 | Aug 2024 | Aug 2025 |
|---|---:|---:|---:|
| Produced (>5 MW) | 5,250.38 GWh | 3,727.12 GWh | 3,792.35 GWh |
| Delivered | 4,983.37 GWh | 3,515.90 GWh | 3,583.31 GWh |
| SEN internal consumption | 4,930.32 GWh | 4,419.29 GWh | 4,154.47 GWh |
| Hydro | 28.91% | 23.44% | 23.58% |
| Nuclear | 18.78% | 24.46% | 25.04% |
| Gas | 24.29% | 22.65% | 19.62% |
| Coal | 12.71% | 15.01% | 13.57% |
| Wind | 13.92% | 9.74% | 9.93% |
| Solar | 0.70% | 3.66% | 7.32% |
| Storage | 0.01% | 0.03% | 0.31% |

Same-calendar-month: Aug 2023 was hydro-led with marginal solar; by Aug 2025 nuclear leads, solar doubles YoY (**3.66% → 7.32%**), storage reaches **0.31%**. Relative to Apr 2025, August has less hydro/wind and more gas/solar — read post-MACEE through seasonality as well as institutions.

**December annual frame (2023):** monitored production **56,034.13 GWh**, delivered **53,171.31 GWh**. Annual mix: hydro **33.47%**, nuclear **19.36%**, gas **16.81%**, wind **14.13%**, coal **13.44%**, solar **1.88%**. Energy-labeling (Ordin ANRE 61/2016): average sectoral emissions **172.21 gCO₂/kWh** (coal **827.87**, gas **382.09**) — accounting indicator, not marginal emissions.

## Wholesale: single-buyer block → dual venues

| Component | Dec 2023 | Aug 2024 | Aug 2025 |
|---|---|---|---|
| Direct bilaterals | 743 / 15.1% / 693.80 | 615 / 13.9% / 502.03 | 1,444 / 34.8% / 515.32 |
| Centralized bilaterals | 1,315 / 26.7% / 906.07 | 1,019 / 23.1% / 506.07 | 1,947 / 46.9% / 537.68 |
| MACEE | 1,656 / 33.6% / 450.00 | 885 / 20.0% / **449.87** | — |
| PZU | 1,566 / 31.8% / 423.01 | 1,462 / 33.1% / 707.58 | 1,859 / 44.7% / 418.45 |
| PI | 146 / 3.0% / 426.95 | OPCOM 163 + BRM 10 | 414 / 10.0% / 348.52 |
| PE | 164 / 3.3% (delivered) | 114 / 2.6% (engaged) | 54 / 1.3% (engaged) |

Volumes = GWh / % SEN / lei/MWh. Not additive (resales).

**Full-year 2023 MACEE:** **16,087 GWh** = **29.6%** of SEN at **450 lei/MWh** — one of three principal wholesale channels alongside centralized bilaterals (**16,426 GWh; 30.3%**) and PZU (**17,033 GWh; 31.4%**). Annual price hierarchy: centralized **941.27**, direct **867.60**, PZU **536.23**, PI **524.97**, MACEE **450** — contract lag vs contemporaneous scarcity.

**Aug 2024 MACEE blend (OUG 32/2024):** **449.87** combines annual auction **450** with supplemental monthly auctions **400**. OPCOM PI includes IDCT+IDA from 13 Jun 2024; BRM PI contributes first small volume. Do not treat Aug 2024 as already “dual PZU” — BRM PZU starts **19 Nov 2024**.

**Aug 2025 dual venues:** PZU OPCOM **1,201 @ 409.53** / BRM **658 @ 434.75**; PI OPCOM **164 @ 306.19** / BRM **250 @ 376.20** (BRM PI > OPCOM by volume; BRM IDA from **5 Aug 2025**). PCT-BRM **213 GWh @ 530.41**; PMC-BRM **19 @ 551.99**.

## Cross-border

| Month | Export | Import | Net |
|---|---:|---:|---|
| Dec 2023 | 876 | 548 | Net export 328 |
| Aug 2024 | 352 | 890 | Net import 538 |
| Aug 2025 | 966 | 1,220 | Net import 254 |

Full-year 2023 was net commercial export (**8,705 vs 5,713 GWh**). All three Augusts in the extended set are net-import months; deficit widens in 2024 then more than halves in 2025. Coupled PZU+PI in Aug 2025 carry **556 GWh** exports and **652 GWh** imports.

## Retail, SU/UI, FUI

- **Aug 2024 HH:** competitive 5.74M / 876.90 GWh; SU 2.96M / 326.62; UI 9,831 / 0.91.
- **Aug 2025 HH:** competitive 6.15M / 882.21; SU 2.65M / 273.67; UI 9,189 / 1.03.

Competitive HH consumption share ~**73% → >76%** YoY. NH UI: **123.02 → 43.30 GWh**.

FUI nominations: Dec 2023 — Enel Energie Muntenia; Aug 2024 — Electrica Furnizare; Aug 2025 — E.ON Energie România. Ordin ANRE **11/2025** moves FUI to published rotation periods; Aug 2025 UI pricing under amended Art. **19**.

**Retail price break — July 2025:** from then ANRE states contractual conditions represent **prices invoiced** to final customers. Aug 2024 HH total **980.06** vs Aug 2025 **1,127.78** is therefore **not** a clean like-for-like price-rise signal versus earlier capped-invoice observations. Taxes/VAT/CV/cogeneration/CfD contribution still excluded.

## Concentration and balancing

Generation C1/C3/HHI: Aug 2024 **24.46/65.46/1,656** → Aug 2025 **25.04/62.21/1,529**. Competitive retail: **13.90/32.34/613** → **16.57/42.48/789** — deepens the Apr 2025 warning that restored wholesale contracting ≠ retail deconcentration.

Dual-venue Aug 2025 PZU selling HHI: OPCOM **999**, BRM **982** — more balanced than Apr 2025’s OPCOM/BRM divergence; still no combined-PZU HHI published.

PE methodology break at July 2024 remains binding. Aug 2025 relabels products **RRFa / RRFm / RI**; upward RRFm stays concentrated (C1 **71%**, HHI **5,222**).

## Additional hard edges

1. Dec 2023 annual comparison with 2022 is not clean (coverage/definition differences).
2. Aug 2024 is dual-operator only on PI.
3. Aug 2025 historical OPCOM-only PZU charts must not be mixed with combined headline PZU.
4. Printed Aug 2025 PCCB-NC **25.0%** of consumption is a table error (~3.2% implied) — stored as printed in SQL with warning.
5. PE volume decline across Jul 2024 cannot be read as pure operations without delivered→engaged break.
6. Retail prices before/after Jul 2025 describe different invoice relationships.
7. Bilateral reporting legal basis shifts Art. 15(3) OUG 27/2022 → Art. 14(3) OUG 6/2025; contract counts ≠ volume.

## Updated anchors (batch 2)

- Full-year 2023 MACEE: **16,087 GWh @ 450** (29.6% SEN).
- Dec 2023 PZU: **423.01**; MACEE month: **1,656 GWh**.
- Aug 2024 MACEE blend: **449.87**; PZU: **707.58**; first BRM PI: **10 GWh**.
- Aug 2025: no MACEE; PZU combined **418.45** (OPCOM 1,201 / BRM 658); PI **414** (OPCOM 164 / BRM 250); solar **7.32%**; net import **254 GWh**; HH competitive share **>76%**; NH UI **43.30 GWh**.
