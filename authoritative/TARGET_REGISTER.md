# Target register

**Current protocol note:** historical entries below preserve the gate rules
and target selections that governed their sessions. CAND-03 is the current
selected target under D-111. External review remains CLOSED and is not a
CAND-03 pre-submission blocker under D-127. S043 is a partial Lean
formalization checkpoint; S044 is the only authorized mathematical unit.

**Selected exact target: CAND-03 — inverse generalized-Narkiewicz
structure at length 24 over `C_3^3\{0}`.**

Owner decision D-111 supersedes the historical CAND-05 selection. The exact
target is to classify every length-24 positional sequence over
`C_3^3\{0}` with no two innerly non-zero-sum-joint short zero-sum
subsequences, where short means length at most 3.

The frozen programme theorem is: exactly `S=U^3` with `U` squarefree
short-free of length 8. It is internally proved and independently reverified;
S042 found no exact/equivalent/stronger-implying prior art in the documented
deep audit. S043 formalization is partial and does not yet machine-verify the
full theorem.

CAND-05 and CAND-02 are historical/paused; CAND-04 remains retired; CAND-06
and CAND-01 remain unselected alternatives.

## S001 candidate set

| ID | Precise question | Genre / contribution type | Established baseline and present status | Publication / review fit |
| --- | --- | --- | --- | --- |
| CAND-01 | For every `n >= 2`, does `C_n^2` have Property D; equivalently, must every length-`4n-4` sequence with no `n`-term zero sum have Property-D form `T^(n-1)`? | Rank-two extremal inverse EGZ; completion of a named structural conjecture | Property D is multiplicative; `s(C_n^2)=4n-3`; Schlage-Puchta (2025) proves all sufficiently large primes. Bounded 2026-10-02 search found no all-modulus completion; status remains to be re-audited, not certified open. | Strong E-JC subject/workflow fit; reviewer needs rank-two inverse/Property-D expertise. |
| CAND-02 | For every `m >= 2`, classify length-`8m` sequences over `C_2 + C_{2m} + C_{2m}` with no zero-sum subsequence of length `2m`. | Rank-three extremal inverse EGZ; structural classification beside a known direct threshold | Original Girard--Schmid direct theorem gives `s(G)=8m+1`; their inverse theorem covers the different family `C_2 + C_2 + C_{2n}`. No completion for the displayed equal-factor family was found in the bounded audit, so openness is UNKNOWN. | E-JC compatible; JNT/Acta Math. Hung. are baseline venues; reviewer needs rank-three inverse EGZ expertise. |
| CAND-03 | Classify length-`24` sequences over `C_3^3\{0}` with no two innerly non-zero-sum-joint short zero-sum subsequences. | Generalized Narkiewicz-sense inverse problem; first natural rank-three structural classification after rank-two completion | Gao et al. (2024), Theorem 3.6, gives `eta^N(C_3^3)=25`; Hui--Zhong (2026) completely settle the inverse problem for all rank-two groups. Exact rank-three case is a source-defined extension; current openness UNKNOWN. | E-JC compatible; Acta Arith./JCTA baselines; reviewer needs generalized Narkiewicz/factorization expertise. |
| CAND-04 | Does `C_p^3` have Property D for every prime `p >= 7`? | Higher-rank extremal inverse EGZ; specialization of the general Property-D conjecture | Gao--Geroldinger--Schmid (2007) state the general `C_n^r` conjecture. Gao et al. (2024) collect known families including `C_{2^a}^r`, `C_3^r`, and `C_{3^a5^b}^3`. No all-`p>=7` completion was found in the bounded audit; status requires refresh. | E-JC compatible; JNT/JCTA higher-rank precedents; reviewer needs higher-rank Property-D/EGZ expertise. |

The candidates are intentionally unranked by difficulty, compute cost or
probability of proof. Their fuller definitions, source boundaries and comparison
are in
[the S001 field map](../sessions/S001/FIELD_MAP_AND_CANDIDATES.md).

## Retired or non-shortlisted S001 leads

| Lead | S001 disposition | Evidence boundary |
| --- | --- | --- |
| Intermediate restricted-length inverse classification for rank-two groups | **RETIRED AS SOLVED** | Ebert--Grynkiewicz (2024) establish the remaining prime case and state that, with other work, the conjectured structure follows for all rank-two abelian groups. |
| Inverse `D_k(G)` for rank-two groups | **RETIRED AS SOLVED** | Zhong, *Combinatorica* 45 (2025), treats all rank-two groups. |
| Inverse Narkiewicz-sense `eta^N` for rank-two groups | **RETIRED AS SOLVED** | Hui--Zhong, JCTA 224 (2026), completely settle the rank-two problem. |
| Gao's universal lower-bound conjecture for `nu(G)` | **RETIRED AS DISPROVED** | Geroldinger--Wang--Yang, arXiv:2609.17127 v1 (2026-09-15), abstract announces a disproof. Exact counterexample details were not inspected in S001. |
| 2026 local zero-sum thresholds | **CURRENT ADJACENT ACTIVITY; NOT SHORTLISTED** | Gao--Jiang--Mu (arXiv:2607.11313) determine stated local invariants and inverse problems; this is not automatically the programme target. |
| Near-extremal stability | **NOT YET SOURCE-DEFINED** | No precise current conjecture was manufactured merely to fill the candidate list. |

## Candidate record requirements retained for P1

For a selected candidate, record:

1. Exact group/domain, repetitions, subsequence conventions, quantifiers,
   length restrictions and exceptional cases.
2. Established results with source version and theorem identifiers.
3. A target-specific current-status/overlap audit; search failure never becomes
   openness or novelty.
4. The proposed contribution and why it would matter if proved.
5. Target-specific journals, substantive-AI eligibility and submission route.
6. Reviewer expertise and explicit two-stage willingness before later gates.
7. Source-access gaps and evidence that would retire or narrow the target.

## Historical CAND-01 selected-target frontier (superseded by D-024)

Owner decision D-010 originally selected CAND-01. S002 must now pin the exact literature
boundary around the full conjecture and any admissible partial contribution:
known moduli/families, multiplicativity consequences, the 2025 sufficiently-large-
prime theorem, later citations or improvements, unpublished/preprint overlap,
and exact theorem identifiers.

The intended contribution remains **completion of, or a genuinely new
mathematically substantial advance toward, rank-two Property D**. Any narrowing
must be justified by the literature audit and recorded explicitly rather than
silently replacing the selected target.

The target gate is **OPEN** after S002: the exact current baseline, quantifiers,
multiplicativity and proposed contribution boundary are documented without an
unsupported openness claim.


## S002 Property-D status and surviving scope

The primary audit is in [sessions/S002/PROPERTY_D_DUE_DILIGENCE.md](../sessions/S002/PROPERTY_D_DUE_DILIGENCE.md).

Source-supported baseline:

- Gao (2000), Conjecture 0.2, is the original rank-two length-`4n-4` formulation.
- Property D is multiplicative with no rank-two coprimality condition; Schmid
  (2012) explicitly notes that this reduces the conjecture to prime moduli.
- Sury--Thangadurai (2002) prove the prime `p=7` case; Schmid (2012) records
  Property D for every `m<=10` and, by multiplicativity, for moduli with no
  prime divisor greater than 7.
- Schlage-Puchta, arXiv:2509.02436v1 (2025), proves Property D for every
  sufficiently large prime via an existential cutoff `p_0`; the theorem
  statement supplies no numerical cutoff.
- A 2010 Schlage-Puchta conference abstract, described as joint work with
  Gautami Bhowmik, had already publicly announced that every large prime has
  Property D.

