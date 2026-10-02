# Claims and source register

Observations below are bounded source inspections through **2026-10-02**.
They are attributed source claims, not programme proofs or proof audits.
No mathematical result has been proved by this programme.

## Claim classifications

Use: SOURCE_RESULT, PROGRAMME_PROVED, CONDITIONAL, CONJECTURE,
EXPERIMENTAL, FORMALISED, PRIVATE_REVIEW, JOURNAL_ACCEPTED, JOURNAL_PUBLISHED.
A source theorem may be recorded as SOURCE_RESULT even when its proof was not
independently checked; the inspection level and dependency boundary must remain
explicit.

| Claim | Classification | Bounded content | Support / remaining boundary |
| --- | --- | --- | --- |
| C-01 | SOURCE_RESULT | Long cyclic zero-sum-free sequences have classical structural theorems. | ZS-03 bootstrap lead; original dependency still requires theorem-level reinspection if selected. |
| C-02 | SOURCE_RESULT | Classical Property B and Property C in rank two are established for all positive integers. | ZS-06 introduction summarizes multiplicativity, Reiher's prime Property B theorem, and B => C. Not a fresh target. |
| C-03 | SOURCE_RESULT | The formerly conjectural intermediate restricted-length inverse classification for rank-two groups is now settled. | ZS-08 states the prime case and says, with other work, the conjectured structure follows for all rank-two abelian groups. This retires the old ZS-05 conjectural lead. |
| C-04 | CONJECTURE; SOURCE_RESULT | Property D is conjectured for every `C_n^r`; a 2025 preprint proves it for all sufficiently large primes in rank two. | ZS-09 gives the general conjecture/definition; ZS-06 Theorem 1 gives an existential prime cutoff. Full current scope remains to be refreshed. |
| C-05 | SOURCE_RESULT | Gao--Jiang--Mu (2026) determine two local zero-sum invariants and corresponding inverse problems in their stated arithmetic regimes. | ZS-15 abstract only; current activity, not an automatically open extension. |
| C-06 | SOURCE_RESULT | E-JC permits AI-assisted mathematical research including help finding proofs/arguments, while authors retain checking/citation responsibility; new submissions use the web system. | PUB-01 and PUB-02 rechecked 2026-10-02. Target-specific fit remains pending. |
| C-07 | SOURCE_RESULT | Integers was excluded at bootstrap because its observed author instructions prohibit substantive AI-produced mathematics/code/bibliographic content. | PUB-03 bootstrap inspection; recheck only if policy changes. |
| C-08 | SOURCE_RESULT | For `G=C_2+C_{2m}+C_{2m}`, the original Girard--Schmid direct theorem gives `s(G)=8m+1`; their published inverse work treats the distinct family `C_2+C_2+C_{2n}`. | ZS-10 original direct paper and ZS-11 inverse paper. A 2024 restatement contains a conflicting compressed formula for the `n=1` case; use the original source pending clarification. |
| C-09 | SOURCE_RESULT | Gao et al. define `eta^N(G)` using two innerly non-zero-sum-joint short zero-sum subsequences and obtain `eta^N(C_3^3)=25`. | ZS-12 definitions and Theorem 3.6 inspected in full-text copy; no proof audit. |
| C-10 | SOURCE_RESULT | Hui--Zhong (2026) completely settle the inverse Narkiewicz-sense `eta` problem for all rank-two finite abelian groups. | ZS-13 abstract/introduction inspected; version of record scheduled in JCTA 224 (Nov. 2026). |
| C-11 | SOURCE_RESULT | Zhong (2025) investigates and gives the rank-two inverse problem for `D_k(G)`. | ZS-14 introduction and main theorem statements inspected. |
| C-12 | SOURCE_RESULT | A September 2026 preprint announces a disproof of Gao's long-standing conjecture that `nu(G)` always attains its lower bound. | ZS-16 abstract inspected only; exact counterexample group/proof not inspected. |

