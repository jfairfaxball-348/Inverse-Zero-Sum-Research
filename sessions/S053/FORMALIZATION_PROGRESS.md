# S053 formalization progress

Date: 2026-10-07.
Unit: D52-01.
Status: **PARTIAL — length-15 singleton identity and local numeric transitions formalized; s=9 certificate impossibility not closed.**

Retained source additions in `InverseZeroSum/Candidate3.lean`:

- `length15_singleton_sum_identity`: for a short-free positional length-15 sequence, a support value occurring once satisfies `(∑ i, tupleValueT R i) + u = 0`. It uses the existing 2^7 1 profile, bounded local fibre weight, weighted-sum identity and eight-support sum-zero theorem; it does not merely assert nonzero total.
- `length15_singleton_unique`: two support values of multiplicity one in the same short-free length-15 sequence agree.
- `s9_two_fibre_count_transitions`: when the two affected multiplicities vary from `(p,q)` to `(p+1,q-1)`, the at-most-two bound and uniqueness of singleton fibres restrict `(p,q)` to `(0,1)` or `(1,2)`.
- `S9PackingEliminationInput`: the **unproved proposition**, expressly not a theorem, saying that no S039 packing certificate has `s=9`.

The S040 elimination is NOT yet kernel-checked. The **single earliest exact formal blocker** is the certificate-level transport lemma: given an arbitrary transversal and a 15-position short-free survivor set (as `ShortFreeOn`), reindex it to `PosSeq 15` while faithfully transferring the unique singleton fibre, its multiplicity and the singleton–total-sum identity; then track the two affected fibres when one representative changes. The existing S050 16-position reindexing provides a transparent pattern, but does not itself supply this counted 15-position transport.

Only after this bridge can the first transition force equality of distinct selected values and the second force a complementary representative sum of zero, contradicted by varying a second nonconstant two-block. There is no `S9PackingEliminationInput` proof term yet, and `FrozenClassification` remains untouched.