Thus, combining multiplicativity with the 2025 theorem, any unresolved residue
of the full all-`n` target is confined to a finite exceptional-prime layer below
an unspecified cutoff. S002's bounded search did not locate an all-prime
completion, an explicit cutoff, or a later theorem shrinking that layer. Those
non-hits remain **STATUS UNKNOWN**, not an openness certificate.

The selected mathematical identity remains the full all-`n` Property-D
statement. The intended contribution boundary is now: an all-prime completion
or a genuinely substantial structural/effective advance that eliminates the
exceptional layer. A merely isolated finite-prime verification is insufficient
for the intended publication route unless it introduces a reusable method or
closes the entire residual set. External expert status checking can still
narrow or retire this scope.


## S003 challenger status: CAND-02

The owner has explicitly requested an S002-level audit of CAND-02 before any
switch:

> For every `m >= 2`, classify length-`8m` sequences over
> `C_2 + C_{2m} + C_{2m}` with no zero-sum subsequence of length `2m`.

At S003 entry this remains a **source-defined challenger with current openness
UNKNOWN**, not the selected target. S001 established the original
Girard--Schmid direct value `s(G)=8m+1` and observed that their inverse work
concerns the distinct family `C_2+C_2+C_{2n}`; S003 must now test that apparent
gap exhaustively enough for an owner retain/switch decision.

No CAND-01 evidence is retired merely because CAND-02 is being reassessed.


## S003 CAND-02 completed audit and owner decision frontier

Full record:
[sessions/S003/CANDIDATE_2_DUE_DILIGENCE.md](../sessions/S003/CANDIDATE_2_DUE_DILIGENCE.md).

The exact challenger remains

> For every `m >= 2`, classify all sequences `S` over
> `G_m=C_2+C_{2m}+C_{2m}` with `|S|=8m` and no zero-sum
> subsequence of length `2m`.

Source-supported baseline after S003:

- `exp(G_m)=2m`.
- Girard--Schmid, JNT 197 (2019), Theorem 3.2, give
  `s(G_m)=8m+1`; the proof explicitly handles the equal-factor `n=1`
  specialization and Corollary 3.3 records that route without Property D.
- Girard--Schmid, Acta Math. Hung. 160 (2020), Theorem 5.1, classify
  `s(G)-1` extremal sequences for the **different** family
  `G=C_2+C_2+C_{2n}`, `n>=2`.
- Their paper separately records the `n=1` group `C_2^3`: the unique
  length-eight sequence without a two-term zero sum is the squarefree sequence
  of all elements. This is exactly the CAND-02 `m=1` endpoint and supports
  the retained domain `m>=2`.
- Li--Yin's 2024 rank-three `disc(G)` work includes the same ambient
  `C_2+C_{n_1}+C_{n_2}` group architecture, but its direct/inverse condition
  is a distinct zero-sum invariant and does not subsume the ordinary EGZ
  extremal classification.
- Targeted searches for `m=2`, small equal-factor groups, prime/power
  subfamilies, forward citations, 2024--2026 papers/preprints, theses,
  conference records and alternate notation found no exact ordinary-`s`
  inverse completion and no source explicitly declaring the full CAND-02
  statement open. These are bounded search observations, not openness claims.

### CAND-02 status matrix

| Scope | Status after S003 | Programme disposition |
| --- | --- | --- |
| Direct threshold `s(C_2+C_{2m}^2)=8m+1` | ESTABLISHED | Baseline |
| `m=1` / `C_2^3` extremal inverse structure | ESTABLISHED | Excluded endpoint |
| Inverse EGZ for `C_2^2+C_{2n}` | ESTABLISHED, DISTINCT FAMILY | Method/baseline only |
| Rank-three `disc(G)` on same ambient family | ESTABLISHED, DISTINCT INVARIANT | Adjacent prior art |
| Full CAND-02 for every `m>=2` | SOURCE-DEFINED / CURRENT STATUS UNKNOWN | Survives; no openness certificate |
| `m=2`, prime/power or other broad subfamilies | STATUS UNKNOWN after targeted search | Partial targets only after source/expert check |
| Explicit source saying CAND-02 is open | NOT LOCATED | External status assessment remains material |

### Surviving contribution boundary

A substantial CAND-02 result should be one of:

- a complete all-`m>=2` structural classification, preferably as canonical
  normal forms modulo translation and automorphism with all parameter regimes
  explicit; or
- a broad, uniform structural theorem that materially advances the full
  classification and is not merely finite cleanup.

A routine isolated small-`m` verification, finite catalogue or height bound is
not the intended publication-level contribution unless it supplies a reusable
method or closes a demonstrably complete remaining layer.

### Comparison with incumbent CAND-01

CAND-01 retains stronger explicit named-conjecture provenance, but S002 showed
that the 2025 sufficiently-large-prime theorem and multiplicativity compress
its operative status-unknown frontier to finitely many exceptional primes below
an unspecified cutoff.

CAND-02 retains a broader infinite-family structural problem after S003: its
direct threshold is completely known and the nearest inverse theorem concerns
a non-isomorphic family. Its weakness is status provenance rather than scope:
S003 found no primary source explicitly certifying the exact equal-factor
ordinary-EGZ problem as open.

Neither candidate is retired. **CAND-01 remains selected.** D-019 explicitly
postpones the target choice until S004 audits CAND-03 and CAND-04 and compares
the full four-candidate set. No comparison here ranks proof difficulty or
probability of success.


## S004 remaining-candidate audit instruction

Owner decision D-019 directs one S004 session to audit **both remaining S001
candidates** to the S002/S003 standard before any final selection.

### CAND-03 entering S004

> Classify length-`24` sequences over `C_3^3\{0}` with no two innerly
> non-zero-sum-joint short zero-sum subsequences.

S004 must reconstruct the generalized Narkiewicz definitions from primary
sources, verify `eta^N(C_3^3)=25`, inspect the 2026 rank-two inverse
completion and all later overlap, determine whether `C_3^3` is genuinely the
first surviving higher-rank case, and define the exact substantial
publication-level scope without inferring openness from search failure.

### CAND-04 entering S004

> Property D for `C_p^3` for primes `p>=7`.

S004 must first verify that this is a mathematically clean inverse target in the
stated range. In particular it must establish the current direct
`s(C_p^3)` landscape, exact higher-rank Property-D definition, known
families, multiplicativity/reduction statements, and any unresolved direct
dependency. The candidate must be narrowed or retired if primary-source
evidence requires it rather than preserved for symmetry.

After both audits, S004 must place CAND-01 through CAND-04 on one comparison
matrix covering research-space breadth, proximity to prior completion,
novelty/status evidence, direct dependencies, contribution type, significance
if completed, publication fit and reviewer ecosystem. The comparison must not
rank proof difficulty, computational cost or probability of success.

If two or more credible candidates survive, final target selection returns to
the owner as a new blocker. No reviewer outreach is authorized before that
selection.


## S004 completed audits and final owner-selection set

Full record:
[sessions/S004/CANDIDATES_3_AND_4_DUE_DILIGENCE.md](../sessions/S004/CANDIDATES_3_AND_4_DUE_DILIGENCE.md).

### CAND-03 — survives

Exact audited target:

> Classify all length-24 sequences over C_3^3 minus {0} having no two
> innerly non-zero-sum-joint short zero-sum subsequences, where short means
> length at most 3.

Source-supported baseline:

- Gao--Hui--X. Li--Y. Li--Qu--Zhong (2024) define eta^N, identify it with the
  older Narkiewicz-sense eta* invariant, and Theorem 3.6 yields
  eta^N(C_3^3)=25.
