# S018 — 2-primary higher-length threshold-star incidence

Date: 2026-10-04. Internal programme mathematics from S016/S017 and the
rechecked Gao--Geroldinger 2007 recurrence. No independent review,
formalisation or novelty certification.

## 1. Setup

Let
[
G=C_2oplus C_noplus C_n,qquad n=2m,
]
and for theorem transfer assume `n` is a power of two (`n>=4`).
Let
[
U=MO,quad |U|=4n+1,quad |M|=n-delta,quad
deltain{0,1,2}.
]
Write `s=sigma(U)` and `mu=v_s(U)`.

For a set `D` of distinct positions of `U`, define
[
A_r(D)=#{Zmid U:|Z|=r, sigma(Z)=0, Dsubseteq pos(Z)}.
]
Put `A_r(empty)=N_r(U)`, `T_D=UD^{-1}`, and let
`e_s(D)` be the number of positions of `D` whose value is `s`.

## 2. S018-P1 — complement and deletion calculus

**PROGRAMME LEMMA; PROVED.**
[
A_r(D)=N_s^{,4n+1-r}(T_D). 	ag{S018.1}
]
Complementation in `U` is the bijection: a zero-sum block containing `D`
has complement in `T_D` of sum `s`.

Deletion inclusion-exclusion gives
[
N_r(T_D)=sum_{Esubseteq D}(-1)^{|E|}A_r(E). 	ag{S018.2}
]
Hence
[
N_r(Ux^{-1})=N_r(U)-A_r(x), 	ag{S018.3}
]
and for distinct `x,y`,
[
N_r(Ux^{-1}y^{-1})
=N_r(U)-A_r(x)-A_r(y)+A_r({x,y}). 	ag{S018.4}
]

The top layer is explicit:
[
N_{4n}(U)=mu,qquad A_{4n}(D)=mu-e_s(D). 	ag{S018.5}
]
A `4n`-zero sum is obtained by omitting exactly one `s`-valued position.

## 3. S018-P2 — singleton layer separation

For the 2-group, `d^*(G)=2n-1` and `w=2`.
The strict source bound permits `kappa=2` for `U` and every one-deletion
sequence, but not after two deletions.

Apply `kappa=1,r=3,j=0` modulo two. Lucas parity gives
[
N_{3n}(U)equiv N_n(U)pmod2,qquad
N_{3n}(Ux^{-1})equiv N_n(Ux^{-1})pmod2.
]
Subtract:
[
oxed{A_{3n}(x)equiv A_n(x)pmod2.} 	ag{S018.6}
]

The S017 `kappa=2,r=4,j=0` subtraction is valid for **every** position:
[
A_n(x)+A_{2n}(x)+A_{3n}(x)+A_{4n}(x)equiv0pmod4. 	ag{S018.7}
]
Reducing modulo two and using (S018.5),(S018.6),
[
oxed{A_{2n}(x)equiv A_{4n}(x)
=mu-mathbf1_{v(x)=s}pmod2.} 	ag{S018.8}
]

Equivalently
[
N_{2n}(U)equiv1+mupmod2,qquad
N_{2n}(Ux^{-1})equiv1+mathbf1_{v(x)=s}pmod2. 	ag{S018.9}
]

Modulo four one binary split remains. Write
[
A_{3n}(x)equiv A_n(x)+2u_x,quad
A_{2n}(x)equiv A_{4n}(x)+2v_xpmod4.
]
Then (S018.7) is exactly
[
u_x+v_xequiv A_n(x)+A_{4n}(x)pmod2. 	ag{S018.10}
]
S018 does not claim arbitrary `u_x` are realizable.

## 4. S018-P3 — n-wise binary incidence shadow

**PROGRAMME THEOREM; PROVED FROM ZS-46.** For every nonempty position set
`D` with `d=|D|<=n`,
[
oxed{A_n(D)+A_{2n}(D)+A_{3n}(D)+A_{4n}(D)equiv0pmod2.} 	ag{S018.11}
]

Proof: apply `kappa=1,r=3,j=1` to `T_D` with prescribed target
`s=sigma(U)`. The source length is at least `3n+1>3n-1`;
by (S018.1) the four recurrence terms are the four displayed incidences.
The three binomial coefficients are odd by the Lucas check recorded in the
source audit. QED.

Using the explicit top layer,
[
oxed{
A_{2n}(D)+A_{3n}(D)
equiv A_n(D)+mu-e_s(D)pmod2.
} 	ag{S018.12}
]

