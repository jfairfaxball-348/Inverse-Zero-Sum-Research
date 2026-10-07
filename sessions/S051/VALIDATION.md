# S051 validation

Date: 2026-10-07.

The pinned environment remains Lean 4.19.0 with mathlib commit
`c44e0c8ee63ca166450922a373c7409c5d26b00b`.

On retained proof-head commit
`3e7f1ec60a399a9cd4c276593dad0ffd6a396be9`, GitHub Actions run
`37655360851` passed pinned dependency resolution, mathlib cache,
`lake build`, the forbidden Lean placeholder scan and
`scripts/check_authority.py`.

This tree kernel-checks the retained length-15 structure but contains no proof
term for `length15NonzeroInput`.

Earlier closure experiments were not accepted. In particular run
`37642109039` on commit
`388679d7dc7d15b69eb453a0ce174a155e099a59` hit deterministic `whnf`
timeout even with a bounded 1,000,000-heartbeat allowance. Those declarations
were removed.

No `sorry`, `admit`, unchecked axiom/constant placeholder,
`native_decide`, hidden oracle or opaque catalogue is used. The synchronized
terminal authority tree must pass the same workflow before `main` advances.
