# S007 — CAND-02 homocyclic-kernel and equality-rigidity source audit

## Purpose and boundary

S006 established that the selected CAND-02 direct proof uses the homocyclic
kernel `C_m^2`, while the closest inverse proof relies on cyclic-kernel
near-extremal rigidity. Xue Li's Stage-1 reply remains pending; external-review
and computation/proof gates remain CLOSED.

S007 is source-only. It must not attempt to prove a missing equality case,
kernel theorem or reduction.

## Required entry

Pin live main; reconcile changes; confirm S007 unique; read all authority and
the complete S006 record. Preserve the exact all-`m>=2` ordinary-EGZ target.
If no committed Xue Li reply exists, keep REPLY PENDING without inference.

## Tasks

1. Inspect primary literature for unconditional all-`m` structure of
   `C_m^2` relevant to `s(C_m^2)-1`, `s(C_m^2)-2`,
   `eta(C_m^2)-1` and restricted subsum sets.
2. Separate unconditional theorems from Property C/D, prime/power, or other
   arithmetic hypotheses.
3. Trace the subgroup/quotient inequalities used in S006 for published
   equality cases, one-below-threshold decompositions, stability refinements or
   inverse versions genuinely applicable to
   `C_m^2 <= C_2\oplus C_{2m}^2 -> C_2^3`.
4. Search specifically for a published homocyclic substitute for the cyclic
   one-point-complement input in the 2020 inverse proof.
5. Update dependencies D6-04 through D6-10 only from sourced results:
   exact resolution, conditional-subfamily resolution, weaker usable input, or
   documented source gap.

A non-hit is not evidence of openness.

## Required outputs

Create under `sessions/S007/` at least:
`INPUT_SNAPSHOT.md`, `HOMOCYCLIC_KERNEL_AUDIT.md`,
`INDUCTIVE_EQUALITY_AUDIT.md`, `DEPENDENCY_UPDATE.md`, and `CLOSEOUT.md`.

## Prohibited work

No new proofs or conjectural programme lemmas as results; no enumeration,
experiments, computation or formalisation; no outreach; no gate opening; no
openness inference from search failure.

## Closeout

Run `python3 scripts/check_authority.py`, synchronize authority, commit to
main, verify the remote SHA and close under the repository protocol. Suppress a
next prompt if a genuine owner blocker becomes active.
