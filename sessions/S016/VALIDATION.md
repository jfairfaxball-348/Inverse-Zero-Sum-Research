# S016 validation

Date: 2026-10-04.

## Mathematical checks

The S016 deductions were checked symbolically for arbitrary `m>=2`.

1. **Deletion star.** For an old `tau in K_a`, `U tau^{-1}` is exactly
   the safe replacement `S_{tau->a}`; for `tau=a_*` it is `S`.
   S015-P1 therefore gives the claimed transported cores.
2. **Common residual sum.** For a deletion token of value `t`,
   `-t-sigma(M tau^{-1})=-sigma(M)`; the residual target is independent
   of the deleted token.
3. **All threshold zero sums.** Any `n)-zero sum in `U` must contain
   every token whose deletion is extremal. Length then leaves exactly
   `delta` outside positions, giving the residual family and exact
   intersection.
4. **Deficit-two graph.** The involution `x -> q-x` gives precisely
   complete bipartite components for two-value orbits and cliques for fixed
   values. The positional-intersection conditions were checked component by
   component.
5. **Common deletion.** Removing two augmented-core tokens leaves
   `n-delta-2` forced positions; an `n-2` witness therefore uses exactly
   `delta` outside positions and the same residual sum `q`.
6. **Descent arithmetic.** With `w_t` augmented multiplicity,
   `|N_{t,p}|=n-delta-w_t-1` and descent length is
   `n-w_t-1`, so `|Y|-|X|=delta`. The sum difference simplifies using
   `nt=0` to `q+u-t`. The common-deletion and descent sums differ by the
   nonzero value `u-t`.

No inference uses quotient fibers, `C_m^2` stability, Fano incidence,
reflection capacity, progressive blocks or a computation.

## Focused source check

A narrow search was made after the new threshold-star statement emerged, using
unique/common-intersection/critical-deletion EGZ terminology. The results were
adjacent generalized and fixed-length EGZ literature; no new source is promoted
to the claim index. Search non-hits carry no novelty/open-status weight.

## Repository validation

The local execution environment could not resolve `github.com`, so a direct
clone failed before any repository modification. The exact committed
`scripts/check_authority.py` was instead run on a materialized structural
mirror representing the synchronized S016 candidate state, including S016 as
the unique new completed checkpoint and B-007 as the active blocker with no
live next-session prompt.

Command:

`python3 scripts/check_authority.py`

Result:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

A JSON parse plus explicit checks for a unique completed S016 checkpoint,
active B-007 and absence of `authoritative/NEXT_SESSION_PROMPT.md` also
passed.

Separate live GitHub checks confirmed immediately before publication that
`main` was still the pinned incoming
`51b4173dcc26eed2361f670c31d77cc00311cefd`. The final remote commit/tree are
re-read after the non-force fast-forward.

These checks validate bookkeeping consistency only; they do not prove
mathematical truth, novelty, literature completeness or publication readiness.
