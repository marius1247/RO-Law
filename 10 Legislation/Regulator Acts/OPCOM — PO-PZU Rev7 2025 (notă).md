---
title: "OPCOM — PO-PZU Rev7 2025 (notă)"
type: act-note
act_type: act-autoritate
issuer: OPCOM
adopted: 2025-09-30
domeniu: [energetică, piețe, PZU]
tags: [act-note, analysis, OPCOM, PZU, SDAC, EUPHEMIA, 15-minute]
status: reviewed
updated: 2026-08-06
source_pdf: "[[99 Attachments/source-opcom/OPCOM_PO_PZU_Rev7_2025-09-30.pdf]]"
created: 2026-07-27
---

**Emitent:** OPCOM · Rev. 7 / 30.09.2025 · **Hub:** [[MOC — Energetică]] · **Related:** [[OPCOM — Procedura garantii PZU-PI 2025 (notă)]] · [[OPCOM — Procedura NF PZU-PRE 2015 (notă)]] · **EU algorithm:** [[NEMO Committee — EUPHEMIA Public Description (notă)]] · **Raw PDF:** `99 Attachments/source-opcom/OPCOM_PO_PZU_Rev7_2025-09-30.pdf`

# Memoriu Tehnico-Juridic — PO-PZU Rev.7 (30.09.2025) — Procedura Operațională OPCOM privind Piața pentru Ziua Următoare

## Identificare
- **Emitent:** OPCOM S.A. (Operatorul Pieței de Energie Electrică și de Gaze Naturale)
- **Data ultimei revizii:** 30 septembrie 2025 (Revizia 7 din 41 pagini)
- **Istoric revizii relevant:** 7 revizii din 2019 până în 2025, ultima determinată de implementarea rezoluției de 15 minute (posibilitate de ofertare la 15/30/60 minute), aliniată cu tranziția europeană la decontarea dezechilibrelor la interval de 15 minute

## Scop și Domeniu de Aplicare (Cap. 1-2)
Procedura reglementează tranzacționarea pe **Piața pentru Ziua Următoare (PZU)**, acoperind trei regimuri operaționale: funcționarea normală în regim cuplat (SDAC), soluțiile de rezervă și funcționarea în regim decuplat (procedura de ultimă instanță). Se aplică participanților la PZU, OPCOM (ca OPEED — Operator al Pieței de Energie Electrică Desemnat) și Transelectrica (OTS). Toate referirile orare sunt raportate la **ora CET**, un detaliu critic de conformitate operațională, întrucât creează un decalaj sistematic față de ora României pentru operațiunile din jurul miezului nopții.

## Arhitectura Cuplării Pieței (SDAC) — Cele Trei Etape
1. **Pre-cuplare:** transmiterea ofertelor agregate (inclusiv bloc, anonimizate) către coordonatorul procesului de cuplare;
2. **Cuplare:** rularea algoritmului EUPHEMIA de către Coordonator (bursă membru deplin PCR, desemnat pe bază rotațională), corelarea ofertelor, stabilirea cantităților pe portofoliul fiecărui participant, validarea fluxurilor prin CORE CCCt via CIP;
3. **Post-cuplare:** transmiterea Notificărilor de Program către OTS, decontarea tranzacțiilor locale și bilaterale între OTS-uri, distribuirea venitului din congestii.

## Regimul Orelor CET vs. Ora României — Complicație Operațională Semnificativă
Documentul explică un detaliu tehnic esențial: ora 24:00 CET a unei zile de livrare D corespunde orei 01:00 ora României pentru ziua D+1. Aceasta impune OPEED-ului **retransmiterea Notificărilor de Program actualizate** pentru primele patru intervale de 15 minute din ziua următoare, ori de câte ori au loc modificări în asumarea responsabilității echilibrării (schimbări de PRE) valabile din prima oră a zilei românești D+1 — un mecanism tehnic obligatoriu de reconciliere care afectează direct decontarea Părților Responsabile cu Echilibrarea (PRE).

