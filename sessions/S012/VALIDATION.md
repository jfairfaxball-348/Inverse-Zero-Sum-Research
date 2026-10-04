# S012 validation record

Date: 2026-10-04.

## Incoming authority

- Supplied checkpoint and live `main` both equalled
  `012c9449db2b2b8f4fa488988beecb7642b74ffe`.
- Incoming tree: `1b9b26e542fa85e5ec02bd9d83219d9a59d7c28c`.
- The recursive incoming tree contained no `sessions/S012/` directory; S012 was
  unique and only prepared by its brief/live prompt.
- No newer committed authority changed the gates, target, blocker state or
  Xue Li status.

## Source recheck

Girard--Schmid 2019, arXiv:1806.07636v2, Lemma 4.4(2) and its proof were
rechecked. In the CAND specialization:

- the ambient length is `8m`;
- the progressive threshold is `m-1`;
- the conclusion is a translated short-zero-sum-free subsequence of length
  `6m+1`;
- the proof chooses a maximum-length short zero sum in the translated
  complement and uses the progressive block to complement its cardinality.

No Property-D input and no homocyclic use of Lemma 4.3 was imported.

## Internal proof checks

1. Translation by `-h` preserves every 2m-term sum because `2m h=0`.
2. In S012-P1, for `c<j<=c+r`, `q=j-r` lies in `[0,c]` exactly when
   `r<=c+1`; the positions from the complement zero sum are disjoint from the
   block.
3. The local counterexample at `r=c+2` has no two-term zero sum and is labelled
   only as a mechanism counterexample.
4. If the maximum complement short zero sum had length `t<=m`, any disjoint
   short zero sum in its remainder would concatenate to a longer short zero
   sum; the remaining length is at least `eta(G)`, contradiction.
5. If `t>=2m-c`, a zero-sum witness in the progressive block of length
   `2m-t` completes it to a forbidden 2m-term zero sum; hence
   `t<=2m-c-1`.
6. With `d=2m-t`, a zero sum of length below `d` in the remainder makes a
   longer short zero sum, while one of length exactly `d` makes a forbidden
   2m-term zero sum.
7. `|U|=6m+(d-c)`. Eta forces a further short zero sum only when `d-c>=2`,
   and its length is then at least `d+1`; no eta-free conclusion is made in the
   critical `d-c=1` case.
8. The arbitrary-length sequence `z^N` for `ord(z)=2m` is used only to refute
   length-only small-zero-sum forcing, not as a CAND example.

No solver, finite enumeration, arithmetic sweep, formalisation or external
review ran in S012.

## Repository checks

Before publication, the candidate authority/session structure is validated with
`python3 scripts/check_authority.py` on a materialized structural mirror, plus
JSON parsing, local-link checks performed by that script, and a whitespace
check on the new/changed text. The candidate Git tree is then built from the
pinned incoming tree so all unmodified blobs are preserved exactly.

Immediately before moving `main`, the live remote head is rechecked against the
pinned incoming SHA. Publication is a non-force fast-forward. Afterward the
remote head, commit parent and complete tree are re-fetched and compared with
the reviewed candidate. These checks validate repository consistency, not
mathematical truth, novelty or publication significance.