- Fan--Hui--Zhong (2024), *On the inverse problem of the revised Narkiewicz
  constant for finite abelian groups*, solves the exact eta^N inverse condition
  for rank-two families C_n+C_{nm} with n in {2,3}, m>=2.
- Fan--Zhong (2025) develops the equivalent joint-short-minimal-zero-sum
  rank-two line and its direct/inverse homocyclic structure.
- Hui--Zhong (2026) completely settles the inverse eta^N problem for every
  finite abelian group of rank two.
- The S004 bounded search found neither an exact C_3^3 completion nor an
  explicit source declaring this exact problem open.

Status: **SOURCE-DEFINED / CURRENT STATUS UNKNOWN.**

The intended journal-level contribution is a complete structural
classification, or a comparably decisive reduction of every extremal sequence
to explicit structural forms. An isolated orbit or computation-only catalogue
is not the programme target.

### CAND-04 — retired as the audited clean target

S001 proposed Property D for C_p^3 for every prime p>=7. S004 found that:

- for odd n the expected direct formula s(C_n^3)=9n-8 is itself a standing
  higher-rank conjectural value outside known families;
- genuine Property-D families include the p=3,5 rank-three line through
  C_{3^a5^b}^3;
- p=7,11,13 are recorded in the controlling higher-rank literature for the
  weaker **Property D0** with respect to 9, not Property D;
- higher-rank multiplicativity/lifting requires compatible direct constants
  and does not give the unconditional prime reduction available in rank two.

Therefore CAND-04 does not remain a clean inverse classification beside a
known direct threshold. A future all-p>=7 programme would have to be
explicitly redefined as a broader combined direct-and-inverse project and is
not silently substituted here.

### Surviving owner-selection set

| Candidate | S004 disposition | Exact research identity after audit |
| --- | --- | --- |
| CAND-01 | SURVIVES; incumbent | Complete rank-two Property D, with operative finite exceptional-prime residue after the sufficiently-large-prime theorem |
| CAND-02 | SURVIVES | Infinite-family ordinary inverse EGZ classification for C_2+C_{2m}^2, m>=2, beside a known direct threshold |
| CAND-03 | SURVIVES | Full length-24 C_3^3 inverse eta^N classification at the known threshold 25 |
| CAND-04 | RETIRED AS CLEAN TARGET | General p>=7 formulation hides an unresolved direct s(C_p^3) dependency; D0 evidence is not D |

B-004 is ACTIVE. CAND-01 remains incumbent until the owner explicitly selects
CAND-01, CAND-02 or CAND-03, or rejects all three and requests renewed target
discovery. The selection is about mathematical identity and contribution type;
the comparison does not rank proof difficulty, computation cost or probability
of success.


## D-024 selected-target specification — CAND-02

The live selected target is:

> For every integer `m>=2`, classify all sequences `S` over
> `G_m=C_2 \oplus C_{2m} \oplus C_{2m}` with `|S|=8m` and
> `0\notin\Sigma_{2m}(S)`.

The direct threshold `s(G_m)=8m+1` is established by Girard--Schmid (2019).
Their 2020 ordinary-EGZ inverse theorem concerns the different family
`C_2\oplus C_2\oplus C_{2n}`; the common `m=1` endpoint is already
understood and excluded. The S003 bounded audit found no exact all-`m>=2`
completion and no source explicitly declaring the displayed problem open, so
current openness/novelty remains to be externally checked rather than assumed.

The intended E-JC-level contribution is the complete all-`m` structural
classification, preferably in canonical forms modulo translation and
automorphisms with necessity/sufficiency and exceptional parameter regimes, or
a broad uniform structural theorem that materially advances that classification.
A routine isolated small-`m` catalogue is not the selected contribution unless
it exposes a reusable mechanism or closes a demonstrably complete remaining
layer.

Target gate: **OPEN**. S005 may refresh status and reviewer readiness but may
not begin proof/computation/formalisation.


## S005 selected-target refresh — CAND-02

Date: 2026-10-02.

The live target remains:

> For every integer m >= 2, classify all sequences S over
> G_m = C_2 + C_{2m} + C_{2m} with |S| = 8m and
> 0 not in Sigma_{2m}(S).

S005 re-tested the exact ordinary-EGZ equal-factor family under alternate
notation including C_2 + C_{2m}^2, direct-product notation,
Z/2Z + (Z/2mZ)^2, s(G)-1 language and concrete small cases such as
C_2 + C_4 + C_4. It also checked recent rank-three literature, forward
citations, preprints and adjacent inverse invariants.

The refresh located relevant but non-subsuming work: Li--Yin on rank-three
disc(G), Hui--Li on rank-two disc(G), Zhang on other prescribed-length
rank-three direct invariants, and Girard--Zotova on direct EGZ constants for
rank-two-like p-groups. None of these sources, as inspected, supplies the
ordinary-EGZ structural classification of all length-8m extremals in this
equal-factor family.

No exact all-m completion, broader inverse theorem clearly implying it, or
m=2/prime/power subfamily result that materially narrows the chosen
contribution was located in the bounded refresh. Search non-hits are not an
openness declaration. The target status remains:

**SOURCE-DEFINED / CURRENT STATUS UNKNOWN.**

The selected publication-level contribution remains a full all-m structural
classification, or a broad uniform theorem materially resolving/advancing it.
A routine isolated small-m catalogue remains outside the selected target.

## Post-S006 mathematical-investigation authorization

Owner decisions D-030--D-032 do not narrow or certify CAND-02. The exact all-m target and conservative status remain unchanged.

Mathematical investigation is now authorized because target and publication gates are OPEN and S003--S006 have supplied sufficiently mature literature/status and structural-baseline due diligence. External review continues in parallel and is not a proof-start prerequisite.

The first bounded mathematical question is dependency D6-08 from S006: whether every target extremal necessarily satisfies the progressive-subsums entry hypothesis of Girard--Schmid 2019 Lemma 4.4(2). Treat this as a programme question until proved. A counterexample or obstruction retires or weakens that route rather than the full target automatically.

Beginning mathematical work does not strengthen the novelty/open-status label. A later substantive reviewer reply can narrow, pause or retire the affected direction if it supplies prior art, a known solution, material overlap, a mistaken premise or a serious scope/significance concern.

## S007 mathematical status

S007 did not change the selected all-m target or its conservative
SOURCE-DEFINED / CURRENT STATUS UNKNOWN label.

The first programme mathematics is now recorded. The progressive-subsums bridge
D6-08 is automatic for m=2 and has an exact repetition/centered-3AP criterion
for m=3. For arbitrary m, a reflection-balanced block of size at least m-1
around some center h is sufficient, but S007 did not prove that every extremal
contains one.

The bounded m=3 searches are diagnostic only and do not narrow the
publication-level target to a small case.



## S008 D7-01 mathematical frontier

S008 does not change the selected target or its literature-status label.
CAND-02 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**.

For the natural subgroup `H=C_m^2` and quotient `G_m/H=C_2^3`, every
length-`8m` CAND-02 extremal has odd multiplicity in all eight quotient
fibers. Every maximal pairing within fibers produces a length-`4m-4`
EGZ-extremal over `H`.

If a quotient fiber is non-monochromatic, two choices of residual term produce
two distinct kernel extremals with a common subsequence of length `4m-5`.
Published Girard--Schmid 2019 Lemma 4.1 rules this out whenever `m` has
Property D. Therefore the reflection-capacity dependency D7-01 holds for every
Property-D modulus. Conversely, a D7-01 counterexample would force failure of
Property D at its modulus.

This is a mathematical reduction, not an openness or novelty claim. The all-m
D7-01 statement remains unresolved because the programme does not assume the
rank-two Property-D conjecture. The next route is narrower than Property D:
exploit the extra restricted-sum constraints imposed on the kernel extremals by
the eight residual `C_2^3` representatives.


