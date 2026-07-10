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
  Michael Butler attribution) found in `TODAY34.ZIP` and `TODAY33.ZIP`,
  confirming that text was stable across the 3.0/3.1 → 3.3/3.4 releases
  before being dropped in the v3.5 documentation rewrite (see
  `TODAY35.ZIP` below).

## `TODAY33.ZIP`

- **What it is:** Patrick Kincaid's `TODAY` v3.3, dated May 1991 (`TODAY.EXE`
  timestamped 05-08-1991). Contains `TODAY.EXE`, all 12 month files,
  `TODAY.DOC`, `TODAY.WIT`, `TODAYCFG.EXE`, `WHEN.EXE`/`WHEN.DOC`,
  `README.1ST`, `TODAY.BAT`, `PUSHD.EXE`, `POPD.EXE`, `PUSHDIR.DOC`. No
  `TODAY.OWN` was present in either copy checked — possibly dropped by
  whoever repackaged this particular release for CD-ROM distribution,
  rather than genuinely absent from Kincaid's original v3.3.
- **Source:** found via [discmaster.textfiles.com](https://discmaster.textfiles.com/)
  (a full-text/filename search engine indexing over 1.6 billion files
  across thousands of dumped shareware CD-ROMs, BBS archives, and FTP
  sites); this copy is from `ibm0030-0039/ibm0034.tar/ibm0034` within
  [The California Collection](https://discmaster.textfiles.com/view/6948/TheCaliforniaCollection.cdr/his032/today33.zip)
  CD-ROM (`his032/today33.zip`), chosen because it's free of any
  BBS/warez tag files (other copies found via the same search — from a
  Usenet `wbiz0139` archive and a "Wildcat Gold" CD — had "leeched from
  The HMS Bounty BBS" or "The WaREZ HouZE Super System" ANSI banners
  tacked onto the ZIP comment or as an extra bundled text file; harmless
  provenance noise, not a content difference).
- **Downloaded:** July 2026.
- **SHA-256:** `75342c35bfce9cf2ed436b19428cc3ab7f2581601748c6b1e0a9f9dda1210510`
- **Significance:** its `TODAY.DOC` is **byte-for-byte identical** to
  `TODAY34.ZIP`'s (same SHA-256) — direct confirmation that v3.4 really
  was a pure bugfix release with no documentation or (per matching data
  file line-counts) data changes, exactly as `TODAY34.ZIP`'s `README.1ST`
  claims.

## `TODAY35.ZIP`

- **What it is:** Patrick Kincaid's `TODAY` v3.5, internally dated
  July 26, 1992 (`TODAY.EXE`/`TODAY35.DOC` timestamps). Contains
  `TODAY.EXE`, all 12 month files, `TODAY35.DOC`, `WHATS.NEW`,
  `TODAY.WIT`, `TODAYCFG.EXE`, `WHEN.EXE` (no separate `WHEN.DOC` — see
  below), `README.1ST`, `TODAY.BAT`, `PUSHD.EXE`, `POPD.EXE`,
  `PUSHDIR.DOC`, `FILE_ID.DIZ`. Copyright banner reads "1986,1992."
- **Source:** found via discmaster.textfiles.com; this copy is from the
  [PSL Monthly Shareware CD-ROM (Public Software Library), January 1994](https://discmaster.textfiles.com/view/6179/PSL%20Monthly%20Shareware%20CD-ROM%20(Public%20Software%20Library)%20(January%201994).iso/dos/business/today35.zip)
  — one of 9 copies of this file found across various CD-ROM collections
  (several more PSL Monthly disks, "The World of Computer Software," "The
  Pier Shareware," "The 640 Meg Shareware Studio CD-ROM").
- **Downloaded:** July 2026.
- **SHA-256:** `801fd776b2d1590375f2d7910e6eee99d42ac0a4803157f2682bbd34471cab3e`
- **Significance:** this is a previously undocumented version — not
  referenced in any Usenet post or prior source in this research. Its
  `WHATS.NEW` explains directly why `TODAY36.DOC` (Section I) reads so
  differently from `TODAY31.ZIP`/`TODAY34.ZIP`'s manual: "The
  documentation has been rewritten and is now somewhat shorter and more
  concise. WHEN documentation has been made a part of the main document
  rather than separate." So the "TODAY's History"/Michael Butler section
  wasn't specifically excised for v3.6 — it was dropped as a side effect
  of this general v3.5 documentation rewrite, and v3.6 simply continued
  in the new, shorter style. `TODAY35.DOC` also has no mention of the
  moon/lunar phase, consistent with every other recovered version.

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
  continues the shorter documentation style introduced in v3.5 (see
  `TODAY35.ZIP` above) — the "TODAY's History"/Michael Butler section
  present in the v3.1/v3.3/v3.4 manuals is absent here too — but adds new
  detail: Kincaid
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

## Wider circulation evidence, via discmaster.textfiles.com

[discmaster.textfiles.com](https://discmaster.textfiles.com/) indexes
filenames (and, optionally, file contents) across a huge number of
dumped shareware CD-ROMs, BBS archives, and old FTP mirrors — far beyond
what general web search turns up. A filename-only search for each of
these turned up many more independent copies than previously known,
none of which have been individually downloaded (their existence and
consistent sizes/dates are corroboration enough on their own):

- `TODAY36.ZIP` — 9 copies, e.g. on Walnut Creek CD-ROM (Mar 1996),
  Chestnut CD-ROM's "Shareware Overload Trio," Night Owl PDSI, and the
  "Software Vault (The Emerald Collection)" and `dos_gold` collections
  (the latter two byte-size-identical to the archive.org copy above).
- `TODAY31.ZIP` — 1 further copy, on the "Wildcat Gold" CD-ROM.
- `TODAYDOR.ZIP` — 29 copies; `TODAYBBS.ZIP` — 26 copies; `TODAYWIT.ZIP`
  — 3 copies; `TODAYQ1.ZIP` — 1 copy (`TODAYQ2`–`Q4` — none found this
  way).

## Checked but not preserved here (false positives)

- **`WCTODAY.ZIP`** (same retropc.se listing) — "Who Called Today?"
  v3.5, by Boardwalk Software (copyright 1989/91), an unrelated Wildcat!
  BBS caller-log/hello-screen generator. Shares nothing but the name.
- **`TODAY.ZIP`** in the same listing is likewise unrelated — it's an
  alias entry for `WCTODAY.ZIP` in the site's index, not a separate file.
- **`TODAY32.ZIP`**, found via discmaster.textfiles.com — an unrelated
  HP48 calculator application (tiny, ~5.4 KB, filed under
  `HP48/Applications` on several "Palmtops" CD-ROMs and an HP-calculator
  FTP mirror). Whether Kincaid ever released a numbered "v3.2" at all is
  unknown — no archive under that name has turned up, unlike every other
  version from 3.1 through 3.6.

## Not yet obtained

- Bruce Goldman's `DAY9nn-*.ZIP` series and `NEWDAY/PC` (see
  `TODAYBBS.DOC` above and [`../TODO.md`](../TODO.md)). A real v3.2
  release, if one exists.

## A note on the lunar-phase feature

None of the five recovered manuals (`TODAY.DOC` for v3.0/3.1 and v3.3/3.4,
`TODAY35.DOC`, `TODAY36.DOC`) mention the moon, lunar phase, or anything
similar anywhere, and none of the `TODAY.EXE` binaries contain the
strings "moon," "lunar," or "phase" (checked directly in `TODAY31.ZIP`'s
uncompressed executable; the later executables are LZEXE-compressed so
their strings aren't visible without decompressing them first, but their
docs are equally silent). Since a 2001 Usenet poster specifically wanted
the *original 1986* release for its lunar-phase reporting, and v3.0 (as
early as 1990, likely the "1988" update) already shows no trace of it in
either the doc or the executable, the feature's removal probably dates to
the 1988 update rather than lingering until the 1990–1993 window the
Usenet framing might suggest. See [`../TODO.md`](../TODO.md).
