# S001 field map and candidate comparison

Date: 2026-10-02. Stage: P0 preflight discovery.
Incoming authority: `main` at `9d40874b65753e48dc82d975e4e9110e5ffe1250`.

This is a bounded literature-orientation record, not a proof, computation,
novelty certificate or claim that any candidate is currently open. No examples
were enumerated, no mathematical experiment or proof attempt was performed, and
no person was contacted.

## 1. Field map

### Direct and inverse questions

A direct zero-sum problem asks for a threshold forcing a zero-sum subsequence
with a specified property. Standard examples are the Davenport constant
`D(G)`, the short-zero-sum constant `eta(G)`, and the Erdős-Ginzburg-Ziv
constant `s(G)`. An inverse problem starts at or just below a sharp threshold
and asks for the structure of the exceptional sequences that still avoid the
required zero sum. Gao--Geroldinger--Schmid (2007) formulate this distinction
explicitly for `D(G)`, `eta(G)`, and `s(G)`.

A sequence is an unordered finite string of group elements with repetitions
allowed. A set problem is the squarefree special case, where each element occurs
at most once. This distinction is material: structural results for sets do not
automatically classify sequences with multiplicity.

### Cyclic, rank two and higher rank

For cyclic groups, the central inverse problems are comparatively mature.
Rank-two groups are a classical testing ground because exact direct constants
and strong structural classifications are available, but historical conjectures
in this territory have often already been resolved. Higher rank contains many
fewer complete classifications; however, direct constants themselves may also
be unknown, so a higher-rank inverse question can inherit an additional direct
dependency.

### Exact length and bounded length

The EGZ constant `s(G)` forces a zero-sum subsequence of exactly
`exp(G)` terms. The constant `eta(G)` forces a nonempty zero-sum subsequence
of length at most `exp(G)`. Restricted-length invariants such as
`s_{<=k}(G)` interpolate between these regimes. The exact quantifier and length
bound are part of a target's identity and cannot be blurred in novelty checks.

### Extremal and near-extremal structure

An extremal inverse problem classifies sequences of the largest length still
avoiding the required zero sum. A near-extremal or stability problem asks what
structure survives below that length. S001 found enough precise extremal
questions to avoid inventing an unsourced near-extremal conjecture.

### Generalized Narkiewicz-sense problems

Gao--Hui--Li--Li--Qu--Zhong (2024) introduced generalized invariants
`D^N(G)`, `eta^N(G)`, and `s^N(G)`. For `eta^N(G)`, sequences are over
`G\{0}`, repetitions are allowed, and the forcing condition is the existence
of two innerly non-zero-sum-joint short zero-sum subsequences. This creates a
new inverse-structure line with factorization-theoretic motivation.

## 2. Baseline corrections and current developments

### Classical rank-two Property B/C

Schlage-Puchta's 2025 Property D preprint summarizes the established state:
Property B is multiplicative, Reiher proved it for primes, and Property B
implies Property C. Consequently Property B and Property C hold for all
positive integers. They are baseline, not fresh targets here.

### Restricted-length rank-two inverse classification is no longer open

Grynkiewicz--Liu (2022) recorded conjectural intermediate-length structure.
Ebert--Grynkiewicz later proved the remaining prime case and state that, with
other recent work, the conjectured structure follows for all rank-two abelian
groups. The published version appeared in *European Journal of Combinatorics*
118 (2024), 103888. The old S000 lead is therefore retired as a target.

### Rank-two k-th Davenport inverse problem is closed

Zhong's 2025 *Combinatorica* paper treats the inverse problem for
`D_k(G)` for all rank-two groups. This is a baseline and a reviewer-expertise
lead, not a new S001 target.

### Property D has substantial but incomplete-looking recent progress

