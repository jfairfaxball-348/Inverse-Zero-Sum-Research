# S033 validation

Date: 2026-10-05.

## Mathematical validation

1. The total seven-term residual sum `r` lies in `H`. The
   `eta(H)` threshold applied to `Kr` gives a completion inside `K`
   of size at most `m-1`.
2. A completion of `r` using at most `m-4` kernel terms would lift with
   all seven residual terms to a zero sum of length
   `2(m-4)+7=2m-1`. Hence `m-3<=lambda(r)<=m-1`.
3. The S029 formula gives
   `lambda(w)>=m-3` iff
   `min_{0<=gamma<=Q}[P+a gamma]_m>=m-3-Q`. This makes every
   `Q=m-3,m-2,m-1` point automatically deep; for smaller `Q` it is
   exactly the terminal-interval containment recorded in the main proof.
4. For the common-torsion total
   `s=h_1+h_2+h_3=(1-a)h_1+2h_2`, one has
   `P=a-1`, `Q=m-2`. The length-`m-1` progression omits only
   residue `m-1`, so its minimum is zero and `lambda(s)=m-2`.
5. S032 already proves that the same `s` lies in
   `cap_F(w_F+E(K))`. Therefore the intersection with the S033 deep
   layer is nonempty and contains `s`.

## Computational sanity check

A direct evaluation of the S029 formula was run for every even `m` with
`4<=m<=40` and every unit `a mod m` (172 parameter pairs). It verified:

- `lambda(h_1+h_2+h_3)=m-2` in every case; and
- for every `w in C_m^2`, the computed condition
  `lambda(w)>=m-3` agrees with the criterion
  `min_{0<=gamma<=Q}[P+a gamma]_m>=m-3-Q`.

Result: **0 discrepancies**.

The enumeration is a sanity check only and carries no proof weight.

## Repository validation

Direct native checkout execution is not available through the connected GitHub
repository interface. As in S032, the exact committed
`scripts/check_authority.py` is run in a reconstructed proposed-state harness,
and the proposed `STATE.json` is JSON-validated. Final GitHub-side verification
separately re-reads the remote `main` head, resulting tree, S033 records and
live prompt/brief consistency.

Repository checks validate authority consistency, not mathematical truth,
novelty or publication readiness.
