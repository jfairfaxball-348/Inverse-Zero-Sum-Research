# Single ready next-session prompt

Session: S065.
Status: READY.

The S064 close report gives the verified outgoing SHA. A file cannot contain
the hash of its own commit.

```text
Session: S065.
Status: READY.

Begin S065 — CAND-03G Stage 2a informal verification (Unit D64-01) — in:
https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research

Run exactly ONE numbered session, S065, under docs/SESSION_PROTOCOL.md.
Stage 2a only. No Lean or formal-config edits (that is Stage 2b), no Palomar
action, no paper writing. Do not post, file or contact anyone, including
authors.

ENTRY
Pin the S064 checkpoint. If live main contains sessions/S064/CLOSEOUT.md, pin
main. Otherwise S064 is published on branch
claude/cand-03g-stage-1-audit-18s10o as a fast-forward of main
496cefb8e0672d069991f759adbfbc954b70f471 (through S063 f5b0544). In that case
pin that branch head, use it as the incoming authority and record the
reconciliation in sessions/S065/INPUT_SNAPSHOT.md. Confirm S065 is unique.
Committed repository authority controls.

Read AGENTS.md, authoritative/START_HERE.md, STATE.json, the charter, the
protocol, the closeout template and DECISIONS_AND_BLOCKERS (D-174–D-180).
Read all registers (especially the CAND-03G sections of TARGET_REGISTER and
ROADMAP, C-262–C-273 and ZS-72, ZS-79, ZS-81, ZS-82), the AI-use record,
sessions/S064/ and:
authoritative/S065_CAND03G_STAGE2A_INFORMAL_VERIFICATION_BRIEF.md
Do NOT open sessions/S063/INPUT_PROMPT.md (sketch L1–L5) until your
independent derivation is written to sessions/S065/INDEPENDENT_DERIVATION.md.

EXECUTE exactly D64-01 (ROADMAP Stage 2a row):
(i) independent derivation of Claim B (both directions, all r) from the
frozen D-175 statement, including eta^N = 1 + max avoiding length and the
sequence-form/cap-form equivalence; Claim A is source-known (Gao et al. 2024
Lemma 3.3(3) + eta(C_3^r)=2c_r-1) and may be cited;
(ii) only then, an adversarial lemma-by-lemma check of sketch L1–L5 and all
listed edge cases;
(iii) exhaustive computation for r=1,2 through length 3c_r-2 and structured,
seeded tests for r=3,4, with committed scripts and logs (experimental
evidence, not proof);
(iv) read-only reconciliation of r=3 with Lean FrozenClassification;
(v) a superseding C-193/D-129 reassessment plus an exact step correspondence
with the published Gao et al. 2024 Lemma 3.3(2)/(3) proofs.

STOP RULES
- Genuine gap (a failing step not replaced in-session by a fully written
  correct step inside the frozen statement) or any computed counterexample,
  or a needed change to the frozen statement: record it in the failure ledger,
  report it, raise an owner blocker and output NO prompt.
- Complete checked programme proof agreeing with the computations: promote
  exactly one Stage 2b (Lean) brief and prompt. Do not start Stage 2b.
- Incomplete with no gap: close PARTIAL and promote one Stage 2a continuation.

CLOSEOUT
Create the sessions/S065 records named in the brief. Label results programme
proof or experimental evidence, never peer review or novelty. Synchronize
STATE and all registers. Name the AI tool used in the closeout and the AI-use
record. Run python3 scripts/check_authority.py and the committed computation
scripts, then commit and push (to main, or to the session's designated branch
if the environment requires it; never present branch-only work as main) and
verify the remote SHA.

Preserve PALOMAR v1 and its immutable source, the frozen CAND-03 theorem, the
unchanged S061 manuscript and S062 package, the credit of Claim A to Gao et
al. 2024, all attribution and disclosure duties, and the owner's E-JC personal
proof check/rewrite requirement.

STOP after S065. Do not execute S066.
```
