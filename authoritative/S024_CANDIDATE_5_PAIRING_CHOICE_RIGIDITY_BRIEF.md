# S024 CAND-05 pairing-choice rigidity brief

Date prepared: 2026-10-05.
Status: READY.

## Purpose

Run exactly one bounded mathematical unit, D23-01, after S023 proved D22-01.

Let `S` be a CAND-05 extremal over `G_m=C_2+C_{2m}+C_{2m}`, `m>=2`,
with `H=2G_m ~= C_m^2` and `Q=G_m/H ~= C_2^3`.

S023 proved that all seven nonzero quotient fibres have odd multiplicity and
that every maximal same-fibre pairing leaves one residual term in each fibre
and induces a length-`3m-3` ordinary-`eta` extremal over `H`.

Determine whether this extraction-choice freedom is actually rigid.

## D23-01

Take three occurrences `a,b,c` in one nonzero quotient fibre when such a
triple exists. Compare two maximal pairings that are identical outside that
fibre but use different residual representatives, so the induced rank-two
kernel sequences share all but one pair sum.

Recheck and, only if its exact hypotheses apply, use Girard--Schmid 2019
Lemma 4.2, the one-change rigidity theorem for rank-two ordinary-`eta`
extremals.

Prove or refute:

> Every nonzero quotient fibre of a CAND-05 extremal is monochromatic as a
> sequence over `G_m`.

If the statement succeeds, record the consequence that `S` has seven support
values, one in each nonzero quotient fibre, with odd multiplicities summing to
`6m+1`. Do **not** proceed in S024 to classify those seven lifts or their
multiplicity vector.

If the comparison or source theorem fails at any hypothesis, stop at that
exact defect. Do not replace it with a general lift-classification architecture.

## Required authority

Read S023 `EQUALITY_DECOMPOSITION.md`, `SOURCE_CHECK.md`, `CLOSEOUT.md`,
the S022 source/dependency records, and the relevant Girard--Schmid 2019
rank-two inverse-`eta` theorem and Lemma 4.2.

CAND-02 remains historical/paused. Its old one-change route is not authority
for this statement; D23-01 must be proved directly from the CAND-05/S023
hypotheses.

## Anti-churn boundary

This is one exact comparison lemma only. No quotient automorphism normalization,
multiplicity classification, global seven-lift parameterization, computation,
or CAND-02 architecture is authorized in S024.

Close under repository protocol, run `scripts/check_authority.py` and warranted
checks, commit safely to `main`, verify remote SHA/tree, and automatically give
the close report.
