# S019 validation

Date: 2026-10-04.
Status: **PASS — candidate mathematics, code preservation and authority
boundary validated before publication.**

## Bootstrap and race discipline

- Incoming live main matched
  `763a6daf5919268b6dea4fb8c0472822e849f658`.
- Compare reported no intervening commit; S019 was unique.
- The main branch reported unprotected, but publication is still by non-force
  fast-forward only after a final remote-head race check.

## Mathematical/source checks

- Frankl 1990 equation (7) was inspected in the primary PDF at the exact
  v>=a+b hypothesis; it supplies the Wilson mod-p rank formula used in S019-P1.
- The p=2 specializations were checked with Lucas parity at every rank summand.
- The three direct lifts were proved for the full range 1<=|D|<=n, not only
  at singleton or n-codegree level.
- The total-parity toggle family is odd and has zero nonempty codegrees through
  n, so it changes no S018 binary shadow.
- The realization theorem is explicitly abstract: no constructed 2n/3n block
  is asserted to be a zero-sum block, and no modulo-4 freedom is inferred.

## Preserved bounded computation

Only after the exact incidence formulas were stated and proved, the preserved
script `sessions/S019/parity_sanity.py` was run for
`n = 4, 8, 16, 32`. Output:

```text
n 4
n 8
n 16
n 32
parity sanity checks pass
```

The script checks exactly the six binomial parity patterns used in S019-P2.
It is a sanity check with no proof weight. `python3 -m py_compile` also passes.

## Repository checks

The exact committed `scripts/check_authority.py` was executed in the local
execution container on a materialized structural mirror of the synchronized
S019/S020 candidate authority state. Result:

`PASS: authority state, session uniqueness, independent gate semantics,
blocker/prompt consistency, 0 local links, and original licence`.

As in S018, the structural mirror uses checkpoint-existence stubs for unchanged
historical records. Link existence for changed/new Markdown is checked
separately against the exact candidate Git tree. Candidate STATE parses with
S019 completed, S020 READY, no active owner blockers, target/publication/
mathematical-investigation gates OPEN and external-review gate CLOSED. The
candidate prompt says `Session: S020.` and `Status: READY.`.

These repository checks certify consistency, not mathematical truth, novelty,
literature completeness or publication readiness.