| C-13 | SOURCE_RESULT | Gao's original rank-two Conjecture 0.2 is the `4n-4` Property-D statement, and Gao proves its multiplicativity: validity at `m` and `n` implies validity at `mn`. | ZS-17 original journal record/abstract; ZS-19 confirms the rank-two prime reduction. |
| C-14 | SOURCE_RESULT | Historical Property-D cases include prime `p=7`; Schmid's 2012 synthesis records Property D for every `m<=10` and for moduli with no prime divisor greater than 7. | ZS-18 abstract/full paper and ZS-19 Section 3. |
| C-15 | SOURCE_RESULT | Schlage-Puchta's 2025 Theorem 1 proves Property D for every sufficiently large prime using an existential cutoff `p_0`; the current arXiv page still lists only v1 and gives no numerical cutoff. | ZS-06 / ZS-20 rechecked 2026-10-02. |
| C-16 | SOURCE_RESULT | A 2010 Schlage-Puchta conference abstract, described as joint work with Gautami Bhowmik, publicly announced as an application that every large prime has Property D. | ZS-21 conference abstract; announcement-level evidence, not a proof audit. |
| C-17 | SOURCE_RESULT | E-JC's current policy permits substantive AI assistance in mathematical research/proof discovery subject to human checking; its web submission and referee-conflict rules were rechecked for CAND-01. | PUB-01/PUB-02 rechecked 2026-10-02. |
| C-18 | SOURCE_RESULT | Public sources currently identify Pingzhi Yuan with South China Normal University and provide a public institutional correspondence route; his E-JC publications evidence inverse/zero-sum expertise. | REV-02, REV-03 and current institutional/publication records; no willingness inferred. |

## Primary and official sources

