# S061 source-to-proof consistency

Date: 2026-10-09. Scope: complete first E-JC manuscript for the frozen CAND-03
classification. Incoming main `154e9f4c45d2e31829be94ea25b168962c3773d6`.
All Lean declarations below are in `InverseZeroSum.Candidate3` and in the
unchanged `InverseZeroSum/Candidate3.lean`.

## Exact semantics

Theorem 1.1 quantifies over **every** sequence on **any** set of 24 original
positions, with every entry nonzero in C₃³. It quantifies over **all pairs**
of nonempty zero-sum position subsets of cardinality at most three, including
the harmless equal-pair case. Intersections are of positions, not multisets
of values. The conclusion is a bijection from eight values times three copy
indices onto the original position set; thus it is precisely equality to U³
up to a permutation. Relabelling any 24-element set by Fin 24 gives the Lean
statement without strengthening or weakening it.

## Sources and proof interfaces

| Manuscript claim / location | Primary source and contribution boundary | Repository / Lean correspondence |
| --- | --- | --- |
| Indexed intersection condition; known ηᴺ(C₃³)=25; U³ examples | Gao–Hui–Li–Li–Qu–Zhong (2024), Definition 1.1; Lemma 3.3(2)–(3), **including their proofs**; Theorem 3.6(4). All published. | S039 source check; S042/S060 source boundaries; `AvoidsInnerJointPair`, `FrozenClassification` |
| Ordinary η=17 and Property C | Fan–Gao–Wang–Zhong–Zhuang (2012), Lemma 7(3),(10), recording earlier results. | `eta17Input`; S046 source/formalization |
| Exactly-three threshold 19 | Gao et al. Lemma 2.6(4), immediately preceding Property D discussion (`s=η+2`), Lemma 2.10. | `threeTerm19Input`; S045 |
| Length-16 short-free total sum zero | Fan et al. Lemma 28, proof using Lemmas 7 and 9. Cited input, not new. | `length16SumZeroInput`; S048 |
| Distinct short witnesses disjoint | Elementary proof using minimality and the precise intersection hypothesis. | `shortZero_disjoint_of_ne`; S043/S044 |
| **Every** representative deletion short-free; triple-only deletion three-term-free | Reproduced with explicit positions from Gao et al., proof of Lemma 3.3(3), author-PDF p. 11. Its argument is not new. | `s039PackingInput_of_thresholds`, `s039PackingInput`; S039/S043–S047 |
| Four signatures (6,8,2), (7,8,1), (8,8,0), (6,9,0) | Length-24 equality arithmetic from the published deletion bounds. | `s039_signature_of_arithmetic`; S039 |
| s=8 constant-block rigidity; exclusion of both signatures with 2-atoms | S040 equality argument: compare zero sums of every length-16 residual. Squarefreeness then follows from multiplicity at most two, without an additional Property C application. | `s8_packed_blocks_constant`, `s8RepresentativeSwapInput`; S040/S041/S049 |
| Length-15 profile 2⁷1; append singleton; u=−σ(R) | **Attribution correction:** the profile and completion argument already occur in **Fan et al., proof of Lemma 27(3), p. 15**, with Lemma 28 giving the singleton identity here. Lemma 29(1) records nonzero total. They are not promoted as separate new results. | `tupleSupportT_card_eq_eight_length15`, `length15NonzeroInput`, `length15_singleton_sum_identity`, `length15_singleton_unique`; S040/S041/S052–S054 |
| s=9 exchange: (0,1)→(1,0) or (1,2)→(2,1); second nonconstant block contradiction | S040 inverse equality argument applying the known residual structure simultaneously to **all** transversals. Both transition exclusions/implications are written out; no generic profile is asserted realizable. | `s9_two_fibre_count_transitions`, `s9_certificate_swap_count_cases`, `s9_certificate_swap_fixed_complement_zero`, `s9PackingEliminationInput`; S040/S041/S053–S055 |
| Original-position bijection and necessity | Eight disjoint constant triples cover all positions; enumerate each fibre to give the bijection. | `s056_constant_blocks_isTriplePower`, `s056_frozen_necessity`, `IsTriplePower`; S056 |
| Sufficiency for arbitrary squarefree short-free eight-term U | Known Gao et al. construction, given a complete direct positional proof: every witness is a full three-position value fibre. | `s057_canonical_shortZero_fibre`, `s057_canonical_avoids`, `s057_avoids_of_reindexed`, `frozenClassification`; S057 |
| Explicit eight-value core, 24 fibres, one extra copy and residual | Illustrative examples only, elementary coordinate proof and bounded exact script checks. No new classification or enumeration claim. | `scripts/check_paper.py`; all figures are editable TikZ |
| Formal provenance | Palomar v1 is registered, source `c5f9e5e822020688c72b2a3bfacbf147a801e219`; full mechanical verification 37813245157 passed. | S059; public registry; S061 independently checked registry JSON and compared proof files |

