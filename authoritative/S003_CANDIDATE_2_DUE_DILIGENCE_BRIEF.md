# S003: CAND-02 rank-three inverse EGZ due diligence

Status: READY. Predecessor: S002 plus owner instruction to scrutinize CAND-02
before deciding whether to switch away from CAND-01.

## Bounded objective

Subject **CAND-02** to the same due-diligence standard applied to CAND-01 in
S002, without silently changing the selected mathematical target.

CAND-01 remains the incumbent selected target at entry. CAND-02 is the
challenger under pre-switch audit:

> For every integer m >= 2, classify the sequences S over
> C_2 + C_{2m} + C_{2m} of length 8m having no zero-sum subsequence of
> length 2m.

The purpose of S003 is to determine, from primary/current literature and
target-specific publication/reviewer evidence, whether CAND-02 still presents
a genuine, substantial and plausibly distinct structural research frontier,
or whether hidden prior art, an equivalent formulation, later completion, a
small-parameter obstruction, or insufficient significance narrows or retires
it.

This is a pre-proof session. No mathematical computation, enumeration, example
search, counterexample search, proof attempt or formalisation is authorized.

## Required work

1. Pin live main, reconcile all changes after S002, confirm S003 is unique, and
   read the full authority chain and this brief.

2. Reconstruct the exact CAND-02 provenance from primary sources:
   - the direct Girard--Schmid theorem for
     G = C_2 + C_{2m} + C_{2m}, including exact hypotheses, exponent,
     value of s(G), notation and exceptional/small cases;
   - the precise extremal inverse question corresponding to length s(G)-1=8m;
   - the published/in-preprint Girard--Schmid inverse theorem for the distinct
     family C_2 + C_2 + C_{2n}, with exact scope, so no result is transferred
     between non-isomorphic families without justification;
   - all structural lemmas or reductions in those papers that explicitly
     mention the equal-factor family or make the proposed classification
     already implicit.

3. Perform the deepest practical current-status/prior-art audit through the
   current date:
   - original journal papers and arXiv versions;
   - forward and backward citations;
   - later rank-three inverse-EGZ papers, surveys, theses, preprints and
     conference records;
   - author-hosted manuscripts where needed;
   - alternate group notation/parameterizations, including
     C_2 \oplus C_{2m}^2, C_2 \oplus C_n^2 with n even,
     rank-three groups with invariant factors 2 | 2m | 2m, and equivalent
     EGZ-extremal / s(G)-1 formulations;
   - searches using structural phrases rather than only the candidate title;
   - 2024-2026 literature and citations in particular.

   Record access gaps and inspection level. Failed searching never certifies
   openness.

4. Build a novelty/status matrix separating:
   - ESTABLISHED;
   - CLAIMED_IN_PREPRINT;
   - EXPLICIT_OPEN_QUESTION where a source actually says so;
   - SOURCE_DEFINED_BUT_STATUS_UNKNOWN;
   - RETIRED/SOLVED;
   - possible meaningful partial-result scopes.

   Identify every result that would invalidate, subsume or materially narrow
   CAND-02.

5. Specify CAND-02 exactly enough for a later proof programme:
   group convention, m-domain, exponent, sequence/multiset convention,
   repetition and subsequence rules, forbidden zero-sum length, equivalence
   under automorphisms/translation where relevant, desired classification
   output, known baseline, and what would count as genuinely substantial
   versus an insufficient isolated special case.

6. Check small-parameter and degeneracy issues **from literature only**.
   Do not enumerate examples. Determine whether m=1, m=2, prime/power or other
   subfamilies are already classified or behave differently, and whether the
   displayed universal formulation should exclude or separate any cases.

7. Compare CAND-02 with the fully audited CAND-01 on research-space dimensions
   rather than proof-likelihood:
   - breadth and conceptual shape of the surviving contribution;
   - closeness to existing completion;
   - novelty/overlap risk;
   - dependence on finite cleanup versus a general structural theorem;
   - strength of source evidence that the target is genuinely unresolved;
   - likely significance if completed;
   - fit with the programme's preference for a distinct journal-level result.

   Do not switch targets silently. The comparison should support an owner
   retain/switch decision at closeout if one is genuinely required.

8. Refresh publication fit specifically for CAND-02:
   - Electronic Journal of Combinatorics scope, substantive-AI policy,
     submission route and conflict/referee rules;
   - directly comparable inverse/zero-sum papers in E-JC;
   - the Journal of Number Theory / Acta Mathematica Hungarica baseline venues;
   - at least one credible backup only if current substantive-AI eligibility
     is explicit enough for this workflow.

   Publication fit is not an acceptance prediction.

9. Reassess reviewer strategy specifically for CAND-02. Do not assume Pingzhi
   Yuan remains the best first reviewer. Compare public expertise and conflict/
   independence considerations for Pingzhi Yuan, David J. Grynkiewicz,
   Benjamin Girard, Wolfgang A. Schmid and any stronger independently sourced
   rank-three inverse-EGZ specialist found in the audit.

   If CAND-02 survives strongly enough to merit owner consideration, prepare a
   concise **unsent** Stage-1 status/proposal-review package for the strongest
   conflict-appropriate reviewer candidate, but do not send it. Do not prepare
   or imply a journal-referee arrangement.

10. Synchronize authoritative target, publication, reviewer, claims/sources,
    decisions/blockers, roadmap/state and session records. Preserve CAND-01's
    S002 audit even if CAND-02 becomes preferable; a switch is a recorded owner
    decision, not deletion of prior work.

## Entry decision and blocker rule

The owner's instruction to scrutinize CAND-02 supersedes B-002 as the immediate
next action. **Do not send the existing CAND-01 Pingzhi outreach during S003.**

CAND-01 remains the selected target at S003 entry. If the completed CAND-02
audit leaves a genuine owner choice between retaining CAND-01 and switching to
CAND-02, activate an owner target-decision blocker, suppress the live next
prompt and output NO next-session prompt.

If CAND-02 is clearly retired or materially unsuitable on source evidence and
CAND-01 remains the uncontested incumbent, resume the CAND-01 frontier only if
doing so does not require a new owner action. If any external send is then the
next useful step, activate the appropriate send-authorization blocker instead.

## Validation and closeout

Run repository authority validation, inspect changed records, commit useful work
to main, verify the remote checkpoint, and automatically close S003. Preserve
negative findings and status uncertainty. Do not start another numbered
session in the same turn.
