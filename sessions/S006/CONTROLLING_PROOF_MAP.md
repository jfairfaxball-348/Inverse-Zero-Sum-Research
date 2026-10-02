# S006 controlling proof map

## Normalized notation

Use the standard sequence monoid conventions of Girard--Schmid:
`F(G)` for sequences, `v_g(S)` for multiplicity, `T|S` for subsequence,
`sigma(S)` for total sum, `Sigma_k(S)` for length-`k` subsums,
`eta(G)` for the short-zero-sum threshold and `s(G)` for the EGZ constant.

For CAND-02:
`G_m=C_2\oplus C_{2m}^2`, `exp(G_m)=2m`,
`eta(G_m)=6m+2`, `s(G_m)=8m+1`. The target has `|S|=8m` and
`0 notin Sigma_{2m}(S)`.

The equal-factor direct proof uses `H=C_m^2` and quotient
`G_m/H ~= C_2^3`. This is not the cyclic kernel `C_n` in the 2020 inverse
paper.

## Direct proof chain

1. **Eta lower bound.** Edel et al. Proposition 3.1(3) gives
   `eta(G_m)>=6m+2`. This is a construction/value bound, not a classification.
2. **Eta upper bound.** `eta(C_m^2)=3m-2`, `eta(C_2^3)=8`, and the
   subgroup/quotient inequality gives
   `eta(G_m)<=2(3m-3)+8=6m+2`.
3. **EGZ lower bound.** The general
   `s(G)>=eta(G)+exp(G)-1` gives `s(G_m)>=8m+1`.
4. **EGZ upper bound.** `s(C_m^2)=4m-3`, `s(C_2^3)=9`, and the same
   inductive method gives
   `s(G_m)<=2(4m-4)+9=8m+1`.

The equality is therefore sharp, but the proof does not state equality
conditions for the inductive bound or classify length-`8m` extremals.

## Direct-paper structural tools

- **Lemma 4.1:** overlap rigidity for rank-two s-extremals with Property D.
  **ANALOGY ONLY / DIFFERENT HYPOTHESIS** for an unconditional all-`m`
  CAND-02 theorem.
- **Lemma 4.2:** eta-extremal overlap rigidity in
  `C_m\oplus C_{mn}`, no Property-D assumption.
  **DIRECTLY APPLICABLE LOCALLY** at `n=1` once homocyclic kernel
  eta-extremals are legitimately produced.
- **Lemma 4.3:** strong restricted-sum rigidity for the unequal-factor regime
  `n>=2`; the source explicitly notes the relevant assertion is false in
  homocyclic `C_m^2`.
  **ANALOGY ONLY / DIFFERENT PARAMETER REGIME**.
- **Lemma 4.4(2):** if a length
  `eta(G)-1+exp(G)-1` long-zero-sum-free sequence contains `C` and
  `h` with `jh in Sigma_j(C)` for all `j<=|C|`, with
  `|C|>=floor((exp(G)-1)/2)`, then a translate contains an
  `eta(G)-1` short-zero-sum-free subsequence.
  For CAND-02 this is exactly length `8m`, threshold `|C|>=m-1`, and
  conclusion length `6m+1`.
  **DIRECTLY APPLICABLE, CONDITIONAL ON ITS ENTRY HYPOTHESIS**.

## What the direct proof does not supply

It does not supply an equality-case decomposition, an unconditional all-`m`
inverse theorem for `C_m^2`, a homocyclic substitute for Lemma 4.3, automatic
satisfaction of Lemma 4.4(2)'s hypothesis, or a classification of
`eta(G_m)-1` extremals. These are dependencies, not programme conjectures.
