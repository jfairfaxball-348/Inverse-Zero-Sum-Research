# S034 validation

Date: 2026-10-05.

## Mathematical and source validation

- Re-derived the three coset weight totals from the S025/S027 bucket placement and `r_q=2k_q+1`.
- Checked `sigma(B_i)=y_i-x_i` separately in the positive-positive and positive-zero cases.
- Rechecked Girard--Schmid Theorem 2.1 and Theorem 3.4 in the primary PDF: `D_2(C_2+C_{2m}+C_{2m})=6m+1`.
- Rechecked the proof of Theorem 3.4, which explicitly derives `D_k=(2m+1)+k(2m)` for `k>=2`.
- Rechecked Edel et al. Proposition 3.1 and its equal-factor seven-support specialization.

## Repository validation

Native network checkout is unavailable in this execution environment. As in S033, the exact committed `scripts/check_authority.py` was run in a reconstructed proposed-state harness. It returned:

`PASS: authority state, session uniqueness, independent gate semantics, blocker/prompt consistency, 0 local links, and original licence`

The proposed `STATE.json` was also parsed with `python3 -m json.tool`, and the locked Apache-2.0 license blob matched `261eeb9e9f8b2b4b0d119366dda99c6fd7d35c64`. Final GitHub-side verification separately re-reads remote `main`, the resulting tree, S034 records, and S035 prompt/brief consistency.