## Primary inspection and bibliography

1. Weidong Gao, Wanzhen Hui, Xue Li, Yuanlin Li, Yongke Qu, Qinghai Zhong,
   *On generalized Narkiewicz constants of finite abelian groups*,
   **Acta Arithmetica 212(2)** (2024), 133–172,
   [DOI 10.4064/aa230118-1-10](https://doi.org/10.4064/aa230118-1-10).
   [Publisher metadata](https://www.impan.pl/en/publishing-house/journals-and-series/acta-arithmetica/all/212/2/115416/on-generalized-narkiewicz-constants-of-finite-abelian-groups)
   and [author-hosted full text](https://imsc.uni-graz.at/zhong/paper/generalized-narkiewicz.pdf)
   checked. Exact statements and relevant proofs inspected, not abstract-only.
   The author PDF has 39 pages while the published range spans 40 pages;
   lemma numbers, not an assumed published page offset, identify its inputs.
2. Yushuang Fan, Weidong Gao, Guoqing Wang, Qinghai Zhong, Jujuan Zhuang,
   *On Short Zero-Sum Subsequences of Zero-Sum Sequences*,
   **Electronic Journal of Combinatorics 19(3)** (2012), P31, 23 pp.,
   [DOI 10.37236/2602](https://doi.org/10.37236/2602).
   [Official metadata](https://www.combinatorics.org/ojs/index.php/eljc/article/view/v19i3P31)
   and [full journal PDF](https://www.combinatorics.org/ojs/index.php/eljc/article/download/v19i3P31/pdf)
   checked. Lemma 7 and the proofs of Lemmas 27(3), 28 and 29(1) inspected.
3. John Fairfax-Ball, *Inverse classification for innerly joint short zero-sum
   subsequences in C₃³*, [Palomar v1](https://palomar-registry.org/entry.html?id=PALOMAR-2026-10-09-000011&version=1),
   9 October 2026. ID, version, author, theorem, source and registered status
   independently confirmed from [registry data](https://data.palomar-registry.org/recent.json).

No bibliography entry is inferred from a search snippet alone. The manuscript
cites only sources it actually uses, rather than adding venue-comparator papers.

## Correction to earlier programme attribution

S060's source matrix called the length-15 profile/singleton step a new
programme equality argument. Fan et al.'s proof of Lemma 27(3) explicitly
uses the same seven-doubles/one-singleton specialization and completion to
length 16. Accordingly, the manuscript credits that proof and does not
claim originality for the residual lemma. The explicit identity u=−σ(R)
is its immediate consequence with Lemma 28. This correction changes neither
the frozen theorem nor the inverse proof; it narrows the asserted contribution
to the complete necessity and the representative-exchange equality argument.
The older S040 use of Property C merely to establish distinct block values
is also unnecessary: three equal entries already contradict short-freeness.

## Venue presentation and disclosure

The [current E-JC author instructions](https://www.combinatorics.org/ojs/index.php/eljc/about/submissions)
and [journal policy](https://www.combinatorics.org/ojs/index.php/eljc/about/index)
were checked on 2026-10-09. The manuscript uses an initial-submission article
PDF with a self-contained informative abstract, full proofs, real bibliography,
and explicit substantive AI-assistance disclosure. No logos or invented
acceptance metadata appear. E-JC's `e-jc.sty` and consolidated final source
apply at its accepted-version stage; that stage is not presumed here.
The current pages do not prescribe an AI-disclosure wording or dedicated
bibliography style for the initial PDF. The disclosure is nevertheless included
under the programme's transparent-AI-use requirement.

## Issues and limits

- **Unresolved mathematical proof issues in this manuscript: none identified.**
  The cited source facts remain clearly declared inputs to the prose proof.
- **Unresolved bibliographic identification issues: none identified.**
  No uninspected high-probability collision was encountered in the source checks.
- S041/S042 are bounded literature audits, not proofs of global originality or
  previous openness. S061 is a drafting/source-verification session, not a new
  exhaustive novelty search. A targeted current-source refresh belongs before
  public preprint release.
- The new coordinate examples and explanatory diagrams are not claimed to
  be separately formalized in Lean. The exact checks are limited to the stated
  examples; the universal theorem remains the unchanged registered statement.
- arXiv deposit, E-JC filing, author form attestations, and any required
  account/category/licence decisions are later actions. No acceptance or
  submission is claimed. The order is registration → paper → arXiv → E-JC.
