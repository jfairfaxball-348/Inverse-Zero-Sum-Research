# Target register

**Current protocol note (D-030--D-032):** historical entries below preserve the gate rules that governed their sessions. Any historical statement that external-review completion is required before proof/computation is superseded. The mathematical-investigation gate is now OPEN for CAND-02 while external review remains CLOSED and parallel. This does not change the target's status: SOURCE-DEFINED / CURRENT STATUS UNKNOWN.


**Selected exact target: CAND-02 — rank-three inverse EGZ for
`C_2 \oplus C_{2m} \oplus C_{2m}`, `m>=2`.**

Owner decision D-024, made after the completed S002--S004 audits, supersedes
the earlier CAND-01 selection. The exact target is to classify every
length-`8m` sequence over
`G_m=C_2 \oplus C_{2m} \oplus C_{2m}` having no zero-sum
subsequence of length `2m`, for all `m>=2`.

CAND-01 and CAND-03 remain audited alternatives but are no longer selected.
CAND-04 remains retired as a clean standalone inverse target.

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
