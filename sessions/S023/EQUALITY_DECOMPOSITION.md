# S023 — equality decomposition for CAND-05

Date: 2026-10-05.
Classification: **PROGRAMME-PROVED BOUNDED MATHEMATICS / NOT INDEPENDENTLY REVIEWED.**

Let `G=G_m=C_2+C_{2m}+C_{2m}` with `m>=2`,
`H=2G ~= C_m^2`, `Q=G/H ~= C_2^3`, and `pi:G->Q`.
Let `S` be an actual CAND-05 extremal: `|S|=6m+1` and no nonempty zero-sum
subsequence of `S` has length at most `2m`.

The source inputs are `eta(H)=3m-2`, `exp(H)=m`, and `eta(Q)=8`.
The direct Girard--Schmid proof uses this subgroup/quotient scale; the argument
below supplies the equality arithmetic at `eta(G)-1`.

## Extraction fact in the quotient

Because `eta(Q)=8` and `exp(Q)=2`, every quotient sequence of length at least
8 contains a nonempty quotient-zero subsequence of length at most 2. In
`C_2^3` such a block is either one quotient-zero term or a pair of equal
quotient values.

Starting with a sequence of length `6m`, one may therefore extract
`3m-3` disjoint quotient-zero blocks of length at most 2: before the last
required extraction the unused quotient sequence still has length at least 8.

## S023-P1 — no term lies in H

Assume for contradiction that `g|S` with `g in H`. Use `g` itself as a
quotient-zero singleton block `B_0`. From `Sg^{-1}`, of length `6m`, extract
disjoint blocks `B_1,...,B_{3m-3}` whose quotient sums are zero and whose
lengths are at most 2.

Every `sigma(B_i)` lies in `H`. Thus
`L=sigma(B_0)sigma(B_1)...sigma(B_{3m-3})` is a sequence over `H` of length
`3m-2=eta(H)`. By the definition of `eta(H)`, some nonempty subsequence of
`L` of length `t<=m` has sum zero. Lifting the selected block sums back to
their disjoint original blocks gives a zero-sum subsequence of `S` of length
at most `2t<=2m`, a contradiction.

Therefore `S` has no term in `H`.

## S023-P2 — exactly 3m-3 quotient-zero pairs and a seven-term residual

Now every term of `S` has nonzero quotient image. Repeatedly apply
`eta(Q)=8` to the unused quotient sequence. Since no quotient-zero singleton
exists, every extracted quotient-zero block has length exactly 2 and its two
terms have the same quotient image.

After extracting `3m-3` such pairs `P_1,...,P_{3m-3}`, exactly seven terms
remain:
`S=P_1...P_{3m-3}R` with `|P_i|=2` and `|R|=7`.

This number is maximal. If there were `3m-2` disjoint quotient-zero pairs,
their sums would form a sequence over `H` of length `eta(H)=3m-2`. A zero
sum of at most `m` pair sums would lift to a zero sum of at most `2m` terms
of `S`, impossible.

Hence the maximum number of disjoint quotient-zero pairs is exactly `3m-3`.

## S023-P3 — the residual is the unique C_2^3 eta-extremal

Take any decomposition from S023-P2. If `pi(R)` contained a quotient-zero
subsequence of length at most 2, S023-P1 rules out a singleton, so it would
contain one additional quotient-zero pair. Together with the existing
`3m-3` pairs this would give `3m-2` disjoint pairs, contradicting maximality.

Thus `pi(R)` has length 7 and no nonempty zero sum of length at most 2, so it
is an `eta(Q)-1` extremal. In `C_2^3`, a length-7 sequence with no zero term
and no repeated term is exactly the squarefree sequence of all seven nonzero
elements.

Consequently every nonzero quotient fibre of `S` has odd multiplicity, and
every maximal same-fibre pairing leaves exactly one residual term from each
nonzero fibre.

## S023-P4 — every maximal pairing induces a rank-two eta-extremal

For any maximal same-fibre pairing define
`K=product_{i=1}^{3m-3} sigma(P_i)`, a sequence over `H` of length
`3m-3=eta(H)-1`.

If `K` had a nonempty zero-sum subsequence of `t<=m` pair sums, the union
of the corresponding disjoint pairs in `S` would be a zero-sum subsequence
of length exactly `2t<=2m`, contradicting CAND-05 extremality.

Therefore `K` is an ordinary-`eta` extremal over `H ~= C_m^2`.
Girard--Schmid 2019 Theorem 2.4, recalling the unconditional rank-two
inverse-`eta` theorem, applies to `K`. Property D is not used.

## Extraction-choice dependence

The quotient-level conclusions are canonical: every nonzero quotient fibre is
occupied an odd number of times; every maximal same-fibre pairing has exactly
`3m-3` pairs; every such pairing leaves one residual term in each of the seven
nonzero quotient fibres; and every resulting pair-sum sequence is a rank-two
`eta` extremal.

S023 does **not** prove that the residual representative chosen inside a fibre
is canonical, that two different maximal pairings give the same pair-sum
sequence, or that a quotient fibre is monochromatic in `G`. That is the first
downstream lift-compatibility question and is not solved in S023.

## D22-01 verdict

**SUCCEEDS in full.** All four requested implications are proved for every
`m>=2`.

No CAND-02 local-hole, replacement-core, progressive-block, counting, or
binary-design architecture was used.
