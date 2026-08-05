---
title: "Energetică — sinteza sectorului"
type: domain-note
domeniu: [energetică]
tags: [domain, analysis, energetică]
status: draft
created: 2026-07-26
---

# Energy — sector synthesis

The reasoning layer for the Romanian energy corpus. Act inventory: [[MOC — Energetică]]. Currency: [[Currency ledger]].

> [!info] EU Member State — not Energy Community
> Romania implements the EU energy acquis **directly** as a Member State (since 2007). Moldova’s parallel stack still routes through the Energy Community Treaty. When comparing, the RO reference text is the EU instrument itself; the MD reference is often the *adapted* EnC version. Cross-vault: `EU Law/`.

---

## 1. The one thing to understand first

Romanian energy law is **a delegation system, not a rulebook**. The framework statute — **[[Legea 123-2012 — energia electrica si gazele naturale (text)|Legea 123/2012]]** — almost never answers an operational question by itself. It sets objectives, creates / empowers [[ANRE]], and enumerates what ANRE *must* regulate. The binding answer — connection charging, supply switching, last-resort transfer, tariff algorithm — lives one or two tiers down, in an **ANRE Ordin**.

Practical consequence: **reading L123 is step one of three.** Any real question needs (a) the enabling article, (b) the ANRE Ordin issued under it, (c) a check that the Ordin is the current consolidare. Advice built on the statute alone will be wrong more often than not.

## 2. The cascade

```
Parliament / OUG — L123/2012 (+ amending OUGs)   framework, regulator, licensing, markets
    ↓  (delegation article / temei legal)
Government — HG                                   strategy, SOS, construction, vulnerable consumers
    ↓
ANRE — Ordin (normative)                          market rules · network codes · connection & supply
                                                  regulations · tariff methodologies · GC rules
    ↓
ANRE — individual Decizii                         licences, specific tariffs   (NOT ingested)
```

Organisation and independence of the regulator: **[[OUG 33-2007 — organizarea ANRE (text)|OUG 33/2007]]**. Every normative Ordin should name its parent article — that field is the navigation handle for *ultra vires* challenges.

## 3. L123/2012 — two titles, one regulator

| Title | Subject | MD parallel |
|---|---|---|
| **Titlul I** | Energia electrică | [[Legea 164-2025 — energia electrica (text)\|L164/2025]] *(MD vault)* |
| **Titlul II** | Gaze naturale | [[Legea 108-2016 — gazele naturale (text)\|L108/2016]] *(MD vault)* |

Romania kept electricity and gas in **one statute**; Moldova split them and then replaced the electricity law with a fourth-package act in 2025. When porting analysis across vaults, map **problems** (unbundling, connection, FUI/FUO, tariffs), not article numbers.

## 4. Four regulatory problems the sector is organised around

### 4.1 Natural monopoly → regulated tariffs
Transmission and distribution cannot be duplicated. ANRE publishes a **methodology** (normative), then applies it in individual tariff decisions (out of scope). Methodologies ingested — [[ANRE — Metodologii tarifare EE (notă)]].

### 4.2 Vertical integration → unbundling
Separate network activities from generation/supply. EU third/fourth-package ladder (accounting → functional → legal → ownership / ITO / ISO). Certification is the enforcement gate. → [[Concept — Unbundling]]

### 4.3 Entry → licensing and connection
Two gates, often confused:
- **Licence** — permission to *carry on the activity* → [[Concept — Licență în energetică]]
- **Connection (*racordare*)** — attach a specific installation → [[Concept — Racordare la rețea]] · [[ANRE — Regulament racordare EE 2013 (notă)|Ord. 59/2013 regulament]]

### 4.4 Universal service / exposed consumer → FUI
Liberalisation needs a default supplier when the chosen one fails or the consumer never chooses. Romania’s label is **furnizor de ultimă instanță (FUI)**. → [[Concept — Furnizor de ultimă instanță]] · [[ANRE — Regulament furnizare EE 2023 (notă)|furnizare regulament]]

