# Single ready next-session prompt

Session: S064.
Status: READY.

The S063 close report gives the verified outgoing SHA. A file cannot contain
the hash of its own commit.

```text
Session: S064.
Status: READY.

Begin S064 — CAND-03G Stage 1 prior-art/novelty audit (Unit D63-01) — in:
https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research

Run exactly ONE numbered session, S064, under docs/SESSION_PROTOCOL.md.
Stage 1 only. Do not do proof work, run computations on the mathematics,
touch Lean or start Stage 2a. Do not post, file, take Palomar action or
contact anyone, including authors.

ENTRY
Pin the S063 checkpoint. If live main contains sessions/S063/CLOSEOUT.md, pin
main. Otherwise S063 is published on branch
claude/general-rank-extension-setup-ve7yg2 as a fast-forward of main
496cefb8e0672d069991f759adbfbc954b70f471. In that case pin that branch head,
use it as the incoming authority and record the reconciliation in
sessions/S064/INPUT_SNAPSHOT.md. Confirm S064 is unique. Committed repository
authority controls.

Read AGENTS.md, authoritative/START_HERE.md, STATE.json, the charter, the
protocol, the closeout template and DECISIONS_AND_BLOCKERS (D-174–D-178).
Read all registers, especially the CAND-03G section of TARGET_REGISTER, the
ROADMAP Stage 1 row, C-190–C-194, C-259, C-262–C-267 and ZS-71–ZS-81. Also
read authoritative/AI_USE_RECORD.md, sessions/S039/SOURCE_CHECK.md, the S041
literature audit, the S042 audit, search log and brief, the S062 source
refresh, sessions/S063/, and:
authoritative/S064_CAND03G_STAGE1_PRIOR_ART_AUDIT_BRIEF.md

EXECUTE exactly D63-01.
Audit the frozen CAND-03G statement (D-175) using the S042 taxonomy
(PA-EXACT/EQUIV/STRONGER/INGREDIENT/MENTION/NONHIT). Classify separately for
Claim A (eta^N(C_3^r)=3c_r-2), Claim B for general r (both directions) and
the rank-3 case (the registered CAND-03 theorem; baseline S042/S062).

Trace these sources:
- Gao et al. 2024: every general-rank statement, the proofs of
  Lemma 3.3(2)/(3) (the recorded Claim A lead), Definition 1.1 and
  Lemma 2.4 (eta^N = eta*), and all its citers.
- Hui–Zhong 2026 and Fan–Zhong 2025. Reconcile the recorded ZS-73 length
  3n-1 = eta^N(C_n^2)-2 with Claims A and B at r=2.
- The Gao–Geroldinger–Wang eta* line.
- Edel–Elsholtz–Geroldinger–Kubertin–Rackham 2007 and later zero-sum/cap
  literature.
- Current preprints.

Verify c_1..c_6 = 2,4,9,20,45,112, eta(C_3^r)=2c_r-1 and s(C_3^r)=2c_r+1
from primary sources. The candidate argument (C-262–C-266) is unverified
external AI input: do not check, repair or extend it.

STOP RULES
- PA-EXACT/EQUIV/STRONGER for Claim B or the rank-3 case, an unresolvable
  high-probability lead, or a published r<=2 statement contradicting Claim A
  or B: stop, record it, raise an owner blocker, and output NO prompt.
- Only Claim A already known: re-scope the contribution to Claim B under
  D-174, credit Claim A to its source, and continue.
- Search surface incomplete with no open lead: promote one S065 Stage 1
  continuation.
- Clean: record the precise non-hit wording (never "novel" or "open"). Open
  mathematical_investigation_gate for Stage 2a's bounded role only. Write the
  S065 Stage 2a brief from the ROADMAP row and one ready prompt. Do not start
  Stage 2a.

CLOSEOUT
Create the sessions/S064 records: INPUT_SNAPSHOT, SEARCH_LOG,
PRIOR_ART_AUDIT, SOURCE_CHECK (with the cap-value/identity table), VALIDATION
and CLOSEOUT. Assign ZS IDs to new sources. Synchronize STATE and all
registers. Name the AI tool used in the closeout and in the AI-use record. Run
python3 scripts/check_authority.py, then commit and push (to main, or to the
session's designated branch if the environment requires it; never present
branch-only work as main) and verify the remote SHA.

Preserve PALOMAR v1 and its immutable source, the frozen CAND-03 theorem, the
unchanged S061 manuscript and S062 package, all attribution and disclosure
duties, and the owner's E-JC personal proof check/rewrite requirement.

STOP after S064. Do not execute S065.
```
