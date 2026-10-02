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


## S003 CAND-02 claim/source refresh

The following source claims were rechecked or added on **2026-10-02**. They are
source-result records, not programme proofs.

| Claim | Classification | Bounded content | Support / remaining boundary |
| --- | --- | --- | --- |
| C-19 | SOURCE_RESULT | Girard--Schmid's direct Theorem 3.2 gives `s(C_2+C_{2m}+C_{2m})=8m+1`; the equal-factor proof is unconditional in `m>=1`. | ZS-10 primary full text re-inspected; proof treats `n=1` and Corollary 3.3 records the `n=1` route. No proof audit. |
| C-20 | SOURCE_RESULT | Girard--Schmid's inverse Theorem 5.1 classifies the ordinary EGZ-extremal sequences for `C_2+C_2+C_{2n}`, `n>=2`, not for `C_2+C_{2m}+C_{2m}`, `m>=2`; the `n=1` endpoint `C_2^3` has the unique squarefree length-eight extremal sequence. | ZS-22 full arXiv v2 theorem statement and Section 5 inspected. |
| C-21 | SOURCE_RESULT | Li--Yin study direct/inverse `disc(G)` for rank-three groups including `C_2+C_{n_1}+C_{n_2}` with `2|n_1|n_2`, hence the CAND-02 ambient family, but the invariant is distinct from the ordinary EGZ inverse condition. | ZS-23 publication metadata/abstract; no proof audit. |
| C-22 | SOURCE_RESULT | Hui--Li (2026) give current inverse structural work for `disc(G)` in rank two and publicly identify Xue Li with Tianjin University of Commerce. | ZS-24 official IMPAN publication record/abstract. |
| C-23 | SOURCE_RESULT | E-JC's current policy explicitly allows AI help in researching mathematics and finding a proof/argument subject to human checking; Schmid's 2011 E-JC paper is a rank-three inverse zero-sum structural precedent. | PUB-01/PUB-02 rechecked; PUB-06 added. |
| C-24 | SOURCE_RESULT | Elsevier's generative-AI journal policy, updated June 2026, allows AI tools in the research process/formal research methods with human oversight and disclosure; the controlling CAND-02 direct paper appeared in Journal of Number Theory. | PUB-07 plus ZS-10 publication record. This supports workflow eligibility, not acceptance. |

### Added/expanded sources

| ID | Source | S003 inspection level | Purpose / limit |
| --- | --- | --- | --- |
| ZS-22 | Benjamin Girard and Wolfgang A. Schmid, *Inverse zero-sum problems for certain groups of rank three*, Acta Math. Hung. 160 (2020), 229--247, DOI 10.1007/s10474-019-00983-w, arXiv:1809.03178v2, https://arxiv.org/abs/1809.03178 | Full abstract, definitions, Section 5 and Theorem 5.1 statement inspected; surrounding proof architecture inspected for scope only | Controlling distinct-family inverse baseline and `m=1` degeneracy; no proof audit |
| ZS-23 | Xue Li and Qiuyu Yin, *On the existence of zero-sum subsequences of distinct lengths over certain groups of rank three*, Acta Math. Hung. 174 (2024), 323--340, DOI 10.1007/s10474-024-01482-3 | Publication metadata and abstract/current indexing inspected | Same rank-three group architecture under the distinct `disc(G)` invariant |
| ZS-24 | Wanzhen Hui and Xue Li, *The structure of sequences with zero-sum subsequences of the same length on finite abelian groups of rank two*, Acta Arith. 224 (2026), 221--231, DOI 10.4064/aa251008-9-4, https://www.impan.pl/en/publishing-house/journals-and-series/acta-arithmetica/online/116487/the-structure-of-sequences-with-zero-sum-subsequences-of-the-same-length-on-finite-abelian-groups-of-rank-two | Official publisher abstract/author record inspected | Current inverse-zero-sum activity and Xue Li public affiliation/contact-route evidence |
| PUB-06 | Wolfgang A. Schmid, *The Inverse Problem Associated to the Davenport Constant for C_2+C_2+C_{2n}, and Applications to the Arithmetical Characterization of Class Groups*, E-JC 18(1) (2011), P33, DOI 10.37236/520, https://www.combinatorics.org/ojs/index.php/eljc/article/view/v18i1p33 | Official E-JC article record/abstract inspected | CAND-02-adjacent rank-three inverse publication precedent |
| PUB-07 | Elsevier, *Generative AI policies for journals*, updated June 2026, https://www.elsevier.com/about/policies-and-standards/generative-ai-policies-for-journals | Current official policy inspected | JNT-backup substantive AI/research-method eligibility; recheck any journal-specific exception before submission |
| REV-05 | Xue Li current public publication/affiliation record via Hui--Li, Acta Arith. 224 (2026), DOI 10.4064/aa251008-9-4 | Official publisher author record inspected | Identity/affiliation route and current inverse-zero-sum expertise; no willingness inferred |

