# S064 source check — CAND-03G Stage 1

Date: 2026-10-11. Unit D63-01. Purpose: the source boundaries the Stage 1
classification depends on. **Novelty/open-status certification: NOT
ATTEMPTED.** Nothing here checks, repairs or extends the external candidate
argument (C-262–C-266).

## Inspection levels used

- **P-proof:** the primary text of the proof was read.
- **P-statement:** the primary statement was read in full (journal or
  author-hosted text).
- **P-abstract:** only the primary abstract or publisher record was read.
- **S-review:** the statement was taken from a signed zbMATH Open review or an
  ACM/publisher abstract, because the full text was not reachable from this
  session. That is secondary evidence of scope. It is used only where noted.
- **Metadata:** title, venue and date only.

Author-hosted texts can differ from the typeset journal versions. Where S064
relies on lemma numbers from an author text, the numbering is cross-checked
against an independent citation of that number. Downloaded files were kept in
the session scratchpad, not the repository. SHA-256 of the inspected PDFs:

| File | SHA-256 |
| --- | --- |
| ZS-72 author PDF (`imsc.uni-graz.at/zhong/paper/generalized-narkiewicz.pdf`, 39 pp., created 2023-10-02) | `df18c49280429726908433795196d50af410b0a631133bfea888b893e80299ce` |
| ZS-81 author preprint (`yvesedel.de/Papers/EEGKR.pdf`, created 2006-12-10) | `31f619ede8adb77f47b0c4c1a00010adec1ddef200293a2226d64776d9677c57` |
| ZS-75 author-hosted offprint (`geroldinger-0836a9.gitlab.io/74-narkiewicz-constant.pdf`) | `830a3448043a72ff37f61ec1532c9d2fc4fd3435a5eb54e0b07d75f956b44340` |
| ZS-82 Nankai-hosted preprint of Fan–Gao–Zhong 2011 | `92a7a9d92a11e67b2d8068aff20a55d38f2188e12426e6fbd6704027ec6d1ba1` |
| ZS-90 arXiv:2609.29878v3 | `de655d2d2c2e043268260b705c1ae46130436dd43fb719e988944fde2bcd163d` |
| ZS-91 arXiv:2608.19090v1 | `0c3549012255711dbe8ad6c93d9ce6a6107f3f440a233726a7f61c22582a2711` |

## ZS-72 — Gao, Hui, Li, Li, Qu, Zhong, *On generalized Narkiewicz constants of finite abelian groups*, Acta Arith. 212 (2024), 133–172

Publisher record (IMPAN, published online 2024-01-19, paywalled): P-abstract.
Author manuscript: read in full, **P-proof** for Lemma 3.3. zbMATH Zbl
1547.11125 (review by W. Narkiewicz) names Theorems 3.6, 3.14, 4.8, 4.18 and
4.21 of the published version, matching the author manuscript's numbering.
S039, S041 and S061 cited Lemma 3.3(2)/(3) under the same numbers. Page numbers
below are author-PDF pages.

