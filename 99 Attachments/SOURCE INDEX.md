---
title: "SOURCE INDEX"
type: reference
tags: [reference, meta, source-portal]
created: 2026-07-26
updated: 2026-08-05
---

# SOURCE INDEX — portal dumps → working texts

Maps **raw dumps** in `99 Attachments/source-portal/` (and legacy `99 Attachments/` root) to **working `— text` notes** in `10 Legislation/`. Do not edit raw dumps; re-ingest via `scripts/ingest_ro_portal.py`. Currency: [[Currency ledger]].

## Batch A — keystone legislation

| portal_id | Raw dump | Working text | Status |
|---|---|---|---|
| 47355 | `47355_constitutia-romaniei_republicata-2003_portal.md` | [[Constitutia Romaniei (text)]] | current |
| 21698 | `21698_lege-24-2000_tehnica-legislativa_baza_soap.md` | [[Legea 24-2000 — tehnica legislativa (text)]] | lagging SOAP |
| 257158 | `257158_oug-33-2007_organizare-anre_consolidat-portal.md` | [[OUG 33-2007 — organizarea ANRE (text)]] | current |
| 307058 | `307058_lege-123-2012_energie_consolidat-portal.md` | [[Legea 123-2012 — energia electrica si gazele naturale (text)]] | current |
| 98742 | `98742_lege-220-2008_regenerabile_consolidat-portal.md` | [[Legea 220-2008 — promovare energie regenerabila (text)]] | current |
| print | `31-1990_lege-societati_forma-printabila-portal.md` | [[Legea 31-1990 — societatile (text)]] | current |
| 171282 | `171282_codul-fiscal-227-2015_soap.md` | [[Codul fiscal 227-2015 (text) — Index]] | lagging |
| 311622 / 307010 | `311622_*`, `307010_*` (truncated) | — | pending re-ingest |
| 309359 | `309359_*` (truncated) | [[Codul de procedura fiscala 207-2015 (text) — Index]] | lagging |

## Batch B — energy normative (2026-08-05 ingest)

| portal_id | Raw dump (`source-portal/`) | Working text | Analysis |
|---|---|---|---|
| **160289** | `160289_regulament-racordare-ee-2013_soap.md` | [[ANRE — Regulament racordare EE 2013 (text)]] | [[ANRE — Regulament racordare EE 2013 (notă)]] |
| **264611** | `264611_regulament-furnizare-ee-2023_soap.md` | [[ANRE — Regulament furnizare EE 2023 (text)]] | [[ANRE — Regulament furnizare EE 2023 (notă)]] |
| **262191** | `262191_oug-163-2022_regenerabile_soap.md` | [[OUG 163-2022 — promovare energie regenerabila (text)]] | [[OUG 163-2022 — promovare energie regenerabila (notă)]] |
| **291380** | `291380_oug-134-2024_stocare_soap.md` | [[OUG 134-2024 — stocare energie electrica (text)]] | [[OUG 134-2024 — stocare energie electrica (notă)]] |
| **250107** | `250107_oug-143-2021_energie_soap.md` | [[OUG 143-2021 — Directiva 2019-944 energie (text)]] | [[OUG 143-2021 — Directiva 2019-944 energie (notă)]] |
| **288733** | `288733_metodologie-transport-2024_soap.md` | [[ANRE — Metodologie tarife transport EE 2024 (text)]] | [[ANRE — Metodologii tarifare EE (notă)]] |
| **288712** | `288712_metodologie-distributie-2024_soap.md` | [[ANRE — Metodologie tarife distributie EE 2024 (text)]] | [[ANRE — Metodologii tarifare EE (notă)]] |
| **259593** | `259593_metodologie-servicii-sistem-2022_soap.md` | [[ANRE — Metodologie tarife servicii sistem 2022 (text)]] | [[ANRE — Metodologii tarifare EE (notă)]] |
| **257402** | `257402_metodologie-cv-quota-2022_soap.md` | [[ANRE — Metodologie quota certificate verzi 2022 (text)]] | [[ANRE — Metodologii tarifare EE (notă)]] |
| **286303** | `286303_metodologie-cfd-contributie-2024_soap.md` | [[ANRE — Metodologie contributie CfD 2024 (text)]] | [[ANRE — Ordin 52-2024 Contracte-cadru CfD (notă)]] |
| **286240** | `286240_ordin-52-2024-contract-cfd_soap.md` | [[ANRE — Ordin 52-2024 Contract-cadru CfD (text)]] | [[ANRE — Ordin 52-2024 Contracte-cadru CfD (notă)]] |
| **299750** | `299750_norme-stocare-bess-2025_soap.md` | [[ANRE — Norme stocare BESS 2025 (text)]] | [[ANRE — Norme stocare BESS 2025 (notă)]] |
| **305628** | `305628_ordin-74-2025-tarife-transport_soap.md` | [[ANRE — Ordin 74-2025 Tarife transport EE (text)]] | [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]] |
| **305630** | `305630_ordin-76-2025-tarife-distributie_soap.md` | [[ANRE — Ordin 76-2025 Tarife distributie DEER (text)]] | [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]] |
| **305631** | `305631_ordin-77-2025-tarife-distributie_soap.md` | [[ANRE — Ordin 77-2025 Tarife distributie Delgaz (text)]] | [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]] |
| **305642** | `305642_ordin-81-2025-quota-cv_soap.md` | [[ANRE — Ordin 81-2025 Quota certificate verzi 2026 (text)]] | [[Concept — Certificat verde]] |

> [!note] Portal ID vs Ordin shell
> SOAP **Ordin shells** (e.g. `150711`, `264610`) often contain only approval metadata. Full **Regulament / Metodologie** texts live under separate portal IDs — see table above (`160289` racordare, `264611` furnizare, `288733`/`288712`/`259593` methodologies).

## Legacy / misfiled dumps (do not ingest as-is)

| File | Issue |
|---|---|
| `264610_anre-ordin-5-2023_furnizare-ee_soap.md` | Mislabeled — contains **Cod fiscal**, not Ord. 5/2023. Use **`264611`**. |
| `150711` (referenced in old checklist) | Not in repo; superseded by **`160289`** regulament text. |

## Still pending (Batch B remainder)

- Electricity / gas **market rules** (normative Ordin post-2014 repeal)
- **Network codes** (EE / gaz)
- Gas connection / supply regulamente
- **Ord. 6/2025** — autorizare producție/stocare
- **Ord. 60/2025**, **Ord. 10/2026** — SS / perimeter tariff Ordine (analysis notă exists; text not yet ingested)
