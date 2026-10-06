# S040 source check

Date: 2026-10-06.
Purpose: D39-01 full-rank residual-structure test.
Novelty/open-status certification: **NOT ATTEMPTED**.

## ZS-74 recheck — Fan--Gao--Wang--Zhong--Zhuang 2012

Yushuang Fan, Weidong Gao, Guoqing Wang, Qinghai Zhong, Jujuan Zhuang, *On short zero-sum subsequences of zero-sum sequences*, Electronic Journal of Combinatorics 19(3) (2012), #P31.

The primary journal PDF was rechecked at the exact statements used in D39-01.

- A short zero-sum has length at most the exponent; for `C_3^3` this means length at most 3.
- Lemma 7 records `eta(C_3^3)=17` and that `C_3^r` has Property C.
- Property C says that if `eta(C_n^r)=c(n-1)+1`, then every short-free sequence of length `c(n-1)` has the form `g_1^(n-1)...g_c^(n-1)` with pairwise distinct `g_i`.
- Lemma 28 states that every short-free length-16 sequence over `C_3^3` has total sum zero; its proof writes such a sequence as `T^2` with `T` squarefree short-free of length 8.
- Lemma 29(1) gives `{14,15} subset C_0(C_3^3)`. Hence a short-free length-15 sequence is not zero-sum.

These are applied only to the representative-deletion residuals already forced by S039.

## ZS-72 recheck — Gao--Hui--Li--Li--Qu--Zhong 2024

Weidong Gao, Wanzhen Hui, Xue Li, Yuanlin Li, Yongke Qu, Qinghai Zhong, *On generalized Narkiewicz constants of finite abelian groups*, Acta Arithmetica 212 (2024), 133--172.

The primary author-hosted PDF was rechecked at Lemma 3.3(2) after D39-01 independently established necessity.

For a group `C_n^r` having Property C, take a maximal short-free sequence `T=U^(n-1)` in the Property-C form. Lemma 3.3(2) verifies directly that `U^n` has no two innerly non-zero-sum-joint short zero-sum subsequences. At `n=3`, this supplies sufficiency for the S040 normal form `U^3`.

This source construction is used only for the forward sufficiency check **after** the inverse necessity has been proved internally. It is not treated as an inverse theorem.

## Boundary

The source check validates exact theorem scope and applicability only. It does not certify that the S040 classification is new in the literature, open before S040, publication-significant, or independently reviewed. No outreach occurred.
