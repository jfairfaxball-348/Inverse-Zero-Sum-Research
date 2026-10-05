# S029 CAND-05 even completion-shell brief

Date prepared: 2026-10-05.
Status: READY.

## Purpose

Run exactly one bounded mathematical unit, D28-01, after S028 isolated the
exact compatibility defect left by possible simultaneous positivity in one
nonzero `L`-coset.

Restrict to **even `m>=4`** and condition on one fixed nonzero
`L`-coset `C={q,q+ell}` whose two members both have positive weight.
Let its bucket value be `h`, put
`t=x_{q+ell}-x_q in G_m[2]`, `u=x_ell`, and
`w=x_q+x_{q+ell}+u=h+t+u in H`.

S028 proved that an actual CAND-05 extremal with this local configuration must
satisfy
`min{|V| : V|K, sigma(V)=-w}=m-1`
for the canonical kernel
`K=h_1^(m-1) h_2^(m-1) h_3^(m-1)`.

## D28-01

Classify exactly the **depth-`m-1` completion shell**

`E(K)={w in H : min{|V|:V|K, sigma(V)=-w}=m-1}`

for the S025 canonical kernel, using its basis/unit normal form. Then apply that
classification only to the fixed-coset target `w=h+t+u` and record what it
forces about the offset `u+t`.

If the shell classification excludes the target, prove the exclusion. If it
only restricts `u+t` without excluding it, record the exact remaining
lift-compatibility defect and stop.

## Anti-churn boundary

Do **not** solve the global `k_q` or `r_q` vector, analyze other residual
quotient-zero subsets, classify all seven lifts, treat odd `m`, normalize
quotient automorphisms, or claim existence/full CAND-05 classification.

No CAND-02 architecture is authorized.

Close under repository protocol, run `scripts/check_authority.py` and
warranted checks, commit safely to `main`, verify remote SHA/tree, and
automatically give the close report.
