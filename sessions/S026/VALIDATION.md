# S026 validation

Date: 2026-10-05.

## Mathematical validation

1. In coordinates `C_2+C_{2m}+C_{2m}`, the kernel of doubling is exactly
   `<e_0,m e_1,m e_2>`, of order eight.
2. Modulo `2G_m`, the elements `m e_1,m e_2` survive exactly when `m`
   is odd. This gives `pi(G_m[2])=Q` for odd `m` and
   `pi(G_m[2])=<pi(e_0)>` for even `m`.
3. Every nonempty doubling fibre is a coset of the kernel. Its quotient image
   is therefore a coset of `pi(G_m[2])`, and every represented quotient
   class has `|G_m[2] cap H|` fibre points above it.
4. The collision criterion `2x=2y iff x-y in G_m[2]` gives the exact
   quotient-class coexistence condition.
5. The conclusion was applied only to `k_q>0` fibres. No inference was made
   for `k_q=0` fibres or for the global assignment of the seven quotient
   classes.

No mathematical computation or formalisation was required.

## Repository validation

The repository's exact `scripts/check_authority.py` was run locally in a
reconstructed proposed-state harness containing the S026 completed checkpoint,
the S027 ready brief/prompt, every checkpoint path through S026, and an exact
copy of the repository Apache-2.0 licence blob.

Checker output:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

`python3 -m json.tool authoritative/STATE.json` also passed in that harness.

As in S025, the reconstructed harness does not reproduce the complete Markdown
history, so its zero local-link count is not represented as a full-tree link
audit. The proposed GitHub tree is separately inspected for the required S026
checkpoint paths, S027 brief/prompt consistency and changed-path set before
`main` is advanced.

Final remote `main` SHA/tree and changed-path presence are verified after the
fast-forward checkpoint.
