---
title: "Download checklist — Batch B ANRE"
type: checklist
tags: [inbox, download, energetică, anre]
created: 2026-07-26
---

# Download checklist — Batch B ANRE

Normative **Ordine** only. Drop files into `99 Attachments/source-portal/` then ping for re-ingest. Track status in [[Currency ledger]].

> [!important] Scope rule — same as Moldovan Law
> Ingest **structural / normative** ANRE acts: regulations, network codes, market rules, connection & supply procedures, tariff **methodologies**, green-certificate rules.
>
> Do **not** ingest individual **Decizii** (licences, site-specific tariffs, designations of named FUIs). They date fast and would swamp the graph. Pull those live from [ANRE](https://www.anre.ro) when advising a named operator.

## Connection & supply

- [ ] **Ordin 59/2013** — racordare energie electrică (+ all amending Ordine consolidating into current form)  
  - SOAP dump present: `150711_anre-ordin-59-2013_racordare-ee_soap.md` — **currency-check before convert**
- [ ] Gas connection regulation (current Ordin — identify consolidare on ANRE / portal)
- [ ] **Ordin 5/2023** — furnizare energie electrică  
  - SOAP dump present: `264610_anre-ordin-5-2023_furnizare-ee_soap.md` — **currency-check before convert**
- [ ] Gas supply regulation (current Ordin)

## Markets

- [ ] Electricity market rules (normative Ordin / regulation in force)
- [ ] Gas market rules (normative Ordin / regulation in force)
- [ ] Balancing / settlement related normative acts if separate from market rules

## Network codes

- [ ] Electricity network code(s) — current Ordine
- [ ] Gas network code(s) — current Ordine

## Tariff methodologies *(not Decizii)*

- [ ] Electricity transmission methodology
- [ ] Electricity distribution methodology
- [ ] Gas transport / distribution methodologies (as applicable)
- [ ] Other regulated-price methodologies cited by L123

## Green certificates (L220)

- [ ] Issuance / tracking methodology
- [ ] Trading / organised-market rules (normative)
- [ ] Quota / compliance related Ordine still in force

## Naming
`<portal_id>_anre-ordin-<nr>-<an>_<stem>_consolidat-YYYY-MM-DD.md` (or `.pdf`)

## After download
1. Update [[SOURCE INDEX]]  
2. Convert via `python3 scripts/ingest_ro_portal.py`  
3. Flip status in [[Currency ledger]]  
4. Link from [[MOC — Energetică]]
