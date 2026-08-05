---
title: "Concept — CBAM formula calcul certificate"
type: concept
domeniu: [climat, piete-carbon, comert]
tags: [concept, CBAM, formula, compliance]
status: draft
created: 2026-08-05
---

# Concept — CBAM formula calcul certificate

**EN:** CBAM certificate cost calculation · **RO:** calculul costului certificatelor CBAM

Step-by-step formula for importer financial obligation under the Carbon Border Adjustment Mechanism.

Parent: [[Concept — CBAM si phase-out alocari gratuite]] · [[EU ETS — sinteza pietei carbon]]

---

## Master formula

```
Total CBAM Cost (€) = [Q × (SEE − BM × CF_y) × P_CBAM] − Credit_Foreign
```

| Variable | Meaning |
|---|---|
| **Q** | Quantity imported (metric tonnes) |
| **SEE** | Specific embedded emissions (tCO₂e per tonne of goods) |
| **BM** | EU ETS benchmark efficiency (tCO₂e per tonne domestic production) |
| **CF_y** | CBAM Factor for year y (remaining free-allocation %) |
| **P_CBAM** | CBAM certificate price (€/tCO₂e) — weekly average EUA auction price (EEX) |
| **Credit_Foreign** | Verified carbon price paid in country of origin (€) |

---

## Step-by-step

### Step 1 — Gross embedded emissions
```
Gross Emissions = Q × SEE
```
- Prioritise **installation-specific verified data** (Scope 1 + applicable Scope 2).
- Fallback: EU **default values** (with penalising markup) if actuals unavailable.

### Step 2 — Free allocation adjustment
```
Free Allocation Deduction per tonne = BM × CF_y
```
As CF_y → 0, deduction disappears.

### Step 3 — Certificates required
```
Certificates = Q × max(0, SEE − BM × CF_y)
```
If SEE ≤ BM × CF_y → zero certificates owed.

### Step 4 — Gross CBAM cost
```
Gross Cost = Certificates × P_CBAM
```

### Step 5 — Deduct foreign carbon price
```
Credit_Foreign = Q × SEE × P_Foreign_Paid   (if legally mandated, not rebated, verified)
Net Payable = Gross Cost − Credit_Foreign
```

---

## Worked example — hot-rolled steel import (2026)

| Input | Value |
|---|---|
| Q | 1,000 tonnes |
| SEE (verified) | 2.0 tCO₂e/t |
| BM | 1.4 tCO₂e/t |
| CF_2026 | 0.975 |
| P_CBAM | €80.00/t |
| Foreign carbon paid | €0.00 |

**Calculation:**
1. Free allocation adjustment: 1.4 × 0.975 = **1.365 tCO₂e/t**
2. Net billable per tonne: 2.0 − 1.365 = **0.635 tCO₂e/t**
3. Certificates: 1,000 × 0.635 = **635 certificates**
4. **Final cost: 635 × €80 = €50,800**

---

## Related
[[Concept — CBAM si phase-out alocari gratuite]] · [[_EU Carbon Market Analysis Index]]