## S009 D8-02 mathematical frontier

S009 does not change the selected target or its literature-status label.
CAND-02 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**.

For any distinct CAND-compatible one-change kernel pair, write the two
extremals as `T x` and `T y`, with `|T|=4m-5` and
`delta=x-y!=0`. The eight residual quotient classes form all of `C_2^3`.
Their fourteen affine planes impose an exact incidence-dependent double-hole
pattern: seven `delta`-paired holes in `Sigma_{m-2}(T)` and seven in
`Sigma_{m-3}(T)`, with a further full-set pair in `Sigma_{m-4}(T)` when
`m>=4`.

Independently, the sharp rank-two threshold forces
`-(x+y) in Sigma_{m-2}(T)`. Thus a D8-02 failure is no longer an arbitrary
one-change instability: it must realize this CAND-labelled restricted-sum
package. S009 did not prove the package impossible and did not construct one,
so D8-02 and universal D7-01 remain unresolved.

The next route D9-01 keeps this exact footprint and asks whether its affine
plane incidence relations force `delta=0` without assuming Property D.

## S010 current mathematical boundary

CAND-02 remains the selected all-m target and SOURCE-DEFINED / CURRENT STATUS
UNKNOWN. No target narrowing or openness claim is made.

D9-01 remains unresolved. S010 supplies exact incidence equations and shows
that plane centers may coincide; proves unconditional one-change isolation
once a rank-two extremal reaches multiplicity floor((m-1)/2); and proves, on
actual CAND extremals, D7-01 iff monochromatic fibers iff some maximal pairing
reaches that multiplicity. Failure therefore requires M_z below that threshold
for every z and all residual constraints for all maximal pairings.

The forced threshold witness has a complement of the right eta-extremal
length, but S010-P4 proves that it has a short zero sum in the hypothetical
nonzero-delta actual case. This particular eta-core shortcut is blocked.
Universal D9/D8/D7/D6-08 and the eta-core reduction remain unproved. The
Property-D scope from S008, including m=3, is preserved.

S011 assesses global all-pairings compatibility once, with the stop condition
in the completed ten-session audit. A local residual-lift example is not a
D7 counterexample and these partial deductions are not a certified publication
contribution.

## S011 current mathematical boundary

The exact selected target and SOURCE-DEFINED / CURRENT STATUS UNKNOWN label
are unchanged. D10-01 is unresolved. The two-pair mechanism reaches a precise
original-position lifting defect and is stopped under the S010 audit's rule.
The parabola counterfamily in S011 is not extremal and falsifies only a
capacity/parity relaxation; it supplies no actual D7 or Property-D failure.

No universal eta-core, full classification or new arithmetic scope is claimed.
S012 is prepared as one repair toward the weaker D6-08 progressive-block
condition, not another local-hole reformulation or a change of research target.

## S012 current mathematical boundary

CAND-02 remains the selected all-m target and **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**. S012 does not narrow the target or certify openness.

For a maximum progressive block C of size c, translated to center zero,
S012-P1 proves that any disjoint complement zero sum of length at most c+1
would enlarge C. Thus a putative bridge failure has no complement zero sum in
that range.

S012-P2/P3 re-run the maximal-short-zero-sum step of GS Lemma 4.4(2) below the
published threshold. A maximum complement short zero sum has
m+1<=t<=2m-c-1; writing d=2m-t, the remainder has no zero sum of length at most
d, with c+1<=d<=m-1. Eta either leaves an eta(G)-1-length remainder that is not
proved eta-free or forces only a zero sum longer than the splice range.

This is an exact obstruction to the assessed repair, not a D6-08
counterexample. D6-08/D6-09 remain unresolved universally, the earlier
D7--D10 chain remains unresolved, and the stopped capacity route stays stopped.
S013 will compare distinct source-backed routes before any new mathematics is
chosen.

## S013 target-strategy boundary

Date: 2026-10-04.

S013 does **not** retire, narrow or certify the selected target. CAND-02 remains

> for every `m>=2`, classify all length-`8m` sequences over
> `C_2+C_{2m}+C_{2m}` with no `2m`-term zero sum,

with status **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**.

The source-route comparison found no checked theorem that can presently be
inserted into the programme's stopped proof architecture: current
restricted-length forcing is on the wrong length scale, current homocyclic
near-extremal inverse results use different hypotheses or the already-known
Property-D scope, and no equal-factor ordinary-eta equality reduction was
identified. These are applicability findings, not an openness certificate.

B-006 is active because continuing automatically would require inventing a new
mechanism without a source-backed entry point or renaming a stopped route. The
owner must decide whether to retain full CAND-02 under a materially new
strategy, narrow it to a source-justified contribution followed by a fresh
status audit, or reassess/switch the target. Until that decision the selected
target remains CAND-02 and the mathematical-investigation gate remains OPEN,
but no next numbered session is scheduled.


## Post-S013 owner disposition

On 2026-10-04 the owner resolved B-006 by choosing to **retain the full CAND-02
target**. There is no narrowing, no subfamily substitution and no target switch.

The next mathematical route is deliberately new: S014 will assess global
one-term extension saturation / support-cloning at the exact EGZ threshold.
This route selection does not change the target's evidence status. CAND-02
remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**, and no openness or novelty
claim is inferred from the absence of an exact completion in prior searches.

## S014 target boundary

Date: 2026-10-04.

CAND-02 remains exactly the selected all-`m` target and remains
**SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. S014 neither narrows the target nor
certifies that the new deductions are novel.

S014 adds a new internal structural layer in the original ambient group. With
`n=2m`, every extremal has full `(n-1)`-sum coverage; support cloning makes
all copies of each support value essential in the corresponding target
representation; and the resulting cores `K_x(S)` exactly classify
single-position replacements that preserve extremality. Multiplicity `n-2`
is forbidden.

D14-01 is the next bounded question: whether a support core can contain
different-valued old positions and, if so, what simultaneous incidence
constraints follow. This is not a claim that D14-01 is open in the literature
or that its resolution alone would complete CAND-02.

## S015 target boundary

Date: 2026-10-04.

CAND-02 remains exactly the selected all-`m` target and remains
**SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. S015 neither narrows the target
nor certifies that its new ambient deductions are novel.

D14-01 is partially resolved. S015 does not determine whether a support value
can have a genuinely nontrivial safe source class in an actual extremal, but it
proves that every replacement core is a union of complete support value classes
and that safe moves transport the entire core system exactly. It also excludes
nontrivial incoming incidence at multiplicity `n-3` and above (with `n-2`
already impossible), forces exact per-source deficit descent, and factors the
remaining representation freedom outside the core.

The next bounded dependency D15-01 asks only about the first unresolved
near-full ambient strata, `delta_a<=2`, under a nontrivial support incidence.
This is not a claim that D15-01 is open in the literature or that resolving it
would itself complete the full classification.


## S016 target boundary

Date: 2026-10-04.

CAND-02 remains exactly the selected all-`m` target and remains
**SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. S016 neither narrows the target nor
establishes openness or novelty.

