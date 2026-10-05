# S027 CAND-05 even-bucket coset brief

Date prepared: 2026-10-05.
Status: READY.

## Purpose

Run exactly one bounded mathematical unit, D26-01, after S026 established the
exact parity-split quotient geometry of each doubling fibre.

Restrict D26-01 to **even `m`**. Let
`L=pi(G_m[2])=<pi(e_0)>`, so S026 gives two-class `L`-cosets as the only
possible quotient supports of a fixed doubling fibre.

## D26-01

Define and prove the exact induced map

`delta:Q/L -> H/2H`,  `delta(pi(x)+L)=2x+2H`.

Determine whether it is an isomorphism. Then use only the S025 relation
`h_3=h_2-a h_1`, with `(h_1,h_2)` a basis of `H=C_m^2` and `a` a
unit modulo even `m`, to identify the three bucket cosets in `Q/L`.

Record only the resulting even-modulus bucket-coset restriction, including
whether the unique nonzero quotient class lying in `L` is forced to have
zero kernel weight.

At the first failed implication, stop and record the defect.

## Anti-churn boundary

Do **not** choose which member or members of a nonzero `L`-coset have
positive weight, solve any `k_q` or `r_q` values, classify the seven lifts,
analyze the odd-`m` branch, normalize quotient automorphisms, or claim the
full CAND-05 classification.

No CAND-02 architecture is authorized.

Close under repository protocol, run `scripts/check_authority.py` and
warranted checks, commit safely to `main`, verify remote SHA/tree, and
automatically give the close report.
