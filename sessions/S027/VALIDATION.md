# S027 validation

Date: 2026-10-05.

## Mathematical validation

1. The map `Q -> H/2H`, `pi(x) |-> 2x+2H`, is well-defined because
   changing `x` by an element of `H` changes `2x` by an element of
   `2H`.
2. Its kernel is exactly `L=pi(G[2])`: `2x in 2H` iff
   `x-h in G[2]` for some `h in H`.
3. Therefore `Q/L` injects into `H/2H`; both groups have order four for
   even `m`, proving isomorphism.
4. A unit modulo even `m` is odd, so the S025 relation reduces to
   `h_3+2H=(h_1+2H)+(h_2+2H)`.
5. A basis of `H=C_m^2` reduces to a basis of `H/2H=C_2^2`; hence the
   three kernel values give its three nonzero classes.
6. The conclusion is used only at the `L`-coset level. No member-level
   positivity choice or global weight solution is inferred.

No mathematical computation or formalisation was required.

## Repository validation

The repository's exact `scripts/check_authority.py` was run in a reconstructed
proposed-state harness containing the S027 completed checkpoint, the S028 ready
brief/prompt, checkpoint paths through S027, and an exact copy of the
repository Apache-2.0 licence blob.

Checker output:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

`python3 -m json.tool authoritative/STATE.json` also passed.

The reconstructed harness does not reproduce the complete Markdown history, so
its zero local-link count is not represented as a full-tree link audit. The
proposed GitHub tree is separately checked for S027 uniqueness, required changed
paths, S028 brief/prompt consistency, and final remote SHA/tree.