| Item | Exact content (paraphrase faithful to the text) | Relevance |
| --- | --- | --- |
| Def. 1.1 (p. 3) | `eta^N(G)` is the least `l` such that every sequence over `G•` of length `l` has two innerly non-zero-sum-joint zero-sum subsequences of length at most `exp(G)`. "Short" means `1<=|S|<=exp(G)` (p. 4). | Same invariant as D5. For `C_3^r`, short means length 1–3. |
| Lemma 2.1(8) (p. 5) | Two innerly joint short **minimal** zero-sum subsequences exist iff two innerly non-zero-sum-joint short zero-sum subsequences exist. | Reformulation used in Lemma 3.3(3). |
| Def. 2.3, Lemma 2.4 (p. 7–8) | `eta*(G)` (GGW squarefree-type formulation) equals `eta^N(G)`; separately `N_1(G)+1=D^N(G)`. | Any `eta*` statement about `C_3^r` is an `eta^N` statement. None found (see ZS-75–ZS-77 below). |
| Lemma 2.6(4) (p. 9) | `C_3^r` has Property D (citing Harborth 1973 Hilfssatz 3 and EEGKR07 Lemma 2.3.3). | Gives `s=eta+2` and Property C. |
| Lemma 3.1 (p. 10) | If `r in [1,2]` or `n=2`: `eta^N(C_n^r)=(2^r-1)n+1` (from GGW11 Cor. 3.11, GPZ13 Thm 2.6). | `r=1,2`: 4 and 10 at `n=3`. |
| Lemma 3.3(1) (p. 10) | `eta^N(C_n^r)>=(2^r-1)n+1`. | Lower bound only. |
| Lemma 3.3(2) (p. 10–11), with proof | If `C_n^r` has Property C then `eta^N>=n(eta-1)/(n-1)+1`. **Proof:** take `T` of length `eta-1` with no short zero-sum; Property C gives `T=U^{n-1}` with `U` squarefree over `G•`; then `S=U^n` "has no innerly non-zero-sum-joint short zero-sum subsequences". | The `U^n` construction. At `n=3` it is the `(2)=>(1)` direction of Claim B for the cores `U` arising this way, in a proof, for **all** `r`. |
| **Lemma 3.3(3)** (p. 11), with proof | **If `n=3`, then `eta^N(C_3^r)=3(eta(C_3^r)-1)/2+1`, for every `r`.** Proof: by Property D, `s=eta+2` and Property C hold. Take `|S|=3(eta-1)/2+1` with no innerly joint short minimal zero-sum subsequences. Write `S=B_1...B_l B_{l+1}...B_s S'` (3-atoms, then 2-atoms, then a short-free rest), pick `g_i in supp(B_i)`. Then `(g_1...g_l)^{-1}S` has no zero-sum subsequence of length 3 and `(g_1...g_s)^{-1}S` has no short zero-sum subsequence, so `l>=(eta-3)/2`, `s>=(eta+1)/2`, `l=(eta-3)/2`, `s=(eta+1)/2`, `|S'|=0`, and a short-free sequence of length `eta-1` that is not of Property C form appears: contradiction. | **The Claim A lead.** Statement covers all `r`. **No equality-case or inverse statement** at length `3(eta-1)/2`; see the proof-interior note below. |
| Thm 3.6(4),(5) (p. 12) | `eta^N(C_3^3)=25` (`n=3`, `alpha=1`) and `eta^N(C_3^4)=58` (`19*3+1`), each via Lemma 3.3(3), Prop. 3.4 and Lemma 2.10. The lower bounds use `(0^{-1}(-g+T))^n` from a cap-type `T`. | `r=3,4` instances of Claim A. |
| Lemma 3.7(4) (p. 14–15) | `N_1(C_3^r)=3r` (from GH06 Thm 6.2.8), so `D^N(C_3^r)=3r+1` by Lemma 2.4. | General-rank `C_3^r` statement for a **different** invariant (unrestricted zero-sum lengths). PA-NONHIT for A/B. |
| Lemma 3.13 (p. 16) | For `C_p^r` (`p>=3` prime, `r>=2`): a parity count for products of minimal zero-sum sequences without innerly joint minimal zero-sum subsequences, used for `N_1`. | Unrestricted lengths, used for `N_1` (S039 inspected it). Not a short-witness statement. PA-NONHIT. |
| Thm 4.20(2),(3) (p. 32–34) | `s*(C_n^r)>=2^r n+1`; `s*(C_n^3)=9n+1` for `n=3^a5^b`. | `s*` (length exactly `n`). PA-NONHIT. |
| Lemma 4.19 (p. 31), Thm 4.21 (p. 34) | `s*`, `s^N`, `s**` (two joint zero-sum subsequences of length exactly `exp(G)`); for `C_3^r` all three equal `3(s-1)/2+1`. Direct only. | Different invariant (length exactly 3). PA-NONHIT for B. |
| Conj. 4.23 (p. 36) | `s^N(C_n^2)=4n+1`. | Only conjecture in the paper. **No remark, problem or conjecture on the `eta^N` inverse problem or on `C_3^r` structure.** |

