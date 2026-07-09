# Open Research Threads

Follow-ups from [README.md](README.md), roughly in order of expected
value. None of these were run down during the initial research pass.

1. **Confirm the Kincaid identification.** Section II of the README lays
   out a strong-but-unproven case that the Patrick Kincaid of 618 Douglas
   Drive, Mill Valley, CA 94941 (per `TODAY.DOC`, 1986) is the same
   Patrick James Kincaid whose obituary is cited there (1947–2020). A
   Marin County property/voter record or an old Marin-Sonoma PC User
   Group roster from the mid-1980s could close this gap directly.

2. **Butler's identity is now anchored, but not complete.** `TODAY.DOC`
   credited only "Mike Butler" as the author of the original PL/1 program
   that inspired Kincaid's PC port. A June 5, 2019 Facebook post from
   `UTMBiology` (University of Toronto Mississauga, known as **Erindale
   College** in 1981) independently confirmed his full name — **Michael
   Butler** — the institution, and the exact date the mainframe original
   first ran (June 5, 1981, matching the `today.6` self-reference
   `S06051981 TODAY ran for 1st time`). See README Section I for the full
   quote and the archived screenshot at
   [`screenshots/utmbiology-facebook-2019-06-05.png`](screenshots/utmbiology-facebook-2019-06-05.png).

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

8. **Track down a copy of `TODAY.OWN`.** `TODAY.DOC` describes this as a
   sample personal customization file distributed with the package. If a
   copy survives anywhere, it may contain further personalization or
   attribution clues beyond what's in the month files.

9. **Contact Hugo Fiennes — now the single best lead in this whole
    research thread.** See README Section V for his full profile. The
    byte-level comparison pass (Section III) turned up his own
    self-referential birthday entry in the `arcbbs` copy (`B03311971`)
    and a line dating his ARCbbs software's integration of this dataset
    to May 14, 1990 — meaning he had a copy of `TODAY`'s data roughly
    four years before the next-earliest documented point after Kincaid's
    1986 release (the GNU `gcal` conversion, March 1991). Unlike Kincaid
    and Heineman, he's alive, has a public LinkedIn, GitHub, and X/Twitter
    presence, and his own `arcbbs` README explicitly invites contact
    ("If you want any help, ask!").

    Specific things worth asking him:
    - How the `TODAY` data actually reached him by 1990 — directly from
      Kincaid, via a BBS/file-exchange network, or via Usenet?
    - His LinkedIn lists a **DEC VAX/VMS system management certification
      from Reading, UK, dated 1986** — well before his 1994–97 University
      of Warwick degree. That's exactly the kind of minicomputer training
      that would have given a UK teenager Usenet/EUnet access in the
      mid-1980s. Worth asking directly whether he actually had Usenet
      access then, and if so, whether that's how he found `TODAY` — this
      could resolve item 3's open question about whether a Usenet
      posting is real and roughly when.
    - Whether he had any direct contact with Kincaid, or knows anything
      about how the data moved between the Bay Area PC/BBS scene and the
      UK Acorn scene circa 1986–1990.

10. **Consider flagging the domain hijack.** `burgerbecky.com` currently
    redirects to a gambling site (see README Section IV) with no obvious
    sign that anyone in a position to fix it is aware. If there's a
    natural point of contact — GoDaddy abuse reporting, a member of the
    retro-computing/games-preservation community, or someone connected to
    her estate or the `Olde-Skuul` org — it may be worth a heads-up,
    independent of the Kincaid research.
