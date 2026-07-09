# The History of `today`: A Research Note

This repository is about `today`, a small utility saved from Usenet
years ago. It reads a per-month data file and prints any birthdays,
historical events, and reminders attached to the current date. This
document is a research log assembled while trying to establish who wrote
it and how it has propagated since.

**Original files:** the unmodified `today.c` source and `today.1`–
`today.12` data files, exactly as originally saved, are in
[`today/`](today/).

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
| [hfiennes/arcbbs](https://github.com/hfiennes/arcbbs/tree/master/%21ARCserver/Text/Today) | `Today_01`–`Today_12`, `TODAY_DOC`, sample `TODAY.OWN` (Acorn/RISC OS BBS archive) | **Byte-identical for 9 of 12 months**, once two cosmetic, non-content artifacts are normalized: this copy's files use DOS-style CRLF line endings and end in a trailing Ctrl-Z (`0x1A`) DOS EOF marker, neither of which the GitHub copy has (it's LF-only, no EOF marker) — a transfer/re-hosting artifact, not a content difference. The other 3 months have genuine, small, and informative edits: **March** adds one line, `B03311971 Hugo Fiennes, writer of the ARCbbs Archimedes BBS s/w.` — the repo owner inserting his own birthday, the same in-joke pattern as Kincaid's own entry. **May** adds `S05141990 ARCbbs gets a 'On this day' feature` — which independently dates when this dataset was integrated into Hugo Fiennes's ARCbbs BBS software: **May 14, 1990**. **December** has one single-word variant ("good will" vs "goodwill" in the Christmas entry). This is also the only public copy found of the original `TODAY.DOC` documentation/history file. |
| [Olde-Skuul/KitchenSink](https://github.com/Olde-Skuul/KitchenSink) | `tools/all/today/source/today.cpp` (C++ port); `sdks/{macosx,windows/bin/x86,windows/bin/x64}/today.txt` (combined 12-month data) | Source: rewritten in C++ against Heineman's Burgerlib, not byte-identical, but same record schema and explicitly credits Kincaid. Data: **99.8% line-identical** (2,228 of 2,232 birthday/event/reminder records match verbatim across all 12 months). |
| [quetwo/cfug-today](https://github.com/quetwo/cfug-today) | `frontend/webroot/datefiles/TODAY.JAN`–`TODAY.DEC` (ColdFusion demo rewrite) | ~98% line match for January (189/193). Notably shares one specific transcription glitch with this copy (`S0106    SArizona becomes...`, a dropped space) that is *not* present in the KitchenSink or arcbbs copies — suggesting this copy and `cfug-today`'s data descend from a slightly different generation of the file than the KitchenSink/arcbbs one. |
| [chrpai/AmigaPensive](https://github.com/chrpai/AmigaPensive) | `AmigaTextFiles/comm/bbs/History/History/Data/TODAY.JAN`–`.DEC` (Amiga BBS door game "History") | Substantially expanded — only ~91% line match for January (175/193), with many additional community-contributed entries not present here and none of this copy's one known typo. A later, heavily edited descendant. |
| [gnu-mirror-unofficial/gcal](https://github.com/gnu-mirror-unofficial/gcal), and mirrors [OS2World/APP-CALENDAR-GNU-gcal](https://github.com/OS2World/APP-CALENDAR-GNU-gcal), [gitGNU/gnu_gcal](https://github.com/gitGNU/gnu_gcal), [Bil3ygr/GnuWin32](https://github.com/Bil3ygr/GnuWin32), [Silvenga/GnuWin32-Installer](https://github.com/Silvenga/GnuWin32-Installer), [KevinSShaffer/JJFlexRadio](https://github.com/KevinSShaffer/JJFlexRadio), [PedroYRSousa/infra-fundamentos-programacao-win](https://github.com/PedroYRSousa/infra-fundamentos-programacao-win) | `data/dates/events1`, `data/dates/lives3` (GNU `gcal`'s bundled trivia data, vendored into many downstream packages) | **Not** line-identical — reformatted entirely into "CalenTool" record syntax, zero exact line matches. But the file header explicitly states the data was "extracted from **ProLine's today file**," and independently contains the same June 28, 1947 Patrick Kincaid self-reference (as `** 06 28 99 99 00 Patrick Kincaid, send him a card. (1947)` in `lives3`). Important corroborating source, not a direct copy. See [TODO.md](TODO.md) re: "ProLine." |
| [IanDarwin/OpenLookCDROM](https://github.com/IanDarwin/OpenLookCDROM) | `src/xview/xcalentool/dates/events1`, `dates/lives3` (the `xcalentool`/`calentool` X11 calendar tool) | Same CalenTool-format lineage as the `gcal` entries above; likely the direct ancestor those files were copied from. Not independently diffed against this copy beyond the format check. |
| [Possibly93/possibly93.github.io](https://github.com/Possibly93/possibly93.github.io) | `c/files/images/ansi/unsorted/today.jan.ans`, `today.jun.ans` (filed under "ansi" in a BBS file dump, but not actually ANSI art) | Despite the `.ans` extension and folder, this is plain-text `TODAY.JAN` data, misfiled. Nearly identical to this copy, but with two edits indicating a later-generation snapshot: Mozart's birthday is corrected from this copy's `B01231756` (January 23 — an error; Mozart was born January 27) to the historically correct `B01271756`, and a new event line is present, `S01281986 Space Shuttle Challenger explodes, killing a brave crew and NASA...` — the Challenger disaster (January 28, 1986) postdates Kincaid's July 1986 `TODAY/PC` release, so this snapshot was updated at least once after the original release. |
| [wyattshanahan/BIS](https://github.com/wyattshanahan/BIS) | `WebDev1/lab08/trivia.dat` (student web-dev coursework) | Not a copy of the `B`/`S`/`R` file format at all — reformatted into CSV (`month,day,year,description`, e.g. `1,1,1801,Giuseppe Piazzi discovered 1st asteroid...`). Confirmed to reuse this dataset's content directly (its January 1 entries match this copy's verbatim, just re-punctuated), pulled in for an unrelated class assignment. A downstream reformatted derivative, similar in kind to `cfug-today`. |

**Excluded as false positives:** two other GitHub hits for a file named
`today.c` turned out to be unrelated programs that merely share a
filename — [vonj/snippets.org/today.c](https://github.com/vonj/snippets.org/blob/master/today.c)
(Bob Stout's public-domain scalar-date routine) and
[rhuitl/uClinux/user/arj/today.c](https://github.com/rhuitl/uClinux/blob/master/user/arj/today.c)
(an unrelated build-timestamp generator). Neither shares any code, data,
or attribution with this program.

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
See [TODO.md](TODO.md) for the outreach plan.

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

*Compiled July 2026. See [TODO.md](TODO.md) for open research threads.*
