# S063 entry prompt (archived verbatim)

Supplied by the owner (John Fairfax-Ball) on 2026-10-10 as the S063 kickoff.
The owner direction it contains is recorded as D-174. The "CANDIDATE
ARGUMENT" section is unverified external AI-generated input. It is preserved
here only as provenance and carries no programme authority (see C-262–C-266).

```text
S063 — Owner redirect to the general-rank route (setup session only; Unit D62-01)

Repository: https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research
Run exactly ONE numbered session, S063, under docs/SESSION_PROTOCOL.md. S063 is a setup/planning unit only: no proof work, no Lean edits, no literature search beyond what is needed to freeze the statement, no posting, no Palomar submission, no contact with anyone.

ENTRY
Pin live main (expected 496cefb8e0672d069991f759adbfbc954b70f471, the S062 close), reconcile it against the S062 closeout, and confirm S063 is unused with no parallel session. Read AGENTS.md, START_HERE, STATE, the charter, the protocol, the closeout template, DECISIONS_AND_BLOCKERS (D-173 and B-016), all registers, the S039–S042 proof and prior-art records, the S043/S057/S059 formal semantics, and the S061 manuscript.

OWNER DIRECTION (John, 2026-10-10). Record it as the next decision ID (expected D-174) before relying on it.
1. B-016 is resolved by owner decision, not by a licence choice: do NOT post the S061/S062 manuscript to arXiv and do not file it with E-JC. Release is withdrawn because a shorter proof of a stronger, all-rank theorem has been proposed. Keep the manuscript, the release package and PALOMAR-2026-10-09-000011 v1 (immutable source c5f9e5e822020688c72b2a3bfacbf147a801e219) unchanged as historical records; the registered theorem remains valid.
2. Open a new staged route. Log it as a target change in the target register (suggested ID CAND-03G, "general-rank extension of CAND-03"). Order: (1) full prior-art/novelty audit → (2) informal verification, then Lean formalization → (3) new Palomar registration → (4) rewrite the paper around the general theorem. Each stage runs as one or more normal bounded sessions; never compress stages.
3. With B-016 resolved there is no active owner blocker, so S063 ends with one ready S064 prompt.

CANDIDATE ARGUMENT — UNVERIFIED EXTERNAL INPUT, NOT A PROGRAMME CLAIM
Provenance: supplied by John from a separate Claude Code session (Anthropic's Claude). It is AI-generated and has not been independently reviewed. Record it in CLAIMS_AND_SOURCES as an unverified external candidate, and add Claude to the AI-use record alongside ChatGPT.

Setting: G_r = (Z/3Z)^r, r ≥ 1. Sequences are over G_r∖{0}, indexed by a finite position set. Witnesses and the avoidance condition are exactly as in the CAND-03 theorem (Gao et al. 2024, Definition 1.1 semantics). c_r is the largest size of a cap in AG(r,3), i.e. a set with no three distinct collinear points; in characteristic 3, three distinct points are collinear iff they sum to zero.

Claim A (direct): eta^N(C_3^r) = 3c_r − 2 for every r ≥ 1.
Claim B (inverse): a sequence of length 3c_r − 3 is avoiding iff, after permuting positions, S = U^3, where U consists of c_r − 1 distinct nonzero elements and U∪{0} is a cap (equivalently, U is squarefree and short-free).
At r = 3 (c_3 = 9) these give 25 and exactly the frozen CAND-03 theorem.

Sketch:
L1. In an avoiding sequence, distinct short zero-sum witnesses are disjoint. A one-term overlap has nonzero sum. A two-term zero-sum overlap would be a pair inside a different witness of size ≤ 3, whose third term would then be 0.
L2. Each value occurs at most 3 times, since four copies give two overlapping triples. A value occurring 2 or 3 times lies in no witness except its own triple: its negative is absent, and it lies on no zero-sum triple with two other occurring values. (With two copies, any such witness has an overlapping twin through the other copy.)
L3. Let T be the values occurring at least twice, B the values occurring once, and 𝓛 the witnesses supported on B. These witnesses are disjoint and each has ≥ 2 elements, so |𝓛| ≤ |B|/2. Delete one element from each. Then C = T ∪ (B minus the deleted elements) ∪ {0} is a cap, so |T| + |B| − |𝓛| + 1 ≤ c_r.
L4. Length ≤ 3|T| + |B| ≤ 3(c_r − 1) − |B|/2. Hence length ≤ 3c_r − 3. Equality forces B = ∅, every multiplicity equal to 3, |T| = c_r − 1 and T∪{0} a maximum cap, i.e. S = U^3.
L5. Conversely, U^3 with U∪{0} a cap is avoiding: its only witnesses are the equal-value triples, which are disjoint. So eta^N ≥ 3c_r − 2.

Reported evidence (unreviewed):
- Exhaustive check for r = 2: the maximum avoiding length is 9, and the 24 extremal multisets are exactly U^3 with U∪{0} a 4-cap.
- Randomized maximal-sequence tests of L1–L4 for r = 3 and r = 4 found no failures.
Values to verify from primary sources:
- c_r = 2, 4, 9, 20, 45, 112 for r = 1…6;
- the classical analogues eta(C_3^r) = 2c_r − 1 and s(C_3^r) = 2c_r + 1, consistent with the inputs 17 and 19 the current paper cites.
The argument contradicts record C-193 ("affine-cap classification does not imply sequence-level necessity"). Flag C-193 for reassessment in Stage 2; do not edit it now.

S063 UNIT D62-01 — do exactly this
1. Record D-174 (the owner direction above). Resolve B-016 as owner-decided. Log the CAND-03G target change with its exact frozen statement: Claims A and B, all definitions, quantifiers, and c_r as a parameter.
2. Write the staged roadmap into ROADMAP, TARGET_REGISTER and STATE, giving each stage entry criteria, deliverables and stop rules:
   • Stage 1 — prior-art/novelty audit (S064, more sessions if needed). Reuse the S042 taxonomy (PA-EXACT/EQUIV/STRONGER/INGREDIENT/NONHIT/MENTION) for Claim A, Claim B and the rank-3 case.
     Trace:
       - Gao et al. 2024 (every general-rank statement, and its eta^N = eta* discussion) and its citers;
       - Hui–Zhong 2026 and Fan–Zhong 2025;
       - the Gao–Geroldinger–Wang eta* line;
       - Edel–Elsholtz–Geroldinger–Kubertin–Rackham 2007 and later zero-sum/cap literature.
     Verify the cap-size values from primary sources.
     Stop rule: any PA-EXACT/EQUIV/STRONGER for Claim A or B, or an unresolved high-probability lead → stop, record it, raise an owner blocker, and output no prompt. If only Claim A is already known, re-scope to Claim B and continue. No proof work in Stage 1.
   • Stage 2a — informal verification. Re-derive the proof independently from the frozen statement and check it adversarially, lemma by lemma. Run exhaustive computation for r = 1, 2 and structured tests for r = 3, 4. Reconcile the result with the Lean-verified r = 3 theorem and reassess C-193. Label the results as programme proofs, not peer review.
     Stop rule: a genuine gap or counterexample → record it in the failure ledger, report it, and wait for an owner decision.
   • Stage 2b — Lean. Formalize Claims A and B for general r, with c_r as a defined maximum. If general r proves impractical, formalize the r = 3 instance using the existing cap lemmas. Use a new frozen statement and comparator configuration under the existing trust policy (no native_decide unless the policy allows it). Do not modify the registered v1 source.
   • Stage 3 — Palomar. Preflight against the then-current requirements and prepare the registration package. Then raise an owner blocker for the portal submission, exactly as in D-164/D-165, and resume after the owner reports back.
   • Stage 4 — paper.
       - Replace the S061 manuscript with a general-rank paper: r = 3 as the main corollary, values for r ≤ 6, and the cap-set link.
       - Attribute correctly: Gao et al. 2024 for the threshold and construction, plus the cap literature.
       - Update the AI disclosure to name ChatGPT and Claude.
       - Archive the old manuscript and rebuild the release package.
       - Raise a new owner release blocker. This returns the programme to the current release-decision point, with the new paper.
3. Preserve throughout:
   - PALOMAR v1 and its immutable source;
   - the frozen CAND-03 theorem;
   - all attribution and disclosure duties;
   - the standing E-JC requirement for the owner's personal proof check and rewrite.
   No arXiv posting, E-JC filing, Palomar submission, emails or contact at any stage without explicit owner action.
4. Write the S064 brief (Stage 1 only) and authoritative/NEXT_SESSION_PROMPT.md.
5. Synchronize all registers and STATE: stage, programme_status, exact_target, blockers and the next-session fields.
6. Run scripts/check_authority.py, then commit, push and verify the remote SHA.
7. Finish with exactly one copyable S064 prompt. Stop after S063.
```
