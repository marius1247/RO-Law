---
title: "Dataview — currency & corpus"
type: moc
tags: [moc, dataview, currency]
created: 2026-07-26
---

# Dataview — currency & corpus

Requires the **Dataview** community plugin (enabled in `.obsidian/community-plugins.json`). Install from Obsidian → Community plugins → Dataview if queries render as code blocks.

Manual ledger (always authoritative): [[Currency ledger]].

## Act texts with currency warnings

```dataview
TABLE act_type, nr, an, portal_id, versiune_text, consolidare, text_complet
FROM "10 Acte normative"
WHERE type = "act-text" AND currency_warning = true
SORT an DESC
```

## All working act texts

```dataview
TABLE act_type, nr, an, portal_id, versiune_text, articole_numarate, text_complet
FROM "10 Acte normative"
WHERE type = "act-text"
SORT forta_juridica ASC, an DESC
```

## Analysis notes still marked stub

```dataview
TABLE status, domeniu, file.mtime
FROM "10 Acte normative"
WHERE type = "act-note" AND status = "stub"
SORT file.name ASC
```

## Domain syntheses & MOCs

```dataview
LIST
FROM "20 Domenii" OR "50 MOCs"
WHERE type = "domain-note" OR type = "moc"
SORT file.name ASC
```
