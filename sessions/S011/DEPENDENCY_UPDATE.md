# S011 dependency update

## D10-01 — all-pairings low-capacity compatibility

**UNRESOLVED; ASSESSED TWO-PAIR MECHANISM STOPPED.**

S011-P1 proves that, once odd fiber sizes are fixed, the complete maximal-
pairing extremality and residual-exclusion system exactly encodes absence of
an original 2m-term zero sum. This is a diagnostic equivalence, not a capacity
lower bound or resolution.

S011-P2 freezes a two-pair exchange on four positions with one retained
residual. All completions have the same two-edge total. Appending a third
edge reaches the kernel threshold but necessarily reuses endpoints. The
resulting original zero-sum-completion problem needs either one unused term
or one unused pair. The proof does not supply either. The translated
complements still contain short even zero sums; they are not eta-free.
This preserves and, for this exchange, extends S010-P4's warning.

S011-P3 gives an explicit length-8p odd-fiber family with every M_z below the
threshold but with a displayed 2p-zero sum. It falsifies only the relaxation
that drops the all-pairings restrictions. It is not a CAND counterexample.

## Unchanged dependencies

- S010-P3's actual-domain equivalence is unchanged.
- D9-01 and D8-02 remain unresolved. No local packet is constructed.
- D7-01 remains covered on the inherited Property-D scope and unresolved
  universally. No universal Property D is assumed.
- D6-08 and D6-09 remain unresolved universally. The implication via S007-P2
  and GS Lemma 4.4(2) is activated only on the already established scope.
- D6-10/D6-12 classification and reconstruction remain untouched.
- Novelty, significance and independent scrutiny remain unestablished.

## Recovery decision — D11-01

Prepare S012 as one **weaker progressive-block route assessment**, returning
directly to D6-08. Work with a largest block C, over all centers h, such that
`0 in Sigma_j((-h)+C)` for every `0<=j<=|C|`. Test whether the maximal
short-zero-sum choice in the proof of GS Lemma 4.4(2), and a precise block
replacement/enlargement, can force `|C|>=m-1` or expose a concrete failure of
that proposed augmentation. It must not assume C consists of reflection pairs.

This is a route repair, not a claim that such an augmentation works. The
candidate move and all its cardinality witnesses must be written before
promotion. Merely restating D10 or giving a block with total sum zero is not
progress. If the attempted repair returns only to D7's capacity requirement,
record that failure and stop it rather than schedule another equivalent unit.
Do not execute D11-01 inside S011. No owner action is needed to run S012.
