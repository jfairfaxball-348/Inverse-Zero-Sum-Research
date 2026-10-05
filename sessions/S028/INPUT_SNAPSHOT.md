# S028 input snapshot

Session: S028
Date: 2026-10-05
Incoming verified commit: `b00613e1ae59904a65a65706728e6de5bd0176b6`
Incoming tree: `909a48768ae1cb55b36b318f340f8a48bc64e090`
Branch: `main`

## Reconciliation

- Live `main` exactly matched the supplied previous verified checkpoint.
- The expected `sessions/S028/INPUT_SNAPSHOT.md`,
  `sessions/S028/EVEN_BUCKET_MEMBERS.md`, and
  `sessions/S028/CLOSEOUT.md` paths returned 404, so S028 was unique at
  entry.
- The prompt and committed authority agreed on target, gates, session identity
  and D27-01 scope.
- Repository authority, not conversation history, governed the session.

## Authority read

S028 read `AGENTS.md`, `authoritative/START_HERE.md`, the current
required authority set, `docs/SESSION_PROTOCOL.md`,
`docs/CLOSEOUT_TEMPLATE.md`, the named S027/S026/S025 records, the S024
monochromaticity record needed by the brief, and
`authoritative/S028_CANDIDATE_5_EVEN_BUCKET_MEMBER_BRIEF.md`.

CAND-05 remains selected. CAND-02 remains historical/paused and none of its
architectures was reopened.

## Binding boundary

S028 was restricted to even `m` and one fixed nonzero `L`-coset:
test whether both members can carry positive kernel weight. If the existing
structure did not exclude simultaneous positivity, the session had to record
the first exact compatibility defect and stop. Global weight solving, seven-lift
classification, odd-modulus analysis and quotient normalization were not
authorized.
