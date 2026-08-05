---
title: "ANRE — Ordin 127-2021 Piata echilibrare (notă)"
type: act-note
act_type: act-anre
issuer: ANRE
nr: 127
an: 2021
domeniu: [energetică, piețe, echilibrare]
tags: [act-note, analysis, ANRE, echilibrare, PCE, PE, EBGL]
status: stub
source_missing: true
updated: 2026-08-05
---

**Act:** Ordinul ANRE nr. **127/2021** privind piața de echilibrare a energiei electrice (și piața capacităților de echilibrare) · **Hub:** [[MOC — Piețe de echilibrare]] · **Synthesis:** [[Piețe de echilibrare — sinteza]]

> [!warning] Text not ingested
> Working `— text` note pending portal ingest. Values and product rules in linked concept notes are sourced from Transelectrica publications, EBGL, and practitioner analysis — **verify against live consolidare** before transactional use.

# ANRE Ordin 127/2021 — Balancing market rules (analysis stub)

## Identificare

| Field | Value |
|---|---|
| **Emitent** | ANRE |
| **Nr. / an** | 127 / 2021 |
| **Domeniu** | Piețe de echilibrare — capacitate (PCE) și energie (PE) |
| **Temei** | [[Legea 123-2012 — energia electrica si gazele naturale (text)|L123/2012]]; Regulamentul (UE) 2017/2195 (EBGL) |
| **Operator piață** | C.N.T.E.E. Transelectrica S.A. |

## Ce reglementează (pe scurt)

1. **Piața Capacităților de Echilibrare (PCE)** — licitații zilnice D-1 pentru FCR, aFRR, mFRR (capacitate MW, blocuri 4 ore)
2. **Piața de Echilibrare (PE)** — energie de echilibrare activată în timp real (intervale 15 minute)
3. **Calificarea BSP/FSE** — cerințe tehnice pentru furnizori de servicii de echilibrare
4. **Proceduri de licitație** — platforma DAMAS, ofertare, decupaj produse
5. **Integrare europeană** — aliniere EBGL (PICASSO aFRR, MARI mFRR)

## Amendamente relevante (de verificat la ingest)

| Act | Subiect probabil |
|---|---|
| Ord. **60/2024** | Actualizări EBGL / produse echilibrare |
| Alte ordine ANRE post-2022 | Gate closure, produse 15 minute |

*Confirm amendment chain on ingest from Portal Legislativ.*

## Concept notes derivate

- [[Concept — PCE — piata capacitatilor de echilibrare]]
- [[Concept — PE — piata energiei de echilibrare]]
- [[Concept — FCR — operare si constrangeri]]
- [[Concept — BESS revenue stacking]]

## Relații

| Act | Legătură |
|---|---|
| [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)\|Ord. 213/2020]] | Leagă prețurile PE de decontarea PRE |
| [[ANRE — Metodologie tarife servicii sistem 2022 (text)\|Ord. 116/2022]] | Recuperarea costurilor PCE prin tariful SS |
| [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)\|Ord. 73/2025]] | Valoarea tarifului SS (nu prețul licitațiilor) |
| [[ANRE — Ordin 25-2004 Cod comercial piata angro EE (notă)\|Ord. 25/2004]] | Cap. abrogate — piețe migrate spre Ord. 127/2021 |

## Ingest checklist

- [ ] Portal consolidare → `99 Attachments/source-portal/`
- [ ] `python3 scripts/ingest_ro_portal.py --convert`
- [ ] Companion `— text` în `10 Acte Normative/Acte ANRE & Autoritati/`
- [ ] Actualizare [[Currency ledger]]
- [ ] Link `#Articolul N` în concept notes

## Related

[[MOC — Piețe de echilibrare]] · [[MOC — Energetică]] · [[Download checklist — Batch B ANRE]]
