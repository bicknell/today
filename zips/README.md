# Preserved ZIP Distributions

Original shareware-era ZIP archives of `TODAY` and its BBS-door
derivatives, recovered from surviving file archives during the research
documented in [`../README.md`](../README.md) and [`../TODO.md`](../TODO.md).
Each entry below records exactly where it came from, so the provenance
travels with the file.

## `TODAY34.ZIP`

- **What it is:** Patrick Kincaid's own `TODAY` v3.4 (a "maintenance
  release" of v3.3 — see `README.1ST` inside), the base program itself.
  Contains `TODAY.EXE`, `TODAY.JAN`–`.DEC`, `TODAY.DOC` (the full
  15-page manual, dated May 1991), `TODAY.OWN`, `TODAY.WIT`,
  `TODAYCFG.EXE`, `WHEN.EXE`/`WHEN.DOC`, `TODAY.BAT`, `PUSHD.EXE`,
  `POPD.EXE`, `PUSHDIR.DOC`, `README.1ST`, `FILE_ID.DIZ`.
- **Source:** <https://bbs.retropc.se/smmwldct/TODAY34.ZIP>, found via the
  site's file listing at
  <https://bbs.retropc.se/smmwldct/00index.html>, which dates the archive
  itself to Jun 27 1992 (server-side upload timestamp).
- **Downloaded:** July 2026.
- **SHA-256:** `85f867bb44327d3adb81ea24fd14cb1a86bb5a4243a5f82aa4b21ec1307ff123`
- **Significance:** this is the fullest primary-source document recovered
  in this research so far — see README.md Section I for the direct
  Kincaid-authored history paragraph, the "Michael Butler" full-name
  attribution, the Golden Gate Computer Society BBS distribution
  details, and the shareware registration terms it contains.
- **Independently confirmed:** a byte-for-byte identical copy (matching
  SHA-256) was separately obtained by Leo Bicknell from
  `http://annex.retroarchive.org/cdrom/smsw-modmad-1/WILDCAT/TODAY34.ZIP`
  (July 2026) — a different CD-ROM shareware collection than
  bbs.retropc.se, corroborating this exact release circulated widely
  unchanged.

## `TODAY31.ZIP`