### S003 bounded current-status observations

Searches used exact titles/DOIs, citation trails, recent 2024--2026 papers and
preprints, theses/dissertations, survey/conference records, small groups and
alternate notation including
`C_2+C_{2m}^2`, `C_2 x C_{2m} x C_{2m}`,
`Z/2Z + (Z/2mZ)^2`, `8m`, `2m`, `s(G)-1` and EGZ-extremal language.

The bounded search did **not** locate:

- a full ordinary-`s(G)` inverse classification for
  `C_2+C_{2m}+C_{2m}`, `m>=2`;
- an ordinary-EGZ inverse theorem isolating `m=2`;
- a clear prime/power subfamily completion;
- a later theorem explicitly subsuming the CAND-02 classification; or
- a source explicitly stating that the exact CAND-02 question is open.

These are search observations and remain subject to external expert correction.
They do not upgrade CAND-02 to an OPEN classification.

The 2024 generalized-Narkiewicz paper's compressed ordinary-`s(G)`
restatement issue recorded in FL-010 remains resolved by source priority:
Girard--Schmid's original Theorem 3.2 controls, and the later paper itself uses
`s(C_2+C_{2m}^2)=8m+1` in a proof passage. No substantive change to C-08 is
made.


## S004 CAND-03/CAND-04 claim and source refresh

The following were checked or added on **2026-10-02**. They are source-result
records or bounded status observations, not programme proofs.

| Claim | Classification | Bounded content | Support / remaining boundary |
| --- | --- | --- | --- |
| C-25 | SOURCE_RESULT | eta^N(G) is defined on sequences over G minus {0} using two innerly non-zero-sum-joint short zero-sum subsequences; the modern paper identifies eta^N with the older Narkiewicz-sense eta* invariant. | ZS-25 definitions/equivalence inspected; no proof audit |
| C-26 | SOURCE_RESULT | Gao--Hui--X. Li--Y. Li--Qu--Zhong Theorem 3.6 gives eta^N(C_3^3)=25. | ZS-25 full theorem statement inspected |
| C-27 | SOURCE_RESULT | Fan--Hui--Zhong (2024) solve the eta^N inverse problem for rank-two families C_n+C_{nm} with n in {2,3}, m>=2; Fan--Zhong (2025) develops the joint-short rank-two theory; Hui--Zhong (2026) completely settles the inverse eta^N problem for all finite abelian groups of rank two. | ZS-31, ZS-26 and ZS-27 publication/definition/main-scope material inspected |
| C-28 | SOURCE_RESULT | Property D for C_n^r requires s(C_n^r)=c(n-1)+1 and classifies every s(G)-1 extremal sequence as T^(n-1); the general Property-D conjecture is stated in the 2007 source. | ZS-09 primary definitions/conjecture re-used |
| C-29 | SOURCE_RESULT | For odd rank-three groups the lower bound s(C_n^3)>=9n-8 is classical and equality for all odd n is a standing conjectural formula in the controlling higher-rank literature; Fan--Gao--Zhong (2011) study this direct/inverse frontier. | ZS-28 primary 2011 paper plus ZS-29 higher-rank survey/source |
| C-30 | SOURCE_RESULT | The p=7,11,13 rank-three results located in the higher-rank direct literature concern Property D0 with respect to 9, a weaker special-form forcing property, not Property D. Genuine Property-D rank-three families include the 3^a5^b line. | ZS-28 statement-level inspection and ZS-25 known-family summary |
| C-31 | SOURCE_RESULT | E-JC's current official AI policy permits AI assistance in mathematical research/proof discovery with human checking; Elsevier's June-2026 policy permits AI in research methods with oversight/disclosure. | PUB-01/PUB-02 rechecked and PUB-07 current policy rechecked 2026-10-02 |

### Added/expanded S004 sources

