# S064 closeout — CAND-03G Stage 1 prior-art/novelty audit

Date: 2026-10-11. Unit D63-01. **Status: COMPLETED** (Stage 1 only).
AI tool: **Anthropic Claude via Claude Code**
([AI-use record](../../authoritative/AI_USE_RECORD.md)).

## Session and authority

- Incoming: S063 checkpoint `f5b054468c93d8ca2e24f05dd8ff3f614af84756` on
  branch `claude/general-rank-extension-setup-ve7yg2`, a pure fast-forward of
  `main` `496cefb8`. Live `main` does not contain the S063 closeout, so the
  kickoff's branch rule applied. Reconciliation and uniqueness:
  [INPUT_SNAPSHOT.md](INPUT_SNAPSHOT.md).
- Outgoing checkpoint: one commit on the session's designated branch
  `claude/cand-03g-stage-1-audit-18s10o`. It is a fast-forward of `f5b0544`,
  hence of `main`. `main` is **not** updated by S064, and this record does not
  claim that branch-only work is `main`. The verified remote SHA is reported in
  the close report.
- Bounded objective: the Stage 1 audit of the frozen D-175 statement, with
  separate classification for Claim A, Claim B (both directions, general `r`)
  and the rank-3 case; the source-verified cap values and identities; the
  stop rules; records and register synchronization. **All completed.** No proof
  work, computation on the mathematics, Lean, Stage 2a work, posting, Palomar
  action or contact.

## Useful results

1. **Claim A is already known (PA-EQUIV, C-268).** Gao, Hui, Li, Li, Qu, Zhong
   2024, Lemma 3.3(3), states `eta^N(C_3^r)=3(eta(C_3^r)-1)/2+1` for every `r`.
   With `eta(C_3^r)=2c_r-1` (Harborth 1973; Edel et al. 2007 Lemmas 2.3.2, 5.2;
   Fan–Gao–Zhong 2011 Prop. 4.1.2), this is exactly `3c_r-2`. The full
   statement and proof were inspected. This resolves the S039 lead.
2. **Re-scope (D-179).** Under the owner's D-174 rule, the CAND-03G
   contribution is **Claim B**. Claim A is credited to the sources above. The
   frozen statement is unchanged.
3. **Claim B and the rank-3 case (C-269):** **no exact/equivalent/stronger-
   implying prior art located in the documented Stage 1 audit.** This is not a
   novelty or openness claim. The closest PA-INGREDIENT overlaps are:
   - the ZS-72 Lemma 3.3(2) `U^3` construction (B-con, inside a proof, all `r`);
   - a **proof-interior overlap** with the Lemma 3.3(3) representative-deletion
     technique, which states no equality case and whose displayed counting has
     slack 2 at length `3c_r-3`;
   - the published `r=2` inverse (GPZ13; Fan–Zhong 2025 Thm 1.3 at `m=3`);
   - the multiplicity-2 analogue for `s(C_3^r)` (Edel et al. Lemma 5.2(3)).
4. **ZS-73 `r=2` reconciliation (C-271).** The recorded length
   `3n-1=eta^N(C_n^2)-2` is correct. It is a sub-extremal length (8 at `n=3`),
   while Claim B at `r=2` concerns length 9. `eta^N(C_3^2)=10=3c_2-2`. No
   record, convention or claim is off. ZS-73 does not state Claim B at `r=2`.
   No published `r<=2` statement contradicts Claim A or B.
5. **Values (C-270, resolves C-265):** `c_1..c_6=2,4,9,20,45,112`
   (Edel et al. 2007; Edel–Ferret–Landjev–Storme 2002; Potechin 2008; Bose and
   Pellegrino via secondary attribution). `eta=2c_r-1`, `s=2c_r+1`. `c_7` is
   unknown. See the table in [SOURCE_CHECK.md](SOURCE_CHECK.md).
