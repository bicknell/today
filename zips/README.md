# Preserved ZIP Distributions

Original shareware-era ZIP archives of `TODAY` and its BBS-door
derivatives, recovered from surviving file archives during the research
documented in [`../README.md`](../README.md) and [`../TODO.md`](../TODO.md).
Each entry below records exactly where it came from, so the provenance
travels with the file.

## `TODAY10.ARC`

- **What it is:** Patrick Kincaid's `TODAY/PC` **v1.0**, the earliest
  surviving release recovered so far. Contains `TODAY.EXE`, all 12 month
  files, `TODAY.DOC`, and `TODAY.OWN` — no `TODAY.WIT`, `TODAYCFG.EXE`,
  `WHEN.EXE`, or any of the later utility bundle, and no `ALTFN`, `PAINT`,
  `DIR`, or date-range-reminder options in the doc — all of those are
  confirmed v2.0/v2.1 additions (see `TODAY21.ZIP` below). Distributed as
  a plain `.ARC` file, **not** `.ZIP` — PKZIP's format didn't exist until
  1989, so every Kincaid release through at least 1988 necessarily
  circulated as `.ARC` (per `SEA ARC` v5.0+, explicitly named as a
  requirement in the doc itself: "TODAY is distributed as an archive
  file(TODAY.ARC) and you must have ARC V5.0 or later to extract the
  required files").
- **Source:** found via [discmaster.textfiles.com](https://discmaster.textfiles.com/);
  this copy is from
  [Shareware Grab Bag](https://discmaster.textfiles.com/view/16616/Shareware%20Grab%20Bag.iso/011/today.arc)
  (`011/today.arc`), a CD-ROM compilation. The individual file timestamps
  inside the archive (recovered directly, since `.ARC` is uncompressed-
  header and readable without extraction) show `TODAY.DOC` dated
  Aug 26 1986, the month files dated Aug 2–11 1986, `TODAY.OWN` dated
  Aug 3 1986, and `TODAY.EXE` re-timestamped Apr 3 1987 — the same
  "documentation lags the executable" pattern seen throughout the later
  v3.x releases (Section I), just one release earlier than previously
  documented.
- **Downloaded:** July 2026.
- **SHA-256:** `cc43d9d5853dc28ab25c1304970044e77d0c066ef8cfe9c1bab3d99f5052fa45`
- **Significance:** `TODAY.EXE` here is uncompressed, so its embedded
  strings are directly readable: `TODAY/PC  V1.0 (c) 1986 by Patrick
  Kincaid` plus Kincaid's own name again — a version banner one full
  major version earlier than the previously-earliest-known `TODAY  Version
  3.1` string. `TODAY.OWN`'s self-referential entry, `B08021986 TODAY/PC
  born today`, pins the program's actual release date to **August 2,
  1986** (the `TODAY.DOC` "History" section only says "July of 1986").
  **This repository's own [`today.1`–`today.12`](../today/) data files
  are byte-for-byte identical, month for month, to this v1.0 release** —
  not merely similar, as previously thought of the v3.1 comparison (see
  Section I) — confirming this repo's own copy is a direct, unmodified
  transcription of Kincaid's *original 1986 dataset*, predating every
  other version recovered in this research.

## `TODAY21.ZIP`

- **What it is:** Patrick Kincaid's `TODAY` **v2.1** (April 1988).
  Contains `TODAY21.EXE`, all 12 month files, `TODAY21.DOC`, `TODAY.OWN`,
  `TODAYBUG.BAT` — still no `TODAY.WIT`/`TODAYCFG.EXE`/`WHEN.EXE`, which
  are confirmed v3.x additions. Also distributed originally as an `.ARC`
  file (`TODAY21.ARC`, per its own doc) — this particular copy was
  re-packaged into `.ZIP` by whoever curated the CD-ROM it was found on,
  which is also why 4 of its 16 members (`TODAY.APR`, `TODAY.MAR`,
  `TODAY.OCT`, `TODAY21.EXE`) use PKZIP's old "Reducing" compression
  method (methods 1–4) — a scheme so obscure that neither Info-ZIP's
  `unzip`, `p7zip`, `unar`, nor even the current official 7-Zip 26.02
  (`7zz`) can decompress it. It's fully decodable, though: **Hans
  Wennborg's [`hwzip`](https://www.hanshq.net/zip2.html)**, a public-domain
  reference implementation written specifically to document Shrink,
  Reduce, and Implode, extracts all 16 members cleanly, and all four
  were recovered this way.
- **Source:** found via discmaster.textfiles.com; this copy is from
  [The California Collection](https://discmaster.textfiles.com/view/6948/TheCaliforniaCollection.cdr/his018/today21.zip)
  CD-ROM (`his018/today21.zip`).
- **Downloaded:** July 2026.
- **SHA-256:** `ba5eadcbc84a4df4157123ea16295c867e405f0a779b0d443c9ad80a809a0ebe`
- **Significance:** `TODAY21.DOC` contains the earliest known copy of
  Kincaid's own version history, predating the "TODAY's History" section
  found in v3.1/v3.3/v3.4 (Section I) by two years, and it's more
  detailed: "TODAY/PC was originally written in Datalight C for IBM PC
  compatible systems by Patrick Kincaid in July of 1986. It was inspired
  by a program originally written by **Mike Butler** in PL/1 on an IBM
  VM/CMS system," plus a dedicated changelog: v2.0 (March 1988) added
  `SET TODAY=`/`DIR` path options, arbitrary-size data files, the `ALTFN`
  option for special databases like `MUSIC`/`SPACE` (confirming this
  feature dates to v2.0, two years earlier than previously documented —
  see [`../TODO.md`](../TODO.md) item 13), extended date-range reminders,
  and disabling the screen pause; v2.1 (this release) added ANSI color
  output and a bug fix for reading large files. `TODAY.OWN`'s
  self-referential entries confirm exact dates: `B08021986 TODAY/PC born
  today` and `B03181988 TODAY/PC was born again` (the v2.0 rewrite,
  narrowing "March 1988" to March 18 specifically). No mention of the
  moon/lunar phase anywhere, consistent with every other recovered
  version. Once decoded via `hwzip`, `TODAY21.EXE`'s embedded strings
  confirm the version banner directly from the binary: `TODAY/PC V2.1
  (c) 1986, 1988 by Patrick Kincaid`, plus Kincaid's mailing address —
  the same pattern seen in `TODAY10.ARC`'s and `TODAY31.ZIP`'s
  executables. A full 12-month comparison against this repo's own data
  (now possible with all members recovered) confirms the same 99.6%
  match reported from the partial 9-month comparison (2,274 of 2,284
  lines match verbatim).

## `TODAY-CPM.ARC`

- **What it is:** an independent **CP/M port** of `TODAY`, written in
  Turbo Pascal by **Mick Howland (amateur radio callsign VK6ZMH, "c/o
  Perth Omen"** — a BBS in Perth, Western Australia). A fifth independent
  implementer of Kincaid's data format, alongside Kincaid himself, Hugo
  Fiennes, Michael Conley, and whoever wrote the CP/M port's own `TODAY`
  BASIC-derived cousins found in other, unrelated archives (see false
  positives below). Contains `TODAY.COM`, `TODAY.PAS` (source), all 12
  month files (copied wholesale from Kincaid's own databases — same
  Birthday/Special/Reminder format, same San-Francisco-flavored content),
  `TODAY.OWN`, and `README.DOC`. Its own doc explains: "This is the CP/M
  version of the TODAY program that is floating around on the I.B.M.
  PC's... As far as i can see, it emulates the I.B.M version correctly."
  The reminder-format description matches the v2.0/v2.1 "NEW REMINDER
  FORMAT" (date-range reminders), so this port was based on v2.0 or v2.1,
  not v1.0.
- **Source:** found via discmaster.textfiles.com; this copy is from
  [ftp.barnyard.co.uk](https://discmaster.textfiles.com/view/19793/2015.02.ftp.barnyard.co.uk.tar/ftp.barnyard.co.uk/cpm/walnut-creek-CDROM/BEEHIVE/UTILITYS/TODAY.ARC)'s
  mirror of the Walnut Creek CP/M CD-ROM (`BEEHIVE/UTILITYS/TODAY.ARC`).
- **Downloaded:** July 2026.
- **SHA-256:** `59805803a4487caaad54fa3397348d2aee5c7f3c5f3d902f78bde4cdf379fa75`
- **Significance:** `TODAY.PAS`'s own header comment reads `TODAY. Version
  1.0. by Mick Howland 05/25/89`, and `TODAY.OWN`'s self-referential entry
  — `B05221989 TODAY - The CP/M version was born` — pins the CP/M port's
  release to **May 22, 1989**. A source-code comment ("Enable external
  I/O port on my TRS-80 Model 4P") shows Howland ran it on a Tandy TRS-80
  Model 4P, a real CP/M-capable machine. Not yet contacted — see
  [`../TODO.md`](../TODO.md).

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

## `TODAYQ1.ZIP`

- **What it is:** "Events for TODAY program" (per pcorner.com's listing),
  a far more expanded, separately-distributed edition of the January–
  March data files — `TODAY.JAN` (1,040 lines/57,349 bytes), `TODAY.FEB`
  (707 lines/38,911 bytes), and `TODAY.MAR` (1,139 lines/59,980 bytes),
  each roughly 5–7x the line count of this repo's own `today.1`–`.3`.
  Same record format (`B`/`S`, `*mmddyyyy` header comments) and a real,
  if small, direct overlap with this repo's own data (e.g. `B01041838
  Charles Stratton...`, `B01101738 Ethan Allen...` appear verbatim in
  both) — confirming common lineage, not just a coincidentally similar
  format, even though the overwhelming majority of entries are additions
  from some other/later curation process. Neither Kincaid's June 28 nor
  Hugo Fiennes's March 31 self-referential entries (Section I/III of the
  main README) appear anywhere in this pack, suggesting it branched off
  before those specific edits were added, or grew along an independent
  path. Also contains `GOOD.COM`, a `TheDraw`-generated BBS modem-connect
  splash screen (300 baud through USR HST/V32 Dual Standard) — unrelated
  to the `TODAY` data, just bundled into the same archive.
- **Source:** found via [discmaster.textfiles.com](https://discmaster.textfiles.com/);
  this copy is from the ["Wildcat Gold - The Optical BBS (The Golden ROM
  Series)(Volume 4 Number 1)(The Digital Publishing Company)(1992)"](https://discmaster.textfiles.com/browse/18105/Wildcat%20Gold%20-%20The%20Optical%20BBS%20%28The%20Golden%20ROM%20Series%29%28Volume%204%20Number%201%29%28The%20Digital%20Publishing%20Company%29%281992%29.ISO/misc/todayq1.zip)
  CD-ROM (`misc/todayq1.zip`); internal file timestamps show Jan/Mar
  files dated Sept 23 1990 and Feb dated June 25 1988. `TODAYQ2.ZIP`–
  `Q4.ZIP` were not found on discmaster.textfiles.com (zero hits for
  each) despite being listed on pcorner.com — the Wayback Machine only
  captured pcorner's `/INFO/` description pages for all four, never the
  actual downloads, so Q2–Q4's contents remain unrecovered. See
  [`../TODO.md`](../TODO.md) item 11.
- **Downloaded:** July 2026.
- **SHA-256:** `b6023ad7efe923a3926f2c31cc90e251a325e7bf68cf4304a836f5cfbed4c3ea`

## `TODAYWIT.ZIP`

- **What it is:** A standalone edition of the `TODAY.WIT` witticisms
  file (33,531 bytes, 653 lines — much larger than the version bundled
  in the numbered `TODAYnn.ZIP` releases), paired with `XTRAQUOT.TXT`
  (4,967 bytes, 103 lines), a supplementary quotes file in the same `F`
  record format. Same expanded/separately-maintained pattern as
  `TODAYQ1.ZIP`.
- **Source:** found via discmaster.textfiles.com; this copy is from the
  ["Shareware Explorer Series - MS-DOS Collection (New Frontiers)
  (Volume 1)"](https://discmaster.textfiles.com/browse/16610/Shareware%20Explorer%20Series%20-%20MS-DOS%20Collection%20%28New%20Frontiers%29%20%28Volume%201%29.ISO/a050/todaywit.zip)
  CD-ROM (`a050/todaywit.zip`); internal file timestamps show both files
  dated Nov 17 1990. Two further copies were found on discmaster (a
  "Media Share 2" CD-ROM and a "Games 1993 (Chicago Computer Broker)"
  CD-ROM) but not individually downloaded.
- **Downloaded:** July 2026.
- **SHA-256:** `e07a712694a7e621272528998d36b0842d22816870e4bbc926e0e2ec584a10c1`

## Wider circulation evidence, via discmaster.textfiles.com

[discmaster.textfiles.com](https://discmaster.textfiles.com/) indexes
filenames (and, optionally, file contents) across a huge number of
dumped shareware CD-ROMs, BBS archives, and old FTP mirrors — far beyond
what general web search turns up. A filename-only search for each of
these turned up many more independent copies than previously known.
Most of these were not individually downloaded (their existence and
consistent sizes/dates are corroboration enough on their own) — the
exceptions, one copy each of `TODAYQ1.ZIP` and `TODAYWIT.ZIP`, are noted
below and preserved in full above:

- `TODAY36.ZIP` — 9 copies, e.g. on Walnut Creek CD-ROM (Mar 1996),
  Chestnut CD-ROM's "Shareware Overload Trio," Night Owl PDSI, and the
  "Software Vault (The Emerald Collection)" and `dos_gold` collections
  (the latter two byte-size-identical to the archive.org copy above).
- `TODAY31.ZIP` — 1 further copy, on the "Wildcat Gold" CD-ROM.
- `TODAYDOR.ZIP` — 29 copies; `TODAYBBS.ZIP` — 26 copies. None of these
  individually downloaded (their existence and consistent sizes/dates
  are corroboration enough on their own).
- `TODAYWIT.ZIP` — 3 copies, and `TODAYQ1.ZIP` — 1 copy (`TODAYQ2`–`Q4`
  — zero hits for any of the three) — one copy of each of the first two
  **was** downloaded and preserved above.

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
- **`TODAY11.ZIP`**, found via discmaster.textfiles.com (`Piper's Pit
  BBS/FTP: ibm 0240–0249`) — an unrelated BBS caller-log utility,
  "Today's Callers v1.1 for PC-Express," by "CRiSiS/SPR" of the
  "SUPREME '94"/PcExpress-Utilities-Division warez/BBS scene, written in
  Borland Pascal, dated 1994. Shares nothing but the coincidental name
  and version-looking number.
- **`TODAY10.ZIP`** — two more copies turned up beyond the one already
  known (pcorner.com's Martin Minow C source, Section I): a Windows 3.x
  WinSock utility (`ftp4.gwdg.de`/WinSite CD-ROM) and an unrelated entry
  in "The Elite Hackers Toolkit" (1998) crack-file collection. Neither
  has anything to do with Kincaid's program.
- **`TODAY20.ZIP`, `TODAY20.ARC`, `TODAY2.ARC`, `TODAY21.ARC`,
  `TODAY.ARK`** — searched for on discmaster.textfiles.com; no hits at
  all under any of these names. If Kincaid ever released a standalone,
  independently-archived "v2.0" (as opposed to the doc-only mention of it
  inside `TODAY21.ZIP`/`TODAY21.ARC`), no copy has surfaced.
- **The bare `TODAY.ZIP`/`today.zip` filename** is extremely common by
  coincidence — a discmaster.textfiles.com search returned over 40 hits.
  A representative sample was checked and all are unrelated: an 8-line
  Z80/8086 assembly toy (`TODAY.ASM`/`TODAY.COM`, RBBS-In-A-Box, Nov
  1986), a QuickBASIC date utility (`TODAY.BAS`/`TODAYY.BAS`, PC-SIG
  Library), and several others by file size/type alone (Palm OS
  productivity apps, an Acorn/RISC OS archive, an OS/2 utility, HTML/web
  font packs, ham-radio software). None contain Kincaid's month-file
  format or credit him. Given the sheer number of unrelated hits under
  this exact bare name, it was not exhaustively checked past this sample.
- **CP/M `TODAY.ARC`** on `ftp.barnyard.co.uk`/the Walnut Creek CP/M
  CD-ROM (92,389 bytes) is *not* a false positive — see `TODAY-CPM.ARC`
  above, preserved here — but a second, much smaller `TODAY.ARC`
  (25,329 bytes, `ftp.update.uu.se`, filed under PDP-11 RSX/RT-11
  language archives) is unrelated: a different platform entirely, no
  connection to Kincaid's PC software.

## Not yet obtained

- Bruce Goldman's `DAY9nn-*.ZIP` series and `NEWDAY/PC` (see
  `TODAYBBS.DOC` above and [`../TODO.md`](../TODO.md)). A real,
  independently-archived v2.0 or v3.2 release, if either exists.
- `TODAYQ1.ZIP`–`TODAYQ4.ZIP` and `TODAYWIT.ZIP` (pcorner.com — see
  Section I of the main README).

## A note on the lunar-phase feature

None of the seven recovered manuals (`TODAY.DOC` for v1.0, v2.1, and
v3.0/3.1/3.3/3.4, `TODAY35.DOC`, `TODAY36.DOC`) mention the moon, lunar
phase, or anything similar anywhere, and none of the uncompressed
`TODAY.EXE` binaries checked (v1.0, v2.1's non-"Reducing" members, v3.1)
contain the strings "moon," "lunar," or "phase" (the v3.4/v3.5/v3.6
executables are LZEXE-compressed so their strings aren't visible without
decompressing them first, but their docs are equally silent). Since a
2001 Usenet poster specifically wanted the *original 1986* release for
its lunar-phase reporting, and even the actual v1.0 executable and doc —
the closest recovered copy to that original release — already show no
trace of it, the feature either never existed as described or was
removed very early, before the earliest surviving `.ARC`. See
[`../TODO.md`](../TODO.md).
