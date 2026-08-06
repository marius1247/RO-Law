---
title: "SOURCE INDEX"
type: reference
tags: [reference, meta, source-portal]
created: 2026-07-26
updated: 2026-08-06
---

# SOURCE INDEX — portal dumps → working texts

Maps **raw dumps** in `99 Attachments/source-portal/` (and legacy `99 Attachments/` root) to **working `— text` notes** in `10 Legislation/`. Do not edit raw dumps; re-ingest via `scripts/ingest_ro_portal.py`. Currency: [[Currency ledger]].

## Batch C — missing texts (2026-08-06)

| portal_id | Raw dump (`source-portal/`) | Working text | Analysis |
|---|---|---|---|
| **249313** | `249313_regulament-bsp-fse-echilibrare-2021_soap.md` | [[ANRE — Ordin 127-2021 Piata echilibrare (text)]] | [[ANRE — Ordin 127-2021 Piata echilibrare (notă)]] |
| **249314** | `249314_regulament-pre-echilibrare-2021_soap.md` | [[ANRE — Regulament PRE 2021 (text)]] | companion PRE (Ord. 127) |
| **249312** | `249312_ordin-127-2021-aprobare-regulamente-echilibrare_soap.md` | [[ANRE — Ordin 127-2021 Aprobare regulamente echilibrare (text)]] | Ord. shell |
| **224753** | `224753_regulament-decontare-dezechilibre-mar2020_soap.md` | [[ANRE — Ordin 213-2020 Decontare dezechilibre (text)]] | [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)]] *(SOAP base = Ord. 61/2020; **partial**)* |
| **234462** | `234462_ordin-213-2020-decontare-dezechilibre_soap.md` | [[ANRE — Ordin 213-2020 Aprobare regulament decontare (text)]] | Ord. shell; anexă truncated in SOAP |
| **281631** | `281631_hg-318-2024-cadru-cfd_soap.md` | [[HG 318-2024 — cadru general CfD (text)]] | [[HG 318-2024 — cadru general CfD (notă)]] · Anexa = [[HG 318-2024 — Anexa CfD eolian solar (notă)]] (MO 333 bis PDF) |
| **176165** | `176165_lege-21-1996-concurenta-republicata_soap.md` | [[Legea 21-1996 — concurenta (text)]] | [[Legea 21-1996 — concurenta (notă)]] |
| **128646** | `128646_lege-53-2003-codul-muncii-republicata_soap.md` | [[Legea 53-2003 — codul muncii (text)]] | [[Legea 53-2003 — codul muncii (notă)]] |
| **178667** | `178667_lege-98-2016-achizitii-publice_soap.md` | [[Legea 98-2016 — achizitii publice (text)]] | [[Legea 98-2016 — achizitii publice (notă)]] |
| **178680** | `178680_lege-101-2016-remedii-achizitii_soap.md` | [[Legea 101-2016 — remedii achizitii publice (text)]] | [[Legea 101-2016 — remedii achizitii publice (notă)]] |
| **67634** | `67634_oug-195-2005-protectia-mediului_soap.md` | [[OUG 195-2005 — protectia mediului (text)]] | [[OUG 195-2005 — protectia mediului (notă)]] |
| **208590** | `208590_lege-292-2018-eia_soap.md` | [[Legea 292-2018 — evaluare impact mediu (text)]] | [[Legea 292-2018 — evaluare impact mediu (notă)]] |
| **245244** | `245244_lege-24-2017-emitenti_soap.md` | [[Legea 24-2017 — emitenti instrumente financiare (text)]] | [[Legea 24-2017 — emitenti instrumente financiare (notă)]] · cluster [[Legea 208-2015 — piete de capital (notă)]] |
| **201860** | `201860_lege-126-2018-piete-instrumente-financiare_soap.md` | [[Legea 126-2018 — piete instrumente financiare (text)]] | [[Legea 126-2018 — piete instrumente financiare (notă)]] |

Manifest: `scripts/batch_c_ingest_manifest.json`.

> [!warning] Known SOAP gaps
> - **Ord. 213/2020** full single-price anexă truncated in portal SOAP (`234462`); working text is Ord. 61/2020 base (`224753`) — mark **partial**.
> - **HG 318/2024 Anexa** (MO 333 bis) is not in SOAP — use PDF under `99 Attachments/source-hg/`.

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
| **305630** | `305630_ordin-76-2025-tarife-distributie_soap.md` | [[ANRE — Ordin 76-2025 Tarife distributie Delgaz (text)]] | [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]] |
| **305631** | `305631_ordin-77-2025-tarife-distributie_soap.md` | [[ANRE — Ordin 77-2025 Tarife distributie DEER (text)]] | [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)]] |
| **305642** | `305642_ordin-81-2025-quota-cv_soap.md` | [[ANRE — Ordin 81-2025 Quota certificate verzi 2026 (text)]] | [[Concept — Certificat verde]] |

> [!note] Portal ID vs Ordin shell
> SOAP **Ordin shells** (e.g. `150711`, `264610`) often contain only approval metadata. Full **Regulament / Metodologie** texts live under separate portal IDs — see table above (`160289` racordare, `264611` furnizare, `288733`/`288712`/`259593` methodologies).

## Legacy / misfiled dumps (do not ingest as-is)

| File | Issue |
|---|---|
| `264610_anre-ordin-5-2023_furnizare-ee_soap.md` | Mislabeled — contains **Cod fiscal**, not Ord. 5/2023. Use **`264611`**. |
| `150711` (referenced in old checklist) | Not in repo; superseded by **`160289`** regulament text. |

## Still pending (Batch B remainder)

- Electricity / gas **market rules** beyond Ord. 127/213 (post-2014 commercial-code successors, gas markets)
- **Network codes** (EE / gaz)
- Gas connection / supply regulamente
- **Ord. 6/2025** — autorizare producție/stocare
- **Ord. 60/2025**, **Ord. 10/2026** — SS / perimeter tariff Ordine (analysis notă exists; text not yet ingested)
- Ord. **213** Forma printabilă consolidare (single-price) · HG 318 Anexa PDF→`(text)`
