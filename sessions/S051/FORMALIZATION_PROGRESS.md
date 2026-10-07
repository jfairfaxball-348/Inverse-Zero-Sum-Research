# S051 formalization progress

Date: 2026-10-07.
Unit: D50-01.
Status: **PARTIAL — exact length-15 `2^7 1` support structure is kernel-checked; `Length15NonzeroInput` remains unproved.**

The outgoing Lean source proves:

- `tupleSupportT_card_eq_eight_length15`;
- `exists_tupleFiberT_card_eq_one_length15`;
- `tupleFiberT_card_eq_two_off_singleton_length15`;
- `tupleValueT_sum_eq_support_weight`;
- `weighted_sum_plus_singleton_eq_double`.

Thus every short-free length-15 positional sequence has exactly eight support
values with one singleton fibre and seven double fibres.

The earliest exact blocker is the final positional sum bridge. The existing
eight-support theorem gives support sum zero, so mathematically the positional
total is the negative of the nonzero singleton. Direct filtered-fibre
specializations repeatedly hit deterministic `whnf` timeout, including a
bounded 1,000,000-heartbeat attempt. Noncompiling specialized closure helpers
were removed from the outgoing source.

No `s=9` packing work, `FrozenClassification`, Palomar or publication
action occurred.
