# Target register

**Incumbent exact target: CAND-01 — rank-two Property D for `C_n^2`.**
S002 specified its exact baseline and surviving contribution frontier, so its
target gate is OPEN. Owner decision D-016 now places **CAND-02 under pre-switch
due diligence** before deciding whether to retain CAND-01 or replace it.
No switch has yet occurred.

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

## Selected-target specification frontier

Owner decision D-010 selects CAND-01. S002 must now pin the exact literature
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