6. **Citers traced:** ZS-72 has 3 citers in Semantic Scholar, 1 in zbMATH,
   and a count of 2 in both Crossref and OpenAlex. All are rank-two papers or
   a Davenport-constant preprint. The GGW `eta*` line, the cap literature and
   2024–2026 preprints were also swept ([SEARCH_LOG.md](SEARCH_LOG.md)).
7. **Significance risk (C-272) and residual surfaces (C-273)** are recorded
   for Stage 2a/4. Residual surfaces are inaccessible material, judged not to
   be high-probability leads: the ZS-73/ZS-79 full texts, the 2026 GGZ
   monograph, and some citation databases.
8. **Gate (D-180):** `mathematical_investigation_gate` is **OPEN for Stage 2a's
   bounded role only**. S065 is promoted.
9. **Lesson FL-124**, plus a confirmation note on the direct-value half of
   FL-123.

Classification table: [PRIOR_ART_AUDIT.md](PRIOR_ART_AUDIT.md). Stop rules
(a)–(c) were not triggered.

## Validation

See [VALIDATION.md](VALIDATION.md). The final `python3 scripts/check_authority.py`
reports PASS. Protected paths (`paper/`, `InverseZeroSum/`, root Lean/Palomar
files, `scripts/`, `.github/`, `docs/`, `LICENSE`) are unchanged. Anchors were
slug-checked, and the arithmetic and source statements re-verified.
Documentation checks do not validate mathematical truth. Claim B remains
unverified.

## Changed files

- New: `sessions/S064/` (INPUT_SNAPSHOT, SEARCH_LOG, PRIOR_ART_AUDIT,
  SOURCE_CHECK, VALIDATION, CLOSEOUT) and
  `authoritative/S065_CAND03G_STAGE2A_INFORMAL_VERIFICATION_BRIEF.md`.
- Updated: `authoritative/NEXT_SESSION_PROMPT.md` (S065), `STATE.json`,
  `START_HERE.md`, `DECISIONS_AND_BLOCKERS.md` (D-179, D-180),
  `TARGET_REGISTER.md`, `ROADMAP.md`, `CLAIMS_AND_SOURCES.md` (ZS-82–ZS-92,
  C-268–C-273), `PUBLICATION_REGISTER.md`, `REVIEWER_REGISTER.md`,
  `FAILURE_AND_LESSON_LEDGER.md` (FL-124), `SESSION_LEDGER.md`,
  `AI_USE_RECORD.md`, the `AGENTS.md` stage banner and `README.md`.
- The S064 brief and all earlier session records are kept unchanged as
  historical records.

## Remaining obligations

- Stage 2a (S065): independent derivation of Claim B, adversarial check of the
  sketch, exhaustive `r=1,2` and structured `r=3,4` computation, `r=3` Lean
  reconciliation, the C-193/D-129 superseding reassessment, and the exact step
  correspondence with the ZS-72 proofs.
- Stage 4: credit Claim A to Gao et al. 2024. Weigh the C-272 significance
  risk. Recheck the C-273 residual surfaces before any submission (the owner's
  institutional access would help). Re-verify the E-JC and arXiv policies.
- Future owner actions, which are not current blockers: the Stage 3 portal
  submission; the Stage 4 release decision, including the D-178 carry-over;
  and the personal proof check/rewrite before any E-JC filing.
- `main` integration: S063 and S064 exist only on their designated branches,
  as fast-forwards of `main`. The S065 prompt handles either.

**Active owner blockers: NONE.**

## Next session — S065 (Stage 2a only)

- ID **S065**, Unit D64-01, CAND-03G Stage 2a informal verification.
  [Brief](../../authoritative/S065_CAND03G_STAGE2A_INFORMAL_VERIFICATION_BRIEF.md).
- Why it advances the goal: Stage 1 closed cleanly for the re-scoped target.
  The roadmap's next step is to establish whether Claim B is actually true,
  with an independent derivation and computation, before any Lean, Palomar or
  paper effort. It needs no owner input.
- The ready prompt is in
  [NEXT_SESSION_PROMPT.md](../../authoritative/NEXT_SESSION_PROMPT.md).
