# S004: CAND-03 and CAND-04 full due-diligence audits

Status: READY. Predecessor: S003 plus owner instruction to audit the two
remaining S001 candidates before making the final target choice.

## Bounded objective

Apply the same due-diligence standard used in S002 and S003 to **both remaining
candidates in one bounded pre-proof session**, without silently changing the
selected mathematical target.

CAND-01 remains the incumbent selected target at entry. CAND-02 has completed
its challenger audit. The two unaudited candidates are:

### CAND-03 — rank-three inverse generalized Narkiewicz eta problem

> Classify all length-24 sequences over `C_3^3 \ {0}` having no two innerly
> non-zero-sum-joint short zero-sum subsequences, where "short" means length at
> most `exp(C_3^3)=3`.

The S001 baseline is Gao--Hui--Li--Li--Qu--Zhong (2024),
`eta^N(C_3^3)=25`, together with Hui--Zhong's 2026 completion of the
associated inverse problem for rank-two finite abelian groups.

### CAND-04 — prime rank-three Property D

> Determine Property D for `C_p^3` for every prime `p>=7`, with the exact
> statement and domain to be corrected if the current literature shows that
> the direct constant, Property-D formulation, or known families require a
> different boundary.

The S001 baseline is Gao--Geroldinger--Schmid's general Property-D framework
and the known higher-rank families collected in later literature.

The purpose of S004 is to determine whether either candidate survives as a
genuine, substantial and plausibly distinct journal-level frontier after
primary/current-status scrutiny, and then place **all four S001 candidates on a
comparable evidence base** for an owner target decision.

This is a pre-proof session. No mathematical computation, enumeration, example
search, counterexample search, proof attempt or formalisation is authorized.

## Required work

### 1. Enter and reconcile

Pin live `main`, reconcile any changes after S003, confirm S004 is unique, and
read the full authority chain, S002/S003 audits, S001 candidate map, and this
brief. Preserve CAND-01 as the selected incumbent unless the owner has explicitly
changed it after this brief was committed.

### 2. CAND-03 exact-source reconstruction

Reconstruct the candidate from primary sources rather than the S001 shorthand.

At minimum:

- inspect Gao--Hui--Li--Li--Qu--Zhong's exact definitions of
  `D^N(G)`, `eta^N(G)`, short zero-sum subsequences, "innerly
  non-zero-sum-joint", sequence domain `G\{0}`, repetitions, and extremal
  length;
- verify the exact theorem giving `eta^N(C_3^3)=25`, including hypotheses,
  theorem number, whether it is a direct equality or depends on another result,
  and any exceptional interpretation;
- determine exactly what the corresponding inverse problem means at length
  `24`;
- inspect Hui--Zhong (2026) in enough detail to state the complete rank-two
  inverse theorem, its conventions, scope and whether any arguments/results
  explicitly cover, reduce, or foreshadow `C_3^3`;
- identify any other source that already treats the rank-three case, a broader
  family containing it, or an equivalent factorization-theoretic formulation.

Do not transfer rank-two structural conclusions to rank three without an
explicit theorem.

### 3. CAND-03 deepest practical current-status/prior-art audit

Search through the current date for:

- original journal papers and preprints;
- forward/backward citations to the 2024 defining paper and 2026 rank-two
  inverse completion;
- 2024--2026 preprints/publications in generalized Narkiewicz constants,
  non-unique factorization, disjoint/joint zero-sum subsequences and inverse
  zero-sum theory;
- theses, surveys, conference records and author-hosted manuscripts;
- alternate notation or equivalent formulations;
- structural phrases, not only exact titles;
- any result on `C_3^3`, elementary 3-groups, rank-three groups, or
  `eta^N(G)-1` extremal sequences that would subsume or narrow the candidate.

Record inspection level and access gaps. Search failure never certifies
openness.

### 4. CAND-03 novelty/status matrix and exact surviving scope

Separate at least:

- ESTABLISHED;
- CLAIMED_IN_PREPRINT;
- EXPLICIT_OPEN_QUESTION;
- SOURCE_DEFINED_BUT_STATUS_UNKNOWN;
- RETIRED/SOLVED;
- plausible meaningful partial-result scopes.

Define the exact desired classification output and all equivalences/conventions.
State what would count as a substantial journal-level CAND-03 result versus an
insufficient isolated configuration or computational catalogue.

### 5. CAND-03 small-case/degeneracy and significance audit

From literature only, determine:

- whether `C_3^3` is genuinely the first unresolved higher-rank case in the
  relevant inverse problem;
- whether elementary 3-group structure, squarefree restrictions, support
  restrictions, or factorization-theoretic equivalences change the displayed
  formulation;
- whether known Property-D/EGZ classifications accidentally imply part of the
  generalized Narkiewicz inverse problem;
- whether another natural formulation would be mathematically cleaner and
  equivalent.

No enumeration or new mathematical derivation beyond source interpretation.

### 6. CAND-04 exact-source reconstruction

Audit the candidate more skeptically than S001 shorthand. Establish from
primary sources:

- the exact definition of Property D in rank three and its dependence on
  `s(C_n^r)`;
- the current exact knowledge of `s(C_p^3)` for primes `p>=7`;
- whether Property D is even presently a clean standalone question for every
  displayed prime without an unresolved direct-constant dependency;
- the known Property-D families in rank three and higher rank, with exact
  hypotheses and theorem identifiers;
- multiplicativity or lifting/reduction statements in rank three, including
  whether they reduce the proposed prime family in any meaningful way;
- all special primes, prime powers and arithmetic families already covered;
- whether the correct surviving candidate is exactly "all primes `p>=7`",
  a narrower source-supported family, or should be retired because its direct
  baseline is not sufficiently determined.

This part must distinguish a conjectural structural statement from an unknown
direct EGZ constant.

### 7. CAND-04 deepest practical current-status/prior-art audit

Search through the current date for:

- Gao--Geroldinger--Schmid and subsequent Property-D literature;
- higher-rank EGZ constants and inverse theorems;
- papers by Schmid, Girard, Gao, Geroldinger, Grynkiewicz, Reiher,
  Schlage-Puchta and other relevant authors;
- 2024--2026 papers/preprints, forward citations, surveys, theses and
  conference records;
- alternate terminology including Property D, Property D0 where relevant,
  `C_p^3`, elementary abelian rank three, `s(C_p^3)`, cap-set/finite-
  geometry terminology when sources genuinely connect it, and extremal
  `s(G)-1` formulations.

Do not infer openness from failure to find a completion.

### 8. CAND-04 novelty/status matrix and exact surviving scope

Build the same status matrix used for CAND-03. Identify every result that would
invalidate, subsume or materially narrow CAND-04.

If the direct value `s(C_p^3)` is not known in the required generality, state
that prominently and determine what source-supported contribution genre
survives. Do not manufacture an inverse target whose direct threshold is
unknown merely to keep four candidates alive.

State what would count as a substantial journal-level result and what would be
too narrow.

### 9. Four-candidate comparison

After both audits, compare **CAND-01 through CAND-04** on research-space
dimensions only:

- conceptual breadth and mathematical identity;
- proximity to prior completion;
- novelty/overlap risk;
- strength of primary-source evidence that a genuine unresolved frontier
  remains;
- whether the intended result is finite cleanup, an infinite-family structural
  theorem, a named-conjecture completion, or another contribution type;
- dependence on unresolved direct constants or auxiliary conjectures;
- likely mathematical significance if fully completed;
- clarity of what would constitute a substantial journal-level result;
- target-specific reviewer ecosystem and source support.

Do **not** rank by proof difficulty, computational expense, or probability of
success. Do not silently choose the programme target.

If one or more candidates are retired by decisive source evidence, say so. If
two or more credible candidates remain, the owner must make the final target
selection.

### 10. Publication fit for CAND-03 and CAND-04

Refresh, separately for each candidate:

- Electronic Journal of Combinatorics subject fit;
- current substantive-AI policy and submission route;
- comparable papers;
- conflict/referee rules;
- closest baseline journals;
- at least one credible backup only where current substantive-AI eligibility is
  explicit enough for this workflow.

Do not inherit CAND-01/CAND-02 venue conclusions automatically and do not make
acceptance predictions.

### 11. Reviewer strategy for CAND-03 and CAND-04

For each surviving candidate, reassess the strongest independent external
proposal/status reviewer rather than reusing earlier names by default.

For CAND-03, examine at least Qinghai Zhong, Wanzhen Hui, Xue Li, Pingzhi Yuan,
and any stronger independently sourced generalized-Narkiewicz/factorization
specialist. Authors of the defining or nearest completion papers may be ideal
status experts but not necessarily the cleanest independent first reviewer.

For CAND-04, examine at least Wolfgang A. Schmid, Benjamin Girard,
Jan-Christoph Schlage-Puchta, David J. Grynkiewicz, Pingzhi Yuan, and any
stronger independently sourced higher-rank Property-D/EGZ specialist.

If a candidate survives strongly enough to merit owner consideration, prepare
but **DO NOT SEND** a concise Stage-1 status/proposal-review package for its
strongest conflict-appropriate reviewer lead. Do not imply a journal-referee
arrangement.

### 12. Synchronize and close

Synchronize target, publication, reviewer, claims/sources, decisions/blockers,
roadmap/state, failure lessons and session records. Preserve all S002/S003 work.

At closeout:

- if all but one candidate are decisively retired and the remaining candidate
  is already the incumbent, follow repository blocker rules;
- if an owner target choice remains among two or more credible candidates,
  activate a new owner target-selection blocker covering the **full audited
  candidate set**, suppress the live next-session prompt, and output NO
  next-session prompt;
- do not treat the instruction to audit all four candidates as authorization to
  switch targets or contact anyone.

Run repository authority validation, inspect changed records, checkpoint useful
work to `main`, and verify the remote checkpoint.

Do not start another numbered session in the same turn.
