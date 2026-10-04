# S014 closeout

Date: 2026-10-04.
Stage: P3 mathematical investigation with parallel external review.
Status: **COMPLETED — NEW GLOBAL EXTENSION/REPLACEMENT MECHANISM ESTABLISHED.**

## Incoming checkpoint

- Branch: `main`
- SHA: `3d2d7a9ce4b94e56d6529ad26b519b70917faacb`
- S014 was unique on entry.
- No intervening commit required reconciliation.

## Objective

Assess one-term extension saturation/support-cloning at the exact CAND-02 EGZ
threshold, without reopening the stopped D7--D10 capacity/local-hole route or
the progressive-block repair.

## Results

1. **S014-P1:** exact fixed-length coverage
   (Sigma_{2m-1}(S)=G_m), and by complementation
   (Sigma_{6m+1}(S)=G_m).
2. **S014-P2:** for a support value (a), every ((2m-1))-term
   representation of (-a) uses every old occurrence of (a). The requested
   positional clone-swap is valid.
3. **S014-P3:** exact ambient deletion/replacement theorem. For the
   representation core (K_x(S)), replacing old position (p) by (x)
   preserves extremality iff (pin K_x(S)). For each fixed (x), at most
   (2m-1) positions are safe and at least (6m+1) replacements are
   destructive.
4. **S014-P4:** no support value has multiplicity (2m-2). Multiplicity
   (2m-3) forces a non-(a) pair summing to (2a); multiplicity (2m-1)
   gives a unique representation and no nontrivial safe replacement into
   (a). More generally, support multiplicity (rle2m-3) forces an exact
   translated support-deleted zero sum of length (2m-r-1).

These are internal programme deductions, not novelty or publication claims.
They are independent of the stopped quotient-capacity/progressive architecture.

## Source boundary

Girard--Schmid 2019 Theorem 3.2 is the published threshold input.
Gao--Hong--Peng 2022 confirms a broader literature on inverse fixed-length
(kexp(G)) problems but no inspected theorem statement was found that directly
packages the S014 positional clone/deletion-core mechanism. Focused search
non-hits remain non-evidence for novelty/open status.

## Checks

- No mathematical computation or outreach.
- Exact authority checker passed on the candidate structural mirror.
- JSON state parsing and unique S014 checkpoint check passed.
- Live remote checkpoint is re-read after the final repository update; the
  outgoing commit SHA cannot be self-recorded in this commit and is reported
  externally.

## Authority disposition

- CAND-02 remains full all-(m), SOURCE-DEFINED / CURRENT STATUS UNKNOWN.
- Target, publication and mathematical-investigation gates remain OPEN.
- External-review gate remains CLOSED.
- Xue Li Stage-1 status remains owner-reported SENT / REPLY PENDING.
- Active owner blockers: **NONE**.
- D7--D10 local-hole/capacity and progressive-block routes remain stopped.
- S020 remains the next periodic audit.

## Successor

D14-01 is promoted because S014 produced a genuinely new global replacement
mechanism. S015 is ready to assess simultaneous ambient replacement-core
incidence: whether (K_a(S)) can contain positions whose values are not (a),
and what global structure follows if it can.

S015 must not use quotient-fiber/capacity machinery to rename D8--D10, and must
stop if the new question collapses into that stopped architecture.
