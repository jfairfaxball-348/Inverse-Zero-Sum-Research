# S065 — CAND-03G Stage 2a: informal verification (first session)

**Status: READY. Unit D64-01.** One bounded numbered session, Stage 2a of the
D-174 route and nothing else. **No Lean edits (Stage 2b), no Palomar action,
no paper writing, no posting, filing or contact with anyone**, including
authors.

## Authority and target

- Owner direction D-174; frozen statement D-175 (definitions D1–D8, Claims A
  and B, `c_r` a parameter) in the
  [target register](TARGET_REGISTER.md#d-174--s063-target-change--cand-03g-general-rank-extension-of-cand-03-2026-10-10).
  The statement is **unchanged**. Any needed change is an owner blocker.
- Stage 1 (S064) result, D-179: **Claim A is source-known**. It is Gao et al.
  2024 (ZS-72) Lemma 3.3(3),
  `eta^N(C_3^r)=3(eta(C_3^r)-1)/2+1`, combined with
  `eta(C_3^r)=2c_r-1` (ZS-81 Lemmas 2.3.2, 5.2; ZS-82 Prop. 4.1.2; Harborth
  1973). The CAND-03G **contribution is re-scoped to Claim B** (both
  directions, all `r>=1`; `r=3` is the registered CAND-03 theorem). For Claim
  B and the rank-3 case, **no exact/equivalent/stronger-implying prior art
  was located in the documented Stage 1 audit**. That is not a novelty claim.
  See [S064 audit](../sessions/S064/PRIOR_ART_AUDIT.md).
- D-180: `mathematical_investigation_gate` is **OPEN for Stage 2a's bounded
  role only**: derivation, adversarial checking and scoped computation as
  below.
- The candidate argument (C-262–C-266, sketch L1–L5 in
  `sessions/S063/INPUT_PROMPT.md`) is **unverified external AI input**.
  Agreement by this session (also AI-run) is a programme check, never
  independent review.

## Execute exactly D64-01 (ROADMAP Stage 2a row)

### 0. Entry

Pin the S064 checkpoint. If live `main` contains `sessions/S064/CLOSEOUT.md`,
pin `main`. Otherwise S064 is on branch
`claude/cand-03g-stage-1-audit-18s10o`, a fast-forward of `main`
`496cefb8e0672d069991f759adbfbc954b70f471` through S063 `f5b0544`. In that case
pin that branch head and record the reconciliation. Confirm S065 is unique.
Read AGENTS.md, START_HERE, STATE, the charter, protocol, closeout template,
D-174–D-180, all registers, the AI-use record, `sessions/S064/` and this
brief. **Do not open `sessions/S063/INPUT_PROMPT.md` (sketch L1–L5) until step
(i) is written to a session file.**

### (i) Independent derivation first

Starting only from the frozen statement and published sources (ZS-72 may be
read, including the Lemma 3.3(2)/(3) proofs; ZS-81, ZS-82), write a complete
derivation of **Claim B**, both directions, for every `r>=1`. Include:

- the identity `eta^N(C_3^r) = 1 + (maximum length of an avoiding sequence)`,
  as D5 requires;
- the equivalence of the official sequence form of B(2) with the cap form
  (`U` squarefree short-free of length `c_r-1` ⇔ `U∪{0}` a maximum cap);
- consistency with the source-known Claim A, which may be cited.

Commit it as `sessions/S065/INDEPENDENT_DERIVATION.md` before step (ii).

### (ii) Adversarial lemma-by-lemma check

Only now read sketch L1–L5. Check each lemma against the frozen semantics:
positional witnesses of size 1–3, all pairs including two-term witnesses,
`I=J` allowed, intersection **sum** (not intersection emptiness). Cover:
L1–L5; the cap-form equivalence; `eta^N=1+`max avoiding length; and the edge
cases `r=1`, two-term witnesses, multiplicity 2 vs 3, mixed repeated/singleton
witnesses, the deletion count, the cap including 0, and the equality case.
Record every defect, and every repair written in full within the session.

### (iii) Computation (experimental evidence, reproducible)

Committed scripts, logs and seeds, in a new directory (for example
`sessions/S065/compute/`); do not change existing scripts.

- **Exhaustive** for `r=1,2`: every multiset over `C_3^r\{0}` of each length up
  to `3c_r-2` (4 and 10). Avoidance depends only on the multiset, by position
  symmetry; state this reduction and justify it in the record. Confirm the
  maximum avoiding length is `3c_r-3` (3 and 9), and that the length-`3c_r-3`
  avoiding multisets are exactly `U^3` with `U` squarefree and short-free.
  Report their count. Compare with the published `r=2` inverse at `m=3` (ZS-79
  Thm 1.3, ZS-77) and with the unreproduced external report C-264, and state
  whether C-264 is reproduced.
- **Structured tests** for `r=3,4`: checks targeted at each lemma's
  hypotheses, plus seeded random maximal avoiding sequences. Never present
  these as proof.

### (iv) `r=3` reconciliation with the registered Lean theorem

Map Claim B at `r=3` to `FrozenClassification` (S043 semantics; S057/S059
records; `c_3=9`, length 24, `IsTriplePower`). Read only; **edit no Lean or
formal-config file**. Record that Claim A's value 25 at `r=3` is ZS-72
Thm 3.6(4) and is not in the v1 Lean statement.

### (v) C-193 / D-129 reassessment and source-step correspondence

Add a **superseding** claims-register entry (never edit C-193 or D-129). It
should decide whether C-193 is false, misleading, or correct but beside the
point (C-266). Also record exactly which steps of the verified Claim B proof
coincide with steps of the published ZS-72 Lemma 3.3(2)/(3) proofs, and which
are new. This is the factual input for later significance positioning (D-179
significance risk). It is not positioning prose and not Stage 4 work.

## Labels and limits

Results are labelled **programme proof** or **experimental evidence**. None
is peer review, novelty or significance. Stage 1's residual recheck surfaces
(C-273) are not S065 work.

## Stop and successor rules (ROADMAP)

- **Genuine gap or counterexample:** a step that fails and is not replaced
  within the session by a fully written correct step inside the frozen
  statement, or any computed counterexample. Then record it in the failure
  ledger, report it, raise an owner blocker, output **no prompt**, and wait for
  the owner's decision. A needed change to the frozen statement is also an
  owner blocker.
- A defect repaired locally is recorded as a correction, not a gap.
- **Exit:** a complete checked programme proof of Claim B (both directions,
  all `r`) that agrees with the computations. Promote Stage 2b (Lean) with
  exactly one brief and prompt. Do not start Stage 2b.
- **Incomplete without any gap:** close PARTIAL and promote one Stage 2a
  continuation with an exact remaining list.

## Required records

`sessions/S065/`: INPUT_SNAPSHOT, INDEPENDENT_DERIVATION, ADVERSARIAL_CHECK,
COMPUTATION (with scripts, logs and seeds), R3_LEAN_RECONCILIATION,
C193_REASSESSMENT, VALIDATION, CLOSEOUT. Synchronize STATE and all registers.
Name the AI tool in the closeout and the AI-use record. Run
`python3 scripts/check_authority.py` and the committed computation scripts.
Then commit, push and verify the remote SHA. Never present branch-only work as
`main`.

Preserve PALOMAR v1 and its immutable source, the frozen CAND-03 theorem, the
unchanged S061 manuscript and S062 package, all attribution and disclosure
duties (credit Claim A to Gao et al. 2024), and the owner's E-JC personal
proof check/rewrite requirement.
