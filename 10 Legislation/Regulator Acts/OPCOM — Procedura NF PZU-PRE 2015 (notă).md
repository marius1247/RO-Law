---
title: "OPCOM — Procedura NF PZU-PRE 2015 (notă)"
type: act-note
act_type: act-autoritate
issuer: OPCOM
adopted: 2015-02-17
domeniu: [energetică, piețe]
tags: [act-note, analysis, OPCOM, PZU, PRE, Transelectrica]
status: reviewed
updated: 2026-08-06
source_pdf: "[[99 Attachments/source-opcom/OPCOM_PZU_ProceduraNF_2015-02-17.pdf]]"
created: 2026-07-27
---

**Emitent:** OPCOM / Transelectrica · **Hub:** [[MOC — Energetică]] · **Related:** [[OPCOM — Procedura garantii PZU-PI 2025 (notă)]] · **Raw PDF:** `99 Attachments/source-opcom/OPCOM_PZU_ProceduraNF_2015-02-17.pdf`

# Procedură OPCOM/Transelectrica — Transmiterea Notificărilor Fizice pe PRE la Transferul Responsabilității de Echilibrare (17 Feb 2015)

## Metadate Document
- **Emitent:** OPCOM S.A. (Operatorul Pieței de Energie Electrică) în coordonare cu C.N.T.E.E. Transelectrica (Operatorul de Transport și Sistem)
- **Data:** 17 februarie 2015
- **Lungime:** 3 pagini
- **Tip:** Procedură operațională internă (nu este act normativ public)

## Scop
Procedura reglementează activitățile pe care OPCOM (ca Operator al Pieței pentru Ziua Următoare, "OPZU") și Transelectrica (ca Operator al Pieței de Echilibrare, "OPE") trebuie să le desfășoare atunci când un participant la PZU își transferă responsabilitatea de echilibrare de la o Parte Responsabilă cu Echilibrarea (PRE) la alta. Problema tehnică pe care o rezolvă este un decalaj orar sistemic: PZU tranzacționează în ore CET, iar Piața de Echilibrare funcționează în ore EET, ceea ce generează necorelări între notificările fizice ale schimburilor bloc rezultate din PZU și notificările PRE-urilor din Piața de Echilibrare — în special pentru intervalul orar 24 din ziua de livrare (D) în CET, care corespunde intervalului 1 din ziua D+1 în EET.

## Domeniu de Aplicare
Procedura se aplică de fiecare dată când un titular de licență/decizie (furnizor sau trader) participant la PZU își schimbă PRE-ul, pentru intervalul de livrare 24 din ziua de livrare D (CET), imediat înainte de ziua schimbării PRE-ului.

## Fluxul Procedural

### Rolul OPZU (OPCOM)
1. După încheierea tranzacțiilor pe PZU, OPCOM emite și încarcă în platforma Pieței de Echilibrare notificările fizice nete ale schimburilor bloc cu PRE-urile implicate, conform configurației de alocare a responsabilității de echilibrare valabile pentru ziua D (CET).
2. În **2 zile lucrătoare** de la ziua de livrare, OPCOM transmite la Transelectrica (prin e-mail la tsoplan@transelectrica.ro și confirmare telefonică) un tabel (Tabelul 1) cu:
   - notificările fizice nete transmise inițial (conform configurației CET), și
   - notificările fizice nete recalculate, raportate la ora EET, valabile pentru primul interval orar de livrare (EET), pentru PRE-urile afectate de transferul responsabilității.
3. OPCOM verifică și confirmă corectitudinea actualizării — în aceeași zi (dacă răspunsul OPE ajunge înainte de ora 14:30) sau în ziua următoare (dacă ajunge după ora 14:30).

### Rolul OPE (Transelectrica)
1. Actualizează notificările fizice primite de la OPCOM în platforma Pieței de Echilibrare, pentru intervalul 1 (EET) al primei zile de livrare afectate de transfer.
2. Confirmă către OPCOM, în **1 zi lucrătoare** de la primirea datelor, actualizarea prin Tabelul 2 (transmis pe e-mail la pzu@opcom.ro, cu confirmare telefonică).

## Structura Tabelelor de Raportare
- **Tabelul 1** (OPZU → OPE): pentru fiecare PRE afectat — Codul PRE, NF transmisă (netă, vânzare/cumpărare) și NF modificată/PRE EET (netă, vânzare/cumpărare).
- **Tabelul 2** (OPE → OPZU): confirmarea PRE-urilor actualizate — Codul PRE și NF modificată finală (netă, vânzare/cumpărare).
- Cantitățile sunt exprimate în MWh, cu o zecimală.

## Canale de Comunicare Stabilite
| Direcție | Canal | Contact |
|---|---|---|
| OPCOM → Transelectrica | E-mail + telefon | tsoplan@transelectrica.ro / 021 3035823 |
| Transelectrica → OPCOM | E-mail + telefon | pzu@opcom.ro / 021 3071418 |

## Concepts extracted

| Concept | Anchor in Procedura NF | Companion |
|---|---|---|
| [[Concept — PRE si responsabilitate de echilibrare]] | Whole procedure — CET hour 24 ↔ EET hour 1 NF reconciliation on PRE transfer | [[OPCOM — PO-PZU Rev7 2025 (notă)]] |
| [[Concept — Participant PEE OPCOM]] | Applies when a licensed PZU participant changes PRE | [[OPCOM — Procedura inregistrare PEE rev 17 (notă)]] |
| [[Concept — Decontare dezechilibre 15 minute]] | Integrity of physical notifications feeding IBS across PRE change | [[ANRE — Ordin 213-2020 Decontare dezechilibre (notă)]] |

## Semnificație
Această procedură este un mecanism tehnic de reconciliere strict operațional, esențial pentru integritatea decontării pieței românești de electricitate atunci când participanții își schimbă furnizorul de servicii de echilibrare, prevenind dublarea sau omiterea unor cantități de energie în trecerea de la un regim orar (CET) la altul (EET). Este direct legată de arhitectura 4M Market Coupling (menționată explicit ca reper procedural) și, indirect, de armonizarea europeană a pieței descrisă în documentele PCR/EUPHEMIA.
