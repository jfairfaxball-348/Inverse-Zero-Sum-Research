# S035 validation

Date: 2026-10-05.

## Mathematical and source validation

- Rechecked Girard--Schmid 2019 Theorem 2.1 and Theorem 3.4 in the primary arXiv v2 PDF; the equal-factor specialization gives `D_2(G_m)=6m+1`.
- Checked the common-torsion identities directly: `2t=0`, `u=t`, and `tau_1=tau_2=tau_3=t` imply `zeta=4t=0`.
- Checked the whole-block sums: `sigma(B_1u)=t+t=0` and `sigma(B_2B_3)=t+t=0`.
- Checked the factor lengths: `|B_1u|=2m+1`, `|B_2B_3|=4m`, and both exceed `2m` for `m>=4`.
- The argument stops at this first exact surviving factorisation type, so no `zeta!=0` branch or additional residual/lift analysis is introduced.

## Repository validation

Native network checkout is unavailable in this execution environment. The exact committed `scripts/check_authority.py` was run in a reconstructed proposed-state harness with B-010 active and no live next-session prompt. It returned:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

A reconstructed blocker-state `STATE.json` carrying the proposed S035 gate/checkpoint/blocker fields was also parsed successfully with `python3 -m json.tool`, and the exact locked Apache-2.0 licence matched the checker.

Before publication to `main`, the proposed Git commit is inspected while detached from the branch. The final ref update uses an expected-SHA lease against the pinned incoming head. After publication, remote `main`, commit parent/tree, S035 records, blocker state, and absence of `authoritative/NEXT_SESSION_PROMPT.md` are re-read through the repository interface.
