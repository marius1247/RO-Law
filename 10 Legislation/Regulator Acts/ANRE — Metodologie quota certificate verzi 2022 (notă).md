---
title: "ANRE — Metodologie quota certificate verzi 2022 (notă)"
type: act-note
instrument: act-anre
act_type: act-anre
issuer: ANRE
nr: "96"
an: 2022
domain: [energetică, certificate-verzi]
domeniu: [energetică, certificate-verzi]
portal_id: "257402"
source_url: "https://legislatie.just.ro/Public/DetaliiDocumentAfis/257402"
tags: [act-note, analysis, ANRE, certificate-verzi, cota, PCSCV]
status: reviewed
depth: expert
created: 2026-08-06
updated: 2026-08-06
---

# Ordin ANRE 96/2022 — Green-certificate quota methodology — Analysis

**Raw text:** [[ANRE — Metodologie quota certificate verzi 2022 (text)]] · **2026 estimated quota:** [[ANRE — Ordin 81-2025 Quota certificate verzi 2026 (notă)]] · **Concept:** [[Concept — Certificat verde]] · [[Concept — Cota obligatorie certificate verzi]] · **PCV rules:** [[ANRE — Ordin 77-2017 Regulament PCV (notă)]] · **Hub:** [[MOC — Energetică]]

## Thesis

This methodology is the **calculation and compliance engine** under [[Legea 220-2008 — promovare energie regenerabila (text)|L220/2008]]: it tells ANRE how to set the **estimated annual GC purchase quota** (December t−1), how to police it **quarterly**, how to set the **final realised quota** (by 1 March t+1), and how shortfalls become **AFM substitute payments**. It does not create the certificate instrument — that is L220 — but it decides how many CV/MWh each obligated party must hold and when sanctions fire.

## Architecture

| Block | Arts. | Function |
|---|---|---|
| I — General | 1–4 | Scope (obligated parties, electro-intensive exemptions, OTS, OPCV); definitions |
| II — Estimated quota + quarterly compliance | 5–19 | `c_cv,estimată,t`; PCSCV 50% rule; OPCV lists; ANRE decisions + fines |
| III — Final annual quota + annual compliance | 20–32 | Realised `c_cv,t`; March t+1 holding test; AFM payment |
| IV — Final | 33–36 | Impact publication; RCV states (blocked / consumed); annexes |

## Operative regime (by problem)

### Problem A — Who is obligated?
Art. 3(2)(m) + art. 2: suppliers (incl. self-supply), non-RES producers supplying via direct lines or own final consumption (ex-CPT), plus cross-border bilateral supply from RO production under bilateral government agreements. OTS/OD assimilated to suppliers for non-CPT self-supply (art. 3(3)). Electro-intensive **HG 495/2014** exemptions and L123 art. 73¹(7) RES self-consumption carve-outs shrink the base.

### Problem B — How is the *estimated* quota set (Dec t−1)?
Arts. 5–8:  
`c_cv,estimată,t = NCV_t,estimat / CFEE_CV,t,estimat`  
where supported CV value = **ICV_t** (L220 art. 4(7) consumer-bill impact cap) × obligated consumption, divided by **11-month PCSCV weighted average price**. Published by Ordin — e.g. [[ANRE — Ordin 81-2025 Quota certificate verzi 2026 (notă)|Ord. 81/2025 → 0,499387 CV/MWh for 2026]].

### Problem C — Quarterly compliance (intra-year teeth)
- Need: `NCV_i,nec,trim.n = (CFEE − exemptions) × c_cv,estimată` rounded 0.5-up (art. 10).
- **≥50% of residual obligation must be bought on PCSCV** each quarter (+ following month) after subtracting pre-OUG 24/2017 bilaterals and producer→supplier self-transfers (art. 11) — L220 art. 10(6) hardwire.
- Holding test: last working day of month after quarter; only “valabile” CVs without blocked flags (art. 13).
- OPCV publishes non-compliant list (day 3 / corrected day 8 of second month of n+1); ANRE issues decision same day 8 and starts fine file within 20 working days (arts. 15–16).
- Quarterly shortfall fine **does not** erase the annual purchase duty (art. 27(4)).

### Problem D — Final quota & annual close
Arts. 20–23: by 15 Feb t+1 ANRE recomputes on realised volumes; Ordin by **1 March t+1**. Holding test at last working day of **March t+1**; OPCV April lists; ANRE decision day 8 April → AFM (arts. 27–30). Substitute: **70 €/CV** unpurchased at prior-year BNR average (art. 28; L220 art. 12(2⁵)).

### Problem E — Register states
Art. 34: temporary block (≤90% of quarterly need) vs consumed; default consumption order if party silent (bilaterals/self-transfer → 50% PCSCV → remainder by age). Temporary blocks release when final quota Ordin publishes.

## Definitions

| Term | Art. | Use |
|---|---|---|
| **Cota estimată** | 3(2)(e) | Dec t−1 Ordin; quarterly sanctions |
| **Cota obligatorie (realizată)** | 3(2)(f) | By 1 Mar t+1; annual AFM |
| **CV blocat temporar / consumat / transferat** | 3(2)(b–d) | RCV mechanics |
| **CFEE_CV** | 3(2)(i), 4 | Obligation base after exemptions |

## Obligations

| Who | Key duties |
|---|---|
| **Obligated operators** | Quarterly + annual reports (annexes 1/3); hold/buy CVs; ≥50% PCSCV rule |
| **OPCV (OPCOM)** | RCV states; non-compliance lists; data to ANRE |
| **ANRE** | Set quotas; decisions; sanctions; notify AFM |
| **Ministerul Energiei** | HG 495 exemption volume estimate by end-Nov t−1 (art. 7(2)) |

## Enforcement

- L220 art. 30 fines for quarterly / reporting failures.
- AFM collection for annual unpurchased CVs (art. 30).
- OPCV liable for direct costs if party complied with proof but was wrongly listed (arts. 16(7), 29(6)).
- Error-correction windows are **short** (often 18 working days from decision) — miss them and the list sticks.

## Hard edges

- Estimated vs final quota can diverge — hedge with both.
- Electro-intensive exemption is **Ministry agreement-based**, not automatic.
- Pre-OUG 24/2017 bilateral CVs are privileged in the 50% PCSCV residual — new bilaterals do not get the same treatment.
- Impact cap **ICV_t** (14,5 €/MWh in 2026 annex) is the political ceiling that *drives* the quota math, not a direct consumer line item here.

## Interactions

- Parent: [[Legea 220-2008 — promovare energie regenerabila (notă)|L220/2008]] · [[OUG 163-2022 — promovare energie regenerabila (notă)]]
- Market: [[ANRE — Ordin 77-2017 Regulament PCV (notă)]]
- Rate Ordin: [[ANRE — Ordin 81-2025 Quota certificate verzi 2026 (notă)]]
- Concepts: [[Concept — Certificat verde]] · [[Concept — Cota obligatorie certificate verzi]]
- Hub index: [[ANRE — Metodologii tarifare EE (notă)]] (GC row)

## File checklist

- [x] `(text)` ingested · deep `(notă)` · concepts · MOC wiring

## Sources

- [[ANRE — Metodologie quota certificate verzi 2022 (text)]] — portal_id `257402` · Ord. 96/2022