**Proof-interior note (FL-121 discipline).** The proof of Lemma 3.3(3) is an
upper-bound argument at length `3(eta-1)/2+1`. Its counting closes with zero
slack there. Read at length `3(eta-1)/2=3c_r-3`, the same displayed bounds give
only `l>=(eta-5)/2` and `s>=(eta-1)/2`, a slack of 2 in `l+2s+|S'|`, so the
displayed chain does not by itself state or force the multiplicity-three
structure. (This is arithmetic on the printed inequalities, not a proof
attempt.) The source states no equality case. The CAND-03 programme's own
`r=3` necessity proof (S039–S057) began from exactly this proof and needed
further rank-specific inputs (`s=19`, `eta=17`, Fan et al. 2012 Lemma 27(3)
proof, Lemmas 28/29). Whether the external sketch's route is a short extension of
this proof is a Stage 2a/4 question (C-266, C-272), not decided here.

## ZS-73 = ZS-71 — Hui, Zhong, *On the inverse problem of the Narkiewicz-sense η-constant for finite abelian groups of rank 2*, JCTA 224 (2026), 106238 (51 pp.)

Full text paywalled from this session: **S-review** (zbMATH Open, record
8239174, signed review by E. Bettio, dated 2026-08-13). S037/S038 recorded a
publisher-version check (C-173, ZS-73 row).

- For `G=C_n+C_n`: **all sequences over `G•` of length `3n-1=eta^N(G)-2`**
  without two innerly non-zero-sum-joint short zero-sum subsequences are
  classified: two parametrized families and six exceptional configurations,
  the latter only for `n in {4,5,6}`.
- Using that classification: the inverse problem at length `eta^N(G)-1` for
  `G=C_n+C_{nm}`, `m,n>=2`, where `eta^N(G)=2n+nm`. Either
  `S=f_1^n f_2^{nm}(af_1+f_2)^{n-1}`, or a further `n=4` configuration.
- Not inspected: introduction remarks on rank `>=3` (S037 recorded that the
  paper says only few results are known in larger rank).

**Reconciliation with the register and with Claims A/B at `r=2`.** The ZS-73
register entry (length `3n-1=eta^N(C_n^2)-2`) is **correct**. With
`eta^N(C_n^2)=3n+1`, `n=3` gives `eta^N(C_3^2)=10=3c_2-2` (Claim A at `r=2`,
`c_2=4`). Claim B at `r=2` concerns length `9=eta^N-1`. ZS-73 Theorem 1.1
treats length `8=eta^N-2`, a **sub-extremal** length about which Claim B says
nothing. So neither the record, nor the convention, nor the claims are off.
ZS-73 does **not** state Claim B at `r=2`. The homocyclic length-`3n` inverse
is in ZS-79 and GPZ13 (below). Its `C_n+C_{nm}` results need `m>=2` and do not
cover `C_3^2`. CAND-03 registers ZS-71 and ZS-73 as one source under two IDs
(S037 vs S038). They are kept without renumbering.

## ZS-79 — Fan, Zhong, *On joint short minimal zero-sum subsequences over finite abelian groups of rank two*, JCTA 212 (2025), 105984 (CC BY)

Open access, but ScienceDirect refused automated retrieval (HTTP 403). Abstract
with formulas via ACM DL (P-abstract). Statements via zbMATH Zbl 1564.11020
(review by S. Ribas): **S-review**.

- Thm 1.1: `eta^N(C_{n1}+C_{n2})=3n_1+1` if `n_1=n_2`, and `2n_1+n_2` if
  `n_1<n_2` (`1<n_1|n_2`).
- Conj. 1.2 (GGW11 Conj. 3.4): for `C_m^2`, `m>=2`, a length-`3m` sequence over
  `G•` without innerly joint short minimal zero-sum subsequences is
  `e_1^m e_2^m (a_1e_1+a_2e_2)^m` for a basis `(e_1,e_2)` and
  `a_1,a_2 in [1,m-1]`, `gcd(a_1,a_2,m)=1`.
