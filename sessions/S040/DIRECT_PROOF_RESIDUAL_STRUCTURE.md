# S040 — direct-proof residual structure

Date: 2026-10-06.
Unit: D39-01.
Target: CAND-03.
Status: **COMPLETED; ALL FOUR S039 SIGNATURES COLLAPSE TO ONE EXACT NORMAL FORM.**

## 1. S039 input

Fix a CAND-03 sequence `S` of length 24 and a maximal packing

`S = B_1 ... B_s S_0`

of pairwise position-disjoint short minimal zero sums, with the first `l` blocks of length 3, the remaining `s-l` blocks of length 2, and `|S_0|=r`.

S039 proved that

`(l,s,r) in {(6,8,2),(7,8,1),(8,8,0),(6,9,0)}`.

For **every** choice of one representative position `x_i|B_i`, the residual

`R_x=(x_1...x_s)^(-1)S`

is short-free. It has length 16 when `s=8) and length 15 when `s=9`.

The arbitrary-choice quantifier is retained throughout.

## 2. The three s=8 branches

Let `s=8`. For every transversal `x`, `R_x` is short-free of length 16. Fan--Gao--Wang--Zhong--Zhuang Lemma 28 therefore gives

`sigma(R_x)=0`.

Fix all representatives except the one chosen from a single packed block `B_j`. If two positions of `B_j` have values `a` and `b`, the two residual sum equations differ only by the deleted value, hence

`0=sigma(S)-a-t=sigma(S)-b-t`

for the same fixed contribution `t`. Therefore `a=b`.

So **every packed block is constant-valued**.

A nonzero 2-term zero sum in an exponent-three group has the form `a(-a)` with `a != -a`; it cannot be constant. Hence no packed 2-block can occur. The signatures `(6,8,2)` and `(7,8,1)` are impossible, leaving only

`(l,s,r)=(8,8,0)`.

Each of the eight packed blocks is then a constant 3-atom `a_i^3`, so

`S=a_1^3 ... a_8^3=U^3`, where `U=a_1...a_8`.

Deleting one position from each block gives `U^2`, which is short-free of length 16. Property C therefore forces the eight `a_i` to be pairwise distinct. Thus `U` is squarefree of length 8, and `U^2` (hence also `U`) is short-free.

This already gives an exact normal form on every `s=8` branch.

## 3. Exact length-15 residual structure

Let `R` be any short-free length-15 sequence over `C_3^3`.

First, every value has multiplicity at most 2, since three copies of any nonzero value sum to zero.

Next, `|supp(R)|<=8`. Otherwise choose nine distinct support values and call their squarefree product `T`. Since `T|R`, `T` is short-free. In exponent three, `T^2` is also short-free: a 2-term zero sum or an all-distinct 3-term zero sum would already occur in `T`; a 3-term zero sum with a repeated value collapses to three equal copies, while `T^2` has only two copies of each value. But `|T^2|=18>=eta(C_3^3)=17`, contradiction.

Since length 15 with multiplicities at most 2 requires at least eight support values, it follows that `|supp(R)|=8`, with multiplicity pattern

`2,2,2,2,2,2,2,1`.

Let `u` be the unique singleton value. Appending one more copy of `u` preserves short-freeness: any new short zero sum containing the new copy can be replaced by the old copy, except a putative triple `u^3`, but after appending there are only two copies. Thus `Ru` is short-free of length 16, and Lemma 28 gives

`sigma(R)+u=0`.

Therefore the unique singleton is determined by the total sum:

`u=-sigma(R)`.

Lemma 29(1) independently gives `sigma(R)!=0` for every short-free length-15 sequence, consistent with the nonzero singleton.

## 4. The s=9 branch is impossible

The remaining S039 signature is `(6,9,0)`. Here `S` is a product of nine zero-sum blocks, so `sigma(S)=0`, and exactly three packed blocks have length 2.

For any representative transversal `x=(x_1,...,x_9)`, the residual `R_x` is short-free of length 15. By the preceding lemma it has exactly one singleton, and

`u_x=-sigma(R_x)=sum_i x_i`.

Fix one packed block `B_j`, fix representatives in the other eight blocks, and let their value-sum be `t`. Suppose `B_j` contains two distinct selectable values `a!=b`. Compare the residual `R_a` obtained by deleting `a` with `R_b` obtained by deleting `b`. At the multiplicity level,

`R_b=R_a+a-b`.

Both residuals have the profile seven doubles plus one singleton. The only possible count transitions for the two affected values are:

- `(0,1)->(1,0)`, moving the singleton from `b` to `a`; or
- `(1,2)->(2,1)`, moving the singleton from `a` to `b`.

In the first case the singleton identities give

`b=a+t` and `a=b+t`,

so `2(a-b)=0`. Multiplication by 2 is invertible in `C_3^3`, hence `a=b`, contradiction.

In the second case the singleton identities give

`a=a+t` and `b=b+t`,

hence `t=0`.

Consequently, if `B_j` is nonconstant, the sum of the representatives chosen from all other eight blocks must be zero **for every choice** of those representatives.

But each of the three 2-blocks is necessarily nonconstant. Choose one 2-block as `B_j`; among the other eight blocks there is another nonconstant 2-block. Varying the representative in that second block changes `t` by a nonzero amount, contradicting the requirement that every such `t` equal zero.

Therefore the signature `(6,9,0)` is impossible.

## 5. Exact target-wide classification

All signatures except `(8,8,0)` are excluded. Hence every CAND-03 sequence has the form

`S=U^3`

where `U` is squarefree of length 8 and `U^2` is short-free. Equivalently in exponent three, `U` is squarefree short-free of length 8.

Conversely, Fan et al. give Property C for `C_3^3`, and Gao--Hui--Li--Li--Qu--Zhong 2024 Lemma 3.3(2) verifies that for any maximal short-free `T=U^2` in the Property-C form, the sequence `U^3` has no two innerly non-zero-sum-joint short zero-sum subsequences.

Thus the exact internal classification is:

> A length-24 sequence `S` over `C_3^3\{0}` has no two innerly non-zero-sum-joint short zero-sum subsequences if and only if
> `S=U^3` for a squarefree short-free length-8 sequence `U`.

This is a **programme-proved classification from checked source inputs**. It is not yet a claim of literature novelty, previous openness, publication significance, or independent mathematical review.

## 6. Route disposition

D39-01 is closed. No further residual variant is warranted: the residual mechanism already supplies the full target normal form.

Exactly one successor is appropriate, S041/D40-01: independently verify the S040 proof chain and run a focused primary-source/current-status overlap audit for the resulting classification before any manuscript or outreach decision.