Gao--Geroldinger--Schmid (2007) record the conjecture that every
`C_n^r` has Property D and prove multiplicativity. Schlage-Puchta (arXiv
2509.02436, v1, 2025-09-02) proves that every sufficiently large prime has
Property D in rank two. The theorem gives an existential cutoff `p_0`, not a
complete all-modulus theorem. The bounded S001 search found no later source
claiming the full rank-two conjecture, but this is **not** an openness
certificate and must be refreshed before proof work.

### Rank-three direct and inverse results leave adjacent structural territory

Girard--Schmid determine direct constants for
`C_2 + C_{2m} + C_{2mn}` and solve the inverse EGZ and eta problems for the
special family `C_2 + C_2 + C_{2n}`. For the equal-factor family
`C_2 + C_{2m} + C_{2m}`, their original direct paper gives
`s(G)=8m+1`. A later 2024 paper contains a compressed restatement whose
displayed formula conflicts with this `n=1` case; S001 therefore treats the
original Girard--Schmid theorem as the controlling source and records the
restatement discrepancy rather than silently harmonizing it.

### Narkiewicz-sense rank two was completed in 2026

Gao et al. (2024) determine several generalized Narkiewicz constants, including
`eta^N(C_3^3)=25`. Hui--Zhong's 2026 *Journal of Combinatorial Theory,
Series A* paper completely settles the inverse `eta^N` problem for all
rank-two finite abelian groups. A first rank-three classification is therefore
a source-defined adjacent question, but S001 did not find an explicit statement
certifying the particular rank-three case below as open.

### Very recent 2026 changes reinforce the freshness requirement

Gao--Jiang--Mu (arXiv 2607.11313) determine two local zero-sum invariants and
their inverse problems in stated arithmetic regimes, showing active current
work near the programme's territory. Geroldinger--Wang--Yang
(arXiv 2609.17127, v1 submitted 2026-09-15) announce a disproof of Gao's
long-standing conjecture for the invariant `nu(G)`. S001 inspected only the
abstract-level scope of that disproof and does not use it as a candidate.
The episode is evidence that even very established zero-sum conjectures require
a current-status audit.

## 3. Candidate questions

The candidates are compared by mathematical identity, contribution type,
relevance, source boundary and publication fit. They are deliberately **not**
ranked by difficulty, compute cost or probability of proof.

### CAND-01 — Complete rank-two Property D

**Question.** For every integer `n >= 2`, does `C_n^2` have Property D?
Equivalently, classify every sequence `S` over `C_n^2` of length
`s(C_n^2)-1 = 4n-4` having no zero-sum subsequence of length `n`, and
show that it has the Property-D form `S=T^(n-1)` (so `|T|=4`).

- **Genre:** extremal inverse EGZ problem in rank two.
- **Contribution type:** completion of a named structural conjecture.
- **Established baseline:** Property D is multiplicative; the direct value
  `s(C_n^2)=4n-3` is classical; the 2025 preprint proves Property D for all
  sufficiently large primes.
- **Current-status classification:** published/conventional conjectural scope
  with major 2025 preprint progress; no full-resolution source found in the
  bounded 2026-10-02 audit. This remains a status gap, not an openness proof.
- **Relevance:** central inverse zero-sum structure, directly continuous with
  the programme's chosen territory.
- **Publication fit:** squarely within E-JC's discrete-mathematics scope, with
  E-JC precedents for inverse and short-zero-sum structure. Exact-paper
  significance would still need assessment after a result exists.
- **Reviewer expertise needed:** rank-two inverse zero-sum theory, Property D,
  exact-length EGZ structure and the modern Property B/C/D literature.

### CAND-02 — Inverse EGZ structure for `C_2 + C_{2m} + C_{2m}`

**Question.** For every integer `m >= 2`, classify all sequences `S` over
`G=C_2 + C_{2m} + C_{2m}` of length `8m` that contain no zero-sum
subsequence of length `exp(G)=2m`.

- **Genre:** extremal inverse EGZ problem in rank three.
- **Contribution type:** structural classification immediately adjacent to a
  solved direct threshold.
