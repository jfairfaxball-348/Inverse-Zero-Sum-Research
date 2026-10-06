# S039 — fresh target-wide strategy source reassessment

Date: 2026-10-06.
Unit: D38-01.
Target: CAND-03.
Status: **COMPLETED; ONE TARGET-WIDE DIRECT-PROOF CONSTRAINT FOUND; ONE BOUNDED SUCCESSOR PROMOTED.**

## 1. Bounded comparison

Exactly three genuinely different source-backed mechanism classes were tested. Only the first clears the S039 promotion bar.

### Mechanism A — near-equality in the defining/direct `eta^N` proof

**Primary source.** Gao--Hui--X. Li--Y. Li--Qu--Zhong (2024), Lemma 3.3(3), together with Lemmas 2.6 and 2.10 and the indexed definitions preceding Definition 1.1.

For `G=C_3^3`, the source gives ordinary `eta(G)=17`, Property D and hence Property C, `s(G)=eta(G)+2=19`, and `eta^N(G)=3(eta(G)-1)/2+1=25`.

The upper-bound proof is directly indexed. If an avoiding sequence is written `S=B_1...B_l B_{l+1}...B_s S_0`, where the `B_i` are pairwise position-disjoint short minimal zero sums, `|B_i|=3` for `i<=l`, `|B_i|=2` for `l<i<=s`, and `S_0` is short-zero-sum-free, then for arbitrary choices `g_i|B_i` the proof establishes:

- `(g_1...g_l)^(-1)S` has no 3-term zero sum; and
- `(g_1...g_s)^(-1)S` has no short zero sum.

Those implications use only the indexed no-innerly-joint-short-minimal-zero-sum hypothesis, not the threshold length 25. Therefore they remain valid for every CAND-03 extremal of length 24.

Put `r=|S_0|`. The exact source thresholds give `24-l <= s(G)-1 = 18`, so `l>=6`, and `24-s <= eta(G)-1 = 16`, so `s>=8`. Length accounting gives `24 = 3l + 2(s-l) + r = l + 2s + r`, with `0<=l<=s` and `r>=0`.

Hence the only possible packing signatures are `(l,s,r) in {(6,8,2),(7,8,1),(8,8,0),(6,9,0)}`.

**D38-01 programme deduction.** Every maximal packing of pairwise position-disjoint short minimal zero sums in every CAND-03 extremal has one of exactly those four signatures. Moreover, after deleting one arbitrarily chosen term from each packed block, the resulting residual is short-zero-sum-free of length 16 when `s=8` and length 15 when `s=9`.

This is genuinely target-wide, works in the full rank-three group, preserves positional indexing and multiplicity, and uses neither a rank-two slice nor a noncanonical extraction introduced to repair S038. It therefore clears the S039 bar.

### Mechanism B — factorization-theoretic `eta*` / type encoding

**Primary source.** Gao--Hui--X. Li--Y. Li--Qu--Zhong (2024), type-monoid definitions, Definition 2.3 and Lemma 2.4.

For a sequence `S` over `G^bullet`, the associated type `tau(S)` tags repeated values by position labels, so it is squarefree as a type while retaining positional information. Definition 2.3 says `eta*(G)` is the threshold for two distinct short minimal zero-sum subtypes with nonempty gcd, and Lemma 2.4 proves `eta*(G)=eta^N(G)`. Thus CAND-03 translates exactly to a length-24 `eta*`-extremal squarefree type over `C_3^3\{0} x N`.

It does **not** yield an independent structural datum. Unique factorization in the same source belongs to the different invariant `N_1(G)` / `D^N(G)`, not to `eta*`; no checked theorem in the admitted source turns a length-24 `eta*` extremal over `C_3^3` into a unique-factorization normal form. Importing `N_1` structure would conflate different generalized Narkiewicz constants.

**Disposition:** exact equivalence, but encoding-only for D38-01; no successor is promoted from this mechanism.

### Mechanism C — unrestricted minimal-zero-sum atom parity in elementary p-groups

**Primary source.** Gao--Hui--X. Li--Y. Li--Qu--Zhong (2024), Lemma 3.13.

The lemma applies to `G=C_p^r`, `p>=3`, when the **entire** sequence is a product of minimal zero-sum sequences and has no two innerly joint minimal zero-sum subsequences, without a short-length restriction. It then forces a lower bound on the number of odd-length atom factors.

CAND-03 does not force those hypotheses. It forbids only the indexed joint relation for **short** minimal zero sums (length at most 3), and no checked source forces an arbitrary length-24 CAND-03 sequence to be a whole product of minimal zero-sum atoms or to avoid jointly intersecting long minimal zero sums.

**Disposition:** exact hypothesis path fails before any parity conclusion can be used. No weakening of Lemma 3.13 is inferred and no successor is promoted from it.

## 2. Promoted successor

Exactly one bounded successor is promoted: **S040 / D39-01**, a full-rank residual-structure test based on the four direct-proof packing signatures above.

The natural source inputs have already been statement-checked, but are **not applied in S039**: Fan--Gao--Wang--Zhong--Zhuang (2012), Lemma 28 states that every short-free length-16 sequence over `C_3^3` has sum zero, and Lemma 29 records `{14,15} subset C_0(C_3^3)`. The same paper records Property C for `C_3^r` and `eta(C_3^3)=17`.

S040 may test only what these exact full-rank statements force on the length-16/15 residuals produced by Mechanism A and whether that reduces the four signatures to a structural normal form. It must not enumerate extremal orbits or reopen S038.

## 3. Boundaries

- No claim that CAND-03 is open, novel, solved, or classified is made.
- The four-signature theorem is an internal programme deduction from a checked primary proof, not a source-stated inverse classification.
- The packing decomposition is positional and sequence-theoretic; it is not a set/cap reformulation.
- The source lower-bound construction is not treated as an inverse theorem.
- S038's rank-two route remains stopped.
- No outreach, manuscript, submission or reviewer-status action occurred.
