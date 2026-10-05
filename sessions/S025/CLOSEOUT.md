# S025 closeout

## Session and authority

- Session: S025.
- Date: 2026-10-05.
- Stage: CAND-05 bounded mathematical investigation.
- Status: **COMPLETED — D24-01 SUCCEEDS.**
- Incoming `main`: `18387207805448b94704ea0f722e91b94677231e`.
- Incoming tree: `1d5ff7cdea4016eb60e51babdb8f75e65b92f6df`.
- Reconciliation: live authority matched the S025 prompt and S025 was unique.
- Outgoing SHA is verified externally after publication and is not self-embedded here.

## Useful results

S025 specializes the unconditional rank-two inverse-`eta` theorem to the
canonical S024 kernel.

- The positive-weight kernel support consists of exactly three values
  `h_1,h_2,h_3`, each occurring `m-1` times.
- They can be ordered with `(h_1,h_2)` a basis and
  `h_3=h_2-a h_1` for a unit `a mod m`.
- The values are pairwise distinct, all have order `m`, and every pair is a
  basis of `C_m^2`.
- The exact bucket equations are
  `sum_{q:2x_q=h_i} k_q=m-1` for `i=1,2,3`.
- A fibre with `k_q=0` is absent from `K`; S025 does not place its doubled lift
  into any bucket.

## Boundary and next frontier

S025 does not assign the seven quotient fibres to buckets, solve the odd
multiplicity vector, classify the seven lifts, normalize quotient automorphisms
or claim the full CAND-05 extremal family.

The single next dependency is D25-01: determine the exact geometry of a fixed
doubling fibre relative to `Q=G_m/2G_m`, split by parity of `m`, and derive
only which quotient classes can coexist in one kernel bucket.

CAND-05 remains **SOURCE-DEFINED / CURRENT STATUS UNKNOWN**. The result is
internal programme mathematics, not independently reviewed, formally verified,
novelty-certified or publication-ready.

## Gates and review

- target gate: OPEN
- publication gate: OPEN
- mathematical-investigation gate: OPEN
- external-review gate: CLOSED
- active owner blockers: NONE

No outreach occurred. Xue Li's pending message remains CAND-02-specific.
Publication and reviewer registers were inspected; no venue-policy or reviewer
status fact changed in S025.

## Validation

`scripts/check_authority.py` passed in the reconstructed proposed-state
harness; exact output and limitations are recorded in `VALIDATION.md`.
The primary-source Theorem 2.4 statement and the bucket arithmetic were checked
directly. The final remote tree and branch SHA are verified after the
fast-forward checkpoint.

## Next session

S026 is one bounded unit on D25-01 only: doubling-fibre quotient geometry and
same-bucket collision restrictions. It may not continue into global bucket
assignment, multiplicity-vector or seven-lift classification.