## Procedura de Ultimă Instanță — Funcționarea în Regim Decuplat (Secțiunea 6.9) — Zonă Critică de Risc
Când cuplarea pieței eșuează, se disting mai multe scenarii cu termene stricte, diferențiate:
| Tip decuplare | Termen limită declarare | Consecință pentru GCT |
|---|---|---|
| Totală (cunoscută în avans/timpurie) | 10:30 CET | GCT rămâne 12:00 CET, tranzacționare locală/regională |
| Totală (declarată în timpul sesiunii curente) | 14:20 CET | — |
| Parțială (diverse cauze: CZC insuficientă sau alte motive) | variabil, secțiuni 6.9(C)-(E) | licitații separate pe zonă |

În regim decuplat, tranzacționarea capacității de interconexiune se realizează prin **licitații umbră (Shadow Allocation) organizate de JAO** (Joint Allocation Office), cu cerințe proprii de acces: convenție de participare cu JAO (art. 6, 13 SAR), acces la platforma de licitație (art. 14 SAR) și, dacă e cazul, respectarea regulilor specifice de graniță RO-HU/RO-BG plus acorduri cu Transelectrica.

## Ofertarea pe PZU (Secțiunea 6.3)
Elementele-cheie ale regimului de ofertare:
- O ofertă reprezintă un **angajament ferm** de a intra într-un contract de vânzare/cumpărare (preț pozitiv) sau de preluare a energiei (preț negativ) — confirmarea explicită a posibilității prețurilor negative pe PZU;
- Ofertele se depun **agregat pe portofoliul fiecărui participant**, nu individual pe unitate;
- Ofertele se pot defini la **trei rezoluții de timp: 15, 30 și 60 de minute** — element de noutate al Rev. 7, oferind participanților flexibilitate sporită de granularitate în strategia de ofertare.

## Glosar Tehnic Esențial (Cap. 3-4)
Documentul definește riguros peste 40 de termeni/acronime tehnice, dintre care cele mai relevante pentru interpretare juridico-operațională:
- **Confirmare preliminară vs. finală** — distincție critică: confirmarea preliminară privește validarea alocării pe portofolii, iar confirmarea finală privește validarea fluxurilor față de capacitățile de transport transfrontalier/parametrii Flow-Based, cu responsabilitate de validare exclusiv la OTS;
- **Congestie** — definită expres ca lipsă de capacitate suficientă a interconexiunilor/sistemelor de transport pentru fluxurile fizice rezultate din schimburile solicitate;
- **Coordonator** — rol rotațional între OPEED-uri membre depline PCR, cu responsabilitatea zilnică de a corela ofertele.

## Relevanță pentru Practică
- Orice participant la PZU care operează transfrontalier trebuie să monitorizeze simultan două cadre normative: procedura OPCOM (locală) și regulile PCR/JAO (europene), acestea intersectându-se direct în cazul decuplării.
- Termenele stricte pentru declararea diverselor tipuri de decuplare (10:30, 12:00, 14:20 CET) sunt esențiale pentru orice strategie de gestionare a riscului operațional, întrucât determină dacă tranzacționarea rămâne cuplată la nivel SDAC sau trece la soluții locale/regionale cu prețuri potențial divergente.
- Trecerea la rezoluția de 15 minute (Rev. 7) impune actualizarea sistemelor interne de ofertare ale participanților pentru a gestiona corect cele trei granularități disponibile simultan (15/30/60 minute) și mecanismul de retransmitere a Notificărilor de Program la schimbarea PRE.

## Concepts extracted

| Concept | Anchor in PO-PZU Rev7 | Companion |
|---|---|---|
| [[Concept — Participant PEE OPCOM]] | Cap. 1–2 — PZU participants; aggregated portfolio bidding | [[OPCOM — Procedura inregistrare PEE rev 17 (notă)]] · [[OPCOM — Procedura garantii PZU-PI 2025 (notă)]] |
| [[Concept — PRE si responsabilitate de echilibrare]] | CET vs RO time — Program Notification retransmit on PRE change | [[OPCOM — Procedura NF PZU-PRE 2015 (notă)]] |
| [[Concept — Decontare dezechilibre 15 minute]] | Offer resolution aligned with 15-min imbalance settlement | [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)]] |
