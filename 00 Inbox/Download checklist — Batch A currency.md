---
title: "Download checklist — Batch A currency"
type: checklist
tags: [inbox, download]
created: 2026-07-26
updated: 2026-07-26
---

# Download checklist — Batch A currency

Drop files into `99 Attachments/source-portal/` then run `python3 scripts/ingest_ro_portal.py --convert KEY`. Ledger: [[Currency ledger]].

## Still needed (high priority)

- [ ] **Codul fiscal (L227/2015)** — latest forma consolidată PDF / Forma printabilă from [legislatie.just.ro](https://legislatie.just.ro) (latest consolidare **01.07.2026**, portal `311621` / Afis `311622`). Working text today is SOAP full (`171282`) but older. Partial newer dump: `311622_cod-fiscal-227-2015_consolidat-2026-07-01-TRUNCATED-1MB.md` (~1 MB WebFetch cap).
- [ ] **Codul de procedură fiscală (L207/2015)** — latest forma consolidată (portal history through **08.05.2026**, dump `309359_*_TRUNCATED-1MB.md`). Same SOAP lag (`170007`).

### Agent attempt log (2026-07-26)
- SOAP API (`http://legislatie.just.ro/apiws/FreeWebService.svc/SOAP`) works — returns **base** texts only (same as existing 171282 / 170007). Helper: `scripts/download_ro_portal.py`.
- Portal **HTTPS HTML** unreachable from this environment (empty reply / Chrome “site can’t be reached”); WebFetch reaches Afis pages but **truncates at ~1 MB** — insufficient for full Cod fiscal / CPF consolidări.
- **Action for operator:** browser → Forma consolidată → Forma printabilă / PDF → drop named file → re-ingest.

## Nice to have (spot-check)

- [x] L123/2012 — consolidare `307058` (~2026-02, OUG 9/2026 notes) — treated **current**
- [x] L31/1990 — forma printabilă in vault — **current** for governance cites
- [ ] L220/2008 — re-check after next green-certificate / aid-scheme OUG
- [ ] L24/2000 — SOAP republicată (`118116`); prefer newer consolidare when citing drafting rules

## Naming
`<portal_id>_<short-stem>_consolidat-YYYY-MM-DD.pdf` (or `.md` / `.docx`)
