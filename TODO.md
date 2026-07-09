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
   - Try University of Toronto's general alumni directory/LinkedIn search
     for "Michael Butler" combined with class years around 1979–1983 (if
     he was a student) — not yet attempted with that specific framing.

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

4. **Investigate "ProLine."** The GNU `gcal` data files state their
   trivia was "extracted from ProLine's today file." This likely refers
   to Morgan Davis's ProLine BBS software (an Apple II Unix-like system
   with UUCP connectivity, popular in the late 1980s/early 1990s) or to a
   specific ProLine-based BBS node Kincaid used to distribute his data.
   Contacting Morgan Davis, or searching ProLine node lists from the Bay
   Area, could establish whether this is the same distribution channel
   as the Marin-Sonoma PC User Group BBS, or a separate one.

5. **Contact the `gcal` data's editors.** The `events1`/`lives3` headers
   name Robert Heckendorn (`robert@fc.hp.com`, contributed "Today in
   History" dates) and Larry Virden / Bill Randle
   (`billr@saab.cna.tek.com`), who converted "ProLine's today file" into
   CalenTool format in 1991. Any of the three may have first-hand
   knowledge of where the ProLine file came from, or retain older copies
   with more attribution than what survived into `gcal`.

6. **Preserve the Wayback Machine capture.** The last known-good archive
   of `burgerbecky.com` is from January 16, 2026
   ([link](https://web.archive.org/web/20260116062301/http://burgerbecky.com/burgerlib/docs/)).
   Worth saving a local copy in case Wayback access changes, and worth
   checking whether Heineman's Doxygen-generated documentation for the
   `today` tool (if it existed at that URL) had any additional history
   notes beyond the source comment.

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
    independent of the Kincaid research.

11. **Track down the actual v3.1/v3.3/v3.6 DOS releases, and place this
    repo's copy in the resulting timeline.** Largely resolved: real,
    verified copies of **v3.1** (`TODAY31.ZIP`, from
    [archive.org](https://archive.org/details/msdos_festival_TODAY31)),
    **v3.4** (`TODAY34.ZIP`, from
    [bbs.retropc.se](https://bbs.retropc.se/smmwldct/TODAY34.ZIP)), and
    **v3.6** (`TODAY36.ZIP`, from
    [archive.org](https://archive.org/details/TODAY36_ZIP)) have all been
    downloaded, MD5-verified where archive.org provided a checksum, and
    are preserved in [`zips/`](zips/) — see README Section I for
    everything they revealed (the full "TODAY's History" section and
    Michael Butler's full name direct from Kincaid in v3.1/v3.4, its
    removal by v3.6, registration terms, the Golden Gate Computer
    Society/Corte Madera/PCBoard details, the full data-format spec,
    `TODAY.OWN`'s actual contents, byte-exact confirmation of the Usenet
    version banner, and confirmation the lunar-phase feature is absent
    from all three releases' code and docs alike). Line-level comparison
    against this repo's own month files now places this repo's copy
    **chronologically between v3.1 and v3.4** — see README Section I.
    Still open:
    - v3.3 specifically is still not located as a real executable — only
      known from the Usenet copyright banner in Section I.
    - None of the three recovered `TODAY.EXE` files has actually been
      *run* (in DOSBox or similar) — only their embedded strings have
      been read (directly, for the uncompressed v3.1 binary; not at all
      yet for the LZEXE-compressed v3.4/v3.6 binaries, which would need
      decompressing first to read their internal strings the same way).
    - `TODAYQ1.ZIP`–`Q4.ZIP` and `TODAYWIT.ZIP` (on pcorner.com) are
      separately-distributed, more expanded versions of the data/
      witticisms files, known only from their pcorner.com listings so
      far — worth downloading and comparing against this repo's own
      month files too, alongside the v3.1/v3.4 comparisons already done.
    - This repository's own [`today.c`](today/today.c) still has no
      version banner, no copyright string, and no lunar-phase code at
      all — unlike every DOS release documented so far. Why a data
      snapshot from this specific window would be paired with a reader
      that never had (or had already lost) the version-banner code seen
      in every surviving DOS release is still unexplained.

12. **Golden Gate Computer Society vs. Marin-Sonoma PC User Group — same
    BBS, two names?** The `TODAY34.ZIP` manual (README Section I) gives
    Kincaid's distribution board as the "Golden Gate Computer Society
    Bulletin Board, (415) 927-1216" — the *exact* phone number the
    `arcbbs`-hosted `TODAY_DOC` calls the "Marin-Sonoma PC User Group
    BBS." Worth finding out whether these were two names for the same
    board over time (a renaming, or two user groups sharing one system),
    which would tidy up a loose thread rather than a real conflict.

13. **Chase the `MUSIC`/`SPACE`/`SCIENCE` specialized-database lead.**
    `TODAY34.ZIP`'s changelog mentions a `MUSIC` database, in the same
    file format, "found on the GGCS BBS" and readable via `TODAY`'s new
    `ADD` option. `TODAY31.ZIP`'s doc reveals this was one instance of a
    broader, Kincaid-encouraged pattern: "create specialized databases,
    (SPACE.mon, SCIENCE.mon etc) to share with the rest of us." None of
    these — `MUSIC`, `SPACE`, `SCIENCE`, or others that may exist — have
    been located yet.

14. **Chase Bruce Goldman's `DAY907-*.ZIP` series and `NEWDAY/PC`.**
    Per `TODAYBBS.DOC` (see [`zips/README.md`](zips/README.md)), Bruce
    Goldman was, by 1993, distributing his own expanded
    `TODAY.nnn`-compatible data files (series "907") through The
    Charlatan's Cabin BBS, for use with both `TODAYBBS` and a program
    called `NEWDAY/PC`. Neither Goldman nor `NEWDAY/PC` turned up in a
    first search pass; worth a dedicated look.

15. **Contact Michael Conley, author of `TODAYDOR`/`TODAYBBS`.** A third
    independent implementer of a reader for Kincaid's data format (see
    README Section I and III, and [`zips/README.md`](zips/README.md)),
    alongside Kincaid and Hugo Fiennes. Ran The Charlatan's Cabin BBS in
    Los Angeles, CA in the early 1990s. Not yet searched for or
    contacted — worth the same kind of outreach that worked for Fiennes
    (item 9).

16. **Contact Jason Scott / bbsdocumentary.com**, per Hugo Fiennes's
    suggestion (item 9) — he may know more about this program's general
    place in BBS history, or have leads on the sysop(s) between Kincaid
    and Fiennes.