## 5. Renewables — green certificates (L220/2008)

**[[Legea 220-2008 — promovare energie regenerabila (text)|Legea 220/2008]]** runs a **mandatory-quota / green-certificate** scheme: eligible producers receive certificates; suppliers (and certain other obligated parties) must acquire a quota or pay the substitute amount. ANRE methodologies and trading rules sit below the statute.

| | Romania (L220) | Moldova (L10/2016) |
|---|---|---|
| Support | Tradable **certificate verde** + quota | Fixed tariff / auction for eligible producers |
| Scarcity tool | Annual quota & trading | Capacity quota / eligibility |
| Binding constraint | Often **connection + curtailment + GC market liquidity** | System integration + connection |

→ [[Concept — Certificat verde]] · MD parallel: Moldovan Law `Legea 10-2016`

## 6. EU alignment

Romania is **inside** the EU energy internal market. Electricity has moved with the Clean Energy Package / electricity market design reforms (Dir. 2019/944, Reg. 2019/943, REMIT, CACM lineage); gas remains on the gas directive / package track with later hydrogen/decarbonisation overlays. ACER cooperation and ENTSO-E/G membership are operational facts, not aspirational ones.

**Carbon pricing:** Romanian power producers and industrial emitters are **EU ETS 1 compliance entities** — EUA cost is a commodity-margin exposure (fuel-switching driven), not a regulated network tariff. Full analysis stack: [[MOC — EU Carbon Pricing]] · [[EU ETS — sinteza pietei carbon]] · [[Concept — Fuel switching price si clean spreads]]. ETS 2 (buildings/transport, from 2027) and CBAM (industrial imports/exports) add parallel exposure channels.

**Comparative note vs Moldova:** MD electricity jumped to the fourth package via L164/2025 while still an EnC contracting party; RO already had to implement as a Member State and then absorb each amending wave through L123 + OUGs + ANRE Ordine. Expect RO secondary acts to re-issue more often after market-design OUGs.

## 7. Where the risk sits — practitioner’s read

1. **Version risk dominates.** Two-thirds of what binds a participant is ANRE-level and is amended continuously. → [[Currency ledger]]
2. **OUGs rewrite the statute mid-year.** Always check whether a 2024–2026 OUG has moved the enabling article your Ordin cites.
3. **Cod fiscal / CPF lag does not block energy advice — market rules / network codes still pending.** Core Batch B connection, supply, methodologies, and 2024–2026 OUGs are ingested.
4. **Individual Decizii are out of scope** by design (same rule as MD HANRE ingestion). Cite the methodology / regulation, then pull the live Decizie from ANRE when advising a specific tariff or licence.

## 8. Open threads
- Complete Batch B remainder: electricity/gas **market rules**, **network codes**, Ord. **6/2025**
- ~~Ingest Batch B core: racordare, furnizare, metodologii, OUG 134/143/163, BESS norme, 2026 tariffs~~ → **done 2026-08-05**
- ~~Producer cost stack / BESS / PRE / curtailment synthesis~~ → **done 2026-08-05** — see [[Concept — Cost stack producator energie]], [[Tarife retea — snapshot 2026]]
- Deepen [[Legea 123-2012 — energia electrica si gazele naturale (notă)|L123 notă]] and [[Legea 220-2008 — promovare energie regenerabila (notă)|L220 notă]]
- Map post-2022 market-design OUGs into the cascade table
- Cross-link concrete EU instruments in `EU Law/` — EU carbon pricing layer started: [[MOC — EU Carbon Pricing]]
- Corporate unbundling execution → [[Societăți & guvernanță — sinteza]]

## Related
[[MOC — Energetică]] · [[ANRE]] · [[Concept — Racordare la rețea]] · [[Concept — Unbundling]] · [[Concept — Furnizor de ultimă instanță]] · [[Concept — Certificat verde]] · [[Concept — Licență în energetică]] · [[OUG 33-2007 — organizarea ANRE (text)]]
