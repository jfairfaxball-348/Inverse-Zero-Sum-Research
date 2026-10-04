# S013 validation record

Date: 2026-10-04.

## Incoming authority

- Supplied checkpoint and live `main` both equalled
  `c19ad76f0cc65bc38ae4113557dacb8e57613431`.
- The staging branch `s013-source-route-comparison` was created from exactly
  that commit and is a strict fast-forward descendant.
- S013 was unique at entry: committed session checkpoints ended at S012 and
  there was no pre-existing `sessions/S013/` record.
- No newer committed authority changed the selected target, gate state or
  Xue Li status before the source comparison.

## Source/applicability checks

The comparison rechecked exact theorem scope rather than importing results by
title or ambient-group similarity.

1. Wang--Zhao's rank-two `s_{<=t}` formula and Ebert--Grynkiewicz's
   restricted-length extremal structure operate at cutoffs at least the group
   exponent.
2. Zhang's rank-three prescribed-length paper explicitly treats the finite
   regime `t>=exp(G)`; its listed groups/parameter ranges are not the CAND
   equal-factor family.
3. Zhao--Hong's September 2026 theorem is current and broad, but its
   `D(G)-2` cutoff is far above S012's required `<=m-1` splice range.
4. Li--Yin covers the exact broad rank-three architecture under `disc(G)`,
   but does not force a disjoint zero sum in S012's bounded length interval.
5. Schlage-Puchta's sufficiently-large-prime Property-D theorem is already
   within S008's recorded conditional route, not a new all-`m` input.
6. Hui--Zhong's 2026 rank-two theorem is near-extremal for
   Narkiewicz-sense `eta^N`, not ordinary EGZ extremality; Zhong's
   `D_k` and Hui--Li's `disc` work likewise impose different conditions.
7. Girard--Schmid 2019 remains the exact equal-factor eta/s source and its
   relevant core reduction is conditional at the D6-08 progressive hypothesis.
   Girard--Schmid 2020 remains a distinct group family.

No source non-hit is interpreted as openness, nonexistence or novelty.

## Authority-checker run

The repository's committed `scripts/check_authority.py` was run unchanged on
a materialized structural mirror of the proposed blocked S013 state. The mirror
used the original repository LICENSE bytes (verified git-blob SHA
`261eeb9e9f8b2b4b0d119366dda99c6fd7d35c64`), all required authority-path
stubs, checkpoint-record paths S000--S013, the proposed blocker state, and no
live next-session prompt.

Result:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

The zero link count belongs to the structural mirror; changed repository links
are checked separately against the staged GitHub branch before publication.

## Direct staged-state checks

The staged `authoritative/STATE.json` parses successfully and records:

- `last_completed_session=S013`;
- one completed S013 checkpoint at `sessions/S013/CLOSEOUT.md`;
- `active_owner_blockers=["B-006"]`;
- `next_session=null`, `next_brief=null`;
- `next_prompt_status=SUPPRESSED_OWNER_BLOCKER`;
- target/publication/mathematical-investigation gates OPEN;
- external-review gate CLOSED.

A direct fetch confirms `authoritative/NEXT_SESSION_PROMPT.md` is absent on
the staged branch, as required by the blocker protocol.

## Publication protocol

Before moving `main`, the staged changed Markdown records are checked for
broken local links and trailing whitespace, and remote `main` is rechecked
against the pinned incoming SHA. Publication is non-force only. Afterward the
remote head, parent relation and changed-file comparison are re-fetched.

These checks certify repository consistency only. They do not certify
mathematical truth, literature completeness, openness, novelty, significance or
external review.