- GPZ13 verified Conj. 1.2 for `m` prime. Thm 1.3 proves it for all `m>=2`
  except `m=4`, where `e_1^4e_2^4(2e_1+2e_2)^2(e_1-e_2)(-e_1+e_2)` also occurs.
- **`m=3` is the `r=2` inverse direction of Claim B in published form**. It is
  a one-directional (necessary-form) statement with conclusion
  `S=U^3`, `U={e_1,e_2,a_1e_1+a_2e_2}` squarefree, `|U|=3=c_2-1`. It is
  compatible with Claim B. The family also lists `(a_1,a_2)=(2,2)`, where
  `e_1+e_2+(2e_1+2e_2)=0`. The theorem only asserts that avoiding sequences lie
  in the family, not that every member avoids, so this is no contradiction.
  It is not a counterexample. The converse direction at `r=2` is the ZS-72
  Lemma 3.3(2) / GGW11 Prop. 3.10(2) construction.

## ZS-78 — Fan, Hui, Zhong, Colloq. Math. 176 (2024), 207–217

zbMATH Zbl 1565.20063 (S-review) and S041/S042 records: value and length-`eta^N-1`
structure for `C_2+C_m` and `C_3+C_m` in the range `C_n+C_{nm}`, `n in {2,3}`,
`m>=2`. Rank two and non-homocyclic, so it does not cover `C_3^2`. PA-INGREDIENT
(scope-distinct) for B, unchanged.

## ZS-75–ZS-77 — the Gao–Geroldinger–Wang `eta*` line

- **ZS-75**, GGW, IJNT 7 (2011), 1463–1502. Author-hosted offprint, **P-statement**.
  Def. 3.3 (`s`, `eta`, `g`). Conj. 3.4 (p. 1472) is the `C_n+C_n` length-`3n` form
  above. The authors say they "will not work on the inverse problem". p. 1473:
  "If `G=C_3^r`, then `g(G)-1` is the maximal size of a cap in `AG(r,3)` (see
  [EEGKR07, Lemma 5.2])". Prop. 3.10(2): the lower-bound sequence
  `e_1^{n_1}...e_r^{n_r}e_0^{n_r}`. Cor. 3.11(1): `eta*(C_n)=n+1`
  (`=4=3c_1-2` at `n=3`). Cor. 3.11(2) concerns elementary 2-groups. **No `C_3^r`
  `eta*` value or structure.**
- **ZS-76**, Gao–Li–Peng 2011, and **ZS-77**, Gao–Peng–Zhong 2013: zbMATH
  reviews (Zbl 1246.11173, 1290.11149) cover `N_1` for rank two. Per Zbl
  1564.11020, GPZ13 Thm 2.6 gives `eta^N(C_n^2)=3n+1` and GPZ13 verifies GGW
  Conj. 3.4 for prime `m`, so `m=3` is included. S-review. Rank two only.
- `eta*` and `eta^N` are identical (ZS-72 Lemma 2.4). The citers of ZS-75–ZS-77
  found by Semantic Scholar and zbMATH (see the search log) contain no `C_3^r`
  `eta*` or `eta^N` structure statement.

## Cap and zero-sum identities

- **ZS-81**, EEGKR, Q. J. Math. 58 (2007), 159–186. Author preprint (Dec. 2006),
  **P-proof** for Lemma 5.2 and P-statement elsewhere. GGW11 ([2, Lemma 5.2]) and
  FGZ11 ([3, Lemma 5.2]) cite the same lemma number. Content: Lemma 2.3.2 (p. 5):
  if an extremal `s`-sequence has height `n-1` then `eta=s-n+1`. Lemma 5.2
  (p. 18), for `G=F_3^r`: (1) `supp` gives a bijection between squarefree
  sequences with no zero-sum subsequence of length 3 and caps; (2) `g(G)-1` is
  the maximal cap size in `AG(r,3)`; (3) `s(G)=2g(G)-1` [Harborth 1973,
  Hilfssatz 3], and every length-`(s-1)` sequence without a length-3 zero sum is
  `T^2` with `supp(T)` a maximal cap. Remarks 4.7.1 (p. 17):
  `s(C_3^3)=19`, `s(C_3^4)=41`, `s(C_3^5)=91`, and
  `(g(C_3)-1,...,g(C_3^5)-1)=(2,4,9,20,45)` (OEIS A090245). p. 20: history and
  attributions (table below). For `AG(6,3)` in 2006: a 112-cap exists and the
  upper bound is 114. Lemma 5.4: maximal caps are affinely unique for
  `r in {3,4,5}`.
