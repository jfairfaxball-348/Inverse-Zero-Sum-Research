# S029 validation

Date: 2026-10-05.

## Mathematical validation

1. In the S025 basis, a completion with counts
   `(alpha,beta,gamma)` satisfies
   `alpha-a gamma=P` and `beta+gamma=Q` modulo `m`.
2. For `gamma>Q`, the least representative already has length at least
   `m`; for `0<=gamma<=Q`, the length is
   `Q+[P+a gamma]_m`. This gives the exact formula
   `lambda(w)=Q+min_{0<=gamma<=Q}[P+a gamma]_m`.
3. The `Q+1` residues are distinct. Equality
   `lambda(w)=m-1` therefore holds exactly when they are the top
   `Q+1` residues `{m-Q-1,...,m-1}`.
4. For intermediate lengths `2<=Q+1<=m-2`, that set is a cyclic interval
   and its translate by `-a` shares all but one point. Proper cyclic
   intervals with this overlap differ by a one-step endpoint shift, forcing
   `a=+-1`. The boundary lengths `1,m-1,m` yield respectively
   `h_1`, `h_2+h_3`, and the line `h_2+<h_1>`.
5. Direct substitution gives the two affine-line shells for `a=1` and
   `a=-1`, and the line-plus-two-points shell for every other unit.
6. Translating by the fixed bucket value `h` gives the exact necessary set
   for `z=u+t`. Since every `h_i` itself lies in the shell, `z=0`
   remains admissible and D28-01 cannot exclude the fixed target.

## Computational sanity check

A bounded independent enumeration checked every even `m` with
`4<=m<=40` and every unit `a mod m`. For every `w in C_m^2`, it
computed the exact minimum over all `gamma=0,...,m-1` and compared the
resulting depth-`m-1` shell with the three-case formula above.

Result: **0 discrepancies**.

This computation is a sanity check only; the programme claim rests on the proof
in `EVEN_COMPLETION_SHELL.md`.

## Repository validation

The exact repository `scripts/check_authority.py` was run in a reconstructed
proposed-state harness containing S029 as the completed checkpoint, S030 as the
ready successor, checkpoint record paths through S029, and the exact repository
Apache-2.0 licence blob. Its output was:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

`python3 -m json.tool authoritative/STATE.json` also passed in that harness.
The actual proposed `STATE.json` blob was separately serialized and parsed
successfully before storage.

As in the recent sessions, the reconstructed harness does not reproduce the
complete Markdown history, so its zero local-link count is not represented as a
full-tree link audit. The proposed GitHub tree is separately checked for S029
uniqueness, required changed paths, S030 brief/prompt consistency, and final
remote SHA/tree after the fast-forward publication.
