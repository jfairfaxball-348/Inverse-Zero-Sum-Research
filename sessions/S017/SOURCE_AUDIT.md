# S017 source audit — prescribed-length zero-sum counting congruences

Date: 2026-10-04. Retrieval/inspection is bounded and source-first. Search non-hits are not evidence of novelty, openness or literature completeness.

## 1. Counting target

For the live CAND-02 notation set `n=2m` and

`G=C_2 + C_n + C_n`, `exp(G)=n`.

S016 produces a threshold sequence `U=MO` of length `4n+1`, with each deletion `W_tau=U tau^{-1}` (`tau in M`) a length-`4n` extremal satisfying `N_n(W_tau)=0`. The required source input must therefore control the **full-group** zero-sum count at length `n`, preferably together with lengths `2n,3n,4n`, at lengths `4n` or `4n+1`.

## 2. Primary sources and exact applicability

### ZS-43 — Sury 1999 / Chevalley--Warning

B. Sury, *The Chevalley-Warning theorem and a combinatorial question on finite groups*, Proceedings of the AMS 127 (1999), 951--953, DOI `10.1090/S0002-9939-99-04704-8`.

The inspected result is a prime-cyclic counting congruence: for a sequence of `2p-1` elements of `C_p`, the number of `p`-term subsequences with prescribed sum is congruent to `1 mod p` for target sum zero and `0 mod p` for a nonzero target. This is a genuine Chevalley--Warning counting input, but its group is `C_p`, not `C_2+C_n+C_n`. No rank-three or mixed-primary transfer is stated by the source, so it is **NOT DIRECTLY APPLICABLE**.

### ZS-44 — Reiher 2007 / Kemnitz congruences

C. Reiher, *On Kemnitz' conjecture concerning lattice points in the plane*, Ramanujan Journal 13 (2007), 333--337.

For odd prime `p`, the inspected paper derives polynomial-method congruences for prescribed-length zero-sum counts in `C_p^2`; examples include the relations at total sizes `3p-3`, `3p-2/3p-1` and `4p-3` among counts of lengths `p,2p,3p`. These identities are central to the Kemnitz proof. Their exact ambient group is `C_p^2`, and `p` is prime. They are **ANALOGY / WRONG GROUP HYPOTHESIS** for `C_2+C_n+C_n`; no transfer is made.

### ZS-45 — Gao 2003 restricted-size counting

W. D. Gao, *On zero-sum subsequences of restricted size II*, Discrete Mathematics 271 (2003), 51--59, DOI `10.1016/S0012-365X(03)00038-4`.

Section 4 states a p-group congruence with an auxiliary prime power `p^a` satisfying

`p^a >= 1 + d*(G)`

and a sequence-length window

`p^a + d*(G) <= |S| <= 2p^a - 1`.

The accessible ScienceDirect rendering defines `r(S,g)` as the number of `exp(G)`-term subsequences, while the displayed proof embeds every term as `(1,a_i)` in `C_{p^a}+G`; under the stated upper length bound, the first-coordinate-zero nonempty subsequences have length `p^a`. Thus the rendered definition and proof coincide automatically only when `p^a=exp(G)`. S017 does not silently repair or extrapolate this source.

Even under the conservative specialization `p^a=exp(G)=n`, the 2-primary target group has

`d*(G)=(2-1)+(n-1)+(n-1)=2n-1`,

so the source hypothesis would require `n >= 2n`, impossible. The theorem is therefore **NOT APPLICABLE** to `N_n(U)` or the deletion star. Gao's reproduction of Olson's p-group parity congruence is likewise p-group-only and does not furnish an arbitrary mixed-primary transfer.

### ZS-46 — Gao--Geroldinger 2007 higher-power p-group recurrence

W. D. Gao and A. Geroldinger, *On the number of subsequences with given sum of sequences in finite abelian p-groups*, Rocky Mountain Journal of Mathematics 37 (2007), 1541--1550, DOI `10.1216/RMJM/1194275933`.

This is the decisive source for S017. Theorem 1.1 assumes a finite abelian p-group `P`, a target `g`, a nonnegative integer `kappa`, and

`|T| > kappa exp(P) + d*(P)`.

Part (2), for `p=2`, gives divisibility of the total prescribed-sum subsequence count by `2^(kappa+1)`. Part (3) states that sufficiently high fixed-length counts in each residue class modulo `exp(P)` are determined modulo `p^kappa` by the initial ones. The proof gives the exact recurrence: if `E=exp(P)`, `l=|T|`,

`w=ceil((1+d*(P))/E)`, `j in [0,E-1]`, and `r >= kappa+w`, then

`sum_{i=0}^r N_g^{(r-i)E+j}(T) (-1)^(iE) * C(l-((r-i)E+j), iE) = 0 (mod p^kappa)`.

The count is positional: the source explicitly counts index subsets with multiplicity of appearance.

**Exact CAND applicability.** `G=C_2+C_n+C_n` is a 2-group exactly when `n` is a power of two, equivalently when `m` is a power of two. Then

`E=n`, `d*(G)=2n-1`, `w=2`.

With `kappa=2`, both `|U|=4n+1` and `|W_tau|=4n` satisfy the strict length hypothesis `>4n-1`, and `r=4,j=0` is the first admissible recurrence index. This yields a genuine modulo-4 fixed-length constraint on the infinite 2-primary subfamily. It does **not** apply to general mixed-primary `n`.

### ZS-47 — later prescribed-length p-group existence refinements

Later checked p-group lines include Xiaoyu He's work on zero-sum subsequences of length `kq` over finite abelian p-groups and Han--Zhang's *On zero-sum subsequences of prescribed length*. Their inspected statements are existence/threshold results under p-group and prime-size hypotheses, not an exact full-group `N_n` congruence at the S016 `4n/4n+1` threshold. They do not strengthen the S017 transfer.

### ZS-48 — congruence-condition zero-sum literature

Geroldinger--Grynkiewicz--Schmid, *Zero-sum problems with congruence conditions* (2011), studies existence of zero-sum subsequences with length in prescribed congruence classes, with rank/p-group hypotheses in the relevant results. It is not a theorem counting `n`-term full-group zero sums in the mixed-primary CAND group, so it is recorded as adjacent rather than imported.

## 3. Mixed-primary transfer boundary

If `n` has an odd prime factor, `G=C_2+C_n+C_n` is not a p-group. Projecting to a Sylow p-subgroup does not preserve the desired count: a subsequence whose projection sums to zero can have arbitrary nonzero sum in the complementary primary component. Thus a p-group congruence for the projection counts an aggregate over complementary sums, not `N_n^G(T)`. No inspected primary theorem supplies the missing full-group disaggregation.

The group-algebra proof of ZS-46 also does not automatically transfer by putting the complementary component into the coefficient ring: the factors encoding a complementary-coordinate term do not lie in the p-group augmentation ideal used to obtain the p-adic divisibility. S017 does not promote an unproved coefficient-ring modification.

## 4. Source status conclusion

One theorem class is genuinely applicable: ZS-46 on the 2-primary subfamily `m=2^s`. It yields a new finite modulo-4 dependency and modulo-8 total-incidence constraint derived in `ZERO_SUM_COUNTING_CONGRUENCES.md`. No checked source gives an all-`m` mixed-primary analogue at the exact S016 threshold. This is a source boundary, not an openness or novelty claim.