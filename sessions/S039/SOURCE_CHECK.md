# S039 source check

Date: 2026-10-06.
Purpose: D38-01 fresh target-wide mechanism reassessment.
Novelty/open-status certification: **NOT ATTEMPTED**.

## ZS-72 recheck — Gao--Hui--Li--Li--Qu--Zhong 2024

Weidong Gao, Wanzhen Hui, Xue Li, Yuanlin Li, Yongke Qu, Qinghai Zhong, *On generalized Narkiewicz constants of finite abelian groups*, Acta Arithmetica 212 (2024), 133--172, DOI 10.4064/aa230118-1-10.

The primary author-hosted PDF was inspected at the full relevant statements and proof interfaces.

- The sequence model is over `G^bullet=G\{0}` with repetitions; the inner relation is positional.
- Lemma 2.1 supplies the equivalence between the non-zero-sum-joint zero-sum formulation and the innerly joint minimal-zero-sum formulation used in Lemma 3.3.
- Definition 2.3 defines `eta*(G)` on squarefree position-tagged types; Lemma 2.4 proves `eta*(G)=eta^N(G)`.
- Lemma 2.6(4) records Property D for `C_3^r`; Property D implies Property C and `s(G)=eta(G)+2` in exponent three.
- Lemma 2.10 gives `eta(C_3^3)=17`.
- Lemma 3.3(3) gives `eta^N(C_3^r)=3(eta(C_3^r)-1)/2+1`. Its proof decomposes an avoiding sequence into disjoint short minimal zero sums plus a short-free remainder and proves the two representative-deletion avoidance statements used in S039.
- Those representative-deletion implications depend on the indexed avoidance hypothesis, not on equality with the threshold length; S039 applies only those implications to length 24 and then performs new integer bookkeeping.
- Lemma 3.13 was inspected in full. It assumes a whole product of minimal zero-sum sequences and absence of innerly joint minimal zero sums without a short-length restriction. Those hypotheses are not forced by CAND-03.

No `N_1` unique-factorization theorem is transferred to `eta*`; Lemma 2.4 identifies `N_1+1` with `D^N`, while `eta*` is identified with `eta^N`.

## ZS-74 — Fan--Gao--Wang--Zhong--Zhuang 2012

Yushuang Fan, Weidong Gao, Guoqing Wang, Qinghai Zhong, Jujuan Zhuang, *On short zero-sum subsequences of zero-sum sequences*, Electronic Journal of Combinatorics 19(3) (2012), #P31.

The primary journal PDF was statement-checked only as a possible source for the promoted successor; S039 does not apply it to prove an additional target claim.

- The paper defines short-free sequences in the ordinary exponent-bounded sense.
- It records `eta(C_3^3)=17` and Property C for `C_3^r`.
- Lemma 28 states every short-free sequence over `C_3^3` of length 16 has sum zero; its proof also writes such a sequence as `T^2` with `T` squarefree short-free of length 8.
- Lemma 29(1) states `{14,15} subset C_0(C_3^3)`, so in particular a zero-sum sequence of length 15 cannot be short-free.

These statements are reserved for S040 D39-01. Their presence here is a source preflight, not a completed deduction about CAND-03 residuals.

## Boundary

The source check establishes exact applicability boundaries only. It does not certify novelty, openness, reviewer endorsement or publication significance. Search non-hits are not used as evidence. No outreach occurred.