| ID | Source | Inspection level in S001 | Purpose / limit |
| --- | --- | --- | --- |
| ZS-01 | Gao and Geroldinger, *Zero-sum problems in finite abelian groups: a survey* (2006), https://www.sciencedirect.com/science/article/pii/S0723086906000351 | Bootstrap search/title record | Historical orientation only. |
| ZS-03 | Vsevolod Lev, *Zero-sum-free sequences with few subsequence sums*, https://math.haifa.ac.il/seva/Papers/SavChenY.pdf | Bootstrap introduction/theorems | Cyclic structural baseline; no proof audit. |
| ZS-04 | Qinghai Zhong, *On the Inverse Problem of the k-th Davenport Constants for Groups of Rank 2* (2025), https://doi.org/10.1007/s00493-025-00153-3 | Superseded by fuller S001 record ZS-14 | Retained for continuity. |
| ZS-05 | Grynkiewicz and Liu, *A Multiplicative Property for Zero-Sums II* (2022), https://doi.org/10.37236/10921 | Journal abstract/publication record | Historical conjectural restricted-length stage; now paired with ZS-08 completion. |
| ZS-06 | Jan-Christoph Schlage-Puchta, *All large primes have Property D*, arXiv:2509.02436 v1 (2025-09-02), https://arxiv.org/abs/2509.02436 | Abstract, introduction, theorem statement | Rank-two Property D progress; theorem is "sufficiently large primes", not all primes. |
| ZS-07 | Gao, Jiang, Mu, *Two local zero-sum problems*, arXiv:2607.11313 v1, https://arxiv.org/abs/2607.11313 | Superseded by S001 record ZS-15 | Retained for continuity. |
| ZS-08 | John J. Ebert and David J. Grynkiewicz, *Structure of a sequence with prescribed zero-sum subsequences: Rank two p-groups*, Eur. J. Comb. 118 (2024), 103888, https://doi.org/10.1016/j.ejc.2023.103888 and https://arxiv.org/abs/2211.08515 | Abstract and introduction/main-scope text inspected | Retires intermediate restricted-length rank-two lead. |
| ZS-09 | Weidong Gao, Alfred Geroldinger and Wolfgang A. Schmid, *Inverse zero-sum problems*, Acta Arith. 128.3 (2007), https://www.impan.pl/shop/en/publication/transaction/download/product/83143 | Full introduction, definitions and conjecture statement inspected | Direct/inverse definitions; Property C/D and general Property-D conjecture. |
| ZS-10 | Benjamin Girard and Wolfgang A. Schmid, *Direct zero-sum problems for certain groups of rank three*, JNT 197 (2019), https://doi.org/10.1016/j.jnt.2018.08.016 and https://arxiv.org/abs/1806.07636 | Abstract plus original theorem/proof context inspected | Direct baseline for CAND-02; original source controls the `n=1` value. |
| ZS-11 | Benjamin Girard and Wolfgang A. Schmid, *Inverse zero-sum problems for certain groups of rank three*, Acta Math. Hung. 160 (2020), https://arxiv.org/abs/1809.03178 | Abstract/source record inspected | Inverse baseline for `C_2+C_2+C_{2n}`; not a completion of CAND-02. |
| ZS-12 | Gao, Hui, Li, Li, Qu, Zhong, *On generalized Narkiewicz constants of finite abelian groups*, Acta Arith. 212 (2024), https://doi.org/10.4064/aa230118-1-10 | Full definitions and Theorem 3.6 inspected via author-hosted full text | Defines generalized invariants and direct baseline for CAND-03. |
| ZS-13 | Wanzhen Hui and Qinghai Zhong, *On the inverse problem of the Narkiewicz-sense eta-constant for finite abelian groups of rank 2*, JCTA 224 (2026), 106238, https://doi.org/10.1016/j.jcta.2026.106238 | Abstract and definition/introduction inspected | Completes rank-two inverse line; no proof audit. |
| ZS-14 | Qinghai Zhong, *On the Inverse Problem of the k-th Davenport Constants for Groups of Rank 2*, Combinatorica 45, article 31 (2025), https://doi.org/10.1007/s00493-025-00153-3 | Full web introduction and main theorem statements inspected | Closes rank-two `D_k` lead. |
| ZS-15 | Weidong Gao, Xiao Jiang and Yucen Mu, *Two local zero-sum problems*, arXiv:2607.11313 v1 (2026-07-13), https://arxiv.org/abs/2607.11313 | Abstract inspected | Recent local/inverse activity; no proof audit. |
| ZS-16 | Alfred Geroldinger, Guoqing Wang and Wenkai Yang, *On a classical zero-sum invariant II: Disproof of a long-standing conjecture*, arXiv:2609.17127 v1 (2026-09-15), https://arxiv.org/abs/2609.17127 | Abstract only | Freshness warning; exact counterexample/proof not inspected. |
| PUB-01 | E-JC About / AI policy, https://www.combinatorics.org/ojs/index.php/eljc/about/index | Official current page inspected 2026-10-02 | Scope, refereeing, explicit proof-discovery AI permission, author responsibility, cost. |
| PUB-02 | E-JC Submissions, https://www.combinatorics.org/ojs/index.php/eljc/about/submissions | Official current page inspected 2026-10-02 | Active web route, checklist, PDF/HTML abstract requirements, AI-policy checkbox. |
| PUB-03 | Integers author instructions, https://math.colgate.edu/~integers/submit.html | Bootstrap policy inspection | Excluded under observed substantive-AI prohibition. |
| PUB-04 | Research in Number Theory official scope/guidelines | Bootstrap only | Provisional venue; exact workflow not resolved in S001. |
| PUB-05 | The Ramanujan Journal official scope/guidelines | Bootstrap only | Provisional venue; target-specific fit unresolved. |
| REV-01 | Pingzhi Yuan institutional profile | Bootstrap only | Identity/research-interest lead; no willingness inferred. |
| REV-02 | Pingzhi Yuan, *Subsequence Sums of Zero-sum-free Sequences*, E-JC 16(1) R97 (2009), https://doi.org/10.37236/186 | Journal record/abstract inspected | Public inverse/zero-sum expertise evidence. |
| REV-03 | Xiangneng Zeng and Pingzhi Yuan, *On Sequences Without Short Zero-Sum Subsequences*, E-JC 30(4) P4.21 (2023), https://doi.org/10.37236/11963 | Journal record, abstract and paper introduction inspected | Explicit inverse short-zero-sum expertise; no review willingness implied. |

