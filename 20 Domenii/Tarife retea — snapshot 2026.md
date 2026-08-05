---
title: "Tarife retea — snapshot 2026"
type: domain-note
domeniu: [energetică, tarife]
tags: [domain, tarife, snapshot, practică, ANRE, Transelectrica]
status: draft
created: 2026-08-05
updated: 2026-08-05
currency_as_of: 2026-01-01
---

# Tarife rețea — snapshot live (practitioner table)

**Purpose:** Single **working snapshot** of regulated unit tariffs affecting **producers, storage, and traders** — without ingesting individual ANRE Decizii (per [[Download checklist — Batch B ANRE]] scope rule).

> [!warning] Verify before client advice
> Tariffs change **intra-year** (especially **SS**). This table reflects values **from 1 January 2026** sourced from published ANRE Ordine and TSO notices. Pull the current Ordin from [ANRE](https://www.anre.ro) or operator tariff pages when advising a named project. Update this note when new Ordine publish.

**Companion synthesis:** [[Concept — Cost stack producator energie]] · [[Concept — BESS economics si tarifare stocare]]

---

## Snapshot metadata

| Field | Value |
|---|---|
| **Transport TG / TL / reactive** | ANRE Ord. **74/2025** (MO 1173/18.12.2025) |
| **System services SS** | ANRE Ord. **73/2025** (MO 1173/18.12.2025) |
| **Distribution Delgaz** | ANRE Ord. **76/2025** |
| **Distribution DEER** | ANRE Ord. **77/2025** |
| **Perimeter cross-border** | ANRE Ord. **10/2026** (from 15 May 2026) |
| **BESS storage exemption** | ANRE Ord. **56/2025** (~Jul 2025) |
| **Methodologies (not ingested)** | Ord. 68/2024 (transport), 67/2024 (distribution), 116/2022 (SS) |

---

## 1. National transmission tariffs — Transelectrica

*All values **lei/MWh** unless stated; **excluding VAT**.*

| Tariff | Code | From 1 Jan 2026 | From 1 Jan 2025 | Δ |
|---|---|---:|---:|---:|
| **Injection** | **TG** | **3,63** | 3,29 | +10,3% |
| — CPT recovery (producers) | C_CPT_P | 3,18 | — | component of TG |
| — Supplementary CPT | C_CPT_S_P | 0,45 | — | component of TG |
| **Extraction** | **TL** | **36,45** | 33,03 | +10,4% |
| **System services** | **SS** | **14,70** | 12,79* | +14,9% |

\*SS 12,79 lei/MWh applied **1 Sep – 31 Dec 2025** (Ord. 60/2025); superseded by Ord. 73/2025 from 1 Jan 2026. See [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]].

| Reactive energy (transport) | Unit | From 1 Jan 2026 |
|---|---:|---|
| Regulated reactive price | **0,1821** | lei/kVArh |

CPT reference price embedded in reactive calculation: **607,03 lei/MWh** (2025 average for TSO CPT).

**Sources:** Transelectrica investor notice Dec 2025; ANRE Ord. 74/2025, 73/2025.

---

## 2. Distribution tariffs — concessionaire DSOs (2026)

*Total **TD** for billing = sum of tariff components at **delimitation voltage** (Ord. 76/77 art. 2). **lei/MWh**, excl. VAT.*

### Delgaz Grid S.A. (Ord. 76/2025)

| Voltage | TD total | Non-CPT | CPT | CPT capitalised |
|---|---:|---:|---:|---:|
| **IT** (110 kV) | **40,46** | 32,69 | 6,37 | 1,40 |
| **MT** | **85,25** | 63,00 | 18,23 | 4,02 |
| **JT** | **262,20** | 158,31 | 85,14 | 18,75 |

Reactive: **0,2047 lei/kVArh**

### Distribuție Energie Electrică Romania — DEER (Ord. 77/2025)

| Voltage | TD total | Non-CPT | CPT | CPT capitalised |
|---|---:|---:|---:|---:|
| **IT** | **31,96** | 23,04 | 7,15 | 1,77 |
| **MT** | **83,36** | 43,61 | 31,86 | 7,89 |
| **JT** | **240,02** | 139,45 | 80,60 | 19,97 |

Reactive: **0,2023 lei/kVArh**

> Other DSOs (Rețele Electrice Banat, Dobrogea, etc.) have **separate Ordine** with the same methodology (Ord. 67/2024) — add rows when those Ordine are ingested.

---

## 3. Producer quick-calc matrix (TG + SS + TD)

Pre-built **network stack** for export at delimitation voltage (2026):

| Connection | Delgaz | DEER | Transmission-only |
|---|---:|---:|---:|
| **110 kV (IT)** | 58,79 | 50,29 | **18,33** |
| **MT** | 103,58 | 101,69 | n/a |
| **JT** | 280,53 | 258,35 | n/a |

Calculation: **TG 3,63 + SS 14,70 + TD** (0 for transmission-only).

Full methodology → [[Concept — Cost stack producator energie]].

---

## 4. Cross-border perimeter flows

| Item | Value | Applicable from |
|---|---|---|
| Scheduled import / export / transit with **țări perimetrice** | **1,10 EUR/MWh** (excl. VAT) | 15 May 2026 (Ord. 10/2026) |

Previous rate: 1,10 EUR/MWh from Ord. 16/2025 (May 2025 – May 2026) — stable nominal rate; verify EUR/RON invoice treatment separately.

---

## 5. BESS — tariffs on stored energy (Ord. 56/2025)

| Leg | Stored energy re-injected | Charge from grid | Aux / losses |
|---|---|---|---|
| TL | **Exempt** | Pay **36,45** | Pay |
| SS | **Exempt** | Pay | Pay |
| TD | **Exempt** | Pay | Pay |
| CV obligation | **Exempt** | — | — |

Detail → [[Concept — BESS economics si tarifare stocare]].

---

## 6. Other producer-relevant levies (not network tariffs)

| Levy | Rate | From | Notes |
|---|---:|---|---|
| **CfD contribution** | 0,000206 lei/kWh | 1 Apr 2025 | Ord. 10/2025 — on billed consumption paths, not standard export |
| **CV mandatory quota** | 0,499387 CV/MWh | 2026 | Ord. 81/2025 — **suppliers'** obligation, not producer cost |

---

## 7. Historical SS volatility (why this note exists)

| Effective | SS (lei/MWh) | Ordin |
|---|---:|---|
| 1 Jun 2025 | (prior) | Ord. 21/2025 |
| 1 Sep 2025 | 12,79 | Ord. 60/2025 |
| **1 Jan 2026** | **14,70** | Ord. 73/2025 |

> [!tip] DD practice
> For financial models spanning a tariff period, **escalate SS separately** from TG/TD — ANRE recalibrates SS more frequently than transport components.

---

## Update protocol

When a new ANRE tariff Ordin publishes:

1. Update tables above + `currency_as_of` frontmatter.
2. Refresh [[Concept — Cost stack producator energie]] illustrative totals if changed.
3. Add row to [[Currency ledger]] (when Ordin text ingested).
4. Do **not** duplicate full Ordin text here — link or ingest to `10 Acte normative/` when PDF available.

## Related

[[Concept — Cost stack producator energie]] · [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]] · [[MOC — Energetică]] · [[Download checklist — Batch B ANRE]] · [[ANRE]]
