# Authoritative entry point

Repository: https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research

## Read in this order

1. AGENTS.md.
2. authoritative/STATE.json and authoritative/PROJECT_CHARTER.md.
3. docs/SESSION_PROTOCOL.md and docs/CLOSEOUT_TEMPLATE.md.
4. authoritative/DECISIONS_AND_BLOCKERS.md.
5. authoritative/ROADMAP.md and authoritative/SESSION_LEDGER.md.
6. authoritative/TARGET_REGISTER.md, authoritative/PUBLICATION_REGISTER.md, authoritative/REVIEWER_REGISTER.md, authoritative/CLAIMS_AND_SOURCES.md, and authoritative/FAILURE_AND_LESSON_LEDGER.md.
7. The completed S002--S008 records before later target-specific work.

## Current state

**S008 is completed. CAND-02 remains selected. Mathematical investigation is OPEN while external review continues in parallel and remains CLOSED.**

Selected target: for every integer m>=2, classify all length-8m sequences over G_m=C_2 + C_{2m} + C_{2m} with no zero-sum subsequence of length 2m.

Current status remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. Mathematical progress does not certify openness or novelty.

### Gates

- Target gate: **OPEN**.
- Publication gate: **OPEN**.
- Mathematical-investigation gate: **OPEN**.
- External-review gate: **CLOSED** and parallel; no reviewer is confirmed.
- Active owner blocker: **NONE**.

The owner reports the Xue Li Stage-1 message was sent on 2026-10-02. A reply, willingness, proposal approval, novelty certification and later manuscript-review agreement remain pending and must not be inferred from transmission, silence or elapsed time.

If later substantive external feedback identifies prior art, a known solution, material overlap, a mistaken premise or a serious scope/significance concern, pause the affected mathematical direction and reassess it. Appropriate independent scrutiny of the contribution/manuscript remains required before journal submission; a private reviewer is never represented as a journal-appointed referee.

## S008 mathematical frontier

D7-01 is **partially resolved but remains open as an all-m programme
dependency**. S008 did not find a counterexample and did not prove the
reflection-balanced capacity bound unconditionally.

S008 proved four bounded programme facts:

- for every CAND-02 extremal, all eight fibers of the natural
  `G_m -> C_2^3` quotient have odd multiplicity, and every maximal pairing
  inside quotient fibers produces a length-`4m-4` EGZ-extremal sequence in
  `C_m^2`;
- if a quotient fiber contains two distinct group elements, two choices of
  residual term produce two distinct `C_m^2` EGZ-extremals sharing exactly
  `4m-5=s(C_m^2)-2` terms;
- consequently D7-01 holds for every `m` satisfying rank-two Property D, by
  Girard--Schmid 2019 Lemma 4.1. Conversely, any D7-01 counterexample would
  force failure of Property D at the same modulus. This does not prove
  Property D or D7-01 for all `m`;
- the eight residual representatives impose exact shifted restricted-sum
  exclusions on every associated pair-sum extremal, giving a narrower
  CAND-compatible stability problem beyond arbitrary `C_m^2` extremals.

No computation was run in S008 because the proof/falsification attempt exposed
an all-`m` stability dependency rather than a precise unsettled finite case.
CAND-02 remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN.

S009 attacks only the CAND-compatible one-change pair-sum stability obstruction,
using the extra residual `C_2^3` constraints and without assuming Property D.

Live prompt: authoritative/NEXT_SESSION_PROMPT.md.

## Authority and reconciliation rule

Pin live main before reading its authority. The bootstrap predecessor remains 32b9f63c393995de5dddf7e8367d42e339816c24. A commit cannot include its own hash: each session records the actual incoming live hash and the close report externally verifies the outgoing remote hash.

If a pasted prompt names an older revision, inspect intervening changes and reconcile session identity, scope and blockers before proceeding. Historical records may describe earlier gate rules; D-030--D-032 supersede any statement that made external-review completion a prerequisite for mathematical investigation. Do not rewrite historical facts as though the later rule applied at the time.

STATE.json is the machine-readable index. Detailed linked records carry supporting evidence. Any conflict is an integrity problem to reconcile, not an invitation to choose the convenient version.
