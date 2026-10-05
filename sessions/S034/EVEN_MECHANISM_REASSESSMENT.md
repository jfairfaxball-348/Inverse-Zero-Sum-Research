# S034 — even simultaneous-positivity mechanism reassessment

Date: 2026-10-05.
Classification: **BOUNDED ROUTE REASSESSMENT / ONE SUCCESSOR PROMOTED / NOT INDEPENDENTLY REVIEWED.**

Assume even `m>=4` and retain S023--S033 notation. Write `L=<ell>` and the three nonzero `L`-cosets as `C_i={q_i,q_i+ell}`. The canonical kernel is `K=h_1^(m-1) h_2^(m-1) h_3^(m-1)`, with bucket `h_i` occupying `C_i`; `k_ell=0` and `u=x_ell`. S033 leaves simultaneous positivity unresolved and stops the residual-shell family. Its common-torsion compatibility assignment has `zeta=0`, `r=h_1+h_2+h_3`, `lambda(r)=m-2`; this is not an actual extremal construction.

## Mechanism 1 — global bucket-weight and odd-multiplicity arithmetic

For each `C_i`, the S025 bucket equation gives

`k_{q_i}+k_{q_i+ell}=m-1`.  (1)

Since `r_q=2k_q+1`,

`r_{q_i}+r_{q_i+ell}=2m`.  (2)

Also `r_ell=1`. Hence the whole sequence has the canonical block decomposition

`S=B_1 B_2 B_3 u`,  `|B_i|=2m`,  `|u|=1`.  (3)

This is exact global bookkeeping, including zero-weight partners, but the three equations are independent compositions of `m-1`. Pure weight arithmetic therefore does not exclude a positive-positive split for even `m>=4`. No current theorem supplies a cross-coset congruence at this level.

**Runnable datum:** (1)--(3).

**Falsification/promotion criterion:** promote a weight-only route only if a new theorem couples the three equations strongly enough to forbid a positive-positive split. No such input is presently available, so this mechanism is not promoted alone.

## Mechanism 2 — lift-level information from zero-weight fibres

Choose a positive-weight `x_i=x_{q_i}` in each `C_i`, put `y_i=x_{q_i+ell}`, and define `tau_i=y_i-x_i`. The partner `y_i` is still present in `S` even when its kernel weight is zero. From (1), `2x_i=h_i`, and (when positive) `2y_i=h_i`, the sum of the complete block is nevertheless determined without classifying the partner:

`sigma(B_i)=tau_i`.  (4)

Indeed `sigma(B_i)=(m-1)h_i+x_i+y_i=-h_i+x_i+y_i=y_i-x_i`; the same calculation holds when the partner has weight zero because its odd multiplicity is then one. Consequently

`sigma(S)=u+tau_1+tau_2+tau_3=zeta`.  (5)

Thus the S032 translation defect is the actual total sum of the length-`6m+1` sequence, not merely a residual-shell parameter. This aggregate sees zero-weight members that `K` forgets. In the common-torsion compatibility family it specializes to `sigma(S)=0`.

Current authority still does not determine the individual doubled lift of a zero-weight partner. Classifying those lifts directly would violate scope.

**Runnable datum:** the block totals (4) and total-sum identity (5).

**Falsification/promotion criterion:** reject a pure lift-classification route unless a genuinely global theorem consumes the aggregate `tau_i` without first classifying all seven lifts.

## Mechanism 3 — exact two-wise Davenport threshold

Girard--Schmid 2019 Theorem 3.4 states that for `G_m=C_2+C_{2m}+C_{2m}` the eventual multiwise Davenport data are `D_0(G_m)=2m+1` and `k_D(G_m)=2`. With Theorem 2.1's definition, this gives the exact value

`D_2(G_m)=D_0(G_m)+2 exp(G_m)=6m+1`.  (6)

Therefore every sequence at the CAND-05 extremal length contains two disjoint nonempty zero-sum subsequences `A,B`. CAND-05 extremality forces

`|A|,|B|>=2m+1`.  (7)

This is genuinely different information: it controls a simultaneous pair of global zero sums at the full sequence length and is not a completion-depth statement inside `K`.

Equations (3)--(5) make it interact directly with the unresolved lift problem. Two preflight consequences show the mechanism is non-cosmetic:

- if `zeta=0`, any such pair must cover all of `S`; otherwise the nonempty complement is also zero-sum and has length at most `2m-1`, contradicting extremality;
- if `zeta!=0`, the pair cannot cover `S`; its nonempty complement has length at most `2m-1` and sum exactly `zeta`.

In particular the surviving common-torsion compatibility family would have to admit an exact two-zero-sum factorization of the three `2m` blocks plus `u`, a requirement invisible to S029--S033.

The standard lower-bound construction used for `eta(G_m)>=6m+2` is only a comparator: specialized to this group it has one multiplicity-`2m-1` member and one singleton in each nonzero `L`-coset, with `ell` also singleton. It does not realize simultaneous positivity.

**Runnable datum:** (3)--(7), together with the S028 fixed split-coset torsion identity.

**Falsification/promotion criterion:** promote only if the `D_2`-forced pair can be analyzed at block level without solving the full weight vector or seven lifts; falsify the route if the pair can be distributed across the blocks with no invariant beyond the stopped shell data.

This mechanism clears the anti-churn bar.

## D33-01 verdict

D33-01 **succeeds as a route reassessment**. No owner strategy blocker is needed.

Exactly one successor is selected: D34-01, the **even multiwise block-factorisation test**. It will combine `S=B_1B_2B_3u`, `sigma(B_i)=tau_i`, the fixed simultaneous-positive torsion datum, and `D_2(G_m)=6m+1` to determine whether the forced pair of disjoint zero sums is incompatible with simultaneous positivity or leaves an exact surviving factorisation type.

S034 does **not** prove D34-01. It does not solve the global `k_q/r_q` vector, classify the seven lifts, reopen a residual shell, treat odd `m`, normalize quotient automorphisms, construct a simultaneous-positive extremal, or claim the full CAND-05 classification.
