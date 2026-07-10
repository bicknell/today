# The History of `today`: A Research Note

This repository is about `today`, a small utility saved from Usenet
years ago. It reads a per-month data file and prints any birthdays,
historical events, and reminders attached to the current date. This
document is a research log assembled while trying to establish who wrote
it and how it has propagated since.

**Original files:** the unmodified `today.c` source and `today.1`–
`today.12` data files, exactly as originally saved, are in
[`today/`](today/).

**Recovered shareware ZIPs:** original DOS-era `TODAY` distribution
archives, found during this research, are preserved as-downloaded in
[`zips/`](zips/), each documented with its source URL and checksum in
[`zips/README.md`](zips/README.md).

**Building:** the original source doesn't compile clean on modern
compilers without changes — see [BUILDING.md](BUILDING.md) for the
compiler flags that get a clean build without touching the source, and
for a known bug in the original code.

> **Leo Bicknell: personal note** — I found this code in a very old git
> repository. This was one of the few bits of code that I did not write
> that I felt like saving at the time.  Most likely I saved the original
> copy in 1993-1996, but the exact date is lost.  When I found the code
> I realized it had no history of where it came from or who wrote it.
>
> Using Claude.AI to assist in the searching, I set off to see if I could
> find the true sources.  It was a fascinating step back into computer
> history that most have forgotten.  I decided my research needed to be shared
> when I realized several of the key individuals are no longer with us.
> I hope by publishing this now they can get some eternal recognition
> for their contribution.

As with any piece of folk history, the trail is a mix of hard evidence and
inference. This note tries to keep the two apart: **Verified** claims are
backed by a primary or independently-corroborated source, cited inline.
**Speculation** is labeled as such, with the reasoning laid out so a
future researcher can judge it for themselves.

---

## I. Verified Facts

**The program was written by Patrick Kincaid, in Datalight C, in July 1986.**
This is stated directly by a `TODAY.DOC` file recovered from a preserved
Acorn/RISC OS BBS archive — the original author's own documentation for
the program, distributed alongside it:

> TODAY/PC was written in Datalight C for IBM PC compatible systems by
> Patrick Kincaid in July of 1986. It was inspired by a program originally
> written by Mike Butler in PL/1 on an IBM VM/CMS system. He should be
> credited with the original concept and the bulk of the wonderful data
> in the files. You will notice a distinct San Francisco flavor to the
> databases. Who says programs can't have class?

— [`TODAY_DOC`, hfiennes/arcbbs](https://github.com/hfiennes/arcbbs/blob/master/%21ARCserver/Text/Today/TODAY_DOC)

The same document gives Kincaid's contact details for submitting new
trivia entries:

> Patrick Kincaid
> 618 Douglas Drive
> Mill Valley, CA 94941

and names his distribution channel as the "Marin-Sonoma PC User Group BBS
(415) 927-1216" — a Marin County (San Francisco Bay Area) dial-up BBS,
consistent with the document's own admission of a "distinct San Francisco
flavor" in the data.

**The data file format matches this specification exactly.** `TODAY.DOC`
lays out the record layout column-by-column (record type in column 1, a
`MMDD` date, a 4-digit year, a continuation/day-of-week flag, then the
message text). The local `today.c` and `today.N` files parse records in
exactly this layout, down to the `C`-for-continuation convention seen
throughout the data (e.g. `B01101877` / `B01101877C...` in
[`today.1`](today/today.1)).

**The dataset contains a self-referential entry for its own author,
matching a known birthdate.** [`today.6`](today/today.6) (June) contains the line:

```
B06281947 Patrick Kincaid, send him a card.
```

— June 28, 1947. This is very likely the compiler including his own
birthday in his own database, a common in-joke among BBS-era data
curators. The same line (with the year rendered in parentheses) appears
independently in a GNU `gcal` data file derived from this dataset — see
Section III — confirming it isn't an artifact introduced locally.

**The same file also contains a self-referential milestone entry, and it
is now independently confirmed.** [`today.6`](today/today.6) contains the line:

```
S06051981 TODAY ran for 1st time
```

June 5, 1981 — five years before Kincaid's stated 1986 PC port, and
consistent with `TODAY.DOC`'s claim that the program was "inspired by a
program originally written by Mike Butler in PL/1 on an IBM VM/CMS
system." A Facebook post from the UTMBiology page (University of Toronto
Mississauga — known as **Erindale College** in 1981) independently states,
under the heading "#OnThisDay 1981":

> World's first today in history program with editable data "TODAY",
> invented by Michael Butler runs for the first time on a mainframe
> computer

