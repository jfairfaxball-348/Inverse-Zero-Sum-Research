# S046 source-interface check

Date: 2026-10-06.

S046 introduces no new literature-status claim. It uses the committed S039/S040 source checks as the authority for the intended interface: Gao--Hui--Li--Li--Qu--Zhong 2024 and Fan--Gao--Wang--Zhong--Zhuang 2012 record the ordinary value `eta(C_3^3)=17`.

Rather than importing that numerical result as an unchecked proposition, S046 proves exactly the positional consequence needed by the formal proof spine:

> every length-17 nonzero positional sequence over `C_3^3` contains a nonempty zero-sum subsequence of length at most three.

The proof reuses S045's transparent affine-cap bound. A short-free support together with the origin is a cap because short-freeness excludes both opposite pairs and three-distinct-point zero sums. The nine-point cap bound therefore limits the nonzero support to eight values, while exponent-three short-freeness limits each multiplicity to two.

This narrows the formal trust boundary; it does not claim to formalize the published proof of `eta(C_3^3)=17` itself and does not establish novelty, previous openness, significance or journal review.