- **Established baseline:** Girard--Schmid's original direct theorem gives
  `s(G)=8m+1` for this equal-factor family. Their 2020 inverse paper solves
  the different special family `C_2 + C_2 + C_{2n}`.
- **Current-status classification:** **UNKNOWN after bounded search**. S001 did
  not find a paper completing the displayed equal-factor inverse family, but
  unsuccessful searching does not certify openness.
- **Relevance:** moves from the mature rank-two world into a concrete rank-three
  family without changing from the classical EGZ inverse genre.
- **Publication fit:** E-JC is topically compatible; the closest direct and
  inverse baselines appeared in *Journal of Number Theory* and *Acta
  Mathematica Hungarica*, so target-specific venue fit should be revisited.
- **Reviewer expertise needed:** higher-rank finite-abelian zero-sum constants,
  inverse EGZ classification, inductive methods and the Girard--Schmid family.

### CAND-03 — First rank-three inverse `eta^N` case: `C_3^3`

**Question.** Classify all sequences `S` over
`C_3^3 \ {0}` of length `24 = eta^N(C_3^3)-1` having no two innerly
non-zero-sum-joint short zero-sum subsequences (where "short" means length at
most `exp(C_3^3)=3`).

- **Genre:** generalized/Narkiewicz-sense inverse zero-sum problem.
- **Contribution type:** extremal structural classification in the first
  natural higher-rank case after a complete rank-two theory.
- **Established baseline:** Gao et al. (2024), Theorem 3.6, yields
  `eta^N(C_3^3)=25`; Hui--Zhong (2026) completely settle the associated
  inverse problem for all rank-two finite abelian groups.
- **Current-status classification:** **UNKNOWN after bounded search**. The
  question is a source-defined extension, not an explicit open-problem
  statement found by S001.
- **Relevance:** retains inverse structural classification while linking
  zero-sum theory to Narkiewicz constants and non-unique factorization.
- **Publication fit:** combinatorial content is compatible with E-JC; the
  defining paper appeared in *Acta Arithmetica* and the complete rank-two
  inverse paper in *JCTA*, so publication fit is not E-JC-exclusive.
- **Reviewer expertise needed:** generalized Narkiewicz constants,
  factorization-theoretic zero-sum invariants, and inverse classification.

### CAND-04 — Prime rank-three Property D beyond known prime cases

**Question.** Does `C_p^3` have Property D for every prime `p >= 7`?
That is, for each such prime, do all sequences of length
`s(C_p^3)-1` with no zero-sum subsequence of length `p` have the form
`T^(p-1)` required by Property D?

- **Genre:** higher-rank extremal inverse EGZ structure.
- **Contribution type:** prime rank-three specialization of the general
  Property-D conjecture.
- **Established baseline:** the general conjecture is explicit in the 2007
  source. Gao et al. (2024) collect known Property-D families including
  `C_{2^a}^r`, `C_3^r`, and `C_{3^a5^b}^3`, which cover the smaller
  prime cases but not this stated family.
- **Current-status classification:** published-conjecture specialization with
  **current-status uncertainty**. No bounded-search completion for all
  `p >= 7` was found; this is not an openness certificate.
- **Relevance:** a direct higher-rank continuation of a central named inverse
  property, distinct from CAND-01 because both the rank and the direct-constant
  landscape change.
- **Publication fit:** within E-JC's discrete-mathematics scope, while
  higher-rank EGZ work also has precedent in *JNT* and *JCTA*.
- **Reviewer expertise needed:** Property D in higher rank, EGZ constants,
  additive combinatorics over elementary abelian groups.

## 4. Comparison without feasibility ranking