— posted June 5, 2019 by UTMBiology
([live post](https://www.facebook.com/UTMBiology/photos/onthisday-1981-worlds-first-today-in-history-program-with-editable-data-today-in/1635599136572195/);
archived screenshot: [`screenshots/utmbiology-facebook-2019-06-05.png`](screenshots/utmbiology-facebook-2019-06-05.png)).

This independently corroborates three things at once: the June 5, 1981
date, the "editable data" design (matching `TODAY.DOC`'s description of
the customizable per-month files), and — critically — gives Butler's full
first name, **Michael Butler**, and ties him to the University of Toronto
(Mississauga campus, then Erindale College). This program's mainframe
original almost certainly ran there.

**The program went through at least five documented revisions between 1986
and 1993, and lost its lunar-phase feature somewhere along the way.**
Usenet and Fidonet archives turn up three later snapshots of Kincaid's own
DOS executable, each printing its own version/copyright banner as part of
its output:

- A post to [`rec.org.sca`](https://groups.google.com/g/rec.org.sca/c/eE6nocdmK7E/m/eQHy-giIMy0J)
  ("[GENERAL INFO] Medieval News Of The Day," by Jerod Husvar, Aug 10,
  1995) shows a modified copy printing `TODAY Version 3.1 09/01/90
  Copyright 1986,88,90 By Patrick Kincaid` — the copyright years matching
  an update in 1986, 1988, and 1990, literally.
- A [`comp.os.msdos`](https://groups.google.com/g/comp.os.msdos/c/PJ--f6K3fhg/m/1ZlLB3BzPA0J)
  post ("Old TODAY/PC program by Patrick Kincaid, 1986?", Andy Ziem, Sept
  15, 2001) reproduces that same v3.1 (09/01/90) banner and output as an
  example of a version he already had — but Ziem was specifically hunting
  for a copy of the *original 1986* release, because it reported the
  phase of the moon and his own copy, v3.3 (1993), did not.
- A [`fido7.moscow-oklahom`](https://groups.google.com/g/fido7.moscow-oklahom/c/FY9e-WUPehU/m/I3LCCA6e5OkJ)
  post (Gary Baumgartner, Jan 14–22, 2004) shows a further revision:
  `TODAY Version 3.6 11/14/93 Copyright 1986, 1993 By Patrick Kincaid`.

Together these give a version timeline: 1986 (original, with lunar phase)
→ 1988 → 1990 (v3.1, still circulating unchanged among SCA users as late
as 1995) → 1993 (v3.3, lunar phase already gone by the time Ziem got a
copy) → November 14, 1993 (v3.6, still circulating on Fidonet as late as
2004). Notably, this repository's own [`today.c`](today/today.c) has no
lunar-phase code, no version number, and prints no copyright banner at
all — it doesn't obviously match any of these DOS releases, and where it
falls in this lineage (a pre-versioned prototype? a stripped-down
Unix-side rewrite?) is an open question. See [TODO.md](TODO.md).

**Real, complete copies of v3.1, v3.3, v3.4, v3.5, and v3.6 have now all
been recovered, downloaded, and read in full.** `TODAY31.ZIP` and
`TODAY36.ZIP` came from the Internet Archive
([`msdos_festival_TODAY31`](https://archive.org/details/msdos_festival_TODAY31),
[`TODAY36_ZIP`](https://archive.org/details/TODAY36_ZIP)); `TODAY34.ZIP`
from a surviving BBS file archive at
[bbs.retropc.se](https://bbs.retropc.se/smmwldct/TODAY34.ZIP);
`TODAY33.ZIP` and `TODAY35.ZIP` — versions not referenced in any prior
source in this research — were found via
[discmaster.textfiles.com](https://discmaster.textfiles.com/), a search
engine indexing filenames (and contents) across roughly 1.6 billion
files from thousands of dumped shareware CD-ROMs, BBS archives, and old
FTP mirrors, which also turned up dozens more circulating copies of
files already in hand (9 further copies of `TODAY36.ZIP` alone, plus 29
of `TODAYDOR.ZIP` and 26 of `TODAYBBS.ZIP` — see below). All five are
preserved in this repository under [`zips/`](zips/), each with its
source URL and checksum recorded in [`zips/README.md`](zips/README.md)
(the two archive.org copies were verified against the MD5 checksums in
their own item metadata). Between them these are the richest primary
sources recovered in this research. Highlights:

- **A dedicated "TODAY's History" section, in Kincaid's own words —
  present through v3.1/v3.3/v3.4, dropped starting with v3.5:** "This
  program was written by Patrick Kincaid first in 1986, then updated in
  1988 and again in 1990. It was inspired by a program written by
  **Michael Butler** on an IBM VM/CMS system in the PL/1 language.
  Credit for the concept and original data should go to him." This exact
  paragraph appears word-for-word in `TODAY31.ZIP`, `TODAY33.ZIP`, and
  `TODAY34.ZIP`'s `TODAY.DOC` (in fact `TODAY33.ZIP` and `TODAY34.ZIP`
  ship the *identical, byte-for-byte* `TODAY.DOC`, confirming v3.4 really
  was a pure bugfix release), independently corroborating the
  version-history timeline above and — critically — giving Butler's full
  first name **directly from Kincaid himself**, not just from the
  third-party 2019 UTMBiology Facebook post (Section I above). It's gone
  from `TODAY35.ZIP` onward, and `TODAY35.ZIP`'s own `WHATS.NEW` explains
  why — see below.
- **Documentation consistently lags the version number by one release.**
  `TODAY31.ZIP`'s manual titles itself "Version 3.0"; `TODAY33.ZIP`/
  `TODAY34.ZIP`'s titles itself "Version 3.3." Both describe the
  *previous* release, not the one they ship with — a minor but
  consistent shareware-doc habit, not an inconsistency in the research.
- **The "History" section wasn't specifically cut for v3.6 — it was
  a casualty of a general documentation rewrite in v3.5.** `TODAY35.ZIP`'s
  `WHATS.NEW` says so directly: "The documentation has been rewritten and
  is now somewhat shorter and more concise. WHEN documentation has been
  made a part of the main document rather than separate" (accounting for
  why `TODAY35.ZIP`/`TODAY36.ZIP` no longer ship a separate `WHEN.DOC`).
  `TODAY36.DOC` simply continues this shorter style.
- **A different name for the same BBS phone number, now with a specific
  city.** `TODAY34.ZIP`'s registration section calls Kincaid's
  distribution channel the "**Golden Gate Computer Society Bulletin
  Board**, (415) 927-1216" — the identical phone number the
  `arcbbs`-hosted `TODAY_DOC` (Section I) calls the "Marin-Sonoma PC User
  Group BBS." `TODAY36.DOC` (1993) gives a city for it: "I upload the
  latest version of TODAY to the Golden Gate Computer Society Bulletin
  Board **in Corte Madera, California**" (Marin County, next door to
  Kincaid's own Mill Valley address) — and adds that it ran **PCBoard**
  BBS software and hosted a dedicated "**TODAY Conference**" message area
  just for the program. Whether "Golden Gate Computer Society" and
  "Marin-Sonoma PC User Group" are the same board under two names, or two
  groups sharing one system, is still unresolved — see [TODO.md](TODO.md).
- **Registration terms**, matching the address already known: $10 to
  register, $15–20 for diskette/manual copies, checks payable to
  "Patrick Kincaid, 618 Douglas Drive, Mill Valley, CA 94941 USA" — and,
  in `TODAY31.ZIP`'s doc, an earlier, informal model predating the fixed
  prices: "In the past, I said 'don't send money, send dates.'"
- **The program's own stated purpose, in Kincaid's words (`TODAY36.DOC`,
  1993):** "I intended it to be a project to learn a new compiler, not a
  shareware product." `TODAY31.ZIP`'s doc independently confirms the
  compiler in question changed over time: "The program has been converted
  to mostly marvelous Turbo C by Borland International" — a move away
  from the original 1986 Datalight C (Section I) by the time of v3.0.
- **A full specification of the data format**, more detailed than
  anything available before: record types `B` (Birthday), `S` (Special/
  historical), `R` (Reminder), `F` (Fortune Cookie/Thought For The Day —
  confirming the `TODAY.WIT` format seen in the pcorner.com finds below),
  `C` (Countdown, "not implemented"), and `*` (comment), plus a
  day-of-the-week matching flag and a documented "special reminder"
  date-range syntax.
- **`TODAY.OWN`'s actual contents** — a short set of sample reminders
  ("Pay the mortgage!", birthday reminders for fictional family members
  Daryl, Alyssa, etc.) rather than anything biographical about Kincaid
  himself. It's exactly 380 bytes, dated August 5, 1990, in every
  recovered package that includes it (v3.1, v3.4, v3.5, v3.6) — the same
  unchanged file across at least three years of releases. The two v3.3
  copies checked (`TODAY33.ZIP`, and another independent copy from a
  different CD-ROM) are both missing it, most likely a repackaging
  omission specific to whatever distributor/CD-ROM these particular
  copies passed through, rather than something genuinely absent from
  Kincaid's original v3.3, given it's present in the version immediately
  before (v3.1) and the byte-identical v3.4 doc/data that followed it.
- **A pattern of user-contributed specialized databases, not just one.**
  `TODAY31.ZIP`'s doc explains the origin: "I encourage you to create
  specialized databases, (SPACE.mon, SCIENCE.mon etc) to share with the
  rest of us" — of which the `MUSIC` database mentioned in `TODAY34.ZIP`'s
  changelog and readable via a new `ADD` option (`TODAY ADD MUSIC`) was
  evidently one instance. None of these specialized databases have been
  tracked down yet; see [TODO.md](TODO.md).
- **The lunar-phase feature is verifiably absent from all five
  releases — in both the documentation and the executables themselves.**
  None of the five manuals mention the moon, lunar phase, or anything
  similar anywhere. `TODAY31.ZIP`'s `TODAY.EXE` is not compressed, so its
  embedded strings are directly readable — no "moon," "lunar," or "phase"
  string appears anywhere in it either (the later executables are
  LZEXE-compressed, so their strings aren't directly readable without
  decompressing them first, but their docs are equally silent). Since the
  2001 Usenet poster wanted the *original 1986* release specifically for
  its lunar-phase reporting, and it's already gone by v3.0/3.1 (1990) in
  both code and documentation, its removal most likely dates to the 1988
  update rather than lingering into the 1990s.
- **Byte-for-byte confirmation of the Usenet banner.** `TODAY31.ZIP`'s
  uncompressed `TODAY.EXE` contains the literal strings `TODAY  Version
  3.1  09/01/90` and `Copyright 1986,88,90  By Patrick Kincaid` — an
  exact match, straight from the binary, for what the Usenet posts in
  this section quote — plus Kincaid's mailing address embedded directly
  in the executable.
- **This repository's own data is a genuine, earlier ancestor of this
  same dataset — and can now be placed more precisely in the lineage.**
  Comparing this repo's [`today.1`–`today.12`](today/) line-by-line
  (after normalizing line endings and trailing padding, and summing
  across all twelve months — 2,284 lines total) against every recovered
  version gives a clear trend:

  | Compared against | Total lines in that version | Lines shared with this repo | Share of this repo's lines found verbatim |
  |---|---|---|---|
  | `TODAY31.ZIP` (1990) | 1,932 | 1,572 | 68.8% |
  | `TODAY33.ZIP`/`TODAY34.ZIP` (1991–92) | 4,508 | 1,243 | 54.4% |
  | `TODAY35.ZIP` (1992) | 4,525 | 1,212 | 53.1% |

  This repo's own files are *larger* than v3.1's in every single month,
  but *smaller* than v3.3/v3.4/v3.5's in every month (all three of which
  roughly doubled in size from v3.1, matching the "tripled"
  database-expansion claim in v3.3's own changelog) — and the overlap
  percentage falls off steadily the further forward in time the
  comparison version is, exactly as expected if this repo's copy is an
  ancestor rather than a later or unrelated variant. Put together, this
  repository's copy appears to sit **chronologically between v3.1
  (September 1990) and v3.3 (May 1991)** — closer to v3.1 than to any
  later release. This is the strongest evidence yet for where this
  repository's own copy sits in the version lineage (see
  [TODO.md](TODO.md) item 11), though it remains a placement by data
  content only — the lack of any version banner or lunar-phase code in
  this repo's `today.c` is still unexplained.

A companion archive on pcorner.com, `TODAYQ1.ZIP`–`TODAYQ4.ZIP` ("Events
for TODAY program," by quarter), shows the dataset was also distributed
separately in a far more expanded form still — `TODAY.JAN` alone grows
to 57,349 bytes there, larger again than the 23,969-byte `TODAY.JAN` in
the base `TODAY36.ZIP` package — more direct evidence, alongside
Fiennes's and Kincaid's own self-referential entries (Sections III and
V), that this dataset kept growing as a crowdsourced, separately-
distributed add-on well after the 1993 release. A standalone
`TODAYWIT.ZIP` distributes the `TODAY.WIT` witticisms file on its own,
paired with a `XTRAQUOT.TXT` of additional quotes in the same `F`
format. Neither of these quarterly/witticisms packs has itself been
downloaded — only their pcorner.com listings are known so far.

**A filename search across discmaster.textfiles.com's roughly 1.6
billion indexed files confirms just how widely this software
circulated.** Beyond `TODAY33.ZIP` and `TODAY35.ZIP` (recovered in full,
above), the same search turned up 9 further copies of `TODAY36.ZIP`
(on, among others, Walnut Creek CD-ROM, Chestnut CD-ROM's "Shareware
Overload Trio," and Night Owl PDSI), 1 further copy of `TODAY31.ZIP`,
and — strikingly — **29 copies of `TODAYDOR.ZIP` and 26 of
`TODAYBBS.ZIP`**, Michael Conley's Wildcat! door/bulletin programs
(Section V). None of these additional copies were downloaded (their
consistent presence across so many independent CD-ROM collections is
corroboration enough), but two of the `TODAY33.ZIP` copies found this
way had been re-zipped by warez-scene BBSes, with "leeched from The HMS
Bounty BBS" and "The WaREZ HouZE Super System" banners tacked onto the
archive — harmless provenance noise from later redistribution, not a
content difference from the clean copy preserved here.

**One more false positive, also via discmaster.textfiles.com:**
`TODAY32.ZIP` turned out to be an unrelated HP48 calculator application
(under 6 KB, filed under "HP48/Applications" on several "Palmtops"
CD-ROMs). Whether Kincaid ever released a numbered v3.2 at all is
unknown — no archive under that name has surfaced, unlike every other
version from 3.1 through 3.6.

**Two more genuine derivatives turned up alongside `TODAY34.ZIP`, from a
third implementer: Michael Conley.** The same `bbs.retropc.se` file area
that yielded `TODAY34.ZIP` (preserved at [`zips/`](zips/) — see
[`zips/README.md`](zips/README.md) for full provenance) also has
`TODAYDOR.ZIP` (`TODAYDOR` v3.24, a Wildcat! BBS "door" program letting
callers interactively browse any day's `TODAY.xxx` data, released
04/20/1993) and `TODAYBBS.ZIP` (`TODAYBBS` release 3.08, 04/24/1993,
which reads the same files to generate a daily login bulletin). Both are
credited to **Michael Conley of The Charlatan's Cabin BBS, Los Angeles,
CA** — a third person, independent of both Kincaid and Hugo Fiennes, who
built his own reader for the same data format. `TODAYBBS.DOC` also names
a fourth party: **Bruce Goldman**, said to be "producing excellent
`TODAY.nnn` data files... compatible with TODAYBBS, as well as some other
programs such as **NEWDAY/PC**," distributed as a numbered series
(`DAY907-1.ZIP` through `DAY907-6.ZIP`). Neither Goldman's files nor
`NEWDAY/PC` have been tracked down yet — see [TODO.md](TODO.md).

A same-listing file called `WCTODAY.ZIP` ("Who Called Today?" v3.5, by
Boardwalk Software, copyright 1989/91) turned out to be an unrelated
Wildcat! BBS caller-log/hello-screen generator — a false positive, noted
in [`zips/README.md`](zips/README.md) rather than preserved here.

**Three more false positives, encountered while searching for the
above.** All share the name "TODAY" purely by coincidence: `TODAY10.ZIP`
on pcorner.com (category "C Source Code") is a Unix/VMS date-and-time-
in-English utility explicitly credited in its own source to **Martin
Minow**, unrelated to Kincaid despite bundling its own moon-phase code
(`MOONTX.C`); `ADATODAY.ZIP` on pcorner.com is an issue of an "Ada
Today" newsletter about the Ada programming language; and `TODAY32.ZIP`,
found via discmaster.textfiles.com, is an unrelated HP48 calculator
application. None shares any code, data, or attribution with Kincaid's
`TODAY`.

**Rebecca Ann Heineman produced a C++ port of the program**, distributed
in her open-source `KitchenSink` toolkit, and explicitly credited Kincaid
in the source header:

> Today, a simple tool to print out today's events
> Based on source from Patrick Kincaid
> Copyright 1986-2015 by Rebecca Ann Heineman becky@burgerbecky.com

— [`tools/all/today/source/today.cpp`, Olde-Skuul/KitchenSink](https://github.com/Olde-Skuul/KitchenSink/blob/master/tools/all/today/source/today.cpp)

**An obituary exists for a Patrick James Kincaid** (Newberry, Michigan,
June 28, 1947 – Pasadena, California, April 4, 2020), whose career is
described as "a data and communications technology consultant" based "in
the San Francisco area":

> Patrick James Kincaid left us April 4th, 2020 after a short battle with
> brain cancer... Patrick was born in Newberry, Michigan on June 28th,
> 1947, raised in Cincinnati in a loving family and pursued a successful
> career in the San Francisco area as a data and communications
> technology consultant to some of the world's largest corporations. He
> retired five years ago to Pasadena to pursue his love of astronomy as a
> docent at the California Institute of Technology (Caltech).

— [Patrick Kincaid Obituary, San Francisco Chronicle / Legacy.com](https://www.legacy.com/us/obituaries/sfgate/name/patrick-kincaid-obituary?id=2046493)

**Rebecca Ann Heineman died on November 17, 2025**, at age 62, after a
short illness with aggressive cancer. See Section IV.

---

## II. Inference: Is the `TODAY.DOC` Kincaid the Obituary Kincaid?

No document found in this research directly states that the Patrick
Kincaid who wrote `TODAY.DOC` in Mill Valley in 1986 is the same Patrick
James Kincaid who died in 2020. Nobody has said, in so many words, "I am
that Patrick Kincaid." What we have instead is three independently
sourced facts that all agree with each other:

1. **Birthdate**: `today.6` (this directory's own copy) contains the
   line `B06281947 Patrick Kincaid, send him a card.` — an exact
   `MMDDYYYY` match, June 28, 1947, for the dataset's presumed compiler.
   The obituary independently states: "Patrick was born in Newberry,
   Michigan on June 28th, 1947." Month, day, *and* year all agree. The
   same easter-egg entry also turns up independently in the GNU `gcal`
   data lineage (Section III), so it isn't an artifact unique to this
   one copy.
2. **Geography**: `TODAY.DOC`'s return address is Mill Valley, CA —
   Marin County, immediately north of San Francisco. The obituary
   describes a career "in the San Francisco area." The dataset itself is
   saturated with Bay Area trivia (Golden Gate Bridge, BART, the *San
   Francisco Chronicle*, Cliff House, the Presidio, Stern Grove, etc.),
   which `TODAY.DOC` itself calls out as a "distinct San Francisco
   flavor."
3. **Occupation**: A hobbyist who wrote a data-processing utility in C
   for a PC user group in 1986 is a plausible younger version of someone
   who later built "a successful career... as a data and communications
   technology consultant."

None of these three would mean much alone — Kincaid is not a rare
surname. But a coincidental match on an *exact* birthdate, for two men of
the same uncommon full name, both independently tied to the same corner
of the San Francisco Bay Area, is a low-probability coincidence. This is
the standard of evidence a genealogist would generally treat as a settled
identification absent a specific reason to doubt it (e.g., a known second
Patrick Kincaid in the same social circle, which nothing here suggests).

So: treat "Patrick Kincaid, author of `TODAY`" and "Patrick James Kincaid
(1947–2020)" as the same person with high confidence. This document still
labels it an inference rather than a "Verified Fact" in Section I only
because no single source states the identification directly — the
distinction is about sourcing methodology, not real doubt about the
conclusion.

---

## III. Known Public Copies and Derivatives

Repos discovered via GitHub code search (some found using a distinctive
phrase from this directory's data files, others cross-referenced from
there). Byte/line comparisons below were run against this directory's
`today.1`–`today.12` files.

| Location | Contents | Relationship to this copy |
|---|---|---|
| [hfiennes/arcbbs](https://github.com/hfiennes/arcbbs/tree/master/%21ARCserver/Text/Today) | `Today_01`–`Today_12`, `TODAY_DOC` (Acorn/RISC OS BBS archive) | **Byte-identical for 9 of 12 months**, once two cosmetic, non-content artifacts are normalized: this copy's files use DOS-style CRLF line endings and end in a trailing Ctrl-Z (`0x1A`) DOS EOF marker, neither of which the GitHub copy has (it's LF-only, no EOF marker) — a transfer/re-hosting artifact, not a content difference. The other 3 months have genuine, small, and informative edits: **March** adds one line, `B03311971 Hugo Fiennes, writer of the ARCbbs Archimedes BBS s/w.` — the repo owner inserting his own birthday, the same in-joke pattern as Kincaid's own entry. **May** adds `S05141990 ARCbbs gets a 'On this day' feature` — which independently dates when this dataset was integrated into Hugo Fiennes's ARCbbs BBS software: **May 14, 1990**. **December** has one single-word variant ("good will" vs "goodwill" in the Christmas entry). This is also the only public copy found of the original `TODAY.DOC` documentation/history file. |
| [Olde-Skuul/KitchenSink](https://github.com/Olde-Skuul/KitchenSink) | `tools/all/today/source/today.cpp` (C++ port); `sdks/{macosx,windows/bin/x86,windows/bin/x64}/today.txt` (combined 12-month data) | Source: rewritten in C++ against Heineman's Burgerlib, not byte-identical, but same record schema and explicitly credits Kincaid. Data: **99.8% line-identical** (2,228 of 2,232 birthday/event/reminder records match verbatim across all 12 months). |
| [quetwo/cfug-today](https://github.com/quetwo/cfug-today) | `frontend/webroot/datefiles/TODAY.JAN`–`TODAY.DEC` (ColdFusion demo rewrite) | ~98% line match for January (189/193). Notably shares one specific transcription glitch with this copy (`S0106    SArizona becomes...`, a dropped space) that is *not* present in the KitchenSink or arcbbs copies — suggesting this copy and `cfug-today`'s data descend from a slightly different generation of the file than the KitchenSink/arcbbs one. |
| [chrpai/AmigaPensive](https://github.com/chrpai/AmigaPensive) | `AmigaTextFiles/comm/bbs/History/History/Data/TODAY.JAN`–`.DEC` (Amiga BBS door game "History") | Substantially expanded — only ~91% line match for January (175/193), with many additional community-contributed entries not present here and none of this copy's one known typo. A later, heavily edited descendant. |
| [gnu-mirror-unofficial/gcal](https://github.com/gnu-mirror-unofficial/gcal), and mirrors [OS2World/APP-CALENDAR-GNU-gcal](https://github.com/OS2World/APP-CALENDAR-GNU-gcal), [gitGNU/gnu_gcal](https://github.com/gitGNU/gnu_gcal), [Bil3ygr/GnuWin32](https://github.com/Bil3ygr/GnuWin32), [Silvenga/GnuWin32-Installer](https://github.com/Silvenga/GnuWin32-Installer), [KevinSShaffer/JJFlexRadio](https://github.com/KevinSShaffer/JJFlexRadio), [PedroYRSousa/infra-fundamentos-programacao-win](https://github.com/PedroYRSousa/infra-fundamentos-programacao-win) | `data/dates/events1`, `data/dates/lives3` (GNU `gcal`'s bundled trivia data, vendored into many downstream packages) | **Not** line-identical — reformatted entirely into "CalenTool" record syntax, zero exact line matches. But the file header explicitly states the data was "extracted from **ProLine's today file**," and independently contains the same June 28, 1947 Patrick Kincaid self-reference (as `** 06 28 99 99 00 Patrick Kincaid, send him a card. (1947)` in `lives3`). Important corroborating source, not a direct copy. See [TODO.md](TODO.md) re: "ProLine." |
| [IanDarwin/OpenLookCDROM](https://github.com/IanDarwin/OpenLookCDROM) | `src/xview/xcalentool/dates/events1`, `dates/lives3` (the `xcalentool`/`calentool` X11 calendar tool) | Same CalenTool-format lineage as the `gcal` entries above; likely the direct ancestor those files were copied from. Not independently diffed against this copy beyond the format check. |
| [Possibly93/possibly93.github.io](https://github.com/Possibly93/possibly93.github.io) | `c/files/images/ansi/unsorted/today.jan.ans`, `today.jun.ans` (filed under "ansi" in a BBS file dump, but not actually ANSI art) | Despite the `.ans` extension and folder, this is plain-text `TODAY.JAN` data, misfiled. Nearly identical to this copy, but with two edits indicating a later-generation snapshot: Mozart's birthday is corrected from this copy's `B01231756` (January 23 — an error; Mozart was born January 27) to the historically correct `B01271756`, and a new event line is present, `S01281986 Space Shuttle Challenger explodes, killing a brave crew and NASA...` — the Challenger disaster (January 28, 1986) postdates Kincaid's July 1986 `TODAY/PC` release, so this snapshot was updated at least once after the original release. |
| [wyattshanahan/BIS](https://github.com/wyattshanahan/BIS) | `WebDev1/lab08/trivia.dat` (student web-dev coursework) | Not a copy of the `B`/`S`/`R` file format at all — reformatted into CSV (`month,day,year,description`, e.g. `1,1,1801,Giuseppe Piazzi discovered 1st asteroid...`). Confirmed to reuse this dataset's content directly (its January 1 entries match this copy's verbatim, just re-punctuated), pulled in for an unrelated class assignment. A downstream reformatted derivative, similar in kind to `cfug-today`. |
| [`TODAY31.ZIP`, archive.org](https://archive.org/details/msdos_festival_TODAY31) — preserved at [`zips/TODAY31.ZIP`](zips/TODAY31.ZIP) | `TODAY.EXE` (uncompressed), all 12 month files, `TODAY.DOC`, `TODAY.OWN`, `TODAY.WIT`, `TODAYCFG.EXE` (real DOS shareware archive, downloaded and read in full) | The actual v3.1 (09/01/90) release, MD5-verified against archive.org's own metadata. Byte-exact match for the Usenet-quoted version banner. Line-level comparison against this repo's `today.1`–`.12` shows 65–85% of this repo's lines reappearing verbatim, with this repo's files larger than v3.1's in every month — see Section I. |
| [`TODAY33.ZIP`, discmaster.textfiles.com](https://discmaster.textfiles.com/view/6948/TheCaliforniaCollection.cdr/his032/today33.zip) — preserved at [`zips/TODAY33.ZIP`](zips/TODAY33.ZIP) | `TODAY.EXE`, all 12 month files, `TODAY.DOC`, `TODAY.WIT`, `TODAYCFG.EXE`, `WHEN.EXE`/`.DOC` (no `TODAY.OWN` — see Section I) | The actual v3.3 (May 1991) release. Its `TODAY.DOC` is byte-for-byte identical to `TODAY34.ZIP`'s, confirming v3.4 was a pure bugfix release. |
| [`TODAY34.ZIP`, bbs.retropc.se](https://bbs.retropc.se/smmwldct/TODAY34.ZIP) — preserved at [`zips/TODAY34.ZIP`](zips/TODAY34.ZIP) | `TODAY.EXE`, all 12 month files, `TODAY.DOC` (full manual), `TODAY.OWN`, `TODAY.WIT`, `TODAYCFG.EXE`, `WHEN.EXE`/`.DOC` (real DOS shareware archive, downloaded and read in full) | The actual v3.4 (1991–92) release; downloaded, extracted, and read directly — see Section I for what it revealed. |
| [`TODAY35.ZIP`, discmaster.textfiles.com](https://discmaster.textfiles.com/view/6179/PSL%20Monthly%20Shareware%20CD-ROM%20(Public%20Software%20Library)%20(January%201994).iso/dos/business/today35.zip) — preserved at [`zips/TODAY35.ZIP`](zips/TODAY35.ZIP) | `TODAY.EXE`, all 12 month files, `TODAY35.DOC`, `WHATS.NEW`, `TODAY.OWN`, `TODAY.WIT`, `TODAYCFG.EXE`, `WHEN.EXE` (no separate `WHEN.DOC`) | A previously undocumented version (1992), not referenced by any prior source in this research. Its `WHATS.NEW` explains the shorter `TODAY36.DOC` style — see Section I. |
| [`TODAY36.ZIP`, archive.org](https://archive.org/details/TODAY36_ZIP) — preserved at [`zips/TODAY36.ZIP`](zips/TODAY36.ZIP) | `TODAY.EXE` (LZEXE-compressed), `TODAY.JAN`–`.DEC`, `TODAY36.DOC`, `WHATS.NEW`, `README.1ST`, `TODAY.OWN`, `TODAYCFG.EXE`, `WHEN.EXE`, `TODAY.WIT` (real DOS shareware archive, downloaded and read in full; MD5-verified against archive.org's metadata; 9 further copies found via discmaster.textfiles.com but not individually downloaded) | The actual v3.6 (11/14/93) release, the last documented DOS version — see Section I for what `TODAY36.DOC` revealed (Corte Madera/PCBoard/"TODAY Conference" detail and Kincaid's "learn a new compiler" remark). |
| [`TODAYDOR.ZIP`](https://bbs.retropc.se/smmwldct/TODAYDOR.ZIP) / [`TODAYBBS.ZIP`](https://bbs.retropc.se/smmwldct/TODAYBBS.ZIP), bbs.retropc.se — preserved at [`zips/`](zips/) | Wildcat! BBS "door" (`TODAYDOR` v3.24) and bulletin-generator (`TODAYBBS` v3.08) programs, both by **Michael Conley** (1993) | Independent third-party readers of the same `TODAY.xxx` data format — not copies of Kincaid's code, but further evidence (alongside Fiennes's ARCbbs module) that the data format was widely reimplemented rather than treated as tied to one program. See Section I and [`zips/README.md`](zips/README.md). |

**Excluded as false positives:** several other hits turned out to be
unrelated programs that merely share a filename with this one.
Two GitHub hits for `today.c` —
[vonj/snippets.org/today.c](https://github.com/vonj/snippets.org/blob/master/today.c)
(Bob Stout's public-domain scalar-date routine) and
[rhuitl/uClinux/user/arj/today.c](https://github.com/rhuitl/uClinux/blob/master/user/arj/today.c)
(an unrelated build-timestamp generator) — three more found on
pcorner.com while searching for the DOS releases above:
[`TODAY10.ZIP`](http://web.archive.org/web/20240912113900/https://www.pcorner.com/list/C/TODAY10.ZIP/INFO/)
(a Unix/VMS date-and-time-in-English utility credited to **Martin Minow**,
which coincidentally has its own moon-phase code) and
[`ADATODAY.ZIP`](http://web.archive.org/web/20240422230704/https://www.pcorner.com/list/MISC/ADATODAY.ZIP/INFO/)
(an issue of an "Ada Today" newsletter about the Ada programming
language) — and one more found alongside `TODAY34.ZIP` on
bbs.retropc.se: `WCTODAY.ZIP` ("Who Called Today?" v3.5, by Boardwalk
Software, 1989/91), an unrelated Wildcat! BBS caller-log/hello-screen
generator. None of the five shares any code, data, or attribution with
this program.

---

## IV. Rebecca Heineman and the KitchenSink Port

Rebecca Ann Heineman (October 30, 1963 – November 17, 2025) was a
pioneering video game programmer and designer — the first officially
recognized U.S. video game champion (a national *Space Invaders*
tournament in 1980), a co-founder of Interplay Productions in 1983, and
later the founder of Logicware, Contraband Entertainment, and Olde Sküül.
She was credited on dozens of titles over her career, including
Macintosh/console ports of *Wolfenstein 3D*, *Baldur's Gate*, *Icewind
Dale*, and DOOM (3DO). She was also a prominent transgender advocate in
an industry that had few.

Her `KitchenSink`/Burgerlib toolset — a personal grab-bag of
cross-platform utilities she maintained for decades — includes the C++
port of `today` discussed above, credited to Kincaid in its header
comment and copyrighted 1986–2015.

Heineman died on November 17, 2025, at age 62, following an aggressive
adenocarcinoma diagnosed earlier that year. Coverage was extensive and
consistent across independent outlets:

- [PC Gamer](https://www.pcgamer.com/gaming-industry/legendary-game-designer-programmer-space-invaders-champion-and-lgbtq-trailblazer-rebecca-heineman-has-died/)
- [Game Developer](https://www.gamedeveloper.com/programming/obituary-interplay-co-founder-rebecca-ann-heineman-has-passed-away-at-62)
- [Comics Beat](https://www.comicsbeat.com/interplay-co-founder-and-video-game-pioneer-rebecca-ann-heineman-has-died/)
- [AV Club](https://www.avclub.com/rebecca-heineman-dies-games)
- [Shacknews](https://www.shacknews.com/article/146867/rebecca-heineman-fuck-cancer)
- [Time Extension](https://www.timeextension.com/news/2025/11/we-have-gone-on-so-many-adventures-together-video-game-icon-rebecca-heineman-has-passed-away-aged-62)
- [SFWA, In Memoriam](https://sfwa.org/2025/12/29/in-memoriam-rebecca-heineman/)
- [Wikipedia](https://en.wikipedia.org/wiki/Rebecca_Heineman)

**A note on her web presence, as of this research (July 2026):** her
personal domain, `burgerbecky.com`, no longer serves her site — it now
redirects to an unrelated Indonesian gambling ("togel") site. A WHOIS
lookup shows the domain registration itself is unbroken and unchanged
since 2005 (still registered through GoDaddy, still active, paid through
January 2027), but its DNS was repointed to a new Cloudflare nameserver
pair in late February/early March 2026 — after the last known-good
Wayback Machine capture of the site on January 16, 2026
([archived copy](https://web.archive.org/web/20260116062301/http://burgerbecky.com/burgerlib/docs/)).
This pattern — continuous registration, but a DNS change with no
corresponding transfer — is more consistent with an unmaintained account
being compromised than with the domain simply lapsing. Her other domain,
`oldeskuul.com`, currently times out entirely. Both are consistent with,
and likely explained by, there being no one left to maintain her
infrastructure after her death. This is noted here for the record, not
as part of the Kincaid research thread.

---

## V. Hugo Fiennes and ARCbbs

Unlike Kincaid and Heineman, the person behind the earliest independently
dated *derivative* copy of this dataset (Section III) is alive, publicly
documented, and reachable — which makes him the most promising lead for
first-hand confirmation of anything in this document.

**Identity.** The GitHub account `hfiennes`, source of the `arcbbs`
archive discussed throughout this document, belongs to Hugo Fiennes — his
real name, returned directly by the GitHub API's profile data for that
account. His own `arcbbs` README, written in the first person, describes
the repository as his personal archive of `!ARCbbs`, "my BBS software for
the Acorn Archimedes (last seen ~1994)," recovered from old disk images
decades later, and ends with an open offer: "If you want any help, ask!"

**Early computing background matches the dataset's own internal
timeline.** Multiple independent sources — his [Computer History Museum
profile](https://computerhistory.org/profile/hugo-fiennes/) and an
[Engineering.com
profile](https://www.engineering.com/meet-the-man-who-designed-your-iphone-it-wasnt-all-steve-jobs/)
among them — state he has "been an ARM fanatic since 1987, when he got
his first ARM-based machine: an Acorn Archimedes A310." That lines up
exactly with the internal evidence in his own `arcbbs` data (Section
III): the Archimedes in 1987, and the self-dated addition of an "On this
day" feature to ARCbbs on May 14, 1990. He ran a BBS on this software
called "The World of Cryton."

**Education and early career, per his LinkedIn profile**
([linkedin.com/in/hfiennes](https://www.linkedin.com/in/hfiennes/),
viewed directly July 2026 — photo confirmed to match his other public
profiles): a degree in Computer Systems Engineering from the University
of Warwick, 1994–1997. Notably, well before that degree, the same profile
lists a **certification in VAX/VMS system management from DEC (Digital
Equipment Corporation), Reading, UK, dated 1986** — meaning he had
hands-on training on exactly the class of minicomputer that carried
Usenet/EUnet traffic in the UK at the time, years before his university
education and around the same period this dataset was first circulating
outside Kincaid's own hands. This doesn't establish that Fiennes
encountered `TODAY` via Usenet specifically rather than via BBS/UUCP
networks, but it does establish that he was, at a young age, exactly the
kind of technically embedded person who plausibly had Usenet access in
the mid-to-late 1980s — worth keeping in mind for
[TODO.md](TODO.md)'s open question of how the data actually reached him
by 1990.

**Family and later career.** A distant cousin of actors Ralph Fiennes and
Joseph Fiennes. After the BBS years, he founded Empeg Ltd. in 1998,
building the empeg — widely credited as the first in-car MP3 player —
then worked on further MP3 players at Rio, then joined Apple, where he
led the applications-processor hardware team through the first four
generations of the iPhone, then designed hardware for the Nest Learning
Thermostat, then co-founded the IoT platform company Electric Imp in 2011
as CEO. He's currently based in San Carlos, California.

**Why this matters for the research trail.** Fiennes's data isn't just
another copy — his edits to it (Section III) are self-referential in the
same style as Kincaid's own June 28 entry, which is independent
behavioral evidence for how this dataset was actually used and passed
around: recipients treated it as a living, editable artifact and added
themselves to it, rather than as a static file to be copied verbatim.
That he's alive and has publicly invited contact makes him the best
remaining chance to fill in the gap between Kincaid's 1986 release and
the dataset's appearance in the GNU `gcal`/ProLine lineage by 1990–91.

**Direct correspondence, July 2026.** Bicknell contacted Fiennes directly;
he replied:

> Ha! Yeah, the whole "on this day" thing was very popular with BBSes
> back in the day. It's not really the program there though, I wrote my
> own code that would read the lines and pick out the right one - my C
> code for that is here
> https://github.com/hfiennes/arcbbs/blob/main/c/today
>
> I'm guessing I got a copy of the files from another BBS sysop, or
> downloaded it from another BBS. I'm afraid I have no contact with any
> of the people noted in the DOC file. A good person to ask might be this
> guy who compiled a lot of stuff about old BBSes:
> http://www.bbsdocumentary.com/
>
> Sure, invite me to the repo but I'm very much a leaf node in this whole
> thing! Like, as a BBS user I guess I saw the message of the day type
> thing on another BBS and added the feature to my software. Glad I
> remembered to credit it appropriately, it was a long time ago!

This resolves several open questions from [TODO.md](TODO.md) item 9,
while opening one new one:

- **He wrote his own reader, not a port of Kincaid's code.** The C source
  at [`c/today`, hfiennes/arcbbs](https://github.com/hfiennes/arcbbs/blob/main/c/today)
  is an independent implementation — it parses the same `B`/`S`/`R`-record
  data format described in `TODAY.DOC`, but the code itself owes nothing
  to Kincaid's C. Its own header credits only Fiennes: "Project ARCbbs /
  Author Hugo Fiennes / Date started 04-April-1989 ... Module name On
  this day... / Current version 00.04 / Version date 09-November-1991 ...
  This source is COPYRIGHT (c) 1989/90/91 by Hugo Fiennes of The Serial
  Port." So the "on this day" *feature* was independently reimplemented
  at least twice — Kincaid's original DOS program, and Fiennes's Acorn
  BBS module — around a shared, portable data format. That's evidence
  for how loosely this dataset traveled: as a plain-text file people
  wrote their own small readers for, not as a single monolithic program
  people copied wholesale.
- **The propagation mechanism is confirmed as BBS-to-BBS, not
  (necessarily) Usenet.** Fiennes says plainly he encountered the feature
  as a BBS user on someone else's board and then wrote his own version of
  it, and that he most likely obtained the data files "from another BBS
  sysop, or downloaded it from another BBS" — direct first-hand testimony
  for the general BBS-scene propagation model discussed in
  [TODO.md](TODO.md) item 3, as against a Usenet-posting-first theory.
- **He has no lead on Kincaid or Butler**, and explicitly disclaims
  deeper knowledge: "I'm very much a leaf node in this whole thing."
- **New lead: Jason Scott / bbsdocumentary.com.** Fiennes's own
  suggestion for who might know more about this era's software lineage.
  Not yet contacted — see [TODO.md](TODO.md).

---

## VI. Full Source List

1. [`TODAY_DOC`, hfiennes/arcbbs](https://github.com/hfiennes/arcbbs/blob/master/%21ARCserver/Text/Today/TODAY_DOC) — primary source, Kincaid's own documentation; the same repo's `Today_03` and `Today_05` files date this dataset's integration into Hugo Fiennes's ARCbbs software to May 14, 1990
2. [`today.cpp`, Olde-Skuul/KitchenSink](https://github.com/Olde-Skuul/KitchenSink/blob/master/tools/all/today/source/today.cpp)
3. [`today.txt` data files, Olde-Skuul/KitchenSink](https://github.com/Olde-Skuul/KitchenSink/tree/master/sdks)
4. [`TODAY.JAN`–`.DEC`, quetwo/cfug-today](https://github.com/quetwo/cfug-today/tree/master/frontend/webroot/datefiles)
5. [`TODAY.JAN`–`.DEC`, chrpai/AmigaPensive](https://github.com/chrpai/AmigaPensive/tree/master/AmigaTextFiles/comm/bbs/History/History/Data)
6. [`data/dates/lives3`, gnu-mirror-unofficial/gcal](https://github.com/gnu-mirror-unofficial/gcal/blob/master/data/dates/lives3) — contains the independent Kincaid birthday corroboration and the "ProLine's today file" attribution
7. [`data/dates/events1`, gnu-mirror-unofficial/gcal](https://github.com/gnu-mirror-unofficial/gcal/blob/master/data/dates/events1)
8. [`src/xview/xcalentool/dates`, IanDarwin/OpenLookCDROM](https://github.com/IanDarwin/OpenLookCDROM/tree/master/src/xview/xcalentool/dates)
9. [Patrick Kincaid Obituary (1947–2020), Legacy.com/SF Chronicle](https://www.legacy.com/us/obituaries/sfgate/name/patrick-kincaid-obituary?id=2046493)
10. [UTMBiology Facebook post, June 5, 2019](https://www.facebook.com/UTMBiology/photos/onthisday-1981-worlds-first-today-in-history-program-with-editable-data-today-in/1635599136572195/) — names Michael Butler and the 1981 mainframe debut; archived as [`screenshots/utmbiology-facebook-2019-06-05.png`](screenshots/utmbiology-facebook-2019-06-05.png)
11. [Rebecca Heineman obituary coverage — see Section IV for full list]
12. [Rebecca Heineman, Wikipedia](https://en.wikipedia.org/wiki/Rebecca_Heineman)
13. [Hugo Fiennes, Computer History Museum profile](https://computerhistory.org/profile/hugo-fiennes/)
14. [Meet the Man Who Designed Your iPhone, Engineering.com](https://www.engineering.com/meet-the-man-who-designed-your-iphone-it-wasnt-all-steve-jobs/)
15. [Hugo Fiennes, LinkedIn](https://www.linkedin.com/in/hfiennes/) — education and DEC VAX/VMS certification details
16. [comp.os.msdos Usenet post, Andy Ziem, Sept 15, 2001](https://groups.google.com/g/comp.os.msdos/c/PJ--f6K3fhg/m/1ZlLB3BzPA0J) — "Old TODAY/PC program by Patrick Kincaid, 1986?"; establishes the v3.1 (1990) and v3.3 (1993) version banners and the loss of the lunar-phase feature
17. [rec.org.sca Usenet post, Jerod Husvar, Aug 10, 1995](https://groups.google.com/g/rec.org.sca/c/eE6nocdmK7E/m/eQHy-giIMy0J) — "[GENERAL INFO] Medieval News Of The Day," a modified copy of v3.1 (1990) repurposed for SCA/medieval trivia
18. [fido7.moscow-oklahom Fidonet post, Gary Baumgartner, Jan 2004](https://groups.google.com/g/fido7.moscow-oklahom/c/FY9e-WUPehU/m/I3LCCA6e5OkJ) — shows v3.6 (11/14/93), the latest documented DOS revision found
19. [`c/today`, hfiennes/arcbbs](https://github.com/hfiennes/arcbbs/blob/main/c/today) — Hugo Fiennes's own independent C implementation reading the same data format
20. Hugo Fiennes, personal correspondence with Leo Bicknell, July 2026 — see Section V
21. [`TODAY36.ZIP` file listing, pcorner.com](https://www.pcorner.com/list/GAMES/TODAY36.ZIP/INFO/) (via [Wayback Machine snapshot, June 23, 2024](http://web.archive.org/web/20240623092425/https://www.pcorner.com/list/GAMES/TODAY36.ZIP/INFO/)) — first evidence of the package's contents, before the actual archive (source 30, below) was found on archive.org
22. [1997 file-description ("DIZ") for `TODAY36.ZIP`, pcorner.com](http://web.archive.org/web/19970129045744/http://www.pcorner.com:80/tpc/old/diz/TODAY36.ZIP.html) — earliest dated attestation of this package in circulation, names Kincaid directly
23. [`TODAYQ1.ZIP`](http://web.archive.org/web/20190716040022/https://www.pcorner.com/list/GAMES/TODAYQ1.ZIP/INFO/)–Q4, and [`TODAYWIT.ZIP`](http://web.archive.org/web/20210220060532/https://www.pcorner.com/list/GAMES/TODAYWIT.ZIP/INFO/), pcorner.com — separately-distributed, more expanded data/witticisms packs
24. [`TODAY10.ZIP`, pcorner.com](http://web.archive.org/web/20240912113900/https://www.pcorner.com/list/C/TODAY10.ZIP/INFO/) — false positive, Martin Minow's unrelated date/time utility
25. [`ADATODAY.ZIP`, pcorner.com](http://web.archive.org/web/20240422230704/https://www.pcorner.com/list/MISC/ADATODAY.ZIP/INFO/) — false positive, an Ada-language newsletter
26. [`TODAY34.ZIP`, bbs.retropc.se](https://bbs.retropc.se/smmwldct/TODAY34.ZIP) — the actual v3.4 release, downloaded and read in full; preserved at [`zips/TODAY34.ZIP`](zips/TODAY34.ZIP), see [`zips/README.md`](zips/README.md)
27. [`TODAYDOR.ZIP`](https://bbs.retropc.se/smmwldct/TODAYDOR.ZIP) and [`TODAYBBS.ZIP`](https://bbs.retropc.se/smmwldct/TODAYBBS.ZIP), bbs.retropc.se — Michael Conley's independent BBS-door/bulletin readers of the same data format; preserved at [`zips/`](zips/)
28. [bbs.retropc.se `smmwldct` file listing](https://bbs.retropc.se/smmwldct/00index.html) — index page these were found in
29. [`WCTODAY.ZIP`, bbs.retropc.se](https://bbs.retropc.se/smmwldct/WCTODAY.ZIP) — false positive, Boardwalk Software's unrelated "Who Called Today?" caller-log utility
30. [`TODAY31.ZIP`](https://archive.org/details/msdos_festival_TODAY31) and [`TODAY36.ZIP`](https://archive.org/details/TODAY36_ZIP), Internet Archive — the actual v3.1 and v3.6 releases, downloaded, MD5-verified, and read in full; preserved at [`zips/`](zips/), see [`zips/README.md`](zips/README.md)
31. `TODAY34.ZIP`, `TODAYDOR.ZIP`, and `TODAYBBS.ZIP`, obtained independently by Leo Bicknell from `annex.retroarchive.org` (`cdrom/smsw-modmad-1/WILDCAT/`), July 2026 — byte-for-byte identical (SHA-256 confirmed) to the bbs.retropc.se copies above, corroborating their exact circulation on a second CD-ROM collection; see [`zips/README.md`](zips/README.md)
32. [`TODAY33.ZIP`](https://discmaster.textfiles.com/view/6948/TheCaliforniaCollection.cdr/his032/today33.zip) and [`TODAY35.ZIP`](https://discmaster.textfiles.com/view/6179/PSL%20Monthly%20Shareware%20CD-ROM%20(Public%20Software%20Library)%20(January%201994).iso/dos/business/today35.zip), via [discmaster.textfiles.com](https://discmaster.textfiles.com/) — previously undocumented versions, downloaded and read in full; preserved at [`zips/`](zips/), see [`zips/README.md`](zips/README.md)
33. Michael Conley, "TODAYBBS files," [`alt.bbs.wildcat`](https://groups.google.com/g/alt.bbs.wildcat/c/u0QVUS_Z7qg), June 8, 1996 — confirms Bruce Goldman's continued data maintenance (series "910") and Mustang Software's role in distribution

*Compiled July 2026. See [TODO.md](TODO.md) for open research threads.*
