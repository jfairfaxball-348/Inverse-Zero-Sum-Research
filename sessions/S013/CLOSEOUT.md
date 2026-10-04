# S013 closeout — source-based route comparison

Date: 2026-10-04.
Stage: P3 mathematical investigation with parallel external review.
Status: **COMPLETED SOURCE COMPARISON; NO ROUTE PROMOTED; OWNER BLOCKER ACTIVE.**
Incoming main: `c19ad76f0cc65bc38ae4113557dacb8e57613431`.

The supplied checkpoint exactly matched live `main`; no incoming
reconciliation was needed. S013 was unique at entry. The outgoing checkpoint
is the containing final commit/branch head verified after publication and is
not embedded inside itself.

## Result

S013 re-audited three mathematically distinct directions after S012.

- **Route A, restricted/local lengths:** the 2017 Wang--Zhao exact rank-two
  constants, 2024 Ebert--Grynkiewicz structure, Zhang's 2025 rank-three line,
  the September 2026 Zhao--Hong general theorem, current modular/local variants,
  and Li--Yin's same-ambient `disc(G)` work were checked. The applicable
  restricted-length scale begins at the exponent, while S012 needs a CAND-
  specific zero sum of length at most `c+1<=m-1`; the same-group
  `disc(G)` theorem has the wrong conclusion.
- **Route B, homocyclic stability/equality:** Schlage-Puchta's sufficiently-
  large-prime Property D result is already within the programme's Property-D
  route. Recent rank-two `D_k`, `eta^N`, `disc` and direct-EGZ results do
  not supply ordinary EGZ one-change stability at `4m-5` or equality rigidity
  for the relevant subgroup/quotient bound.
- **Route C, eta-core/equality:** the exact GS 2019 equal-factor theorem remains
  conditional at the point isolated by S012; GS 2020 treats a different rank-
  three family; same-group `disc` and rank-two `eta^N` inverse theorems do
  not create an ordinary `6m+1` eta-free core.

The full comparison and exact source scopes are in
[SOURCE_ROUTE_COMPARISON.md](SOURCE_ROUTE_COMPARISON.md). No source non-hit is
treated as evidence of openness.

## Strategic disposition

**No next mathematical route is promoted.** Doing so would either:

1. require a new theorem not supplied by the checked sources;
2. strengthen a hypothesis beyond what actual CAND extremality currently gives;
   or
3. reopen the stopped D7/capacity route under a different label.

D12-01 is therefore complete as a comparison, while universal D6-08, D6-09's
unconditional use, D6-10 and the full classification remain unresolved.

Per D-047, owner blocker **B-006** is activated for target/strategy
reassessment. The current selected target is not silently changed, and the
mathematical-investigation gate remains OPEN, but no numbered continuation is
scheduled until the owner decides how to proceed.

## Source/current-status and review boundary

CAND-02 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. The bounded
2026 refresh found relevant current literature but no checked theorem that
retires the target or resolves the live bridge. This is not a novelty
certificate or open-problem declaration.

No newer committed substantive Xue Li reply was present. External-review gate
remains CLOSED, confirmed reviewers NONE, and status remains owner-reported
SENT 2026-10-02 / REPLY PENDING. S013 sent no outreach and inferred no
willingness, endorsement, novelty certification or approval.

## Computation and validation

No mathematical computation, solver run, finite sweep or formalisation ran;
the session task was source comparison.

Repository validation is recorded in [VALIDATION.md](VALIDATION.md). The
authority checker is run on a materialized candidate structural mirror, plus
JSON/blocker/prompt and changed-record checks. Immediately before publication,
remote `main` is rechecked against the pinned incoming SHA; publication is a
non-force fast-forward and the final remote checkpoint is verified afterward.
Repository checks do not certify mathematical truth, literature completeness,
novelty or significance.

## Owner action

**NEXT-SESSION PROMPT: WITHHELD. Required owner action: resolve B-006 by choosing
the programme's next target/strategy.**

Concretely, the owner should decide whether to (a) keep full CAND-02 and
authorize a materially new mechanism/source-acquisition strategy, (b) narrow
CAND-02 to a source-justified subfamily/contribution and re-audit that exact
scope, or (c) reassess/switch the selected target. The reason is that S013 found
no source-backed route meeting the programme's continuation bar after S010--S012
stopped the current proof architecture.

No `authoritative/NEXT_SESSION_PROMPT.md` is retained while B-006 is active.
S020 remains the next periodic ten-session audit if subsequent owner decisions
continue the programme to that session number.
