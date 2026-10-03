# S010 — CAND-02 double-hole rigidity and ten-session audit

## Status and purpose

S009 leaves D8-02 unresolved but replaces the vague one-change obstruction by
an exact common-core package. If distinct kernel extremals `T x` and `T y`
arise from one CAND-02 extremal, with `delta=x-y!=0`, then the fourteen affine
planes in the residual `C_2^3` quotient impose a structured pattern of
`delta`-paired holes in restricted sumsets of the length-`4m-5` core `T`, while
the sharp rank-two threshold forces `-(x+y) in Sigma_{m-2}(T)`.

S010 is also the tenth numbered research session after S000, so the roadmap
requires an S001--S010 audit in addition to the mathematical task.

## Single bounded mathematical obligation

Determine D9-01:

> Can the exact S009-P4 CAND double-hole package occur with `delta!=0` in
> `H=C_m^2`, or do the affine-plane incidence relations and restricted-sum
> constraints force `delta=0`?

Use the full CAND labels. Do not replace this by arbitrary one-change stability
in `C_m^2` and do not assume Property D. The relevant package includes:

- `|T|=4m-5` and `0 notin Sigma_m(T)`;
- distinct `x,y`, with both `T x` and `T y` EGZ-extremal;
- `-(x+y) in Sigma_{m-2}(T)`;
- seven `delta`-paired holes in `Sigma_{m-2}(T)` from planes through `q_*`;
- seven `delta`-paired holes in `Sigma_{m-3}(T)` from planes avoiding `q_*`;
- the full-set pair in `Sigma_{m-4}(T)` when `m>=4`;
- the additive/incidence relations among all fourteen affine-plane residual
  sums inherited from one eight-point residual lift.

Attempt proof and falsification. A formal rank-two footprint is not a CAND-02
counterexample unless it lifts to an actual length-`8m` extremal.

## Authorized methods

Use exact restricted-sum identities, affine `C_2^3` incidence, complement
arguments, eta-overlap rigidity where its hypotheses are actually met, and
source-backed rank-two tools already in authority. A new generic Property-D
assumption or the homocyclic specialization of Girard--Schmid Lemma 4.3 is not
allowed.

Use computation only if the theory isolates a precise finite structural
question whose status is not already vacuous from known Property-D cases.
Preserve any code, parameters and results and classify them as experimental
unless separately proved.

If D9-01 is proved, combine it with S009-P4, S008-P3, S007-P2 and published
Girard--Schmid 2019 Lemma 4.4(2) only to record the universal eta-core
reduction, then stop. Otherwise record the strongest exact obstruction and the
surviving D7-01 frontier without attempting the full CAND-02 classification.

## Required S010 ten-session audit

Because S010 is session ten, also create `sessions/S010/TEN_SESSION_AUDIT.md`
covering S001--S010. Inventory actual mathematical/source progress, corrected
claims, failed routes, unresolved universal dependencies, target/venue/reviewer
status, scope changes and whether the current publication route remains
credible. If the S010 mathematical unit is unresolved, say so; session count or
repository activity is not progress evidence.

## External-review/status boundary

CAND-02 remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN. External review remains
parallel and CLOSED unless newer committed authority says otherwise. Do not
send outreach or infer willingness, endorsement, novelty certification or
approval from transmission or silence. Substantive adverse external feedback
must pause the affected direction for reassessment.

## Required outputs

Create under `sessions/S010/` at least:

- `INPUT_SNAPSHOT.md`;
- `DOUBLE_HOLE_RIGIDITY.md`;
- `TEN_SESSION_AUDIT.md`;
- `EXPERIMENT_LOG.md` if computation is run;
- `DEPENDENCY_UPDATE.md`;
- `CLOSEOUT.md`.

Synchronize authority, run `scripts/check_authority.py` and warranted
mathematical/code checks, commit to main, verify the remote checkpoint and
close under repository protocol.