Let `F` be the S016 residual family on `O`; every `n`-zero sum is
`MR`, `R in F`. Thus
[
A_n(D)=#{Rin F:Dcap Osubseteq R}. 	ag{S018.13}
]
So (S018.12) transfers the complete deficit-`0/1/2` residual hypergraph
into a binary higher-layer signature.

- `delta=0`: the unique `n`-zero sum is `M`.
- `delta=1`: for `o in O`, `D=Mcup{o}` has size `n`, and
  `A_n(D)=1` exactly for reservoir positions.
- `delta=2`: for distinct `o,o' in O`,
  `D=Mcup{o,o'}` has size `n`, and `A_n(D)=1` exactly for
  edges of the fixed-sum residual graph.

Hence the reservoir/graph is recovered, after the explicit `4n` correction,
as the parity shadow of the combined `2n/3n` codegrees. This is
classification leverage, not a stratum exclusion.

If `Y` is the binary incidence matrix of `n`-zero-sum blocks and `X`
concatenates the `2n,3n,4n` incidence matrices, then the singleton/pair
cases give
[
XX^{mathsf T}=YY^{mathsf T}quad	ext{over }mathbf F_2. 	ag{S018.14}
]
Equation (S018.11) is its higher-codegree strengthening.

## 5. S018-P4 — double deletion and all-length incidence

For distinct `x,y`, set `V=Ux^{-1}y^{-1}`. The
`kappa=1,r=3,j=0` recurrence gives
[
1+N_n(V)+N_{2n}(V)+N_{3n}(V)equiv0pmod2. 	ag{S018.15}
]
The `N_n(V)` term is explicit from (S018.4) and the S016 residual family.
For `x,y in M`, it is zero, hence
[
oxed{N_{2n}(V)+N_{3n}(V)equiv1pmod2.} 	ag{S018.16}
]

Equivalently the pair-codegree law is
[
A_{2n}({x,y})+A_{3n}({x,y})
equiv A_n({x,y})+mu-e_s({x,y})pmod2. 	ag{S018.17}
]

Let `I_r=sum_{tau in M}A_r(tau)` and `mu_M=e_s(M)`. Since every
`n`-zero sum contains `M`,
[
I_{3n}equivdelta N_n(U)pmod2, 	ag{S018.18}
]
[
I_{2n}equiv I_{4n}
=(n-delta)mu-mu_M
equivdeltamu+mu_Mpmod2. 	ag{S018.19}
]
Thus S017's aggregate relation now has separated parity content.

The all-length theorem also extends. Incidence through any single position is
divisible by eight. For any `D` with `2<=|D|<=n+1`, the number of all
zero-sum subsequences containing every position of `D` is divisible by four,
by inclusion-exclusion from the `kappa=1` total counts of all deletions
`UE^{-1}`, `E subseteq D`.

## 6. S018-P5 — total-sum deletion

If `v(x)=s=sigma(U)`, then `W=Ux^{-1}` has total sum zero. Complementation
inside `W` gives
[
N_{3n}(W)=N_n(W)
]
exactly, and pairs `2n`-zero sums in a fixed-point-free complement
involution, so `N_{2n}(W)` is even.

The `kappa=2` recurrence sharpens this to
[
oxed{N_{2n}(W)equiv2+2N_n(W)pmod4.} 	ag{S018.20}
]
If `x in M`, then `N_n(W)=0`, so
[
N_{3n}(W)=0,qquad N_{2n}(W)equiv2pmod4. 	ag{S018.21}
]
Existence of an `s`-valued core token is not asserted.

## 7. Source-method ceiling and outcome

The higher counts are no longer free in the S017 sense: singleton parities are
separated and every codegree through order `n` has a prescribed combined
`2n/3n` parity. But ZS-46 does not separate the remaining layers further at
this threshold. `kappa=2` is unavailable after two deletions,
`kappa=3` is unavailable entirely, recurrence indices above `r=4` are tautological at these sequence lengths,
and other residue classes either restate the complement relation or introduce
new prescribed-length unknowns.

This is a ceiling of the present source transfer, **not** a theorem that actual
counts are freely realizable.

No `delta<=2` stratum is excluded. No mixed-primary transfer is claimed.
D17-01 is **PARTIALLY RESOLVED / STRICTLY REDUCED** to a binary
layer-separation/design-realization dependency. No computation, solver,
formalisation or outreach was used.
