# S018 source audit — recurrence depth and mixed-primary boundary

Date: 2026-10-04. Bounded source check; non-hits are not novelty/open-status
evidence.

## Gao--Geroldinger 2007 (ZS-46)

W. D. Gao and A. Geroldinger, *On the number of subsequences with given sum
of sequences in finite abelian p-groups*, Rocky Mountain J. Math. 37 (2007),
1541--1550, DOI `10.1216/RMJM/1194275933`.

Theorem 1.1 was rechecked at statement and proof-recurrence level. For a finite
abelian p-group, prescribed target `g`, source parameter `kappa`, and
[
|T|>kappaexp(G)+d^*(G),
]
part (2) gives, for `p=2`, divisibility of the total prescribed-sum count by
`2^(kappa+1)`. The proof of part (3) gives the fixed-length recurrence
[
sum_{i=0}^{r}N_g^{(r-i)E+j}(T)(-1)^{iE}
 { |T|-((r-i)E+j) choose iE}equiv0pmod{2^kappa},
]
for `E=exp(G)`, `j in [0,E-1]`, and `r>=kappa+w`, with
`w=ceil((1+d^*(G))/E)`.

For `G=C_2+C_n+C_n` and `n` a power of two,
[
E=n,quad d^*(G)=2n-1,quad w=2.
]

Exact admissibility:
- `kappa=2`: requires `|T|>4n-1`, so it applies to `U` (`4n+1`)
  and one deletion (`4n`) but **not** two deletions (`4n-1`).
- `kappa=1`: requires `|T|>3n-1`, so it applies through deletion sets
  of size `n+1`.
- `kappa=3`: requires `|T|>5n-1`, unavailable here.

For `kappa=1,r=3,j=1` on `UD^{-1}`, `1<=d=|D|<=n`, the three
nontrivial coefficients are
[
{2n-dchoose n},quad {3n-dchoose2n},quad {4n-dchoose3n}.
]
They are odd by Lucas parity, since
`2n-d=n+(n-d)`, `3n-d=2n+(n-d)`,
`4n-d=3n+(n-d)`, with `0<=n-d<n`.

The `kappa=2,j=1` relation on `U` is only the complement form of the
existing modulo-four equation; on one deletion it is vacuous at the relevant
top lengths. For recurrence index `r>4` at lengths `4n+1` and `4n`, every
potential surviving coefficient has lower binomial entry larger than its
upper entry, so the relation is tautological; `kappa=1,r=4` is merely the
modulo-two reduction of the already-used `r=4` relation. Other residue
classes introduce new prescribed-length unknowns rather than separating the
`2n` and `3n` layers.

## General finite-abelian source checked (ZS-49)

G. J. Chang, S.-H. Chen, Y. Qu, G. Wang and H. Zhang,
*On the Number of Subsequences with a Given Sum in a Finite Abelian Group*,
Electronic Journal of Combinatorics 18(1) (2011), P133,
DOI `10.37236/620`.

This source is genuinely for arbitrary finite abelian groups, but its main
theorem bounds the **total** prescribed-sum subsequence count over all lengths
(`N_g(S)`), not fixed lengths `n,2n,3n,4n`. It is therefore not the
mixed-primary prescribed-length transfer required here.

No checked primary source in this bounded search supplied that mixed-primary
fixed-length theorem. Sylow projection remains insufficient.
