---
title: "Download checklist — Batch B ANRE"
type: checklist
tags: [inbox, download, energetică, anre]
created: 2026-07-26
updated: 2026-08-05
---

# Download checklist — Batch B ANRE

Normative **Ordine** only. Drop files into `99 Attachments/source-portal/` then ping for re-ingest. Track status in [[Currency ledger]] · [[SOURCE INDEX]].

> [!important] Scope rule — same as Moldovan Law
> Ingest **structural / normative** ANRE acts: regulations, network codes, market rules, connection & supply procedures, tariff **methodologies**, green-certificate rules.
>
> Do **not** ingest individual **Decizii** (licences, site-specific tariffs, designations of named FUIs). They date fast and would swamp the graph. Pull those live from [ANRE](https://www.anre.ro) when advising a named operator.

## Connection & supply

- [x] **Ordin 59/2013** — racordare energie electrică — ingested as [[ANRE — Regulament racordare EE 2013 (text)]] (portal **160289**, not shell 150711)
- [ ] Gas connection regulation (current Ordin — identify consolidare on ANRE / portal)
- [x] **Ordin 5/2023** — furnizare energie electrică — ingested as [[ANRE — Regulament furnizare EE 2023 (text)]] (portal **264611**; ignore misfiled `264610`)
- [ ] Gas supply regulation (current Ordin)

## Markets

- [ ] Electricity market rules (normative Ordin / regulation in force)
- [ ] Gas market rules (normative Ordin / regulation in force)
- [ ] Balancing / settlement related normative acts if separate from market rules

## Network codes

- [ ] Electricity network code(s) — current Ordine
- [ ] Gas network code(s) — current Ordine

## Tariff methodologies *(not Decizii)*

- [x] Electricity transmission methodology — [[ANRE — Metodologie tarife transport EE 2024 (text)]] (Ord. 68/2024 · **288733**)
- [x] Electricity distribution methodology — [[ANRE — Metodologie tarife distributie EE 2024 (text)]] (Ord. 67/2024 · **288712**)
- [x] System services methodology — [[ANRE — Metodologie tarife servicii sistem 2022 (text)]] (Ord. 116/2022 · **259593**)
- [ ] Gas transport / distribution methodologies (as applicable)
- [x] CfD contribution methodology — [[ANRE — Metodologie contributie CfD 2024 (text)]] (Ord. 51/2024 · **286303**)

## Green certificates (L220)

- [x] Quota methodology — [[ANRE — Metodologie quota certificate verzi 2022 (text)]] (Ord. 96/2022 · **257402**)
- [x] 2026 quota Ordin — [[ANRE — Ordin 81-2025 Quota certificate verzi 2026 (text)]] (**305642**)
- [ ] Issuance / tracking methodology (if separate from PCV regulament)
- [ ] Trading / organised-market rules beyond [[ANRE — Ordin 77-2017 Regulament PCV (text)|Ord. 77/2017 PCV]]

## Storage (OUG 134 / Ord. 56)

- [x] **OUG 134/2024** — [[OUG 134-2024 — stocare energie electrica (text)]] (**291380**)
- [x] **Ord. 56/2025** norme stocare — [[ANRE — Norme stocare BESS 2025 (text)]] (**299750**)
- [ ] **Ord. 6/2025** — autorizare producție/stocare

## 2024–2026 OUGs (market design)

- [x] **OUG 163/2022** — [[OUG 163-2022 — promovare energie regenerabila (text)]] (**262191**)
- [x] **OUG 143/2021** — [[OUG 143-2021 — Directiva 2019-944 energie (text)]] (**250107**)

## CfD stack

- [x] **Ord. 52/2024** — [[ANRE — Ordin 52-2024 Contract-cadru CfD (text)]] (**286240**)

## 2026 tariff Ordine (normative tariff-setting acts — ingested)

- [x] Ord. **74/2025** transport — [[ANRE — Ordin 74-2025 Tarife transport EE (text)]]
- [x] Ord. **76/2025** Delgaz distribution — [[ANRE — Ordin 76-2025 Tarife distributie Delgaz (text)]]
- [x] Ord. **77/2025** DEER distribution — [[ANRE — Ordin 77-2025 Tarife distributie DEER (text)]]
- [ ] Ord. **60/2025**, **73/2025**, **10/2026** — SS / perimeter (analysis + snapshot exist; text ingest optional)

## Naming
`<portal_id>_anre-ordin-<nr>-<an>_<stem>_consolidat-YYYY-MM-DD.md` (or `.pdf`)

## After download
1. Update [[SOURCE INDEX]]  
2. Convert via `python3 scripts/ingest_ro_portal.py`  
3. Flip status in [[Currency ledger]]  
4. Link from [[MOC — Energetică]]
