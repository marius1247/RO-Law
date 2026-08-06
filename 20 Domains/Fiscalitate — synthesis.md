---
title: "Fiscalitate — synthesis"
type: domain-note
domeniu: [fiscal]
tags: [domain, analysis, fiscal]
status: draft
created: 2026-07-26
---

# Taxation — synthesis

The reasoning layer for Romanian tax. Act inventory: [[MOC — Fiscalitate]].

> [!danger] Currency warning — read this first
> Working texts for **[[Codul fiscal 227-2015 (text) — Index|Codul fiscal]]** and **[[Codul de procedura fiscala 207-2015 (text) — Index|CPF]]** are **complete SOAP dumps but lag** Portal Legislativ’s 2025–2026 consolidări (Cod fiscal through **01.07.2026**; CPF through **08.05.2026**). Truncated newer dumps sit in `99 Attachments/source-portal/`.
>
> **Never quote a rate, threshold, or procedural deadline from this note or from the SOAP texts without re-checking** the latest consolidare or [ANAF](https://www.anaf.ro) / MF guidance. → [[Currency ledger]] · [[Download checklist — Batch A currency]]

---

## 1. The architecture

Two codes, one administrator, one contestation track.

- **Codul fiscal (L227/2015)** — substantive law, organised by **Titluri**
- **Codul de procedură fiscală (L207/2015)** — assessment, control, collection, appeals
- **[[ANAF]]** — administration, audit, collection, enforcement
- **Customs** (ANV / integrated border functions) — import VAT and excise at the border
- Social contributions sit in Cod fiscal **Titlul V** but operational collection interacts with CNAS / health frameworks

## 2. Codul fiscal by Titlu — the map

| Titlu | Subject | Priority |
|---|---|---|
| **I** | Dispoziții generale | High — interpretive key |
| **II** | **Impozitul pe profit** | Highest → [[Concept — Impozit pe profit]] |
| **III** | Impozitul pe veniturile microîntreprinderilor | High — SME structuring |
| **IV** | Impozitul pe venit (individuals) | High |
| **V** | Contribuții sociale obligatorii | High — payroll wedge |
| **VI** | Impozit pe veniturile nerezidenților / reprezentanțe | Medium |
| **VII** | **TVA** | Highest → [[Concept — TVA]] |
| **VIII** | Accize și alte taxe speciale | Medium |
| **IX** | Impozite și taxe locale | Medium |
| **X** | Impozitul pe construcții | Low–medium |
| **XI** | Dispoziții finale | — |

Each Titlu is a separate `— text` file under [[Codul fiscal 227-2015 (text) — Index]].

## 3. CPF by Titlu — where disputes are won

| Titlu | Subject |
|---|---|
| I–II | General provisions · fiscal legal relationship |
| III–IV | General procedure · fiscal registration |
| **V** | Establishing fiscal claims |
| **VI** | Fiscal control |
| **VII** | Collection / enforcement |
| **VIII** | **Contestații** against fiscal administrative acts |
| IX–X | Mutual agreement / international |
| XI–XII | Sanctions · transitional |

Sequence to know: control → assessment decision → **administrative contestation (CPF Titlul VIII)** → judicial review. Limitation periods are short; diarise on receipt.

## 4. Main taxes *(illustrative — verify live rates)*

Do **not** treat the following as advice-grade numbers while SOAP texts lag consolidare. Orient only:

- **Impozitul pe profit** — standard corporate tax on taxable profit (Titlul II); micro regime (Titlul III) is a distinct turnover-based track for qualifying entities.
- **Impozitul pe venit** — individuals (Titlul IV), with contribution stack (Titlul V).
- **TVA** — EU-model VAT (Titlul VII): output minus input; standard / reduced / zero / exempt distinction matters. → [[Concept — TVA]]
- **Accize** — Titlul VIII; specific rates dominate; indexed often.
- **Local taxes** — Titlul IX; building/land/vehicle.

Dividend / profit-extraction comparisons (salary vs dividend vs micro) are the core of most RO structuring files — always remodel after the latest OUG / annual fiscal measures.

## 5. How this connects
- **Company form drives tax outcome** — SRL/SA, micro vs profit tax, distribution policy → [[Societăți & guvernanță — synthesis]]
- **Energy bridge** — VAT and excise feed regulated tariff construction; GC scheme is state-aid adjacent → [[Energetică — synthesis]]
- **Procedure is half the case** — CPF Titlurile VI–VIII decide more outcomes than Titlul II rates

## 6. Open threads
- Replace SOAP working texts with latest Cod fiscal + CPF consolidări (manual PDF) → [[Download checklist — Batch A currency]]
- Deepen [[Codul fiscal 227-2015 (notă)]] and CPF notă beyond stubs
- Map annual fiscal OUGs / laws that amend rates mid-year
- Double tax treaty reference table
- Profile [[ANAF]] operational structure (DGAMC, antifraud, etc.)

## Related
[[MOC — Fiscalitate]] · [[ANAF]] · [[Concept — Impozit pe profit]] · [[Concept — TVA]] · [[Currency ledger]] · [[Societăți & guvernanță — synthesis]]
