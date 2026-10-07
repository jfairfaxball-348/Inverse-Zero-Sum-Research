# S052 formalization progress

Date: 2026-10-07.
Unit: D51-01.
Status: **COMPLETED — `Length15NonzeroInput` has a closed kernel-checked proof term.**

The pinned Lean source now proves

`length15NonzeroInput : Length15NonzeroInput`.

The proof uses the exact S051 `2^7 1` support profile without reviving the
timed-out full specialization. It names the fibre-cardinality function locally
as a small weight `w : F3T → ℕ`, rewrites the positional tuple sum through
`tupleValueT_sum_eq_support_weight`, and applies
`weighted_sum_plus_singleton_eq_double` to the singleton fibre and seven
double fibres. The existing eight-support cap theorem gives support sum zero,
so the tuple total plus the singleton is zero. If the original positional total
were zero, the additive equivalence to the tuple model would force the
singleton support value to be zero, contradicting
`zero_not_mem_tupleSupportT`.

This proof shape keeps normalization bounded and avoids the deterministic
`whnf` timeout that blocked S051.

Per the D51-01 stop rule, no `s=9` representative/singleton-transition proof,
no `FrozenClassification` proof, and no Palomar or publication action was
attempted.
