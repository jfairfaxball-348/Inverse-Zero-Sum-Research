# S009 — CAND-02 pair-sum one-change stability

## Status and purpose

S008 leaves D7-01 unresolved for arbitrary `m`, but proves that failure of
D7-01 forces a very specific obstruction: two distinct length-`4m-4`
EGZ-extremal sequences over `C_m^2` sharing `4m-5` terms, arising from two
residual choices in one non-monochromatic `C_2^3` quotient fiber.

Published Girard--Schmid 2019 Lemma 4.1 rules this out when `m` has Property
D. S009 must not assume Property D universally. The point is to use the extra
constraints inherited from the original CAND-02 extremal.

## Single bounded mathematical obligation

Determine D8-02:

> If the S008-P2 near-identical pair-sum extremals arise from one CAND-02
> extremal and satisfy the S008-P4 residual restricted-sum exclusions, must
> they in fact be equal?

A positive answer proves D7-01 for all `m` without importing Property D. A
negative answer to this compatibility statement is not automatically a
counterexample to D7-01; any proposed local configuration must be lifted to an
actual length-`8m` CAND-02 extremal before it has that status.

## Authorized work

1. Recheck S008-P1--P4 and the exact hypothesis boundary of Girard--Schmid
   2019 Lemma 4.1.
2. Exploit the eight residual representatives in `C_2^3`, especially their
   even quotient-zero subsets and the exclusions
   `-sigma(A) notin Sigma_{m-t}(P)`.
3. Attempt a direct CAND-compatible stability proof or a rigorous obstruction.
   Distinguish this narrower problem from arbitrary one-change stability in
   `C_m^2` and from the full Property-D conjecture.
4. Use source-backed `C_2^3` combinatorics, eta-overlap rigidity or other
   already justified tools where their exact hypotheses are met.
5. Use computation only if theory exposes a precise finite modulus/configuration;
   preserve code, parameters and results and classify them as experimental
   unless separately proved.
6. If D8-02 is proved, combine it only with S008-P3, S007-P2 and published
   Girard--Schmid Lemma 4.4(2) to record the universal eta-core reduction,
   then stop. If it is false or remains unresolved, record the strongest valid
   compatibility obstruction and the exact surviving D7-01 frontier.

## External-review and status boundary

CAND-02 remains SOURCE-DEFINED / CURRENT STATUS UNKNOWN. External review remains
parallel and CLOSED unless newer committed authority says otherwise. Do not
send outreach or infer willingness, endorsement, novelty certification or
approval from transmission or silence. Substantive adverse external feedback
must pause the affected direction for reassessment.

## Required outputs

Create under `sessions/S009/` at least:

- `INPUT_SNAPSHOT.md`;
- `PAIR_SUM_STABILITY.md`;
- `EXPERIMENT_LOG.md` if computation is run;
- `DEPENDENCY_UPDATE.md`;
- `CLOSEOUT.md`.

Synchronize authority, run `scripts/check_authority.py` and any warranted
mathematical/code checks, commit to main, verify the remote checkpoint and
close under the repository protocol.