| ID | Source | S004 inspection level | Purpose / limit |
| --- | --- | --- | --- |
| ZS-25 | Weidong Gao, Wanzhen Hui, Xue Li, Yuanlin Li, Yongke Qu, Qinghai Zhong, *On generalized Narkiewicz constants of finite abelian groups*, Acta Arith. 212 (2024), 133--172, DOI 10.4064/aa230118-1-10 | Definitions, eta^N=eta* discussion, Property C/D input and Theorem 3.6 inspected | CAND-03 exact definition/direct threshold and known-family context; no proof audit |
| ZS-26 | Yushuang Fan, Qinghai Zhong, *On joint short minimal zero-sum subsequences over finite abelian groups of rank two*, JCTA 212 (2025), 105984, DOI 10.1016/j.jcta.2024.105984 | Definition/equivalence and main rank-two scope inspected | Immediate predecessor and alternate terminology |
| ZS-27 | Wanzhen Hui, Qinghai Zhong, *On the inverse problem of the Narkiewicz-sense eta-constant for finite abelian groups of rank 2*, JCTA 224 (2026), 106238, DOI 10.1016/j.jcta.2026.106238 | Definition/introduction/main-scope material inspected | Complete rank-two inverse eta^N baseline |
| ZS-31 | Yushuang Fan, Wanzhen Hui, Qinghai Zhong, *On the inverse problem of the revised Narkiewicz constant for finite abelian groups*, Colloq. Math. 176 (2024), 207--217, DOI 10.4064/cm9413-10-2024 | Official publisher abstract and current publication record inspected | Exact eta^N inverse structure for rank-two C_n+C_{nm}, n in {2,3}, m>=2; important predecessor, not a C_3^3 theorem |
| ZS-28 | Yushuang Fan, Weidong Gao, Qinghai Zhong, *On the Erdos--Ginzburg--Ziv constant of finite abelian groups of high rank*, JNT 131 (2011), 1864--1874, DOI 10.1016/j.jnt.2011.02.017, arXiv:1010.5101 | Primary statement-level direct/inverse framework, Property D0 and known-family material inspected | CAND-04 direct threshold and D0-vs-D boundary; no proof audit |
| ZS-29 | Yves Edel, Christian Elsholtz, Alfred Geroldinger, Silke Kubertin, Laurence Rackham, *Zero-sum problems in finite abelian groups and affine caps*, QJM 58 (2007), 159--186 | Higher-rank lower-bound/conjectural context inspected | Classical s(C_n^3)>=9n-8 and odd-rank-three conjectural equality context |
| ZS-30 | Weidong Gao, Alfred Geroldinger, Qinghong Wang, *A Quantitative Aspect of Non-Unique Factorizations: The Narkiewicz Constants*, IJNT 7 (2011), 1463--1502, DOI 10.1142/S1793042111004721 | Bibliographic/definition-line context inspected | Older eta* / factorization terminology for CAND-03 |
| REV-06 | David J. Grynkiewicz current University of Memphis CV / University of Graz research records; Geroldinger--Grynkiewicz--Zhong, *Combinatorial Factorization Theory*, AMS Mathematical Surveys and Monographs 296 (2026) | Current public expertise/identity signals inspected | CAND-03 independent reviewer lead; no willingness inferred |
| REV-07 | Pingzhi Yuan, current zero-sum preprint *A Multiplicative Fourier Proof of the Length-Four Index Conjecture*, arXiv:2608.12310 (2026), plus E-JC 2023 inverse short-zero-sum paper | Abstract/publication records inspected | Current zero-sum activity and independent CAND-03 alternative |
| REV-08 | Jan-Christoph Schlage-Puchta, *All large primes have Property D*, arXiv:2509.02436 | Current theorem/metadata re-used | Property-D reviewer lead for any future broadened CAND-04-style programme |

### S004 bounded current-status observations

For CAND-03, searches covered eta^N, eta*, generalized/revised
Narkiewicz terminology, innerly joint/non-zero-sum-joint formulations, C_3^3,
rank three/higher rank, factorization sources, forward/backward citations,
recent preprints, theses, surveys/books and conference/publication records.
No exact C_3^3 inverse completion, subsuming higher-rank theorem or explicit
open-problem declaration was located. This is a status observation only.

For CAND-04, searches covered Property D/D0, C_p^3, s(C_p^3), 9p-8, p=7,
11,13, higher-rank EGZ/inverse terminology, known arithmetic families,
citations and 2024--2026 sources. No theorem proving s(C_p^3)=9p-8 or Property
D for every p>=7 was located. Positive primary evidence simultaneously shows
that 9n-8 is a standing odd-rank-three conjectural formula and that the named
small-prime statements are D0, not D. The clean CAND-04 target is retired for
that dependency reason, not merely because a search failed.

No mathematical result was proved by the programme in S004.