| Candidate | Name / genre | Contribution type | Core relevance | Status boundary | Publication-fit evidence |
| --- | --- | --- | --- | --- | --- |
| CAND-01 | Rank-two Property D; extremal inverse EGZ | Complete a named structural conjecture | Classical core of inverse zero-sum theory | Large primes covered by 2025 preprint; all-modulus resolution not found in bounded audit | E-JC scope + inverse zero-sum precedents |
| CAND-02 | Rank-three equal-factor inverse EGZ | New structural classification beside known direct threshold | Concrete higher-rank classical extension | No completion found; openness unverified | E-JC compatible; JNT/Acta Math. Hung. baselines |
| CAND-03 | Rank-three inverse `eta^N` | First natural higher-rank classification after rank-two completion | Newer inverse line with factorization link | Exact case not found as an explicit open statement | E-JC compatible; Acta Arith./JCTA baselines |
| CAND-04 | Prime rank-three Property D | Resolve a specialization of a named general conjecture | Higher-rank continuation of central Property D | Known families exclude the stated prime range in inspected source; refresh required | E-JC compatible; JNT/JCTA higher-rank precedents |

No ordering, score, "best" candidate or proof-likelihood judgment is intended.

## 5. Electronic Journal of Combinatorics refresh

Official pages were rechecked on 2026-10-02.

- **Scope and refereeing:** E-JC describes itself as a fully refereed journal
  publishing substantial work across discrete mathematics.
- **Substantive AI:** the current Artificial Intelligence Policy explicitly
  allows AI assistance in researching and writing mathematics, including
  assistance in finding a proof or argument, while placing full responsibility
  on authors to check proofs/details, provide enough detail for human checking,
  and verify prior-work citations.
- **Decision:** acceptability is decided by a human.
- **Submission route:** new submissions use the journal's web system. The main
  article is submitted as PDF; an HTML abstract is entered; source files are not
  uploaded initially. The checklist includes compliance with the AI policy.
- **Cost:** the About page states the journal is free for authors and readers.
- **Comparable zero-sum publications:** Grynkiewicz--Liu (2022) and
  Zeng--Yuan (2023) are direct E-JC precedents for structural/inverse
  zero-sum work.

This refresh supports E-JC as a **workflow-eligible leading candidate**, not a
submission decision or acceptance prediction. The publication gate remains
closed until a target is selected and target-specific significance/fit is
confirmed.

Official pages:
- https://www.combinatorics.org/ojs/index.php/eljc/about/index
- https://www.combinatorics.org/ojs/index.php/eljc/about/submissions
- https://www.combinatorics.org/ojs/index.php/eljc/article/view/v30i4p21
- https://www.combinatorics.org/ojs/index.php/eljc/article/view/v29i3p12

## 6. Reviewer-expertise map — no outreach and no agreements

The desired role remains independent pre-submission proposal/manuscript review.
No one below was contacted, and publication history is not evidence of
willingness.

- **Pingzhi Yuan:** public E-JC work on zero-sum-free subsequence sums (2009)
  and, with Xiangneng Zeng, an explicit inverse problem for sequences without
  short zero-sum subsequences (2023). Strong public expertise signal for
  inverse/short-zero-sum structural questions, particularly CAND-01 and related
  classical structural work. The owner's earlier correspondence does not count
  as a review agreement.
- **David J. Grynkiewicz:** direct author of the 2022 restricted-length E-JC
  paper and the 2024 rank-two completion. Strong fit for rank-two structural
  inverse theory and adjacent higher-rank questions; no contact or agreement.
- **Benjamin Girard / Wolfgang A. Schmid:** authors of the direct and inverse
  rank-three papers defining the baseline for CAND-02. Strong exact-domain
  expertise; because they authored the baseline, any later use as an independent
  reviewer would need an independence/conflict assessment.
- **Qinghai Zhong / Wanzhen Hui:** authors of current generalized
  Narkiewicz-sense and rank-two inverse work; strong technical fit for CAND-03.
  Their proximity to the baseline must be considered when choosing an
  independent reviewer.
- **Jan-Christoph Schlage-Puchta:** exact recent Property-D expertise for
  CAND-01, but as author of the 2025 progress result is close to the baseline
  and should not be treated as an automatic independent reviewer.

