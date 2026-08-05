---
title: "Concept — Curtailment si redispatch RES"
type: concept
domeniu: [energetică, regenerabile, piețe]
tags: [concept, energetică, curtailment, redispatch, RES, solar, wind]
status: draft
created: 2026-08-05
updated: 2026-08-05
---

# Concept — Curtailment și redispatch RES

**RO:** limitare / retragere din exploatare · **EN:** curtailment / redispatch

Practitioner note on **when and how Solar PV and wind output may be constrained off the network**, whether compensation is due, and how curtailment interacts with **PRE imbalance** and **support schemes**.

> [!note] Batch B remainder
> Detailed redispatch compensation rules sit in **network codes and market rules** (not yet ingested). Connection/supply regulamente are in vault — [[ANRE — Regulament racordare EE 2013 (notă)]] · [[ANRE — Regulament furnizare EE 2023 (notă)]]. Verify live ANRE/Transelectrica procedures for project-specific advice.

---

## Terminology (Romanian market)

| Term | Meaning |
|---|---|
| **Acces prioritar** | Priority grid access — RES may be dispatched preferentially when security allows (L220 / L123) |
| **Acces garantat** | Guaranteed access for supported producers — contracted volumes must be accepted subject to scheme rules |
| **Management al congestiilor** | Congestion management — TSO/DSO actions when network limits bind |
| **Redispatch** | TSO/DSO instruction to change output/consumption to relieve congestion or maintain security |
| **Curtailment** | Practical outcome: RES plant generates less than available resource — **merchant revenue loss** unless compensated |

L123 definitions: [[Legea 123-2012 — energia electrica si gazele naturale (text)#Articolul 3|art. 3]] — *acces prioritar*, *acces garantat*, *management al congestiilor*.

---

## Legal hierarchy

```
L220/2008 art. 14 — priority / guaranteed dispatch for RES electricity
    ↓
L123/2012 art. 25 — connection & access; security/capacity refusal grounds
    ↓
L123/2012 art. 7¹ — ANRE monitors congestion rules; TSO publishes congestion management
    ↓
Network codes + market rules (ANRE Ordine — Batch B **remainder**)
    ↓
Transelectrica operational instructions / redispatch orders
```

[[Legea 220-2008 — promovare energie regenerabila (notă)|L220 notă]] — art. 14: RES sold at market price with **priority dispatch** and **guaranteed network access** for contracted volumes — bridge to L123 arts. 25 and 27(3).

[[Legea 123-2012 — energia electrica si gazele naturale (notă)|L123 notă]] — art. 25(2²): **market-based capacity allocation** when firm capacity scarce; storage must be considered in solution studies (art. 25(14)).

---

## When curtailment happens (practical drivers)

1. **Network congestion** — export capacity < available generation (common in high-RES counties).
2. **System security** — voltage, frequency, stability limits (Transelectrica instruction).
3. **Negative prices / market signals** — economic self-curtailment (not regulatory curtailment).
4. **Outage / maintenance** — planned unavailability.
5. **Commissioning / testing** — limited export permission.

Romania's rapid **solar and prosumer growth** (2024–2025) increased congestion and balancing-market stress — Transelectrica quarterly reports cite prosumer forecast errors and regional imbalances.

---

## Compensation — the due-diligence question

| Scenario | Typical compensation position |
|---|---|
| **Guaranteed-access RES (L220 art. 14)** | Stronger argument for **must-take** treatment for **accredited / contracted** volumes — but constrained by **security** and **congestion management rules** |
| **Merchant post-2016 plant** | Often **no automatic compensation** for constraint — depends on network code, connection contract, and whether curtailment is *economic* vs. *system* |
| **CfD beneficiaries** | CfD contract + HG 318/2024 terms on availability and negative prices — audit **strike-price adjustment** when constrained |
| **Redispatch as balancing service** | If plant receives **explicit redispatch order** under market rules, compensation may be defined in **balancing / system-services** regulations — texts missing from vault |

**Default investor assumption:** unless the connection contract, PPA, or support scheme expressly allocates curtailment risk to the offtaker/TSO, **curtailment is producer/SPV risk** for merchant RES.

---

## Interaction with PRE / imbalance

If the plant is **curtailed down** but the **day-ahead schedule is not updated**:

- PRE faces **imbalance charges** (long generation vs. actual);
- Compounds curtailment loss with **negative imbalance pricing**.

Operational requirement: **real-time schedule adjustment** with PRE or delegated BRP when TSO/DSO issues constraint — [[Concept — PRE si responsabilitate de echilibrare]].

---

## Interaction with support schemes

| Scheme | Curtailment angle |
|---|---|
| **Green certificates (L220)** | CVs issued on **delivered** RES MWh (minus CPT) — curtailed energy = **no CV**, no energy revenue |
| **CfD (HG 318/2024)** | Check **availability obligations** and whether constraint hours affect difference payments |
| **Corporate PPA** | Often silent on **grid constraint** — negotiate **curtailment clause** (cap %, compensation, change-in-law) |

---

## Congestion management (regulatory overlay)

- **ANRE** monitors congestion-management implementation (L123 art. 7¹ post-OUG 143/2021).
- **Transelectrica** must publish congestion management rules; ANRE may require amendments.
- **Structural congestion** — Minister + TSO decision under Reg. (EU) 2019/943 art. 14(7) (referenced in L123 art. 7).
- EU direction: move from priority curtailment of RES toward **market-based redispatch** and **flexibility markets** — Romania transposing via network codes (pending vault ingestion).

---

## Contractual protections (transaction checklist)

1. **Connection contract / ATR** — export capacity firm vs. best-efforts; reinforcement timeline.
2. **PPA** — definition of **Force Majeure** vs. **grid curtailment**; who bears constraint risk.
3. **DSO/TSO letters** — historical curtailment data for the substation / queue position.
4. **Insurance / business interruption** — rarely covers regulatory curtailment without bespoke cover.
5. **CfD / GC** — scheme-specific availability and metering rules.

---

## Litigation / complaint routes

- **ANRE complaint** against TSO/DSO for access/refusal obligations (L123 art. 7² — 60+60 day procedure).
- **Court** — parallel to ANRE complaint (petitioner not blocked from courts).
- **Merit** depends on whether operator acted within **security** or **congestion** rules — fact-heavy.

See [[_Regulatory Risk & Litigation Matrix]].

---

## Open gaps (vault)

- [ ] Electricity **network code(s)** — redispatch compensation articles
- [ ] **Market rules** Ordine — constraint scheduling
- [ ] Transelectrica **Procedura de redispatch** / balancing manual
- [ ] ANRE guidance on **guaranteed access** vs. **congestion** post-2022 RES build-out

Track in [[Download checklist — Batch B ANRE]].

## Related

[[Concept — Cost stack producator energie]] · [[Concept — PRE si responsabilitate de echilibrare]] · [[Concept — Racordare la rețea]] · [[Concept — Certificat verde]] · [[Legea 220-2008 — promovare energie regenerabila (notă)]] · [[Legea 123-2012 — energia electrica si gazele naturale (notă)]] · [[HG 318-2024 — cadru general CfD (notă)]]

## Notes / conclusions

> Curtailment is the **silent revenue leak** in Romanian RES: priority access language in L220 does not eliminate **security-constraint** curtailment without compensation unless downstream rules or contracts say so. Model **base, downside, and stress** curtailment cases in every solar/wind DD.
