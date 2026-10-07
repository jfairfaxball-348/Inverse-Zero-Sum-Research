# S052 CAND-03 length-15 nonzero-total-sum completion brief

Status: READY.

S051/D50-01 is PARTIAL. The pinned Lean project kernel-checks the exact
length-15 source structure:
`tupleSupportT_card_eq_eight_length15`,
`exists_tupleFiberT_card_eq_one_length15`,
`tupleFiberT_card_eq_two_off_singleton_length15`,
`tupleValueT_sum_eq_support_weight`, and
`weighted_sum_plus_singleton_eq_double`.

Thus every short-free `PosSeq 15` has support multiplicity profile
`2^7 1`. The existing cap infrastructure gives support sum zero. The missing
theorem is `Length15NonzeroInput`.

## D51-01

Run exactly one Lean formalization unit. Continue only
`Length15NonzeroInput` from the retained S051 lemmas. Produce a
clean-buildable bridge between the positional sum and the `2^7 1` support
weights, then close
`length15NonzeroInput : Length15NonzeroInput`.

Do not revive the removed large specialization unchanged: S051 showed that
unfolding the full filtered fibre-cardinality expression can trigger
deterministic `whnf` timeout even with a bounded 1,000,000-heartbeat
allowance. Prefer a smaller named weight/fibre interface, local extensional
equality, or another transparent proof shape that keeps normalization bounded.

Do not enter the `s=9` representative transition, do not prove
`FrozenClassification`, and do not recheck/register on Palomar. If D51-01
succeeds, promote only the `s=9` elimination. If it does not, preserve
compiling progress and close PARTIAL with the single earliest exact blocker.

No unchecked proof placeholder, `native_decide`, hidden oracle or opaque
catalogue is permitted. Run `lake build`, warranted focused checks, the
formal-source placeholder search and `scripts/check_authority.py`.

Palomar remains blocked until `FrozenClassification` has a proof term and the
full pinned checks pass. Owner order remains Lean -> Palomar -> paper -> arXiv
-> E-JC. Independent pre-submission external review remains skipped for
CAND-03; E-JC's ordinary editorial/referee process remains planned. Xue Li
Stage-1 remains CAND-02-specific and reply pending.
