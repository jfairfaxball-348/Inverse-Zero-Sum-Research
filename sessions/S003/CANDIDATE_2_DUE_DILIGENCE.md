# S003 CAND-02 due-diligence and novelty/status audit

Date of bounded search: 2026-10-02.

Challenger under audit:

> For every integer `m >= 2`, classify the sequences `S` over
> `G_m = C_2 + C_{2m} + C_{2m}` of length `8m` having no zero-sum
> subsequence of length `2m`.

CAND-01 remains the selected incumbent throughout this record. This audit does
not switch targets. Search failure is not treated as evidence that a problem is
open. No mathematical computation, example enumeration, counterexample search,
proof attempt or formalisation was performed.

## 1. Exact object and conventions

Girard--Schmid use the standard sequence model: a sequence over a finite
abelian group is an element of the free abelian monoid over the group, so
repetitions are allowed and ordering is irrelevant. A subsequence is a divisor
in that monoid. For a finite abelian group `G`, the Erdős--Ginzburg--Ziv
constant `s(G)` is the least length forcing a zero-sum subsequence of exactly
`exp(G)` terms.

For
`G_m = C_2 \oplus C_{2m} \oplus C_{2m}`,
`exp(G_m)=2m`. The exact CAND-02 extremal condition is therefore

- `m >= 2`;
- `S` is a multiset/sequence over all of `G_m`, with repetitions allowed;
- `|S| = s(G_m)-1 = 8m`;
- `0` is not in `Sigma_{2m}(S)`, equivalently no subsequence of exactly
  `2m` terms sums to zero.

Translation by a fixed group element preserves the forbidden condition because
a `2m`-term sum changes by `2m f=0`; automorphisms preserve it as well. A
complete inverse theorem can therefore reasonably be presented by canonical
normal forms up to translation and automorphism, with all parameters,
multiplicities and exceptional cases explicit. This is a specification of the
desired output, not a claim that such normal forms are already known.

## 2. Controlling direct theorem

Primary source: Benjamin Girard and Wolfgang A. Schmid,
*Direct zero-sum problems for certain groups of rank three*,
Journal of Number Theory 197 (2019), 297--316,
DOI 10.1016/j.jnt.2018.08.016,
arXiv:1806.07636v2,
https://arxiv.org/abs/1806.07636.

The paper parametrizes the rank-three family as
`C_2 \oplus C_{2m} \oplus C_{2mn}`.
Theorem 3.2 displays

`s(C_2 \oplus C_{2m} \oplus C_{2m}) = 8m+1`

and, separately, the unequal-factor formula
`s(C_2 \oplus C_{2m} \oplus C_{2mn})=4m+4mn-1` when `m` has Property D.
The proof explicitly treats the `n=1` equal-factor case, and Corollary 3.3
records the `n=1` route without a Property-D assumption. Thus CAND-02 rests on
an unconditional known direct threshold for every `m>=1`.

The displayed theorem begins with a syntactically awkward
“let `m>=1` and `n>=2`” even though its first displayed equality is the
equal-factor `n=1` group. The proof and Corollary 3.3 remove the ambiguity.
This source-level detail is preserved rather than silently rewriting the
original statement.

The paper also explicitly notes a significant difference between the
`n=1` and `n != 1` regimes. It supplies direct constants and inductive
machinery, but no inverse classification for
`C_2 \oplus C_{2m} \oplus C_{2m}` with `m>=2` was found in its theorem
statements.

## 3. The published inverse theorem is a different family

Primary source: Benjamin Girard and Wolfgang A. Schmid,
*Inverse zero-sum problems for certain groups of rank three*,
Acta Mathematica Hungarica 160 (2020), 229--247,
DOI 10.1007/s10474-019-00983-w,
arXiv:1809.03178v2,
https://arxiv.org/abs/1809.03178.

The abstract and Section 5 state the inverse-EGZ problem is solved for

`C_2 \oplus C_2 \oplus C_{2n}`, `n>=2`.

