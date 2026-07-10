# Open Research Threads

Follow-ups from [README.md](README.md), roughly in order of expected
value. None of these were run down during the initial research pass.

1. **Confirm the Kincaid identification.** Section II of the README lays
   out a strong-but-unproven case that the Patrick Kincaid of 618 Douglas
   Drive, Mill Valley, CA 94941 (per `TODAY.DOC`, 1986) is the same
   Patrick James Kincaid whose obituary is cited there (1947–2020). A
   Marin County property/voter record or an old Marin-Sonoma PC User
   Group roster from the mid-1980s could close this gap directly.

2. **Butler's identity is now anchored, but not complete.** The `arcbbs`-
   hosted `TODAY_DOC` only credited "Mike Butler." A June 5, 2019 Facebook
   post from `UTMBiology` (University of Toronto Mississauga, known as
   **Erindale College** in 1981) independently confirmed his full name —
   **Michael Butler** — the institution, and the exact date the mainframe
   original first ran (June 5, 1981, matching the `today.6`
   self-reference `S06051981 TODAY ran for 1st time`). See README Section
   I for the full quote and the archived screenshot at
   [`screenshots/utmbiology-facebook-2019-06-05.png`](screenshots/utmbiology-facebook-2019-06-05.png).

   **Update:** this is now independently corroborated a second time, and
   from Kincaid himself. The full `TODAY.DOC` manual recovered inside
   `TODAY34.ZIP` (see README Section I and [`zips/`](zips/)) has a
   dedicated "TODAY's History" section, in Kincaid's own words, also
   naming "**Michael Butler**" in full — not just "Mike." The Facebook
   post and Kincaid's own documentation are independent of each other and
   agree exactly, which meaningfully strengthens this identification.

   Still open: whether Butler was a student, faculty, or staff member at
   Erindale/UTM in 1981; whether any of the original PL/1 source
   survives; and how Butler and Kincaid actually connected five years
   later (personal acquaintance, or did Kincaid just receive a copy
   secondhand through the PC user group / BBS scene?).

   **Already checked, came up empty — don't repeat these:**
   - General web search for "Michael Butler" + University of Toronto /
     Erindale / computing turned up nothing. Several Toronto-area
     "Michael Butler" obituaries exist (notably one for 1948–2019) but
     none mention computing or U of T — treat those as false leads, not
     candidates. Re-ran the same University of Toronto/Erindale/1981/
     PL-1/VM-CMS combinations with "Mike Butler" instead of "Michael
     Butler" specifically (since `TODAY.DOC` itself only ever says
     "Mike") — also nothing. Both name forms are exhausted against this
     specific institutional context; no need to retry either.
   - GitHub code search for "Michael Butler" / "Mike Butler": nothing.
   - UTM's own history pages (the CS department's public timeline, the
     "It was 50 years ago today" retrospective article): no mention.
   - **The Medium** (Erindale's student newspaper, digitized on Internet
     Archive as "Medium II," identifiers `mediumiiVVnNNerin`): pulled and
     full-text-searched all 32 available issues from January 1981 through
     March 1982 (the paper has a summer publishing gap, so June 5, 1981
     itself isn't covered) for "Butler," "TODAY," "computing centre," and
     "VM/CMS." No genuine hits — two "Butler" matches were unrelated
     people (a comptroller in a job ad, an actor in a theatre review).
   - A University of Toronto "pioneers of Canadian computing" retrospective
     PDF (`individual.utoronto.ca/klyons/files/pioneers.pdf`): no mention
     of Butler or Erindale in a relevant context.

   **In progress:**
   - Outreach sent to the `UTMBiology` Facebook page asking how they
     sourced the 2019 "on this day" post and for more on Michael Butler —
     awaiting a reply. Whoever wrote that post had *some* source, which
     may lead straight to Butler or his original code.

   **Not yet tried:**
   - Contact UTM Archives & Records Management Services (UTARMS)
     directly — they hold the official institutional archive, including
     things a student newspaper wouldn't cover, like computing centre
     newsletters, course calendars, or IT staff records from 1980–82.
   - Check for a UTM/Erindale "Computing Society" or similar student
     club, which would be a more likely venue than the general newspaper
     for coverage of a hobby mainframe program.

   **In progress (July 2026):** Leo Bicknell has sent a LinkedIn contact
   request/message to a **Michael Butler**
   ([linkedin.com/in/strider1](https://www.linkedin.com/in/strider1/)) —
   based in Mississauga, ON, BA in Economics and Political Science from
   the University of Toronto, 1980–1984. Matches the right city
   (Mississauga/Erindale) and era; class years start just after the
   1981 mainframe debut, so if this is the right person he'd have been a
   first- or second-year student at the time. Sent, no reply yet; not
   yet confirmed as the same Michael Butler.

3. **Find the original Usenet posting — but note the evidence for *when*
   is weaker than it looks.** The working assumption that this was posted
   to `comp.sources.misc` or `alt.sources` rests mainly on this
   directory's own origin story (saved from Usenet), not on anything in
   `TODAY.DOC`, which describes Kincaid's actual distribution channel as
   the Marin-Sonoma PC User Group BBS and mail-in submissions — a regional
   PC-shareware/BBS model, not the Unix-world sources-group convention.
   `comp.sources.misc` didn't exist before 1987, so a posting there can't
   predate that, but it could plausibly have happened any time from
   1987 through 1990 — the only two fixed points we have for the data
   circulating beyond Kincaid's own hands (Hugo Fiennes having a copy by
   May 1990; the GNU `gcal` conversion of "ProLine's today file" dated
   March 1991) are both consistent with pure BBS/UUCP/ProLine-network
   propagation and don't require a Usenet posting to have happened at
   all.

   **Update:** three later Usenet/Fidonet posts have since turned up
   showing the DOS *executable* itself in use (`rec.org.sca`, Aug 1995;
   `comp.os.msdos`, Sept 2001; `fido7.moscow-oklahom`, Jan 2004 — see
   README Section I for the version banners each one shows). None of
   these is the original release posting — they're years-later reposts
   of program output by end users, not source distribution — but they do
   confirm real circulation on Usenet/Fidonet from at least 1995 onward,
   and independently established a version history (1986 → 1988 → 1990
   v3.1 → 1993 v3.3 → Nov. 1993 v3.6) that didn't exist in this document
   before. Hugo Fiennes's direct account (item 9, below) now makes
   BBS-to-BBS spread — rather than a Usenet source posting — the
   better-supported propagation story overall; the original-posting
   question may be somewhat moot.

   The [tuhs.org](https://www.tuhs.org/Usenet/comp.sources.misc/) and
   [nycbug](https://mirrors.nycbug.org/pub/The_Unix_Archive/Unix_Usenet/comp.sources.misc/)
   archives only cover January 1988–June 1991 — that's just what happens
   to be digitized there, not a range justified by evidence. It covers
   the plausible *late* end of the window reasonably well but has no
   claim on 1986–1987. If a posting exists and predates 1988, these two
   archives won't find it. Worth trying **Google Groups' own Usenet
   archive search** (broader/different coverage, sourced from Deja News,
   may reach further back) with more specific terms than were tried
   earlier in this research — now that we have "TODAY.DOC," "Datalight
   C," "Mill Valley," and "Marin-Sonoma PC User Group" as more distinctive
   search anchors than a generic "Patrick Kincaid" + "today" query.

   **Update (July 2026) — tried, came up empty; the case for "moot" is
   now stronger.** Prompted by the discovery that PKZIP didn't exist
   until 1989 (which led directly to `TODAY10.ARC`/`TODAY21.ZIP`, item 11
   above), the same logic was applied one step further back: `.arc` only
   dates to 1985 itself, so an original *Unix-side* posting from the
   plausible 1986–1987 window would more likely have used a Unix-native
   format — `.shar` (shell archive, the standard comp.sources.misc/
   alt.sources posting format), `.tar`/`.tar.Z`, or the old `ar` archiver.
   A search of discmaster.textfiles.com for `TODAY.SHAR`, `TODAY10.SHAR`,
   `TODAY11.SHAR`, `TODAY20.SHAR`, `TODAY21.SHAR`, `TODAY.AR`,
   `TODAY10.AR`, `TODAY11.AR`, `TODAY.TAR`, `TODAY10.TAR`, `TODAY11.TAR`,
   and `TODAY.TAR.Z` returned **zero hits for every single one** — a sharp
   contrast with the immediate, multiple hits `TODAY10.ARC`/`TODAY21.ZIP`
   produced. An archive.org advanced-search API query for `today.shar`
   likewise returned zero results, and `"patrick kincaid"` returned only
   the two DOS releases already in hand plus unrelated court records. The
   Google Groups searches suggested above (using "Datalight C," "Mill
   Valley," "Marin-Sonoma PC User Group," `TODAY.DOC`/`TODAY.JAN` as
   anchors, alone and combined with `shar`/`tar`) were also run and
   returned nothing relevant. Finally, the tuhs.org comp.sources.misc
   full index for Volumes 1 through 8 (covering 1987–1989, the earliest
   part of that archive's coverage and the most plausible window for an
   original posting) was checked directly for any entry containing the
   word "today" anywhere in its archive-name or subject fields — no
   match. None of this proves a Usenet source posting never existed
   (Deja News/Google Groups' indexing of this era is known to be
   incomplete, and a `.shar` predating 1987 wouldn't be in
   comp.sources.misc at all, since that group didn't exist yet), but
   between this and Hugo Fiennes's account (item 9), pure BBS-to-BBS
   propagation is now the much better-supported story — this thread is
   likely not worth further search time barring a new, more specific
   lead.

4. **Investigate "ProLine." Largely resolved.** The GNU `gcal` data files
   state their trivia was "extracted from ProLine's today file." This
   referred to Morgan Davis's ProLine BBS software (an Apple II Unix-like
   system with UUCP connectivity, popular in the late 1980s/early 1990s).

   **Update (July 2026):** Leo Bicknell found that Morgan Davis has
   posted ProLine's disk images, a 335-page manual, and its full source
   code at [morgandavis.net/post/proline](https://www.morgandavis.net/post/proline).
   The source archive (`proline-3.0-source.zip`) includes a man page,
   `man/man/man.G/today.G`, for a built-in `today` command — and it
   names names directly:

   > The ProLine version was written by **Jeff Jungblut**
   > (`jeff@pro-avalon.cts.com`). The original database is from a
   > similar public domain program for the IBM PC called **TODAY/PC**.

   This is a direct, independent confirmation of Kincaid's exact program
   name (matching the "TODAY/PC" version banners already found on the
   recovered DOS executables — item 11) and identifies a **sixth
   independent implementer**, previously unknown: Jeff Jungblut, who
   ported the `today` display command (not necessarily Kincaid's own
   code — most likely a fresh implementation reading an imported copy of
   his data files, in the same pattern as Fiennes/Conley/Howland).
   `jeff@pro-avalon.cts.com` is almost certainly defunct (`cts.com` was
   CTS Network Services, a San Diego ISP Davis himself co-founded — so
   "pro-avalon" was a ProLine BBS node hosted on his own network), but
   the name is a new, searchable lead. The man page itself doesn't
   include the actual `today` source code or data files (the ProLine
   source archive only bundles system/admin code, not per-installation
   game data — the `today` databases would have lived in
   `$/games/lib/today/*` on a running system and aren't preserved here).

   **In progress (July 2026):** Leo Bicknell found a likely candidate —
   a **Jeff Jungblut**
   ([linkedin.com/in/jeff-jungblut-7170572a1](https://www.linkedin.com/in/jeff-jungblut-7170572a1/)),
   based in **San Diego, CA** — a strong match, since `cts.com` (the
   domain in `jeff@pro-avalon.cts.com`) was CTS Network Services, the
   San Diego ISP Morgan Davis himself co-founded. The profile has very
   little detail, but it's the only LinkedIn hit at all for this
   unusual name/spelling combination. Not yet contacted or confirmed.

   **Update (July 2026): Morgan Davis replied — no new information, but
   confirms Jungblut as the sole source.** Responding to Leo Bicknell's
   comment on his blog post
   ([morgandavis.net/post/proline](https://www.morgandavis.net/post/proline)),
   Davis wrote:

   > I'm afraid I cannot offer much help here. Jeff Jungblut provided the
   > code and any database that may have been included with ProLine.
   > Hunting down Jeff would be your next step in getting some answers.
   > Good luck on your search.
   >
   > For reference, the documentation says: The ProLine version was
   > written by Jeff Jungblut (`jeff@pro-avalon.cts.com`). The original
   > database is from a similar public domain program for the IBM PC
   > called TODAY/PC.

   Davis himself never had the data files independently — Jungblut
   supplied everything — so this thread now dead-ends at Davis and
   points entirely back to confirming the Jeff Jungblut LinkedIn lead,
   above (sent, no reply yet).

5. **Contact the `gcal` data's editors.** The `events1`/`lives3` headers
   name Robert Heckendorn (`robert@fc.hp.com`, contributed "Today in
   History" dates) and Larry Virden / Bill Randle
   (`billr@saab.cna.tek.com`), who converted "ProLine's today file" into
   CalenTool format in 1991. Any of the three may have first-hand
   knowledge of where the ProLine file came from, or retain older copies
   with more attribution than what survived into `gcal`.

   **In progress (July 2026):** Leo Bicknell has sent LinkedIn contact
   requests/messages to a **Robert Heckendorn**
   ([linkedin.com/in/robertheckendorn](https://www.linkedin.com/in/robertheckendorn/))
   — software engineer at HP, Fort Collins, CO, 1979–1995, matching the
   `robert@fc.hp.com` ("fc" = Fort Collins) address exactly — and a
   **Bill Randle**
   ([linkedin.com/in/billrandle](https://www.linkedin.com/in/billrandle))
   — at Tektronix, Beaverton, OR, 1974–2001, matching the
   `billr@saab.cna.tek.com` ("tek" = Tektronix) address. Both are strong
   company/location/era matches. Sent, no reply yet from either; not yet
   confirmed.

6. **Preserve the Wayback Machine capture — done.** The last known-good
   archive of `burgerbecky.com` is from January 16, 2026
   ([link](https://web.archive.org/web/20260116062301/http://burgerbecky.com/burgerlib/docs/)).
   The whole site (4,077 URLs, last good pre-hijack capture of each) has
   since been mirrored and preserved at
   [bicknell/burgerbecky.com](https://github.com/bicknell/burgerbecky.com),
   so it no longer depends on Wayback access remaining available.
   Checked directly in that mirror: Heineman's Doxygen-generated
   `burgerlib` documentation has no additional history notes about
   `today` beyond the source comment already quoted in README Section I.

7. **`KitchenSink` itself has no other contributors to ask — checked via
   the GitHub API.** It's a single commit, authored solely by Rebecca
   Heineman (`burgerlib` is the same story: 273 commits, all hers). The
   `Olde-Skuul` org has no publicly-listed members either, so there's no
   roster to pull directly.

   One narrower lead turned up and then mostly fizzled: her `doom3do`
   repo has 10 commits from Heineman and 1 from a contributor called
   `Soviut` — identified as **Ian Zamojc** (GitHub `zamtools`, email
   `izamojc@zamtools.com`, resume at
   [resume.zamtools.com](https://resume.zamtools.com/), LinkedIn at
   [linkedin.com/in/ianzamojc](https://www.linkedin.com/in/ianzamojc/)).
   His actual
   commit, though, was a one-line README typo fix from December 16, 2014
   — not a collaboration. His resume shows a 17+ year career as a
   web/frontend engineer (Vue, Node, design-focused roles at Arternal,
   Synervoz, Metrist, NPM) with **no game-industry background and no
   mention of Heineman, Olde-Skuul, or retro computing anywhere**. Low
   priority — he's very unlikely to have any insider knowledge, though
   his contact info is on record here in case it's ever worth a
   long-shot ask. (Two other org repos, `Catacomb` and `keen`, have solo
   commits from unrelated third parties — Richard Mandel and Javier M.
   Chavez respectively — but nothing ties them to Heineman or this
   research thread either; not worth pursuing.)

8. **Track down a copy of `TODAY.OWN` — done.** Found intact inside
   `TODAY34.ZIP` (see README Section I and [`zips/TODAY34.ZIP`](zips/TODAY34.ZIP)):
   a short, unremarkable set of sample reminders (mortgage payment,
   fictional family birthdays) — no personalization or attribution clues
   about Kincaid himself. The identical 380-byte file size in the later
   `TODAY36.ZIP` listing suggests it never changed across releases.

9. **Contact Hugo Fiennes — done; he replied.** See README Section V for
    his full profile and his verbatim reply (July 2026). Summary of what
    was resolved and what wasn't:
    - His ARCbbs "on this day" module was his **own independent C
      implementation** (`c/today` in his repo), not a port of Kincaid's
      code — it just reads the same data-file format.
    - He believes he got the data files from another BBS sysop, or
      downloaded them from another BBS — he does not know which one, or
      whether it traces back to Kincaid directly or through intermediate
      hands.
    - He has **no contact with anyone named in `TODAY.DOC`** (neither
      Kincaid nor Butler) and describes himself as "very much a leaf
      node in this whole thing."
    - He did **not** confirm or deny Usenet access in the 1980s; the
      question wasn't directly answered, so item 3's open question about
      a possible Usenet posting is still unresolved on that front (though
      his account generally favors BBS-to-BBS spread over a Usenet
      source-posting).
    - He's agreed to be invited to the repo.

    **New lead from his reply:** he suggested contacting the operator of
    [bbsdocumentary.com](http://www.bbsdocumentary.com/) (Jason Scott, who
    compiled the BBS Documentary project) as someone who might know more
    about this program's place in BBS history generally. Not yet
    contacted.

10. **Consider flagging the domain hijack.** `burgerbecky.com` currently
    redirects to a gambling site (see README Section IV) with no obvious
    sign that anyone in a position to fix it is aware. If there's a
    natural point of contact — GoDaddy abuse reporting, a member of the
    retro-computing/games-preservation community, or someone connected to
    her estate or the `Olde-Skuul` org — it may be worth a heads-up,
    independent of the Kincaid research. **Update:** the site itself is
    no longer at risk of being lost regardless — see
    [bicknell/burgerbecky.com](https://github.com/bicknell/burgerbecky.com)
    (item 6, above) — but the hijacked domain itself is still worth
    flagging if a good point of contact turns up.

11. **Track down the actual DOS releases, and place this repo's copy in
    the resulting timeline.** Resolved, far more completely than
    originally scoped, in two waves. First wave: real, verified copies of
    **v3.1** (`TODAY31.ZIP`, from
    [archive.org](https://archive.org/details/msdos_festival_TODAY31)),
    **v3.3** and **v3.5** (`TODAY33.ZIP`/`TODAY35.ZIP` — both previously
    undocumented versions, found via
    [discmaster.textfiles.com](https://discmaster.textfiles.com/), a
    ~1.6-billion-file search index across dumped shareware CD-ROMs/BBS/
    FTP archives), **v3.4** (`TODAY34.ZIP`, from
    [bbs.retropc.se](https://bbs.retropc.se/smmwldct/TODAY34.ZIP)), and
    **v3.6** (`TODAY36.ZIP`, from
    [archive.org](https://archive.org/details/TODAY36_ZIP)).

    **Second wave (July 2026): the two earliest releases, `TODAY10.ARC`
    (v1.0) and `TODAY21.ZIP` (v2.1), have now also been recovered**, via
    a deliberate search of discmaster.textfiles.com for `TODAY.ZIP`,
    `TODAY10.ZIP`, `TODAY11.ZIP`, `TODAY20.ZIP`, `TODAY21.ZIP`, and their
    `.ARC`/`.ARK` equivalents (PKZIP didn't exist before 1989, so any
    release predating that had to circulate as `.ARC` — this is exactly
    what turned up). All seven releases are preserved in [`zips/`](zips/)
    — see README Section I and [`zips/README.md`](zips/README.md) for
    everything they revealed collectively: the full "TODAY's History"
    section and Michael Butler's full name direct from Kincaid, present
    as early as v2.1 (1988) and continuing through v3.4; documentation
    consistently lagging the version number by one release; registration
    terms; the Golden Gate Computer Society/Corte Madera/PCBoard details;
    the full data-format spec; `TODAY.OWN`'s actual contents; byte-exact
    confirmation of the Usenet version banner (and an even earlier one,
    `TODAY/PC V1.0 (c) 1986`, from the v1.0 executable itself); the
    `ALTFN`/`MUSIC`/`SPACE` special-database feature's actual introduction
    in v2.0 (March 1988); and confirmation the lunar-phase feature is
    absent from every recovered release's code and docs alike, including
    the earliest one.

    **This resolves the central open question: line-level comparison
    against this repo's own month files, across all seven versions, shows
    this repo's `today.1`–`.12` are byte-for-byte identical, file for
    file, to `TODAY10.ARC`'s (v1.0, 1986/87) month files** — not merely
    the closest match, as the earlier v3.1-vs-v3.3 comparison had
    suggested, but an exact, unmodified copy of Kincaid's original 1986
    databases. See README Section I for the full comparison table and
    per-file verification.

    The same discmaster.textfiles.com searches also confirmed `TODAY32.ZIP`
    (an unrelated HP48 calculator app) and `TODAY11.ZIP` ("Today's Callers
    v1.1 for PC-Express," an unrelated BBS caller-log utility) are false
    positives, found no evidence at all of a standalone `TODAY20.ZIP`/
    `TODAY20.ARC`/`TODAY2.ARC`/`TODAY21.ARC`/`TODAY.ARK`, turned up 9
    further copies of `TODAY36.ZIP`, 1 more of `TODAY31.ZIP`, and 29/26
    copies respectively of Michael Conley's `TODAYDOR.ZIP`/`TODAYBBS.ZIP`
    (see README Section I), none individually downloaded — and turned up
    a **fifth independent implementer**, Mick Howland's CP/M port
    (`TODAY-CPM.ARC`, 1989, see item 17 below).

    **Update (July 2026): the v2.1 "Reducing"-compression blocker is
    resolved.** Neither Info-ZIP `unzip`, `p7zip`, nor the current
    official 7-Zip 26.02 (`7zz`) can decode PKZIP's old "Reducing" method
    (methods 1–4) — confirmed by testing all three directly. **[Hans
    Wennborg's `hwzip`](https://www.hanshq.net/zip2.html)**, a
    public-domain reference implementation written specifically to
    document the Shrink/Reduce/Implode legacy methods (source at
    `hanshq.net/files/hwzip/hwzip-2.4.zip`, builds clean with a plain
    `clang` invocation per its own README), extracts all 16 members of
    `TODAY21.ZIP` cleanly, including the 4 that had been stuck
    (`TODAY.APR`, `TODAY.MAR`, `TODAY.OCT`, `TODAY21.EXE`). This gave a
    second executable's version banner directly from the binary
    (`TODAY/PC V2.1 (c) 1986, 1988 by Patrick Kincaid`) and let the
    month-file comparison in README Section I be run against the
    complete v2.1 dataset rather than 9 of 12 months (result: unchanged,
    99.6%).

    **Update (July 2026): the LZEXE-compressed v3.4/v3.5/v3.6 binaries
    are now decoded too.** All three carry the `LZ91` signature (LZEXE
    v0.91). [`mywave82/unlzexe`](https://github.com/mywave82/unlzexe), a
    POSIX-ported build of the classic `UNLZEXE` decompressor, compiled
    cleanly with a plain `clang` invocation and decompressed all three
    without issue. This gave clean version banners directly from each
    binary — `TODAY  Version 3.4   01/05/92`, `TODAY  Version 3.5
    07/12/92`, `TODAY  Version 3.6   11/14/93` — matching the already-
    known v3.6 release date exactly and pinning v3.4/v3.5's for the
    first time. Confirms (via a `strings`/diff comparison of all three
    decompressed binaries) that no lunar-phase code exists in any of
    them, and that v3.4→v3.5→v3.6 are near-identical builds differing
    mainly in the version string and minor internal offsets — consistent
    with the "pure bugfix release" pattern already established from the
    doc files. Every one of the seven recovered `TODAY.EXE`/`.COM`
    binaries has now had its compression scheme defeated and its strings
    read directly; none has actually been *run* yet (DOSBox or similar)
    — see below.

    **Also resolved: `TODAYQ1.ZIP` and `TODAYWIT.ZIP` retrieved and
    compared** (found via discmaster.textfiles.com, since neither was
    directly downloadable through pcorner.com's Wayback captures — see
    [`zips/README.md`](zips/README.md) for full provenance). Both
    confirm the "far more expanded, separately-maintained" hypothesis:
    `TODAYQ1.ZIP`'s Jan/Feb/Mar files run 5–7x longer than this repo's
    own, with real but small verbatim overlap (confirming shared
    lineage, not just a shared format) and neither Kincaid's nor
    Fiennes's self-referential entries present. `TODAYQ2.ZIP`–`Q4.ZIP`
    remain unrecovered — zero hits on discmaster.textfiles.com, and
    pcorner.com's actual downloads were never captured by the Wayback
    Machine (only its `/INFO/` description pages were).

    **Update (July 2026): v3.1 has now actually been run, in DOSBox.**
    Leo Bicknell installed `dosbox-staging` and ran `TODAY31.ZIP`'s
    `TODAY.EXE` directly, with the DOS date set to June 28 — Kincaid's
    own birthday. The live output matches the strings-based reading
    exactly, and confirms the program's actual on-screen formatting and
    color scheme (white/yellow/cyan text on blue, red highlighted years):
    the "Happy Birthday to..."/"On this day..."/"Thought for the
    day..."/"And remember..." sections, ending on the same "Pay the
    mortgage!" reminder and Kincaid's own birthday entry ("In 1947
    Patrick Kincaid, send him a card, he'll love it.") already known from
    the data files — see
    [`screenshots/today31-dosbox-1947-birthday-1.png`](screenshots/today31-dosbox-1947-birthday-1.png)
    and
    [`screenshots/today31-dosbox-1947-birthday-2.png`](screenshots/today31-dosbox-1947-birthday-2.png).
    The `DISK`/`NOPAUSE` options (documented in `TODAY.DOC`) also work as
    described, writing an identical transcript to `TODAY.PRN`. Also
    confirmed directly from the doc: the manual's own example date,
    "0628," is explained by "you will see why I used it" — Kincaid was
    pointing readers at his own easter egg.

    **Update (July 2026): all seven recovered DOS releases have now
    been run in DOSBox — v1.0, v2.1, v3.1, v3.3, v3.4, v3.5, and v3.6**,
    each on June 28, confirming a clear evolution in the program's UI
    across versions:

    - **v1.0 and v2.1** (1986/87 and April 1988) run in **plain
      monochrome text — no color, no screen-clearing at all.** Neither
      has a `DISK` option (that's a v3.x addition), and neither pauses
      by default — both need the `WAIT` option to hold the screen open,
      confirmed directly from each release's own `.DOC` (v1.0's option
      set is just `MMDD`/`HELP`/`CLEAR`/`WAIT`/`ONCE`; `DIR`/`SET`
      overrides and `NOPAUSE` don't exist until v2.1). v1.0 also turned
      up a real quirk: it has **no relative-directory support at
      all** — it expects its data files at the hardcoded path
      `C:\TODAY\`, and fails with a misleading "Not enough memory to
      read file \TODAY\TODAY.JUN" if run from anywhere else (the
      message is generic, not an actual memory problem — the fix was
      simply mounting a drive where the data really does live at
      `C:\TODAY`). v2.1 has no such issue, matching its documented
      `DIR`/`SET` override support. Both show the birthday entry in its
      short original form, **"send him a card."** — without the "he'll
      love it." that v3.1 later added. See
      [`screenshots/today10-dosbox-1947-birthday.png`](screenshots/today10-dosbox-1947-birthday.png)
      and
      [`screenshots/today21-dosbox-1947-birthday.png`](screenshots/today21-dosbox-1947-birthday.png)
      (both fit on one screen, no pagination needed).
    - **v3.1** (1990) is the first to add color, a drawn border, and
      screen-clearing — see the screenshots linked above. Ends simply
      with "Press ENTER to end Today and restore your screen."
    - **v3.3** (1991) replaces that ending with an interactive loop,
      **"Enter a new date as MMDD or just `<ENTER>` to quit,"** — new
      in this release. It also gave a live, behavioral confirmation of
      this document's own hypothesis about `TODAY.OWN`: the **"And
      remember..." reminder section is completely absent** from v3.3's
      output, exactly because `TODAY.OWN` really is missing from this
      release (confirmed directly: `ls` on the extracted archive shows
      no `TODAY.OWN` file). Per Leo Bicknell's direct observation
      running it, v3.3 does not clear the screen before showing the
      paginated continuation, unlike v3.4 onward. See
      [`screenshots/today33-dosbox-1947-birthday-1.png`](screenshots/today33-dosbox-1947-birthday-1.png)
      and
      [`-2.png`](screenshots/today33-dosbox-1947-birthday-2.png).
    - **v3.4, v3.5, and v3.6** (1992–93) all clear the screen before
      showing the continuation page (the difference from v3.3), and all
      have `TODAY.OWN` restored — "And remember... Pay the mortgage!"
      is back in all three. Version banners read live from each,
      matching the `unlzexe`-decoded strings exactly: `01/05/92`,
      `07/12/92`, `11/14/93`. See
      [`screenshots/today34-dosbox-1947-birthday-1.png`](screenshots/today34-dosbox-1947-birthday-1.png)/[`-2.png`](screenshots/today34-dosbox-1947-birthday-2.png),
      [`screenshots/today35-dosbox-1947-birthday-1.png`](screenshots/today35-dosbox-1947-birthday-1.png)/[`-2.png`](screenshots/today35-dosbox-1947-birthday-2.png),
      and
      [`screenshots/today36-dosbox-1947-birthday-1.png`](screenshots/today36-dosbox-1947-birthday-1.png)/[`-2.png`](screenshots/today36-dosbox-1947-birthday-2.png).

    Every recovered DOS release has now actually been executed and
    visually verified, not just read as strings — this bullet is fully
    resolved.

    Still open:
    - `TODAYQ2.ZIP`–`Q4.ZIP` (on pcorner.com) remain unrecovered — see
      update above.
    - This repository's own [`today.c`](today/today.c) still has no
      version banner, no copyright string, and no lunar-phase code at
      all — unlike every DOS release documented so far, including the
      v1.0 release its own data files are an exact copy of.

      **Update (July 2026): a plausible explanation, from Leo Bicknell
      himself.** He was briefly into the BBS scene, but this archive's
      files date from his college years, spent entirely on Ultrix/NetBSD
      machines — so he most likely went looking for (or ran across on a
      newsgroup) a **Unix port** of the software, rather than the DOS
      original. That would explain a bare Unix C reader with none of the
      DOS-specific version banner/copyright strings: it'd be a from-
      scratch reader written against the data-file format (the same
      pattern as Fiennes's ARCbbs module, Howland's CP/M port, and
      Jungblut's ProLine port — see Sections III/V and TODO items 4/17),
      not a direct transcription of Kincaid's own DOS source, even though
      its *data* files are an exact copy of Kincaid's 1986 originals.
      Not confirmed — the exact source (which newsgroup, whose port) is
      lost to time — but it reframes this from an unexplained anomaly to
      an expected consequence of this being yet another independent
      reader implementation, consistent with how widely this data format
      was reimplemented across platforms. (He also allows a small chance
      he wrote the reader himself, though he doesn't believe that's the
      case.)
    - Both recovered v3.3 copies are missing `TODAY.OWN` (present in
      every other version) — likely a repackaging omission rather than
      something genuinely dropped by Kincaid for that one release, but
      not confirmed either way.
    - A real, independently-archived v2.0 or v3.2 release, if either ever
      existed on its own (as opposed to v2.0 only being known from v2.1's
      changelog), has not surfaced.

12. **Golden Gate Computer Society vs. Marin-Sonoma PC User Group — same
    BBS, two names? Resolved.** The `TODAY34.ZIP` manual (README Section I)
    gives Kincaid's distribution board as the "Golden Gate Computer
    Society Bulletin Board, (415) 927-1216" — the *exact* phone number the
    `arcbbs`-hosted `TODAY_DOC` calls the "Marin-Sonoma PC User Group
    BBS." A June 16, 1994 Usenet post by Walter Olson to
    [`ba.internet`](https://groups.google.com/g/ba.internet/c/B7zuOtDipAg)
    ("Marin: GGCS Internet SIG Meeting") settles it: "The Golden Gate
    Computer Society (**formerly** the Marin / Sonoma PC Users Group) is
    starting a new special Interest Group (SIG)..." — a straightforward
    renaming of the same user group/BBS, not two groups sharing one
    system. (Provided directly by Leo Bicknell.)

13. **Chase the `MUSIC`/`SPACE`/`SCIENCE` specialized-database lead.**
    `TODAY34.ZIP`'s changelog mentions a `MUSIC` database, in the same
    file format, "found on the GGCS BBS" and readable via `TODAY`'s new
    `ADD` option. `TODAY31.ZIP`'s doc reveals this was one instance of a
    broader, Kincaid-encouraged pattern: "create specialized databases,
    (SPACE.mon, SCIENCE.mon etc) to share with the rest of us." **Update
    (July 2026):** `TODAY21.ZIP`'s doc (README Section I) shows this
    feature — the `ALTFN` option — actually dates to **v2.0, March 1988**,
    two years earlier than previously documented, and was already
    described the same way ("special interests such as MUSIC and SPACE").
    None of these — `MUSIC`, `SPACE`, `SCIENCE`, or others that may
    exist — have been located yet.

14. **Contact Bruce Goldman, and chase his `DAY9nn-*.ZIP` series and
    `NEWDAY/PC`.** Per `TODAYBBS.DOC` (see
    [`zips/README.md`](zips/README.md)), Bruce Goldman was, by 1993,
    distributing his own expanded `TODAY.nnn`-compatible data files
    (series "907") through The Charlatan's Cabin BBS, for use with both
    `TODAYBBS` and a program called `NEWDAY/PC`.

    **Update:** a June 8, 1996 Usenet post by Michael Conley to
    [`alt.bbs.wildcat`](https://groups.google.com/g/alt.bbs.wildcat/c/u0QVUS_Z7qg)
    ("TODAYBBS files") confirms Goldman was still actively maintaining
    this data at least three years later, now as series "910"
    (`DAY910-1.ZIP`–`DAY910-5.ZIP`, plus a revised `DAY910A6.ZIP`),
    distributed via `ftp.mustang.com`/`bbs.mustang.com` (Mustang
    Software, maker of Wildcat! BBS) as well as Charlatan's Cabin BBS.
    The distribution model is described as "char-ware" — no registration
    fee, donations to charity encouraged instead.

    Goldman is now the most direct maintainer of the *data* found in this
    research (as opposed to the several independent program authors), so
    the single most valuable question to ask him, if he can be found and
    reached, is **where he first got the `TODAY`/`DAY9nn` data from** —
    directly from Kincaid, from another BBS, or from some other
    intermediate source. Neither the `DAY9nn` series nor `NEWDAY/PC`
    itself has been tracked down yet; Mustang Software's old FTP/BBS
    archives (if they survive anywhere) are a new avenue worth trying for
    that.

    **In progress (July 2026):** Leo Bicknell has found a likely
    candidate — a **Bruce Goldman**
    ([linkedin.com/in/bruce-goldman-0a9535](https://www.linkedin.com/in/bruce-goldman-0a9535/)),
    Tools S/W Architect at Oracle, 1990–1995, Redwood City, CA. The
    profile itself has very little detail, but the era and location are
    a reasonable fit: Redwood City is the same Bay Area region as
    Kincaid's own Mill Valley base and the Golden Gate Computer Society
    BBS, which would make sense if Goldman got the `TODAY` data
    first-hand from that same regional BBS scene before redistributing
    it (as an expanded, separately-numbered series) through Michael
    Conley's Los Angeles-based Charlatan's Cabin BBS. LinkedIn contact
    request/message sent, no reply yet; not yet confirmed.

15. **Contact Michael Conley, author of `TODAYDOR`/`TODAYBBS`.** A third
    independent implementer of a reader for Kincaid's data format (see
    README Section I and III, and [`zips/README.md`](zips/README.md)),
    alongside Kincaid and Hugo Fiennes. Ran The Charlatan's Cabin BBS in
    Los Angeles, CA in the early 1990s. Worth the same kind of outreach
    that worked for Fiennes (item 9).

    **Update (July 2026):** Leo Bicknell found **5 candidates named
    Michael Conley on LinkedIn**, all in the greater LA area and old
    enough to fit the BBS-scene timeline — but none of their profiles
    mention BBSs, `TODAY`, or anything else that clearly identifies the
    right one.

    Tried to narrow it down via an email address and came up empty:
    - His June 8, 1996 Usenet post to
      [`alt.bbs.wildcat`](https://groups.google.com/g/alt.bbs.wildcat/c/u0QVUS_Z7qg)
      ("TODAYBBS files") has "show original"/raw-source view greyed out
      in Google Groups' current UI, and the classic `?dmode=source`
      raw-NNTP-source URL parameter doesn't expose it either — Google
      Groups anonymizes email addresses for this group entirely, not
      just in the UI.
    - The Wayback Machine couldn't be queried directly for an old capture
      of the same Google Groups URL (fetch tooling can't reach
      web.archive.org in this environment).
    - Did turn up one corroborating (but not new-identity-narrowing)
      detail: an old dial-up BBS phone list, `usbbs152.lst`, lists
      `213-656-6955 CA Los Angeles Michael Conley ... Charlatan Cabn` —
      confirming the name/BBS pairing from an independent source, with a
      different phone number than the 1996 post's (213) 654-7337
      (consistent with a long-running board that changed lines over the
      years). No email or other disambiguating detail came with it.

    **Not yet tried:** messaging all 5 LinkedIn candidates with a short
    note naming "Charlatan's Cabin BBS," "TODAYDOR"/"TODAYBBS," and
    Wildcat! BBS specifically — distinctive enough that the right one
    should self-identify immediately.

16. **Contact Jason Scott / bbsdocumentary.com**, per Hugo Fiennes's
    suggestion (item 9) — he may know more about this program's general
    place in BBS history, or have leads on the sysop(s) between Kincaid
    and Fiennes.

17. **Mick Howland, author of the CP/M port — identified, but deceased.**
    A fifth independent implementer of Kincaid's data format (see README
    Section I and III, and [`zips/README.md`](zips/README.md)), alongside
    Kincaid, Hugo Fiennes, and Michael Conley — this one on a third
    platform (CP/M, via Turbo Pascal), released May 1989. Known contact
    details were thin and decades-old: amateur radio callsign **VK6ZMH**
    (Western Australia) and "c/o Perth Omen," presumably a BBS name, from
    his own doc file.

    **Update (July 2026):** Leo Bicknell confirmed his full name —
    **Jean-Michel "Mick" Howland**, VK6ZMH, of Perth, Western Australia —
    and that he is listed as a "**Silent Key**" (the amateur radio
    community's term for a deceased operator) in the **2008** entry of
    the Wireless Institute of Australia's Silent Key database
    ([wiaawards.com](https://www.wiaawards.com/view/ViewSK.php), verified
    directly: "Jean‐Michel Howland VK6ZMH" appears under the "2008 (65)"
    heading). This closes the identification but forecloses direct
    outreach — any further leads on his port would have to come through
    family, estate, or someone from the Perth "Omen" BBS scene who knew
    him, not from Howland himself.

    **Update (July 2026): his CP/M port has now actually been run.**
    Leo Bicknell found [davidly/ntvcm](https://github.com/davidly/ntvcm)
    ("NT Virtual CP/M Machine," a cross-platform 8080/Z80/CP/M 2.2
    emulator), built it on macOS via its `mrmac.sh` script, and ran
    `TODAY.COM` directly. It hit a real gap in the emulator along the
    way: `ntvcm` didn't implement the Z80 `IN r,(C)`/`OUT (C),r`
    instructions, and Howland's Turbo Pascal runtime executes `IN L,(C)`
    during startup, so the first attempt hit ntvcm's
    "not-implemented z80 instruction" hard exit. A ~15-line patch (`IN
    r,(C)` returns a fixed `0xFF`, since ntvcm has no real I/O hardware
    to query, and updates flags per the documented instruction
    behavior; `OUT (C),r` is a no-op) fixed it. **A pull request with
    this fix has been opened upstream:
    [davidly/ntvcm#32](https://github.com/davidly/ntvcm/pull/32)**,
    explaining the gap and linking back here for context.

    With that fix, `TODAY.COM 0628` runs cleanly and produces exactly
    the expected output — the short-form birthday joke ("send him a
    card.") and the same June 28 entries already known from the DOS
    v1.0/v2.1 releases, confirming Howland's port really did reuse
    Kincaid's original databases unmodified. Transcript saved at
    [`screenshots/today-cpm-ntvcm-1947-birthday.txt`](screenshots/today-cpm-ntvcm-1947-birthday.txt)
    (plain text, since this is a console-only CP/M program with no
    color or graphics to screenshot). This means **all eight** recovered
    program releases — seven DOS versions plus this CP/M port — have
    now actually been executed and visually/textually verified, not
    just read as strings.

18. **Contact the Golden Gate Computer Society directly — it's still an
    active organization.** Per item 12 (now resolved), GGCS is the
    renamed continuation of the Marin/Sonoma PC User Group BBS Kincaid
    used to distribute `TODAY`, and per its own [About
    page](https://www.ggcs.org/about-2), it's been running continuously
    since 1981 as a 501(c)(3) — the same founding year as Butler's
    mainframe original, though the site gives no indication whether
    that's a coincidence or the group's founding is itself tied to this
    research in some way. Unlike every other lead in this document, this
    is a live, current organization with a working contact address
    (`sec@ggcs.org`, `membership@ggcs.org`, `help@ggcs.org`,
    P.O. Box 150624, San Rafael, CA 94915-0624) — worth asking whether
    any long-time members remember Kincaid, the "TODAY Conference"
    message area on their old PCBoard BBS, or have any surviving BBS-era
    records/archives.

    **In progress (July 2026):** Leo Bicknell has emailed
    `info@ggcs.org` asking about Kincaid and the BBS's history. Awaiting
    a reply.
