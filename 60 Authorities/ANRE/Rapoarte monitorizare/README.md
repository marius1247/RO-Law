---
title: "ANRE — Rapoarte monitorizare (index)"
type: reference
domeniu: [energetică]
created: 2026-08-08
updated: 2026-08-08
---

# ANRE — Rapoarte monitorizare piață EE

Extracted from **eight** monthly ANRE electricity-market monitoring reports (Feb 2023 – Aug 2025).

| File | Role |
|---|---|
| [[ANRE — Monitorizare piata EE Feb23-Apr25 — idei (nota)]] | Deep ideas / analysis (notă), incl. Dec23–Aug25 addendum |
| `anre_monitorizare_data.sql` | Accurate structured data (SQLite-compatible) |
| PDFs | `99 Attachments/source-anre/monitorizare-ee/` (immutable) |

## Reports covered

| ID | Month | PDF |
|---|---|---|
| feb23 | February 2023 | Monit-feb23.pdf |
| apr23 | April 2023 | Monit-apr23.pdf |
| aug23 | August 2023 | Monit-aug23.pdf |
| dec23 | December 2023 | Monit-dec23.pdf |
| apr24 | April 2024 | Monit-apr24.pdf |
| aug24 | August 2024 | Monit-aug24.pdf |
| apr25 | April 2025 | Monit-apr25.pdf |
| aug25 | August 2025 | Monit-aug25.pdf |

## SQL load

```bash
sqlite3 anre_monitorizare.db < anre_monitorizare_data.sql
```

See `data_quality_notes` for printed anomalies and methodology breaks (MACEE end/blend, PE angajată vs delivered, OPCOM/BRM venue split, Jul 2025 retail invoice-price definition).

## Related

[[ANRE]] · [[MOC — Energetică]] · [[Energetică — synthesis]]