Theorem 5.1 classifies every sequence of length
`s(G)-1=4n+2` with no zero-sum subsequence of length `exp(G)=2n`.
After a translation it gives three explicit structural types relative to a
basis with element orders `2,2,2n`; when `n=2`, only the third type can
occur.

This theorem must not be transferred to CAND-02. For `m>=2`, the invariant
factor sequence of CAND-02 is `(2,2m,2m)`, whereas the solved family has
invariant factors `(2,2,2n)`. These are not the same family; the only
equal-factor overlap is the degenerate `m=1` group `C_2^3`.

The proof of Theorem 5.1 is also visibly group-specific: it uses the unique
cyclic subgroup of order `n` with quotient `C_2^3` and the preceding inverse
`eta)-classification. Nothing inspected states that this reduction already
implies the equal-factor CAND-02 classification.

## 4. Small-parameter and degeneracy boundary

The 2020 inverse paper explicitly treats `n=1` for the solved family, namely
`C_2^3`, as different, well-known and direct: `s(C_2^3)-1=8`, and the only
length-eight sequence avoiding a two-term zero sum is the squarefree sequence
of all group elements. This is exactly the `m=1` specialization of CAND-02.
Accordingly the candidate's domain `m>=2` correctly excludes the already
classified degenerate endpoint.

Targeted literature searches were made for the first remaining group
`C_2 \oplus C_4 \oplus C_4` (`m=2`), as well as
`C_2 \oplus C_6 \oplus C_6`, `C_2 \oplus C_8 \oplus C_8`, power-of-two
and prime/power parameter language. No source was located that isolates any of
these as a completed ordinary EGZ-extremal inverse classification. That is a
bounded search observation only. In particular, the direct paper's comments
about the equal-factor group being a 2-group when `m` is a power of two are
direct-invariant observations, not an inverse-EGZ classification.

No literature source found in this audit establishes that `m=2`, all powers
of two, all primes, or another infinite arithmetic subfamily has already been
classified for the exact CAND-02 condition. Their status remains unverified,
not certified open.

## 5. Later literature, forward citations and nearby invariants

The audit searched the exact paper titles and DOIs, forward citations, the
group in several notations, `s(G)-1`, `8m`, `2m`, EGZ-extremal wording,
structural phrases, rank-three inverse terminology, theses/dissertations,
surveys, conference records and 2024--2026 preprints/publications.

### Same ambient rank-three family, different invariant

Xue Li and Qiuyu Yin,
*On the existence of zero-sum subsequences of distinct lengths over certain
groups of rank three*, Acta Mathematica Hungarica 174 (2024), 323--340,
DOI 10.1007/s10474-024-01482-3, studies the invariant `disc(G)`.
Its direct results include
`C_2 \oplus C_{n_1} \oplus C_{n_2}` with
`2 | n_1 | n_2`, hence the same ambient equal-factor groups, and it addresses
an associated inverse problem. But the forbidden property is that all nonempty
zero-sum subsequences have the same length / the existence of two zero sums of
distinct lengths. It is not the ordinary EGZ inverse problem
`0 notin Sigma_{exp(G)}(S)` at length `s(G)-1`.

Wanzhen Hui and Xue Li,
*The structure of sequences with zero-sum subsequences of the same length on
finite abelian groups of rank two*, Acta Arithmetica 224 (2026), 221--231,
DOI 10.4064/aa251008-9-4, is further current inverse work for `disc(G)`,
but in rank two. These papers establish active adjacent expertise and prior art
discipline; they do not subsume CAND-02.

Weidong Gao, Wanzhen Hui, Xue Li, Yuanlin Li, Yongke Qu and Qinghai Zhong,
*On generalized Narkiewicz constants of finite abelian groups*,
Acta Arithmetica 212 (2024), 133--172,
DOI 10.4064/aa230118-1-10, studies generalized invariants
`D^N, eta^N, s^N`, not the ordinary EGZ inverse classification. Its compact
restatement of the ordinary rank-three `s(G)` formula is known from S001 to
conflict algebraically with the original `n=1` theorem, while a later proof
passage in that paper itself uses `s(C_2 \oplus C_{2m}^2)=8m+1`.
The original Girard--Schmid theorem remains controlling.

### Other forward-citation/current-status signals

Later papers on `k exp(G)` zero-sum subsequences, modified EGZ constants,
rank-two `D_k` inverse problems, Narkiewicz-sense inverse problems and the
`disc(G)` line cite or sit adjacent to the Girard--Schmid rank-three work.
None inspected states the exact equal-factor ordinary-`s` classification.

Benjamin Girard's current public publication list still displays the 2020
inverse paper and 2019 direct paper as his rank-three zero-sum pair; the bounded
2024--2026 searches did not locate a later Girard--Schmid sequel completing
the equal-factor inverse problem. This is a search observation, not evidence of
openness.

A historical conference record for Wolfgang Schmid on rank-three EGZ constants
supports the broader context that higher-rank direct/inverse structure was an
active frontier, but no conference or thesis record located by S003 explicitly
declared the exact CAND-02 case open or solved.

## 6. Alternate notation and formulation search

The status search deliberately included:

- `C_2 \oplus C_{2m} \oplus C_{2m}`;
- `C_2 \oplus C_{2m}^2`;
- `C_2 \times C_{2m} \times C_{2m}`;
- `Z/2Z \oplus (Z/2mZ)^2`;
- `C_2 \oplus C_n^2` with even `n`;
- invariant factors `2 | 2m | 2m`;
- the `n=1` / equal-factor specialization of
  `C_2 \oplus C_{2m} \oplus C_{2mn}`;
- inverse problem associated to the Erdős--Ginzburg--Ziv constant;
- EGZ-extremal sequence, `s(G)-1`, `8m`, `2m`,
  and `0 notin Sigma_{2m}(S)`;
- explicit small groups `C_2+C_4+C_4`, `C_2+C_6+C_6`,
  and `C_2+C_8+C_8`.

No exact completion surfaced. The search did surface multiple nearby problems
with the same groups but different zero-sum invariants, which is why invariant
identity is now treated as a primary novelty key.

## 7. Novelty/status matrix

| Scope | S003 classification | Consequence |
| --- | --- | --- |
| Sequence convention, `exp(G_m)=2m`, and direct value `s(G_m)=8m+1` | **ESTABLISHED** | Baseline, not novel |
| `m=1`: `C_2^3`, unique squarefree length-8 extremal sequence | **ESTABLISHED / EXCLUDED ENDPOINT** | Justifies `m>=2` |
| Complete ordinary-`s` inverse theorem for `C_2^2+C_{2n}`, `n>=2` | **ESTABLISHED FOR A DISTINCT FAMILY** | Important method/baseline, not CAND-02 |
| `disc(G)` direct/inverse work on `C_2+C_{n_1}+C_{n_2}` including equal factors | **ESTABLISHED FOR A DISTINCT INVARIANT** | Same ambient groups do not imply overlap |
| Generalized Narkiewicz `s^N` results | **ESTABLISHED FOR A DISTINCT INVARIANT** | Do not transfer to ordinary `s(G)` |
| Full CAND-02 classification for every `m>=2` | **SOURCE-DEFINED BUT CURRENT STATUS UNKNOWN** | No completion found; no openness claim |
| Exact `m=2` case or prime/power subfamilies | **STATUS UNKNOWN AFTER TARGETED SEARCH** | Possible partial scopes only after source/expert confirmation |
| A source explicitly declaring full CAND-02 open | **NOT LOCATED** | External status review remains important |
| A later theorem clearly subsuming CAND-02 | **NOT LOCATED IN BOUNDED AUDIT** | Would retire/narrow target if found |

No item is classified **EXPLICIT_OPEN_QUESTION** because S003 did not recover a
source that actually says the displayed CAND-02 problem is open.

## 8. Exact surviving contribution scope

The strongest surviving CAND-02 target is the full infinite-family theorem:

> classify, for every `m>=2`, all `S in F(C_2 \oplus C_{2m}^2)` with
> `|S|=8m` and `0 notin Sigma_{2m}(S)`, preferably as a finite or
> parametrized list of canonical structural forms modulo translation and
> automorphisms, with necessity and sufficiency and all exceptional parameter
> regimes stated.

A full classification would be a structural companion to an unconditional
known direct threshold and would extend the inverse-EGZ programme from the
already classified `C_2^2 \oplus C_{2n}` family to a different natural
rank-three family.

A broad infinite subfamily could also be journal-level if it supplies a
uniform structural theorem or reduction that materially advances the general
classification. By contrast, an isolated `m=2` computation, a finite catalogue
of small parameters, or a height bound alone should not be treated as the
intended E-JC contribution unless it reveals a reusable structural mechanism or
closes a demonstrably complete remaining layer. Any partial scope must be
re-audited for prior art before proof work.

Retirement/narrowing triggers include a primary or credible expert source
supplying the full equal-factor classification, an equivalent theorem under
different notation, a general rank-three inverse theorem that specializes to
it, or an unpublished/later result materially covering the same structural
forms.

## 9. Comparison with the fully audited CAND-01

This comparison concerns surviving research space, not proof difficulty or
probability of success.

| Dimension | CAND-01 after S002 | CAND-02 after S003 |
| --- | --- | --- |
| Conceptual shape | Completion of named rank-two Property D conjecture | Full structural inverse-EGZ classification for a natural rank-three family |
| Surviving breadth | Logical residue compressed by multiplicativity and the 2025 sufficiently-large-prime theorem to a finite exceptional-prime layer below an unspecified cutoff | No located ordinary-`s` inverse theorem for the infinite family `m>=2`; the full classification remains the source-defined scope |
| Proximity to prior completion | Very high: all sufficiently large primes established; only finite exceptional layer can remain if no hidden completion exists | Direct threshold complete; nearest inverse theorem is a non-isomorphic family and `m=1` endpoint; adjacent same-group work uses other invariants |
| Principal novelty risk | Hidden effective cutoff, later exceptional-prime cleanup, or all-prime completion | Hidden thesis/preprint/equivalent formulation; exact case is not source-certified open |
| Source support for unresolved status | Strong named-conjecture provenance plus recent partial theorem, but residual cases are not enumerated by the source | Sharp primary-source gap between direct theorem and distinct inverse family, but no explicit open-problem statement located |
| Nature of substantial result | All-prime completion or reusable theorem eliminating/effectivizing the exceptional layer | Full all-`m` classification or broad structural theorem toward it |
| Significance if fully completed | Resolves a named classical Property-D problem | Supplies a complete inverse companion for a concrete infinite rank-three EGZ family |

The audit therefore does not retire either candidate. It leaves a genuine
owner choice between two different research identities: CAND-01 has stronger
named-conjecture status but a substantially narrowed residual frontier;
CAND-02 has a broader surviving structural classification but weaker
source-level certification that the exact problem is presently open. No target
switch is made in S003.

## 10. Publication fit

### Electronic Journal of Combinatorics

Official E-JC pages rechecked 2026-10-02 describe a fully refereed journal for
substantial work across discrete mathematics. The current AI policy explicitly
allows AI assistance in researching and writing mathematics, including finding
proofs or arguments, while assigning authors full responsibility for checking
proofs, details and prior-work citations. New submissions use the web system;
the initial article is a PDF with an HTML abstract, and the checklist requires
AI-policy compliance.

CAND-02 has directly relevant E-JC precedent beyond the programme's existing
2022/2023 zero-sum examples: Wolfgang A. Schmid,
*The Inverse Problem Associated to the Davenport Constant for
C_2+C_2+C_{2n}, and Applications to the Arithmetical Characterization of Class
Groups*, E-JC 18(1) (2011), P33, DOI 10.37236/520, is a rank-three inverse
zero-sum structural paper. This is not the same invariant, but it demonstrates
clear subject fit.

E-JC's conflict policy requires disclosure of close personal relationships,
joint grants, close collaboration on the topic, student/supervisor
relationships and same-department relationships. A private pre-submission
reviewer is not a promised journal referee; editors choose referees.

A complete CAND-02 structural theorem is therefore a credible E-JC subject fit.
The journal's own “substantial content and interest” standard reinforces why a
routine isolated small-`m` case should not be presumed sufficient.

### Credible backup: Journal of Number Theory

The closest direct CAND-02 baseline was itself published in the Journal of
Number Theory. Elsevier's current journal-wide generative-AI policy, updated
June 2026, expressly permits AI tools as part of the research process/formal
research methods when used with human oversight and transparently described;
research-process use belongs in the Methods disclosure. This is sufficiently
explicit to retain JNT as a credible workflow-eligible backup, subject to a
fresh check for journal-specific exceptions at submission time.

Acta Mathematica Hungarica remains an important baseline venue because it
published the 2020 inverse theorem, but S003 does not promote it to the
programme's confirmed backup because an equally explicit current
journal-specific/publisher substantive-AI route was not established in this
bounded audit.

## 11. Reviewer reassessment

No reviewer is confirmed and no one was contacted.

- **Benjamin Girard and Wolfgang A. Schmid:** strongest exact-baseline
  expertise because they authored both controlling direct/inverse papers.
  That same authorship makes them less clean as the programme's independent
  first status/proposal reviewer for a purported extension of their work.
  They remain excellent status experts if later consultation is appropriate.
- **David J. Grynkiewicz:** strong independent inverse-zero-sum expertise,
  including EGZ inverse theorems and recent structural work. Public evidence is
  broad and deep, but less specifically tied to the equal-factor rank-three
  family than the most targeted alternative found in S003.
- **Pingzhi Yuan:** strong inverse/short-zero-sum expertise and an appropriate
  CAND-01 contact, but the audit found less direct rank-three-family alignment
  for CAND-02.
- **Xue Li:** coauthor of the 2024 rank-three `disc(G)` paper on
  `C_2+C_{n_1}+C_{n_2}`, which includes the CAND-02 ambient family, and
  coauthor of current inverse zero-sum work, including the 2026 Acta
  Arithmetica `disc(G)` inverse paper. A current public publication record
  identifies her with Tianjin University of Commerce. She is not an author of
  the controlling Girard--Schmid ordinary-`s` direct/inverse papers.
- **Qiuyu Yin:** coauthor of the same 2024 rank-three `disc(G)` paper and
  earlier `disc(G)` work, providing another close independent expertise lead.

For CAND-02, **Xue Li is the strongest conflict-appropriate first reviewer
candidate found in S003**: she has recent work on the same rank-three group
architecture and inverse structural questions without authorship of the
controlling ordinary-EGZ baseline. This is an expertise/independence
assessment, not evidence of willingness or an assertion that no conflict
exists; actual conflict, availability and current contact route must be
rechecked before any authorized send.

The unsent Stage-1 package is
[Xue Li reviewer package](XUE_LI_REVIEWER_PACKAGE.md).

## 12. Access and certainty boundary

Primary theorem statements were inspected in the Girard--Schmid arXiv full
texts; the direct Theorem 3.2 and inverse Theorem 5.1 were checked at statement
level, with surrounding proof architecture inspected only to establish scope.
No source proof was independently verified.

The 2024 Li--Yin result was available through publication metadata/abstract
records rather than a full proof audit. The 2026 Hui--Li publication record and
abstract were inspected from IMPAN. E-JC and Elsevier policy pages were
inspected live on 2026-10-02.

Searches across forward/backward citations, alternate notation, recent
preprints, theses, surveys and conference records are necessarily bounded.
They found no exact equal-factor ordinary-`s` inverse completion and no
explicit open-problem declaration. Both observations remain status evidence
with limits, not a novelty certificate.