D15-01 is not settled as an existence question. S016 proves that any actual
near-full nontrivial core would induce a threshold deletion star whose
augmented core is the exact common intersection of all `n)-term zero sums.
Deficits zero, one and two have exact residual normal forms, and the remaining
deficit-descent constraint is the shifted exchange equation recorded in S016.

No actual `delta<=2` extremal is constructed and no theorem excludes one.
The current ambient mechanism stops at shifted outside residuals or
cross-boundary exchanges. B-007 therefore suppresses an automatic S017 pending
owner strategy reassessment. This workflow stop does not change the selected
target or its source-status label.

## S020 target-strategy boundary

Date: 2026-10-04.

CAND-02 remains exactly the selected all-m target and remains
**SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. The S020 audit neither narrows the
target nor certifies openness.

S014–S016 provide durable all-m ambient structural results, and S017–S019 give
a strict 2-primary counting/incidence reduction. Neither chain currently
classifies CAND-02, constructs a counterexample, excludes a near-full deficit
stratum, or supplies the mixed-primary transfer needed for the full target.

D-050, D-057 and D-063 remain binding. No source- and hypothesis-justified
S021 route clears the anti-churn bar, so B-008 is active. The owner must decide
whether to retain full CAND-02 under a genuinely new strategy/source direction,
deliberately narrow/reframe to a source-justified partial contribution with a
fresh exact status audit, or reassess/switch the target. Until then no numbered
successor is scheduled.

## Post-S020 target reassessment authorization

Date: 2026-10-04.

Owner decision D-066 selects B-008 option 3: **reassess/switch target**.
CAND-02 is therefore no longer authorized for automatic proof continuation.
It remains the historical incumbent until an explicit replacement is selected,
so the repository does not silently rewrite the selected-target record.

S021 will freshly re-audit CAND-01 and CAND-03 and may introduce at most two
new source-defined replacement candidates after current primary-source due
diligence. CAND-04 remains retired unless positive primary evidence shows that
its hidden direct rank-three EGZ dependency has materially changed.

S021 is target-selection work only. It must return a concrete recommendation
and viable alternatives for owner selection; it may not silently switch target
or begin mathematical investigation on a replacement.

## S021 reassessment — recommendation pending owner selection

**No target switch has occurred.** CAND-02 remains the machine-recorded
historical incumbent only until the owner resolves B-009; its proof programme
is paused.

### CAND-03 — S021 recommendation

Exact scope: classify every sequence `S` over `C_3^3\\{0}` of length
`24=eta^N(C_3^3)-1` having no two innerly non-zero-sum-joint short zero-sum
subsequences, by a structural necessity-and-sufficiency theorem with explicit
multiplicity/support forms. No unlicensed translation normalization; a
computational catalogue alone is insufficient.

S021 disposition: **RECOMMENDED / NOT SELECTED / SOURCE-DEFINED / CURRENT
STATUS UNKNOWN.** The 2026 rank-two inverse completion strengthens the
baseline; no exact rank-three completion was found in the bounded refresh, but
no explicit open declaration was located either.

### CAND-01 — viable alternative

Exact identity is unchanged: all-modulus Property D for `C_n^2`. S021 found
no checked all-prime completion or effective cutoff beyond the 2025
sufficiently-large-prime result. Its full completion remains highly
significant, but narrow exceptional-prime work requires a reusable structural
or complete-residue contribution to meet the programme bar.

Disposition: **VIABLE ALTERNATIVE / NOT SELECTED.**

### CAND-05 — newly admitted viable alternative

Exact scope: for every `m>=2`, classify all length-`6m+1` sequences over
`C_2\\oplus C_{2m}\\oplus C_{2m}` with no nonempty zero-sum subsequence of
length at most `2m`. Girard--Schmid gives the direct threshold
`eta=6m+2`.

Disposition: **VIABLE NEW ALTERNATIVE / NOT SELECTED / SOURCE-DEFINED /
CURRENT STATUS UNKNOWN.** A focused search found no checked all-`m`
classification, which is not an openness certificate. The all-parameter
rank-three scope carries a substantial anti-churn risk.

### Other dispositions

- CAND-02: historical incumbent pending owner replacement; proof paused; not
  shortlisted after S020's demonstrated high multi-architecture risk.
- CAND-04: remains RETIRED AS A CLEAN TARGET; no positive primary evidence was
  found removing its hidden direct-EGZ prerequisite.
- The permitted second new-candidate slot was deliberately left empty because
  no second discovery candidate cleared the exact-statement, current-status,
  settled-background and hidden-prerequisite bar.

## Post-S021 owner selection — CAND-05 selected

Date: 2026-10-05.

The owner selected S021 shortlist option 3. CAND-05 is now the live exact
target:

> For every `m>=2`, classify all length-`6m+1` sequences over
> `C_2\oplus C_{2m}\oplus C_{2m}` containing no nonempty zero-sum
> subsequence of length at most `2m`.

The direct value `eta(G_m)=6m+2` is source-established, but S021's audit of
this newly discovered candidate was deliberately bounded. Therefore the target
gate is OPEN by explicit owner selection while the mathematical-investigation
gate is CLOSED pending S022's full current-status, source-structure and hidden-
prerequisite audit.

No CAND-02 programme theorem is automatically reclassified as a CAND-05
theorem merely because the ambient group is identical. CAND-05 has the
stronger no-short-zero-sum hypothesis and a different invariant identity;
reuse requires an exact proof or source transfer.

## S022 CAND-05 target audit

Selected target unchanged: classify all length-`6m+1` ordinary-`eta`
extremals over `C_2\oplus C_{2m}\oplus C_{2m}` for every `m>=2`.

Status: **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. The direct threshold
`eta=6m+2` is established. The equal-factor proof uses
`H=2G_m\cong C_m^2` and `Q\cong C_2^3` but supplies no stated equality
classification. The rank-two inverse-`eta` input on `C_m^2` is
unconditional; Property D is not required.

Small-parameter and arithmetic-subfamily searches found no target-specific
completion in the bounded audit. Those non-hits are not openness evidence.
Mathematical investigation is OPEN for S023 D22-01 only.

## S023 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

D22-01 is now programme-proved. Every length-`6m+1` CAND-05 extremal has no
term in `H=2G_m`; all seven nonzero `C_2^3` quotient fibres have odd
multiplicity; a maximal same-fibre pairing has exactly `3m-3` pairs and leaves
one residual term in each fibre; and every induced pair-sum sequence is an
ordinary-`eta` extremal over `C_m^2`.

This is an all-`m` structural reduction, not the final classification and not a
novelty certificate. The first remaining lift dependency is D23-01:
pairing-choice rigidity / quotient-fibre monochromaticity. S024 is limited to
that statement.


## S024 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

D23-01 is now programme-proved. Every nonzero quotient fibre is monochromatic
in `G_m`. Combined with S023, every CAND-05 extremal therefore has exactly
seven support values, one in each nonzero `C_2^3` quotient fibre, with
positive odd multiplicities summing to `6m+1`. Any maximal same-fibre pairing
now yields the same canonical rank-two ordinary-`eta` kernel sequence.

This remains a structural reduction, not the final classification and not a
novelty certificate. The next dependency is D24-01: specialize the
rank-two inverse-`eta` normal form to the canonical kernel and determine only
the resulting three-value bucket equations. S025 must not classify the seven
lifts, the full multiplicity vector, or quotient normalizations.

## S025 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

D24-01 is now programme-proved. The canonical kernel over `C_m^2` has exactly
three positive-weight support values, each of multiplicity `m-1`. They can be
ordered as `h_1,h_2,h_3` with `(h_1,h_2)` a basis and
`h_3=h_2-a h_1` for a unit `a mod m`; every pair is a basis. The seven
quotient-fibre weights satisfy the three bucket equations
`sum_{q:2x_q=h_i} k_q=m-1`.

This remains a structural reduction, not the final classification and not a
novelty certificate. Zero-weight fibres (`r_q=1`) are invisible to the kernel
normal form. The next dependency is D25-01: determine the exact geometry of
the doubling fibres relative to `Q` and only the resulting same-bucket
quotient restriction. S026 must not solve the global bucket assignment,
multiplicity vector, seven lifts or quotient normalization.
## S026 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

D25-01 is now programme-proved. The exact two-torsion image under
`pi:G_m->Q` is all of `Q` when `m` is odd and the distinguished
order-two subgroup `L=<pi(e_0)>` when `m` is even. Accordingly a fixed
doubling fibre meets all eight quotient classes once in the odd case, while in
the even case it meets exactly one two-class `L`-coset, four points over each
class.

This yields only a positive-weight same-bucket restriction. For even `m`,
two distinct quotient classes represented in one kernel bucket must differ by
the unique nonzero element of `L`; for odd `m`, quotient geometry alone
imposes no such restriction. Fibres with `k_q=0` remain unassigned.

The next dependency is D26-01, restricted to the even-modulus induced map
`Q/L -> H/2H` and the resulting bucket-coset placement. S027 must not solve
the member-level bucket assignment, weights, seven lifts, odd-modulus branch or
quotient normalization.

## S027 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

For even `m`, D26-01 is now programme-proved. The induced map
`delta:Q/L -> H/2H` is an isomorphism. Combining this only with the S025
basis/unit relation shows that the three positive-weight kernel buckets are
exactly the three nonzero `L`-cosets, while the unique nonzero quotient class
inside `L` has `k_q=0`.

The result is coset-level only. It does not choose which member or members of a
nonzero `L`-coset have positive weight, solve any `k_q/r_q` values,
classify lifts, analyze odd `m`, or normalize quotient automorphisms.

The next dependency is D27-01, restricted to the even-modulus two-member
occupancy question within one nonzero `L`-coset.

## S028 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

For even `m`, D27-01 is only partially resolving. If both members of a
nonzero `L`-coset are positive in its bucket, their weights sum to
`m-1`. Hence simultaneous positivity is impossible for `m=2`. For even
`m>=4`, the two-fibre `2m`-term block sums to the nonzero two-torsion
difference `t`, so the existing member-level geometry alone does not exclude
it.

Writing `u=x_ell` and `w=x_q+x_{q+ell}+u`, actual extremality forces
`-w` to have minimum completion length exactly `m-1` inside the
canonical kernel. The zero-weight lift `u` is not fixed by S025--S027, and
the boundary case `u=t` satisfies the condition with `w=h`. No actual
simultaneous-positive extremal is constructed or asserted.

The next dependency is D28-01, restricted to classifying that canonical-kernel
completion shell and applying it only to the fixed-coset target.


## S029 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

For even `m>=4`, D28-01 is now programme-proved. The canonical kernel's
depth-`m-1` completion shell is classified exactly in the S025 normal form:
two affine lines for `a=1`, two affine lines for `a=-1`, and otherwise
one affine line plus `h_1` and `h_2+h_3`.

For the one fixed simultaneous-positive S028 coset, the offset
`z=u+t` must lie in the corresponding translate `E(K)-h`. This is an
exact necessary lift condition, not an exclusion: `z=0` remains compatible
for all three bucket values, so no actual extremal is constructed or ruled out
by this local test alone.

The next dependency is D29-01, restricted to the simultaneous shell constraints
on the three residual quotient-zero triples through `ell`. S030 must not
solve global weights/lifts, inspect the other Fano lines, treat odd `m`, or
normalize quotient automorphisms.


## S030 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

For even `m>=4`, D29-01 is programme-proved as an exact necessary
three-line compatibility statement. Every residual quotient-zero triple through
`ell` has its lift-sum in `E(K)`. Their common lift is equivalent to
an intersection of three translated copies of the S029 shell.

This does not exclude the fixed simultaneous-positive coset. The relative
pair-sums of the other two cosets are not determined by S025--S029 when a
zero-weight member is present, and a common-torsion assignment realizes all
three shell points simultaneously. This is not an actual extremal construction.

The next dependency is D30-01, restricted to the remaining four Fano residual
lines. S031 must stop before global weights/lifts, odd `m`, quotient
normalization or any existence/full-classification claim.

## S031 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

For even `m>=4`, D30-01 is programme-proved as a complete necessary
seven-Fano-line shell analysis. The four non-`ell` residual lines also land
in `E(K)`, so all seven quotient-zero residual triples satisfy the exact
depth-`m-1` completion condition.

This still does not exclude the fixed simultaneous-positive coset. A common
two-torsion translation makes the three lines through `ell` equal
`h_1,h_2,h_3` and collapses the other four to one half of
`h_1+h_2+h_3`. The surviving half-lift coordinate is an `H[2]` torsor,
and the half-fibre always meets the universal shell line
`h_2+<h_1>`. No actual extremal is constructed.

The next dependency is D31-01, restricted to the seven four-term residual
subsets complementary to the Fano lines. S032 must stop before arbitrary
residual subsets, global weights/lifts, odd `m`, quotient normalization or
any existence/full-classification claim.

## S032 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

For even `m>=4`, D31-01 is programme-proved as a complete Fano
line/complement necessary shell analysis. Every one of the seven four-term
residual subsets complementary to a Fano line has lift-sum in `E(K)`.
Writing `r` for the total residual sum and `w_F` for a line sum, the
combined system is exactly

`w_F in E(K) cap (r-E(K))`

for all seven Fano lines.

Relative to `s=h_1+h_2+h_3`, the exact remaining translation defect is
`zeta=r-s=u+tau_1+tau_2+tau_3 in H`. This still does not exclude the
fixed simultaneous-positive coset: the common-torsion family has
`zeta=0`, hence `r=s`, and all seven complementary shell tests hold.
No actual extremal is constructed.

The next dependency is D32-01, restricted to the completion-depth layer of the
full canonical seven-term residual sum. S033 must not open another proper
residual-subset family, solve global weights/lifts, treat odd `m`, normalize
quotient automorphisms or make an existence/full-classification claim.


## S033 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

For even `m>=4`, D32-01 is programme-proved at the full seven-term
residual level. The total residual sum obeys
`m-3<=lambda(r)<=m-1`. The S029 distance formula classifies the deep
layer exactly by
`min_{0<=gamma<=Q}[P+a gamma]_m>=m-3-Q`.

This does not exclude the fixed simultaneous-positive coset. In the surviving
common-torsion family, `zeta=0` and
`r=h_1+h_2+h_3=(1-a)h_1+2h_2`; its exact completion depth is
`m-2`. Thus it lies strictly below the depth-`m-1` shell but still
inside the required full-residual deep window and the S032 translation
intersection. No actual extremal is constructed.

The S030--S033 residual-shell family is now stopped against another proper
residual-subset variant. S034 is restricted to reassessing genuinely different
mechanisms and must not silently turn into a global weight/lift classification.

## S034 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. S034 is a route reassessment, not an openness or novelty certification.

For even `m>=4`, committed authority now also gives the aggregate block decomposition `S=B_1B_2B_3u`, with `|B_i|=2m`, `sigma(B_i)=tau_i`, and `sigma(S)=zeta`. The source-based global input `D_2(G_m)=6m+1` forces two disjoint nonempty zero sums, each longer than `2m` in an extremal. These facts do not classify the full multiplicity vector or lifts and do not establish existence/nonexistence of simultaneous positivity.

The S030--S033 shell route remains stopped. D34-01 is the single authorized even-modulus successor.

## S035 CAND-05 mathematical boundary

Date: 2026-10-05.

The selected target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**.

For even `m>=4`, D34-01 reaches an exact nonexclusion at block level. In the common-torsion compatibility family already surviving S031--S033, index the fixed simultaneous-positive block as `B_1` and take `u=t`, `tau_1=tau_2=tau_3=t`, where `t` is the fixed nonzero two-torsion element with quotient image `ell`. Then `zeta=0` and

`S=(B_1u)(B_2B_3)`

is a partition into two zero sums of lengths `2m+1` and `4m`. Those lengths are both above the CAND-05 forbidden threshold `2m`, so the exact `D_2(G_m)=6m+1` input does not exclude the unresolved simultaneous-positive coset.

This does not assert that the compatibility family is realizable by an actual CAND-05 extremal. It establishes only that the current aggregate block constraints and multiwise theorem do not distinguish it from one. D34-01 is stopped as an exclusion route; the S030--S033 residual-shell route also remains stopped.

B-010 is active. No next mathematical dependency is selected until the owner chooses the strategy disposition.

## Post-S035 CAND-05 strategy boundary

Date: 2026-10-05.

The owner resolved B-010 by retaining full CAND-05. The exact selected target is
unchanged and remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**.

The resolution authorizes one fresh source-first mechanism reassessment, not a
return to a stopped proof architecture. S036 D35-01 must stay outside the
S030--S033 residual-shell/completion-depth family and D34-01's aggregate
multiwise block-factorisation route. It may compare at most three genuinely
distinct theorem-backed mechanisms and promote at most one bounded mathematical
successor without proving it.

No target narrowing, existence claim, odd-`m` conclusion, lift classification,
or full classification is implied by the owner decision.



## S036 target checkpoint

Full all-m CAND-05 remains selected and SOURCE-DEFINED / CURRENT STATUS UNKNOWN.
S036 changes no target statement and makes no existence or classification claim.
The three fresh mechanisms tested in D35-01 do not produce a runnable successor,
so B-011 is active before any further numbered mathematical session.


## Post-S036 owner target-reassessment decision

Date: 2026-10-05.

The owner resolved B-011 with option 2: reassess/switch the selected target.
CAND-05 remains the historical incumbent only until an explicit replacement
selection, but its proof programme is paused. The exact CAND-05 status remains
SOURCE-DEFINED / CURRENT STATUS UNKNOWN; S036's failed mechanism search is not
an openness or novelty certificate.

S037 is a source-first target-selection session. It will refresh CAND-03 and
CAND-01 from the S021 baseline, use the S022--S036 CAND-05 history as strategic
evidence, and may discover at most two genuinely new source-defined candidates.
CAND-04 stays retired absent positive primary evidence changing its hidden
direct-EGZ dependency; CAND-02 remains historical/paused.

No replacement target is selected by this owner strategy decision. Final target
selection returns to the owner after S037's comparison and recommendation.


## S037 replacement-target checkpoint

Date: 2026-10-06.

S037 recommends **CAND-03**, without selecting it:

> Classify all length-24 sequences over `C_3^3\{0}` having no two innerly
> non-zero-sum-joint short zero-sum subsequences (short means length at most
> 3), by a structural necessity-and-sufficiency theorem.

The current adjacent baseline is strong: `eta^N(C_3^3)=25` is source-defined
and the inverse Narkiewicz-sense eta problem is now completely solved in rank
two. Exact rank-three current status remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**; no search non-hit is an openness claim.

S037 also registers **CAND-06**:

> For `G=C_5^3`, classify all zero-sum sequences `U` of length
> `D_4(G)=30` that cannot be partitioned into five nontrivial zero-sum
> subsequences.

Yiu 2026 supplies the fresh direct value; Zhong 2025 supplies the standard
inverse-`D_k` formulation. CAND-06 is viable but provisional because the
direct theorem is an extremely fresh preprint and inverse-status collision risk
is high.

CAND-01 remains viable at full all-modulus Property D scope. CAND-05 is not
shortlisted because no positive primary evidence changed S036; its proof
programme remains paused. CAND-02 remains historical/paused and CAND-04
retired.

No replacement is selected until B-012 is resolved by the owner.


## Post-S037 selected target — CAND-03

Date selected: 2026-10-06.

The owner selected **CAND-03**:

> Classify all sequences `S` over `C_3^3\{0}` with `|S|=24` having no
> two innerly non-zero-sum-joint short zero-sum subsequences, where short means
> length at most `3`.

The desired contribution remains a structural necessity-and-sufficiency theorem
with explicit support/multiplicity forms. A raw finite orbit catalogue is not
the selected contribution. Automorphisms may be used when justified; arbitrary
translation is not assumed because the mixed short-length condition is not
translation invariant.

Source baseline retained from S004/S021/S037:
- `eta^N(C_3^3)=25` is established;
- the inverse Narkiewicz-sense eta problem is completely solved in rank two;
- exact CAND-03 current status remains **SOURCE-DEFINED / CURRENT STATUS
  UNKNOWN**; no explicit openness certification is claimed.

CAND-05 is superseded as the selected target and becomes historical/paused.
Its mathematics remains durable programme evidence and its stopped routes must
not be imported as CAND-03 obligations.


## S038 CAND-03 mathematical boundary

Date: 2026-10-06.

CAND-03 remains the selected target and remains **SOURCE-DEFINED / CURRENT
STATUS UNKNOWN**. D37-01 establishes one target-wide structural fact:
for every length-24 extremal (S), the largest restriction to a rank-two
subgroup of (C_3^3) has length either (8) or (9).

This does **not** yield a universal Hui--Zhong 2026 Theorem 1.1 interface.
That theorem requires length (8) over (C_3^2\setminus\{0\}), while the
published direct lower-bound extremal (S_0=U^3) has every subgroup
restriction length divisible by (3), so its largest restriction is (9)
and no subgroup restriction has length (8). Quotient projection, affine
translation and arbitrary one-position extraction do not preserve or
canonically realize the exact theorem hypotheses.

Accordingly the S038 rank-two slice/hyperplane transfer route is stopped.
No classification, nonexistence theorem, novelty claim or openness claim is
made. B-013 is active before another numbered session.


## Post-S038 CAND-03 strategy boundary

Date: 2026-10-06.

The owner retained CAND-03 after the failed S038 rank-two transfer preflight.
The exact target is unchanged and remains **SOURCE-DEFINED / CURRENT STATUS
UNKNOWN**.

S039 is permitted to reassess source-backed mechanisms only. Any candidate
mechanism must have a target-wide path from the actual indexed length-24
hypothesis to a structural datum; the S038 restriction/projection/extraction
route remains stopped. A raw finite orbit catalogue, cap-set replacement,
arbitrary translation/deletion normalization, or transfer from CAND-02/CAND-05
does not satisfy the contribution or mechanism bar.


## S039 CAND-03 direct-proof near-equality boundary

Date: 2026-10-06.

CAND-03 remains selected and **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. S039 does not classify the extremals, but it establishes a new target-wide necessary structure from the defining 2024 direct proof.

For every maximal packing of position-disjoint short minimal zero sums in a length-24 extremal, the triple `(l,s,r)` of 3-atom count, total atom count and short-free remainder length is one of

`(6,8,2), (7,8,1), (8,8,0), (6,9,0)`.

Deleting one arbitrary representative from every packed atom leaves a short-free full-rank residual of length 16 or 15. This is sequence/position structure, not a set/cap reformulation and not a rank-two transfer.

S040 may test only the exact full-rank residual consequences. S038 remains a hard route stop.


## S040 CAND-03 internal classification boundary

Date: 2026-10-06.

CAND-03 remains the selected target. Its **mathematical classification is now PROGRAMME-PROVED FROM CHECKED SOURCE INPUTS**:

> A length-24 sequence `S` over `C_3^3\{0}` has no two innerly non-zero-sum-joint short zero-sum subsequences if and only if `S=U^3` for a squarefree short-free length-8 sequence `U`.

The necessity is the S040 programme proof from the S039 maximal-packing residuals and Fan--Gao--Wang--Zhong--Zhuang 2012. The converse is the checked Gao--Hui--Li--Li--Qu--Zhong 2024 Lemma 3.3(2) construction, invoked only after necessity.

This does **not** establish that the classification is new in the literature, that the problem was previously open, that the theorem is publication-significant, or that the proof has independent external validation. S041 is dedicated to independent proof-chain verification and a focused exact-overlap/current-status audit. A bounded search non-hit will not be treated as an openness or novelty certificate.

## S041 CAND-03 verified classification/status boundary

Date: 2026-10-06.

CAND-03 remains selected. Its mathematical classification is now
**PROGRAMME-PROVED AND INTERNALLY REVERIFIED FROM CHECKED SOURCE INPUTS**:

> A length-24 sequence `S` over `C_3^3\{0}` has no two innerly
> non-zero-sum-joint short zero-sum subsequences if and only if
> `S=U^3` for a squarefree short-free length-8 sequence `U`.

D40-01 found no defect in the S040 necessity proof or in the converse use of
the checked 2024 construction. The focused overlap audit confirms substantial
prior source ingredients: the 2024 paper already gives the `U^3` lower-bound
construction and arbitrary representative-deletion implications, while the
2012 paper supplies the length-16 sum-zero and `C_0(C_3^3)` facts. The
checked antecedents/later inverse line do not state the exact rank-three
length-24 iff theorem at the inspected interfaces.

The exact literature novelty/open status, publication significance and
independent external validation therefore remain unresolved. The bounded
non-location of an exact theorem is not a novelty or openness certificate.
No further proof/status session is scheduled.



## Post-S041 CAND-03 status dependency

The exact CAND-03 theorem is internally proved and independently reverified
within the programme. The remaining pre-formalization dependency is literature
status, not proof completion.

S042/D41-01 is a deep systematic prior-art audit. It must search not only for
the exact wording but also for equivalent reformulations and stronger theorems
that immediately specialize to the CAND-03 classification. Alternate finite-
geometric or factorization language counts as prior art only after the
equivalence and source statement are checked exactly.

A clean S042 result means only that no exact/equivalent/stronger-implying prior
art was located within the documented deep audit and no unresolved high-risk
lead remains. It does not logically prove novelty or prior openness. Under that
boundary the target proceeds to Lean formalization.


## S042 CAND-03 deep prior-art boundary

Date: 2026-10-06.

CAND-03 remains selected and its theorem remains **PROGRAMME-PROVED AND INTERNALLY REVERIFIED FROM CHECKED SOURCE INPUTS**. D41-01 adds only this literature-status boundary:

> **no exact/equivalent/stronger-implying prior art located in the documented deep audit.**

No PA-EXACT, PA-EQUIV or PA-STRONGER source was verified and no unresolved high-probability target-specific source lead remains. This does not logically prove novelty, previous openness, publication significance or exhaustive absence.

The closest finite-geometric equivalence is only at the core level: squarefree short-free length-8 `U` corresponds after adjoining 0 to a 9-cap in `AG(3,3)`. Cap classification does not force an arbitrary target length-24 sequence to have multiplicity three on such a core, so it is not an equivalent or stronger CAND-03 theorem.

S043 is exact Lean formalization. The theorem itself stays frozen; no new mathematical architecture is authorized.


## S043 CAND-03 formalization boundary

Date: 2026-10-06.

The selected mathematical target and frozen iff statement are unchanged.
S043 encoded that exact theorem as `FrozenClassification` in Lean using
positional semantics. A clean build of definitions and proved foundational
lemmas is not a proof of the final proposition.

The first exact formal blocker is `S039PackingInput`, corresponding to the
already programme-proved S039 four-signature packed-atom theorem and its
universal arbitrary-representative residual quantifier. S044 may formalize
only that interface. No weakening, strengthening or target replacement is
authorized.

Formalization status: **PARTIAL**. Palomar status:
**BLOCKED UNTIL THE FULL FROZEN CLASSIFICATION HAS A LEAN PROOF TERM**.


## S044 CAND-03 packing-formalization boundary

Date: 2026-10-06.

The selected target and frozen iff statement are unchanged. D43-01 proves the
complete S039 packing construction in Lean conditional on the two published
threshold interfaces:

`s039PackingInput_of_thresholds : ThreeTerm19Input -> Eta17Input -> S039PackingInput`.

This includes the exact four signatures and universal arbitrary-representative
short-free residual property. Therefore the current first formal blocker is no
longer the packing architecture itself; it is the missing closed proof term for
`ThreeTerm19Input`, the exact positional `s(C_3^3)=19` consequence used for
`l>=6`. `Eta17Input` remains downstream.

Formalization status: **PARTIAL**. Palomar status:
**BLOCKED UNTIL THE FULL FROZEN CLASSIFICATION HAS A LEAN PROOF TERM**.


## S045 CAND-03 ThreeTerm19 formalization boundary

Date: 2026-10-06.

The selected target and frozen iff statement are unchanged. D44-01 proves
`threeTerm19Input : ThreeTerm19Input`, the exact positional consequence used
by the S039 packing proof: every length-19 positional sequence has a
three-position zero-sum set.

The Lean proof does not assume Property D or `s(C_3^3)=19`. It proves the
required interface directly through explicit finite affine-plane geometry: a
cap in `F_3^3` has at most nine points, while absence of a three-position zero
sum bounds each value multiplicity by two, forcing at least ten support values
at length 19.

Formalization status remains **PARTIAL**. The next exact blocker is
`Eta17Input`. Palomar status remains **BLOCKED UNTIL THE FULL FROZEN
CLASSIFICATION HAS A LEAN PROOF TERM**.

## S046 CAND-03 Eta17 formalization boundary

Date: 2026-10-06.

The selected target and frozen iff statement are unchanged. D45-01 proves
`eta17Input : Eta17Input`, the exact ordinary-eta positional interface needed
by the S039 packing proof.

The proof does not assume the numerical threshold. Short-freeness makes the
nonzero support together with the origin a cap in the existing finite
`F_3^3` model; the S045 nine-point cap theorem limits the support to eight,
and multiplicity at most two contradicts length 17.

Formalization status remains **PARTIAL**. The next exact obligation is the
closed proposition `S039PackingInput`, derivable from the already checked
conditional theorem and the two now-proved threshold inputs. Palomar remains
**BLOCKED UNTIL THE FULL FROZEN CLASSIFICATION HAS A LEAN PROOF TERM**.


## S047 CAND-03 S039 packing-closure boundary

Date: 2026-10-06.

The selected target and frozen iff statement are unchanged. D46-01 proves

`s039PackingInput : S039PackingInput`

by applying the already kernel-checked conditional theorem to
`threeTerm19Input` and `eta17Input`. This closes the S039 formal interface
without changing the packing certificate or positional semantics.

Formalization status remains **PARTIAL**. The next exact obligation is
`Length16SumZeroInput`, the first source interface used on the recorded S040
proof spine. Palomar remains **BLOCKED UNTIL THE FULL FROZEN CLASSIFICATION HAS
A LEAN PROOF TERM**.

## S048 CAND-03 formalization checkpoint

CAND-03 remains the frozen internally proved and independently reverified
classification. S048 does not alter its mathematical statement or literature
status. Formalization remains PARTIAL.

The current Lean proof spine has closed `S039PackingInput` and now has
kernel-checked support lemmas reducing the length-16 source interface to the
maximal nine-cap sum invariant. `Length16SumZeroInput` itself still has no
proof term. S049 is the sole formal continuation; no target switch or theorem
scope change is authorized.