- **ZS-82**, Fan, Gao, Zhong, *On the Erdős–Ginzburg–Ziv constant of finite
  abelian groups of high rank*, J. Number Theory 131 (2011), 1864–1874.
  Preprint, **P-statement**. Prop. 4.1.2 (p. 8): for `G=F_3^r` the maximal cap
  size equals `g(G)-1` and `s(G)=2g(G)-1`. Lemma 2.4 proof: `C_3^r` has
  Property D [Harborth; EEGKR07 Lemma 2.3.3]. p. 2: the precise value "is known
  so far only for `r<=6`" [Potechin; Edel].
- **ZS-83**, H. Harborth, *Ein Extremalproblem für Gitterpunkte*, J. Reine
  Angew. Math. 262 (1973), 356–360. Not accessed; Hilfssatz 3 (`s=2g-1` for
  `C_3^r`) is relied on through ZS-81 and ZS-82 (secondary attribution).

### Cap-value / identity table (C-265 resolution)

`c_r` = maximal cap size in `AG(r,3)` = `g(C_3^r)-1`. All arithmetic columns
are permitted arithmetic on published numbers.

| `r` | `c_r` | Source and inspection level | `3c_r-2` (Claim A) | `3c_r-3` (Claim B length) | `eta=2c_r-1` | `s=2c_r+1` | Independent published cross-check |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 2 | Trivial (`AG(1,3)` is one 3-point line); ZS-81 Remarks 4.7.1, P-statement | 4 | 3 | 3 | 5 | `eta(C_3)=3`, `s(C_3)=5` (ZS-81 Thm A); `eta^N(C_3)=4` (ZS-72 Lemma 3.1; ZS-75 Cor. 3.11(1)) |
| 2 | 4 | ZS-81 p. 20 (ovals; "maximal size of a cap in AG(2,3) is 4") and Remarks 4.7.1, P-statement | 10 | 9 | 7 | 9 | ZS-81 Thm A: `eta=7`, `s=9`; `eta^N(C_3^2)=10` (ZS-72 Lemma 3.1; ZS-79 Thm 1.1) |
| 3 | 9 | R.C. Bose, Sankhyā 8 (1947), 107–166 (ZS-84; via ZS-81 p. 20, Metadata); ZS-81 Remarks 4.7.1, P-statement; programme S045 Lean cap bound and S061 explicit core | 25 | 24 | 17 | 19 | `s(C_3^3)=19` (ZS-81 R4.7.1); `eta(C_3^3)=17` (ZS-72 Lemma 2.10; ZS-74); `eta^N=25` (ZS-72 Thm 3.6(4)) |
| 4 | 20 | G. Pellegrino, *The maximal order of the spherical cap in S_{4,3}*, Matematiche 25 (1970), 149–157, publ. 1971, Zbl 0223.50020 (ZS-85; via ZS-81 p. 20, Metadata); uniqueness R. Hill 1983; ZS-81 Remarks 4.7.1, P-statement | 58 | 57 | 39 | 41 | `s(C_3^4)=41` (ZS-81 R4.7.1); `eta(C_3^4)=39` (ZS-72 Lemma 2.10); `eta^N=58` (ZS-72 Thm 3.6(5)) |
| 5 | 45 | Edel–Ferret–Landjev–Storme, JCTA 99 (2002), 95–110 (ZS-86), **P-abstract**: "45 is the size of the largest caps in AG(5,3)"; ZS-81 Remarks 4.7.1 | 133 | 132 | 89 | 91 | `s(C_3^5)=91` (ZS-81 R4.7.1) |
| 6 | 112 | A. Potechin, Des. Codes Cryptogr. 46 (2008), 243–259 (ZS-87), **P-abstract**: "the maximal size for a cap in AG(6,3) is equal to 112", unique up to affine equivalence; ZS-82 p. 2 | 334 | 333 | 223 | 225 | none beyond the identities |
| `>=7` | unknown | ZS-88 Thackeray, arXiv:2206.09804 (P-abstract): no 289-cap in `AG(7,3)`; lower bound 236 (ZS-81 table); OEIS A090245 (ZS-89, revision 2026-08-12) lists values only through dimension 6. An unrefereed ResearchGate preprint (Sept. 2025) claims exact values for `n=7,8,9`: Metadata only, **not relied on** | — | — | — | — | Out of scope: D-175 keeps `c_r` as a parameter and excludes numerical `c_r`, `r>=7` |

