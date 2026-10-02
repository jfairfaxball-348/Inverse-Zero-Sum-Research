# Authoritative entry point

Repository: https://github.com/jfairfaxball-348/Inverse-Zero-Sum-Research

## Read in this order

1. AGENTS.md.
2. authoritative/STATE.json and authoritative/PROJECT_CHARTER.md.
3. docs/SESSION_PROTOCOL.md and docs/CLOSEOUT_TEMPLATE.md.
4. authoritative/DECISIONS_AND_BLOCKERS.md.
5. authoritative/ROADMAP.md and authoritative/SESSION_LEDGER.md.
6. authoritative/TARGET_REGISTER.md, authoritative/PUBLICATION_REGISTER.md,
   authoritative/REVIEWER_REGISTER.md, authoritative/CLAIMS_AND_SOURCES.md,
   and authoritative/FAILURE_AND_LESSON_LEDGER.md.
7. The completed S002--S006 records before later target-specific work.

Current state: **S006 completed. CAND-02 remains selected. The owner-reported
Xue Li Stage-1 message was sent on 2026-10-02; a reply and reviewer willingness
remain pending. S007 is ready as a bounded source-only audit of the
homocyclic-kernel/equality-rigidity dependencies exposed by S006.**

## Present boundary

- Exact target: classify, for every `m>=2`, every length-`8m` sequence over
  `G_m=C_2\oplus C_{2m}\oplus C_{2m}` with no zero-sum subsequence of
  length `2m`.
- Mathematical results by this programme: **NONE**.
- S006 full-proof inspection shows the equal-factor direct proof uses
  `H=C_m^2` and quotient `C_2^3` to prove the threshold, but does not
  classify equality/extremal cases.
- The closest published ordinary-EGZ inverse proof uses a cyclic kernel
  `C_n`; its decisive near-extremal restricted-sum step is not a theorem for
  the CAND-02 kernel `C_m^2`.
- Girard--Schmid 2019 Lemma 4.3 explicitly excludes/fails in the homocyclic
  regime and must not be imported.
- Girard--Schmid Lemma 4.4(2) is a genuine conditional bridge at the exact
  target length, but the literature inspected in S006 does not force its
  progressive-subsums hypothesis for every extremal.
- CAND-02 status remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**; no
  openness inference is made.
- Leading journal: Electronic Journal of Combinatorics.
- Confirmed external reviewer: **NONE**.
- Xue Li Stage-1: owner reports SENT 2026-10-02; REPLY PENDING.
- External-review gate: **CLOSED**.
- Computation/proof gate: **CLOSED**.
- Active owner blocker: **NONE**.
- Next session: **S007**.
- Live prompt: authoritative/NEXT_SESSION_PROMPT.md.

S007 may inspect published homocyclic rank-two extremal/near-extremal structure,
restricted-sum results and equality/stability refinements of the direct
subgroup/quotient method. It must not prove the missing statements, enumerate
cases, compute, formalise, send outreach or open gates.

## Authority and reconciliation rule

Pin live main before reading its authority. The bootstrap predecessor remains
32b9f63c393995de5dddf7e8367d42e339816c24. A commit cannot include its own
hash: each session records the actual incoming live hash and the close report
externally verifies the outgoing remote hash.

If a pasted prompt names an older revision, inspect intervening changes and
reconcile session identity, scope and blockers before proceeding. Do not
overwrite new authority or blindly resume an obsolete target.

STATE.json is the machine-readable index. Detailed linked records carry the
supporting evidence. Any conflict is an integrity problem to reconcile, not an
invitation to choose the convenient version. New explicit owner instructions
must be written into the records; transcripts and model memory do not silently
change committed research claims.