Carl McTague and Lajos Soukup remain potential contacts with exact zero-sum fit
unverified. Mikko Fischer remains a do-not-approach contact under the existing
record.

## 7. Bounded primary-source corpus and access level

1. Gao, Geroldinger, Schmid, *Inverse zero-sum problems*, Acta Arith. 128.3
   (2007), full article/theorem statements inspected:
   https://www.impan.pl/shop/en/publication/transaction/download/product/83143
2. Grynkiewicz, Liu, *A Multiplicative Property for Zero-Sums II*, E-JC 29(3)
   (2022), journal abstract/publication record inspected:
   https://doi.org/10.37236/10921
3. Ebert, Grynkiewicz, *Structure of a sequence with prescribed zero-sum
   subsequences: Rank two p-groups*, Eur. J. Comb. 118 (2024) 103888,
   abstract/introduction inspected:
   https://arxiv.org/abs/2211.08515
4. Schlage-Puchta, *All large primes have Property D*, arXiv:2509.02436 v1,
   abstract/introduction/theorem statement inspected:
   https://arxiv.org/abs/2509.02436
5. Girard, Schmid, *Direct zero-sum problems for certain groups of rank three*,
   JNT 197 (2019), original full-text theorem/proof context inspected:
   https://arxiv.org/abs/1806.07636
6. Girard, Schmid, *Inverse zero-sum problems for certain groups of rank three*,
   Acta Math. Hung. 160 (2020), abstract/source record inspected:
   https://arxiv.org/abs/1809.03178
7. Gao, Hui, Li, Li, Qu, Zhong, *On generalized Narkiewicz constants of finite
   abelian groups*, Acta Arith. 212 (2024), full definitions and Theorem 3.6
   inspected:
   https://doi.org/10.4064/aa230118-1-10
8. Zhong, *On the Inverse Problem of the k-th Davenport Constants for Groups of
   Rank 2*, Combinatorica 45 (2025), introduction and main theorem statements
   inspected:
   https://doi.org/10.1007/s00493-025-00153-3
9. Hui, Zhong, *On the inverse problem of the Narkiewicz-sense eta-constant for
   finite abelian groups of rank 2*, JCTA 224 (2026) 106238, abstract and
   definition/introduction inspected:
   https://doi.org/10.1016/j.jcta.2026.106238
10. Gao, Jiang, Mu, *Two local zero-sum problems*, arXiv:2607.11313 v1,
    abstract inspected:
    https://arxiv.org/abs/2607.11313

Current-status side check:
- Geroldinger, Wang, Yang, *On a classical zero-sum invariant II: Disproof of a
  long-standing conjecture*, arXiv:2609.17127 v1; abstract only:
  https://arxiv.org/abs/2609.17127

Reviewer-expertise sources:
- Yuan, *Subsequence Sums of Zero-sum-free Sequences*, E-JC 16(1) R97 (2009):
  https://doi.org/10.37236/186
- Zeng, Yuan, *On Sequences Without Short Zero-Sum Subsequences*, E-JC 30(4)
  P4.21 (2023): https://doi.org/10.37236/11963

## 8. Source gaps and decision frontier

- CAND-01 and CAND-04 need a fresh target-specific current-status audit before
  any later claim that their conjectural scope remains unresolved.
- CAND-02 and CAND-03 are precisely source-defined extensions, but S001 did not
  recover an authoritative statement explicitly calling those exact cases open.
  If either is selected, P1 must search for overlap exhaustively enough to avoid
  treating a search gap as novelty.
- The 2025 Property D item remains a preprint in the bounded search; absence of a
  journal hit is not a definitive statement that no later publication exists.
- The September 2026 `nu(G)` disproof was inspected only at abstract level.
- No proof in the source corpus was audited for correctness; theorem statements
  are treated as source claims.

The bounded orientation objective is complete. The next useful target-specific
unit depends on the owner's choice among the four candidate identities (or an
explicit rejection of all four and request for another bounded discovery pass).
