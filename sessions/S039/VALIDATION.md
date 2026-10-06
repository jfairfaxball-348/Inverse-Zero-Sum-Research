# S039 validation

Date: 2026-10-06.

## Mathematical sanity checks

The integer system used in the Mechanism-A applicability deduction was independently enumerated:

- `24=l+2s+r`;
- `0<=l<=s`, `r>=0`;
- `l>=6`, `s>=8`.

The only solutions are `(6,8,2)`, `(7,8,1)`, `(8,8,0)`, `(6,9,0)`, matching the hand derivation.

The two threshold inequalities were re-derived directly from the checked source proof using `eta(C_3^3)=17` and `s(C_3^3)=19`:

- deleting one representative from every 3-atom leaves a sequence with no 3-term zero sum, hence length at most 18;
- deleting one representative from every packed short atom leaves a short-free sequence, hence length at most 16.

No computer enumeration of CAND-03 extremals or orbits was performed.

## Authority validation

`scripts/check_authority.py` was run in a reconstructed local authority harness using the proposed S039/S040 machine state. It passed the state schema, unique-session ledger, independent gate semantics, blocker/prompt consistency and Apache-license checks. As in S038, the harness does not reproduce the complete remote repository tree, so its Markdown link scan is limited to the reconstructed authority surface; remote path existence and changed-file consistency are checked separately through GitHub before and after publication.

The remote head is rechecked immediately before the fast-forward publication. After publication, the outgoing commit SHA/tree and changed files are re-fetched from remote authority.
