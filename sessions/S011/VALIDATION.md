# S011 validation record

Date: 2026-10-03 UTC.

## Incoming authority

Pinned main `21b411b5a8420258b697ebdf889cb5f1e4f32e38`;
tree `425afcdeb165e13b49633d7c9e04b4954be80604`.
All 77 incoming blobs and file modes matched, and the reconstructed tree
matched exactly. Branch/PR inventory and STATE confirmed S011 uniqueness.
The remote was unchanged after the owner's continuation.

## Internal symbolic review

1. The reverse all-pairings implication chooses a residual inside a proposed
   zero sum in odd-count fibers and outside it in even-count fibers. The
   latter exists because full fiber sizes are odd. This preserves disjointness.
2. The frozen exchange uses 8m-12 common original positions, four endpoints
   and eight residual positions. Its positional kernel core has length 4m-6;
   numerical gcd length is not assumed. All two-edge totals equal lambda.
3. The auxiliary threshold sequence has length 4m-3 but overlapping endpoint
   labels. Its witness must use C and one or both of A,B, giving exactly the
   displayed one- or two-position defect.
4. For the two-edge witness rows the unused extra pair is d,r or b,r,
   respectively; the old opposite edge meets the lift and is not available.
   These residual exchanges give legitimate maximal pairings and a 3m-3
   unused kernel sequence. The three-edge row has 3m-3 unused U pairs.
5. Translation sends pair sums to z-2h. In the three-edge row 2h=a+c has a
   solution in G since a+c lies in 2G. Complement zero sums of lengths 2 or
   4 would give a forbidden 2m-zero sum; the forced short even sum is longer.
6. The parabola pair equation determines at most one distinct unordered pair
   per fiber. Both explicit p-term blocks have total zero and disjoint
   positions, so the family fails actual extremality, as expressly stated.

These are internal proof checks, not formal verification or external review.
No finite mathematical search, arithmetic sweep, solver or experiment ran;
there is no experiment/restart state to report.

## Repository and publication checks

Passed before publication:

- `python3 scripts/check_authority.py`: authority state, session uniqueness,
  independent gate semantics, blocker/prompt consistency, 59 local links and
  original license.
- `git diff --check`: no whitespace errors; the changed authority and session
  content was reviewed, with the original-position correction retained.
- Hash preservation check: all 65 incoming historical-session, protocol,
  existing-code, charter, license and session-brief blobs were unchanged.
- Checkpoint inventory: S000–S011 appear once; S012 is prepared only and has
  no session directory.
- Fresh remote main still equalled the pinned incoming SHA before preparing
  publication. A later change requires reconciliation, never force-pushing.

Remote publication uses the actual pinned main as parent, a fresh head check
and a non-force update. The final remote commit/tree are verified against the
reviewed candidate after publication; actual outgoing SHA is reported externally.
