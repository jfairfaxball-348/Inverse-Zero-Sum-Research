# S040 validation

Date: 2026-10-06.

## Mathematical checks

The `s=8` argument was checked directly from the universal residual-sum equation: changing one representative while preserving a length-16 short-free residual forces equality of the two selectable values.

The length-15 lemma was checked in three independent pieces:

1. short-freeness forces multiplicity at most 2;
2. nine distinct support values would make a short-free `T^2` of length 18, contradicting `eta(C_3^3)=17`;
3. therefore length 15 has exactly eight support values, seven doubled and one singleton; duplicating the singleton preserves short-freeness and Lemma 28 gives `u=-sigma(R)`.

For the `s=9` representative swap, the affected multiplicity counts were exhaustively checked under the constraints that both residuals have counts in `{0,1,2}` and exactly one singleton. The only two transitions are

`(0,1)->(1,0)` and `(1,2)->(2,1)`.

The first contradicts `a!=b` in exponent three; the second forces the fixed other-representative sum to be zero. A second nonconstant 2-block then gives the contradiction.

No extremal-orbit enumeration, set/cap replacement, rank-two restriction, projection, affine translation or unrelated finite search was used.

## Source checks

The primary 2012 journal PDF was rechecked at Property C, `eta(C_3^3)=17`, Lemma 28 and Lemma 29(1). The primary 2024 author-hosted PDF was rechecked at Lemma 3.3(2) for the sufficiency direction only.

## Authority validation

`scripts/check_authority.py` is run against a reconstructed local authority harness containing the proposed S040/S041 machine state, session ledger entries, live prompt/brief relationship and the unchanged repository licence. The harness validates schema, session uniqueness, gate semantics, blocker/prompt consistency and licence identity. As in S039, it does not reconstruct the complete remote repository tree, so the full Markdown link scan is separately bounded by remote path checks of the changed authority/session surface.

The staging branch is re-read before publication. Live `main` is rechecked against the incoming lease immediately before the fast-forward. The outgoing remote commit and changed records are then re-fetched after publication.


### Checker result

The reconstructed authority harness returned:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`.

The zero-link count is an explicit harness limitation, not a claim that the remote repository contains no links. The changed remote link surface is checked separately by confirming the S040 closeout, S041 brief and live prompt paths on the staging branch before publication.
