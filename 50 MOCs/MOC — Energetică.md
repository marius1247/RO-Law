---
title: "MOC — Energetică"
type: moc
domeniu: energetică
tags: [moc, index, energetică]
created: 2026-07-26
status: draft
---

# MOC — Energetică

Domain hub for the **energy sector**. Romania is an **EU Member State** (not Energy Community). Core primary laws are in the vault; ANRE Ordine are Batch B.

> [!tip] Start with the synthesis, not the acts
> **[[Energetică — sinteza sectorului]]** — cascade, L123 two titles, GC scheme, risk map, MD parallels.

## Analysis layer
- **[[Energetică — sinteza sectorului]]**
- Act companions: [[Legea 123-2012 — energia electrica si gazele naturale (notă)|L123/2012]] · [[Legea 220-2008 — promovare energie regenerabila (notă)|L220/2008]]
- Concepts: [[Concept — Racordare la rețea]] · [[Concept — Unbundling]] · [[Concept — Furnizor de ultimă instanță]] · [[Concept — Certificat verde]] · [[Concept — Licență în energetică]] · [[Concept — Cost stack producator energie]] · [[Concept — BESS economics si tarifare stocare]] · [[Concept — PRE si responsabilitate de echilibrare]] · [[Concept — Curtailment si redispatch RES]]
- Currency: [[Currency ledger]]

## The implementation chain
**L123/2012 (+ OUGs)** → **HG** → **ANRE Ordin (normative)** → individual Decizii (licences/tariffs — *not ingested*)

Regulator organisation: [[OUG 33-2007 — organizarea ANRE (text)|OUG 33/2007]] · profile [[ANRE]].

## Tier 1 — Primary legislation
| Act | What it governs |
|---|---|
| [[Legea 123-2012 — energia electrica si gazele naturale (text)\|L123/2012]] | Electricity (**Titlul I**) + natural gas (**Titlul II**): licensing, unbundling, networks, markets, consumers |
| [[Legea 220-2008 — promovare energie regenerabila (text)\|L220/2008]] | Renewables support — **certificat verde** / mandatory quota |
| [[OUG 33-2007 — organizarea ANRE (text)\|OUG 33/2007]] | ANRE status, independence, funding, parliamentary control |

## Tier 2 — Government
- [[HG 318-2024 — cadru general CfD (notă)]] — institutional CfD framework (Minister / Transelectrica / OPCOM)
- [[HG 318-2024 — Anexa CfD eolian solar (notă)]] — CfD model contract (onshore wind + PV); OPCOM as Contraparte CfD
- [[OUG 163-2022 — promovare energie regenerabila (notă)]] — RED II transposition / completes L220 *(original missing — see [[Vault notes]])*
- Other HGs on security of supply, vulnerable consumers, strategy *(to map as needed)*

## Tier 3 — ANRE Ordine
Normative only — same scope rule as MD: **no individual Decizii**.

| Family | Status | Notes |
|---|---|---|
| Wholesale commercial code | [[ANRE — Ordin 25-2004 Cod comercial piata angro EE (notă)\|Ord. 25/2004]] ✅ | Cod comercial angro EE — partially repealed; see note |
| Green certificates (PCV) | [[ANRE — Ordin 77-2017 Regulament PCV (notă)\|Ord. 77/2017]] ✅ | PCV market rules — OPCOM reading copy |
| CfD contracts | [[ANRE — Ordin 52-2024 Contracte-cadru CfD (notă)\|Ord. 52/2024]] ✅ | Contribution + scheme-operator contracts |
| Smart grid KPIs | [[ANRE — Ordin 59-2025 Metodologie indicatori retea inteligenta (notă)\|Ord. 59/2025]] ✅ | Ordin + methodology PDFs |
| Forward markets | [[ANRE — Ordin 134-2022 Piata termen (notă)\|Ord. 134/2022]] · [[ANRE — Ordin 12-2023 Regulament tranzactionare OPCOM (notă)\|Ord. 12/2023]] ✅ | General rules + OPCOM regulation |
| Energy communities | [[ANRE — Ordin 9-2026 Comunitati energie (notă)\|Ord. 9/2026]] · [[ANRE — Ordin 50-2026 Registru comunitati energie (notă)\|Ord. 50/2026]] ✅ | Wholesale/storage + national register |
| Gas authorisation | [[ANRE — Ordin 98-2015 Autorizare gaze (notă)\|Ord. 98/2015]] ✅ | |
| Tariffs (STS / perimeter) | [[ANRE — Ordine tarifare 60-2025 si 10-2026 (notă)\|Ord. 60/2025 + 73/2025 + 10/2026]] · [[Tarife retea — snapshot 2026]] | *(originals still missing — [[Download checklist — Batch B ANRE]])* |
| Racordare EE | Ordin **59/2013** + amendments | SOAP dump `150711` exists |
| Furnizare EE | Ordin **5/2023** | SOAP dump `264610` exists |
| Piețe / coduri / GC | Planned | Checklist: [[Download checklist — Batch B ANRE]] |

## OPCOM market procedures (OPEED)
- [[OPCOM — Procedura inregistrare PEE rev 17 (notă)]] — participant registration (Rev. 17 / 2026)
- [[OPCOM — PO-PZU Rev7 2025 (notă)]] — day-ahead operational procedure (15′ products, SDAC)
- [[OPCOM — Procedura garantii PZU-PI 2025 (notă)]] — financial guarantees for PZU / PI-IDCT / PI-IDA
- [[OPCOM — Act aditional model unic PZU-PI 2025 (notă)]] — standard amendment to Participation Convention
- [[OPCOM — Procedura NF PZU-PRE 2015 (notă)]] — physical-notification transfer on PRE change (CET↔EET)

## Authorities
- [[ANRE]] — licensing, tariffs, codes, markets, GC administration interfaces
- Ministerul Energiei — policy / HG track
- OPCOM — designated NEMO / OPEED; Contraparte CfD under HG 318/2024
- TSO / DSOs — Transelectrica, distribution operators; gas TSO/DSOs

## Comparative & EU
| Romania | Moldova (sibling vault) |
|---|---|
| L123/2012 (EE+gas in one act) | L164/2025 (EE) + L108/2016 (gas) |
| L220/2008 GC scheme | L10/2016 fixed tariff / auction |
| EU Member State | Energy Community + accession track |
| ANRE Ordine | HANRE |

Cross-vault: `EU Law/` · Moldovan Law `[[Energetică — sinteza sectorului]]`.

## Open threads
- Complete Batch B normative Ordine
- Map 2024–2026 market-design OUGs amending L123
- Deepen act note companions
- Ingest primary texts for Batch 4–5 sectoral acts (L21, L53, L98, L208, OUG 195)
- Unbundling ↔ company law → [[Societăți & guvernanță — sinteza]]

## Cross-disciplinary indexes
- [[_Energy Investment Due Diligence Index]]
- [[_M&A Regulatory Compliance Checklist]]
- [[_Regulatory Risk & Litigation Matrix]]