- **What it is:** Patrick Kincaid's `TODAY` v3.1 (09/01/1990) — the exact
  version quoted in the Usenet posts in README.md Section I. Contains
  `TODAY.EXE` (uncompressed, unlike the later v3.4/v3.6 executables — see
  below), all 12 month files, `TODAY.DOC` (whose title page, confusingly,
  reads "Version 3.0" — documentation lagged version numbers by one
  release, a pattern also seen in `TODAY34.ZIP`'s doc), `TODAY.OWN`,
  `TODAY.WIT`, `TODAYCFG.EXE`, `README.1ST`, `TODAY.BAT`, `PUSHD.EXE`,
  `POPD.EXE`, `PUSHDIR.DOC`, `FILE_ID.DIZ`.
- **Source:** <https://archive.org/details/msdos_festival_TODAY31>
  (`TODAY31.ZIP`, part of the "MS-DOS Festival" collection).
- **Downloaded:** July 2026.
- **SHA-256:** `9d2af5511a78371c33ed53ca7c6378fd3209d118c62c4e6b79293b760386077d`
- **MD5** (matches archive.org's recorded value): `eeaa3c71becf2a453b67d19b2ff5e30a`
- **Significance:** `TODAY.EXE` here is *not* LZEXE-compressed, so its
  embedded strings are directly readable — confirming, byte-for-byte, the
  `TODAY  Version 3.1  09/01/90` / `Copyright 1986,88,90  By Patrick
  Kincaid` banner quoted in the Usenet posts, plus Kincaid's mailing
  address embedded directly in the binary. See README.md Section I. Its
  `TODAY.DOC` also contains the same "TODAY's History" section (with the
  Michael Butler attribution) found in `TODAY34.ZIP`, confirming that
  text was stable across the 3.0/3.1 → 3.3/3.4 releases before being
  dropped by v3.6.

## `TODAY36.ZIP`

- **What it is:** Patrick Kincaid's `TODAY` v3.6 (11/14/1993), the last
  documented DOS release. Contains `TODAY.EXE` (LZEXE-compressed),
  `WHEN.EXE`, `TODAYCFG.EXE`, all 12 month files, `TODAY36.DOC`,
  `WHATS.NEW`, `TODAY.OWN`, `TODAY.WIT`, `README.1ST`, `TODAY.BAT`,
  `PUSHD.EXE`, `POPD.EXE`, `PUSHDIR.DOC`, `FILE_ID.DIZ`.
- **Source:** <https://archive.org/details/TODAY36_ZIP> (DEMU Collection /
  vintagesoftware, uploaded 2018-11-03 by `swizzle@demu.org`; item
  metadata dates the software itself to 1994).
- **Downloaded:** July 2026.
- **SHA-256:** `ff8343749e0fb523beec6337bd804196e478aab0db1f5a56d9e25b38cbc01aa9`
- **MD5** (matches archive.org's recorded value): `ae547517bf13dd793efadf9a92bbb26e`
- **Significance:** the file listing for this exact archive had already
  been recovered via a Wayback Machine snapshot of pcorner.com (see
  README.md Section I), but this is the actual working copy. `TODAY36.DOC`
  turns out to have *dropped* the "TODAY's History"/Michael Butler
  section present in the v3.1/v3.4 manuals, but adds new detail: Kincaid
  uploaded new versions to the "Golden Gate Computer Society Bulletin
  Board in Corte Madera, California," which ran PCBoard software and
  hosted a dedicated "TODAY Conference," and closes with "I intended it
  to be a project to learn a new compiler, not a shareware product."

## `TODAYDOR.ZIP`

- **What it is:** `TODAYDOR` v3.24, a Wildcat! BBS "door" program by
  **Michael Conley** of The Charlatan's Cabin BBS (Los Angeles, CA),
  released 04/20/1993. Lets BBS callers interactively browse any day's
  entries from Kincaid's `TODAY.xxx` data files (not included in this
  ZIP — it reads them from wherever the sysop points it). An independent
  third implementation of the same feature, alongside Kincaid's own and
  Hugo Fiennes's ARCbbs module.
- **Source:** <https://bbs.retropc.se/smmwldct/TODAYDOR.ZIP>, same file
  listing as above; archive dated Apr 24 1993 (server-side upload
  timestamp).
- **Downloaded:** July 2026.
- **SHA-256:** `d16ef6c8e862a6ca45302fefab5fbce072777415381206ca9b22697c2475a869`
- **Independently confirmed:** byte-for-byte identical copy also obtained
  from `http://annex.retroarchive.org/cdrom/smsw-modmad-1/WILDCAT/TODAYDOR.ZIP`
  (July 2026).

## `TODAYBBS.ZIP`

- **What it is:** `TODAYBBS` release 3.08, also by Michael Conley,
  04/24/1993 — a companion program to `TODAYDOR` that reads the same
  `TODAY.xxx` files and generates a daily bulletin/hello-screen file for
  Wildcat! BBS logins. Its doc file names a third-party data maintainer,
  **Bruce Goldman**, distributing his own expanded `TODAY.nnn`-compatible
  data files (series "907," as `DAY907-1.ZIP`–`DAY907-6.ZIP`) for use
  with `TODAYBBS` and another program called `NEWDAY/PC` — neither yet
  tracked down. See [`../TODO.md`](../TODO.md).
- **Source:** <https://bbs.retropc.se/smmwldct/TODAYBBS.ZIP>, same file
  listing as above; archive dated Jan 8 1992 (server-side upload
  timestamp).
- **Downloaded:** July 2026.
- **SHA-256:** `b9f44fbb218dd8b3ec3b2421da481a340150908731ebc8abf89c946e7060d738`
- **Independently confirmed:** byte-for-byte identical copy also obtained
  from `http://annex.retroarchive.org/cdrom/smsw-modmad-1/WILDCAT/TODAYBBS.ZIP`
  (July 2026).

## Checked but not preserved here (false positives)

- **`WCTODAY.ZIP`** (same retropc.se listing) — "Who Called Today?"
  v3.5, by Boardwalk Software (copyright 1989/91), an unrelated Wildcat!
  BBS caller-log/hello-screen generator. Shares nothing but the name.
- **`TODAY.ZIP`** in the same listing is likewise unrelated — it's an
  alias entry for `WCTODAY.ZIP` in the site's index, not a separate file.

## Not yet obtained

- v3.3 as a standalone executable — known only from a Usenet copyright
  banner so far (README.md Section I); v3.0/3.1, v3.4, and v3.6 are all
  now in hand.
- Bruce Goldman's `DAY907-*.ZIP` series and `NEWDAY/PC`, per
  `TODAYBBS.DOC` above.

## A note on the lunar-phase feature

None of the three recovered `TODAY.DOC`/`TODAY36.DOC` manuals (v3.0/3.1,
v3.4, v3.6) mention the moon, lunar phase, or anything similar anywhere,
and none of the three `TODAY.EXE` binaries contain the strings "moon,"
"lunar," or "phase" (checked directly in `TODAY31.ZIP`'s uncompressed
executable; the v3.4/v3.6 executables are LZEXE-compressed so their
strings aren't visible without decompressing them first, but their docs
are equally silent). Since a 2001 Usenet poster specifically wanted the
*original 1986* release for its lunar-phase reporting, and v3.0 (as
early as 1990, likely the "1988" update) already shows no trace of it in
either the doc or the executable, the feature's removal probably dates to
the 1988 update rather than lingering until the 1990–1993 window the
Usenet framing might suggest. See [`../TODO.md`](../TODO.md).
