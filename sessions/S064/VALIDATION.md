# S064 validation

Date: 2026-10-11. Unit D63-01. Scope: literature audit and authority
documentation only.

| Check | Result |
| --- | --- |
| `python3 scripts/check_authority.py` (final, after all edits) | **PASS** (output recorded in the closeout; a run before the closeout file existed failed only on the missing S064 record and its ledger link, as expected) |
| `authoritative/STATE.json` parses; 2-space indent and UTF-8 kept; `next_prompt_status=READY`, `next_session=S065`, `next_brief` exists, no active owner blockers; `mathematical_investigation_gate=OPEN` with target and publication gates OPEN; S064 checkpoint COMPLETED | PASS |
| Live prompt: `Session: S065.`, `Status: READY.`, one copyable `text` block, consistent with STATE | PASS |
| Protected paths unchanged against the incoming `f5b0544`: `paper/`, `InverseZeroSum/`, `InverseZeroSum.lean`, `Challenge.lean`, `Solution.lean`, `comparator.json`, `formalization.yaml`, Lean toolchain/lake files, `scripts/`, `.github/`, `docs/`, `LICENSE` | PASS (`git diff --stat` empty) |
| New in-page anchors (target-register S064 section; existing CAND-03G sections; SOURCE_CHECK ZS-72 heading) match GitHub heading slugs | PASS (scripted slug check) |
| Source facts used in classifications re-read from the primary texts after the records were drafted (ZS-72 Lemma 3.3 statement and proof; ZS-81 Lemmas 2.3, 5.2 and Remarks 4.7; ZS-82 Prop. 4.1; ZS-75 Conj. 3.4) | PASS |
| Arithmetic in the cap-value table (`3c_r-2`, `3c_r-3`, `2c_r±1`) and the cross-checks against published `s`, `eta` and `eta^N` values | PASS (recomputed independently) |
| Lean build / comparator | **Not run.** No Lean or formal-config file changed; v1 untouched. |
| Mathematical truth of Claim B | **Not validated, by design.** Stage 1 does no proof work. C-263 stays unverified. |
| Computation on the mathematics | **None run**, by design (brief §4). Only search tooling and arithmetic on published numbers. |

Scope review of the diff: only authority/register files, the AGENTS.md stage
banner, README, the AI-use record, the new S065 brief, the live prompt and
`sessions/S064/` changed. Downloaded sources stayed in the session scratchpad
and were not committed. Hosted workflows trigger on `main` pushes. S064 is
published on the designated branch, so no hosted run is claimed.
