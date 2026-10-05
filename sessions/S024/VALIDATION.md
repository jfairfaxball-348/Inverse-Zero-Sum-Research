# S024 validation

Date: 2026-10-05.

## Mathematical validation

D23-01 was checked at the exact source and pairing hypotheses.

1. S023 gives positive odd multiplicity in every nonzero quotient fibre, so a
   nontrivial fibre has at least three occurrences.
2. After choosing `a,b,c`, the remaining number `r_q-3` in that fibre is
   even. All other pairs can be frozen, so the two maximal pairings differ in
   exactly one pair sum and one residual representative.
3. Each kernel has `3m-3=eta(C_m^2)-1` terms and is ordinary-`eta`
   extremal by S023.
4. Their common pair-sum sequence has length
   `3m-4=eta(C_m^2)-2`, meeting Girard--Schmid 2019 Lemma 4.2 exactly.
5. Equality `T(a+b)=T(a+c)` cancels in the free abelian monoid, giving
   `a+b=a+c`, hence `b=c`.
6. Choosing a third occurrence against any desired pair proves the entire
   fibre monochromatic. Multiplicity one is trivial.

The primary-paper PDF statement and proof page for Lemma 4.2 were inspected
directly. No computation, formalisation or quotient normalization was used.

## Repository validation

The repository's exact `scripts/check_authority.py` was run locally in a
reconstructed proposed-state harness containing an S024 completed checkpoint,
the S025 ready brief/prompt, all checkpoint paths, and an exact copy of the
repository Apache-2.0 licence blob.

Checker output:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

As in S023, the reconstructed harness does not reproduce the complete Markdown
history, so its zero local-link count is not represented as a full-tree link
audit. The proposed GitHub tree is separately checked for required authority
paths, S024 checkpoint files, S025 prompt/brief consistency and changed
relative links before `main` is advanced.

Final remote `main` SHA/tree and changed-path presence are verified after the
fast-forward checkpoint.
