# S028 validation

Date: 2026-10-05.

## Mathematical validation

1. If both members of the fixed nonzero `L`-coset are positive, the S025
   bucket equation and S027 coset placement give
   `k_q+k_{q+ell}=m-1`; this excludes `m=2`.
2. Equal doubles give `t=x_{q+ell}-x_q in G_m[2]`, and quotient images give
   `pi(t)=ell`, so `t!=0`.
3. The complete two-fibre block has exactly `2m` terms and sum `t`.
4. With `u=x_ell`, the residual triple has sum
   `w=h+t+u in H`. The threshold for `K w` gives a kernel completion of
   `-w` using at most `m-1` terms.
5. A completion using at most `m-2` terms lifts with the three residual
   terms to a zero sum of length at most `2m-1`, contradicting the defining
   CAND-05 hypothesis. Hence the exact minimum completion length is `m-1`.
6. The boundary case `u=t` gives `w=h`. It has an `m-1`-term
   completion by the `m-1` copies of `h`, while a shorter completion
   would create a short zero sum inside `K`. Thus the current structure
   genuinely does not exclude simultaneous positivity for even `m>=4`.

No mathematical computation or formalisation was required.

## Repository validation

The exact repository `scripts/check_authority.py` was run in a reconstructed
proposed-state harness containing the S028 completed checkpoint, the S029 ready
brief/prompt, checkpoint paths through S028, and an exact copy of the repository
Apache-2.0 licence blob.

Checker output:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

`python3 -m json.tool authoritative/STATE.json` also passed.

As in S027, the reconstructed harness does not reproduce the complete Markdown
history, so its zero local-link count is not represented as a full-tree link
audit. The proposed GitHub tree is separately checked for S028 uniqueness,
required changed paths, S029 brief/prompt consistency, and final remote SHA/tree.