**Identities (C-265 → source-verified at P-statement level, Harborth
secondary):**

1. `c_r=g(C_3^r)-1`: ZS-81 Lemma 5.2(2); ZS-82 Prop. 4.1.2; ZS-75 p. 1473.
2. `s(C_3^r)=2g(C_3^r)-1=2c_r+1`: ZS-81 Lemma 5.2(3) and ZS-82 Prop. 4.1.2,
   both attributing it to Harborth 1973 (ZS-83).
3. `eta(C_3^r)=s(C_3^r)-2=2c_r-1`: ZS-81 Lemma 2.3.2 with Lemma 5.2(3)
   (extremal `T^2`, height `2=n-1`). Restated as "`s(G)=eta(G)+2`" in the ZS-72
   proof of Lemma 3.3(3), via Property D (ZS-72 Lemma 2.6(4)).

The registered values `c_1..c_6=2,4,9,20,45,112` and both identities hold as
recorded in C-265. The `c_3`, `c_4` originals (Bose, Pellegrino) and Harborth
were not opened. Their values come from ZS-81/ZS-82 primary statements and are
cross-checked by the independent `eta`, `s` and `eta^N` values in the last
column.

## Other sources checked in S064

| ID | Source | Level | Finding |
| --- | --- | --- | --- |
| ZS-90 | G. Wang, *Disproof of a Conjectured Upper Bound for the Davenport Constant*, arXiv:2609.29878 (v1 2026-09-24, v3 2026-10-05) | P-statement (full v3 text) | Davenport excess, Narkiewicz–Śliwa conjecture disproof (rank `>=8`). Cites ZS-72 only as "further developments and related inverse problems". v1 has no such citation. PA-NONHIT. |
| ZS-91 | A. Geroldinger, W. Yang, *On a classical zero-sum invariant*, arXiv:2608.19090 (2026) | P-statement | The invariant `nu(G)`. Cites ZS-78 among higher-rank inverse work. PA-NONHIT. |
| ZS-92 | A. Geroldinger, D.J. Grynkiewicz, Q. Zhong, *Combinatorial Factorization Theory*, AMS Math. Surveys Monogr. 296 (2026), est. 800 pp. | Metadata and TOC only (AMS bookstore; no DOI or preview reachable) | Chapters include "Classical zero-sum invariants: Inverse problems" and an "Open problems" appendix (Appendix B, quoted by ZS-90 for Davenport problems). **Inaccessible.** PA-MENTION. |
| — | Geroldinger, Wang, Yang, arXiv:2609.17127 (2026); Volkmann, arXiv:2609.19810, 2609.22972 (2026); Gao, Jiang, Mu, arXiv:2607.11313 (2026); Hui, Huang, Li, Colloq. Math. 175 (2024) 77–95; Hui, Li, arXiv:2510.14215 (2025); Zhong, Combinatorica 45 (2025) #31 | Title/abstract | `nu(G)`, non-abelian small Davenport constants, local/cyclic problems, rank-two inverse problems for other invariants. PA-NONHIT. |

## Boundary

These checks fix exact source scope only. They do not certify novelty,
openness, significance or correctness, and S064 used no search non-hit as
evidence of openness. No author or other person was contacted.