| ZS-17 | W. D. Gao, *Two Zero-Sum Problems and Multiple Properties*, JNT 81 (2000), 254--265, https://doi.org/10.1006/jnth.1999.2459 | Journal record/abstract plus theorem-scope inspection | Original rank-two Conjecture 0.2 and multiplicativity. |
| ZS-18 | B. Sury and R. Thangadurai, *Gao's conjecture on zero-sum sequences*, Proc. Indian Acad. Sci. Math. Sci. 112 (2002), 399--414, https://www.isibang.ac.in/~sury/surythanga.pdf | Primary full-text/abstract inspected | Proves Gao's conjecture for prime `p=7` (Theorem 3.1). |
| ZS-19 | Wolfgang A. Schmid, *Restricted inverse zero-sum problems in groups of rank two*, QJM 63 (2012), 477--487, https://doi.org/10.1093/qmath/haq042 | Author-hosted full text, Section 3 inspected | Property C/D definitions, multiplicativity/prime reduction, `m<=10`, and products with prime divisors at most 7. |
| ZS-20 | Jan-Christoph Schlage-Puchta, *All large primes have Property D*, arXiv:2509.02436v1, https://arxiv.org/abs/2509.02436 | Current arXiv metadata, abstract and theorem statement rechecked | Existential sufficiently-large-prime result; no explicit cutoff in statement. |
| ZS-21 | Jan-Christoph Schlage-Puchta, *Additive Combinatorics and Convex Geometry*, 2010 Saarbruecken Colloquium on Combinatorics abstract, https://www.kolkom.de/download/abstracts/2010-Saarbruecken-Abstracts.pdf | Conference abstract inspected | Joint-work attribution to G. Bhowmik and public announcement that every large prime has Property D. |
| REV-04 | Current public South China Normal University / 2026 publication records for Pingzhi Yuan | Public identity/affiliation rechecked 2026-10-02 | Current identity/contact-route verification only; address not copied into repository. |

## Source-access and interpretation gaps

- No source proof was independently checked for correctness in S001.
- CAND-01 and CAND-04 require another current-status audit after owner selection.
- CAND-02 and CAND-03 are source-defined extensions, but S001 did not locate a
  primary source explicitly certifying those exact cases as open.
- The later generalized-Narkiewicz paper's compressed rank-three EGZ
  restatement conflicts with the original Girard--Schmid `n=1` theorem; the
  original theorem is controlling for CAND-02 unless clarified.
- ZS-16 was inspected only at abstract level, so its exact disproof mechanism
  and counterexample scope are intentionally not recorded as checked facts.
- The bounded search did not locate a journal publication for ZS-06; absence of
  a hit is not proof that none exists.

## Source discipline

For every later target-specific decision, record author/title, publication or
preprint status, DOI/URL, version/retrieval date, exact theorem/conjecture
identifier, access level, quantifiers and relation to the programme claim.
Failed searching never upgrades UNKNOWN to OPEN. Do not mirror copyrighted
papers into the repository; preserve links and bounded original summaries.


## S002 bounded status observations

Searches through 2026-10-02 did not locate an all-prime/all-`n` Property-D
completion after arXiv:2509.02436, a numerical value of its existential cutoff,
or a later theorem clearly shrinking the residual finite-prime layer. These are
search observations, not SOURCE_RESULT claims and not an openness certificate.

No proof of any Property-D source was independently audited in S002. The 2010
conference item is announcement-level evidence. The programme has still proved
no mathematical result.
