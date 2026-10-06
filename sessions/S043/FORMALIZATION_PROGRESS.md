# S043 formalization progress

Date: 2026-10-06.
Unit: D42-01.
Status: **PARTIAL — exact theorem encoded; foundational semantics compile; full proof not completed.**

## Completed formal work

A minimal Lean 4 + mathlib project now exists with the environment pinned to:

- Lean `4.19.0` (release commit `6caaee842e94`);
- mathlib commit `c44e0c8ee63ca166450922a373c7409c5d26b00b`.

`InverseZeroSum/Candidate3.lean` encodes:

- `C_3^3` as `Fin 3 → ZMod 3`;
- the nonzero alphabet;
- fixed-length positional sequences;
- finite positional subsequences and their sums;
- short zero sums, short-freeness and squarefreeness;
- the positional intersection sum and exact two-witness avoidance relation;
- positional triple repetition `U^3`;
- the exact frozen iff proposition `FrozenClassification`;
- the three exact 2012 residual/source obligations used by S040/S041;
- the four S039 signatures and a positional `S039PackingCertificate` retaining
  the arbitrary-representative residual quantifier;
- the exact outstanding proposition `S039PackingInput`;
- the elementary theorem `singleton_not_shortZero`.

No source theorem is silently imported as a postulate and no target/orbit
catalogue is substituted for the verified proof architecture.

## Exact formal blocker

The first unresolved proof-spine obligation is:

`S039PackingInput`

namely, for every length-24 target-avoiding positional sequence, construct in
Lean the S039 packed short-zero-sum certificate with one of the four verified
signatures and prove that **every** choice of one representative from each
packed block leaves a short-free residual on the surviving positions.

Until this proposition has a proof term, the S040 representative-swap argument
cannot be entered soundly. The downstream 2012 obligations are already stated
precisely, but they are not the first blocker.

This is a formalization blocker, not a mathematical counterexample, literature
collision or owner-dependent blocker. Palomar is not authorized while
`FrozenClassification` remains unproved.
