# S014 dependency update

Date: 2026-10-04.

## Resolved/added bounded dependencies

### D13-01 — exact extension coverage
**RESOLVED / PROGRAMME PROVED.**

For every CAND-02 extremal (S), with (n=2m),

[
Sigma_{n-1}(S)=G_m=Sigma_{3n+1}(S).
]

Input: published (s(G_m)=4n+1).

### D13-02 — support-clone positional saturation
**RESOLVED / PROGRAMME PROVED.**

For every support value (a), every ((n-1))-term representation of (-a)
uses every old occurrence of (a). If (r=v_a(S)), the remaining block has
exact length (n-r-1) and sum ((n-r-1)a).

### D13-03 — deletion/replacement core theorem
**RESOLVED / PROGRAMME PROVED.**

For
[
K_x(S)=igcap{operatorname{pos}(A):|A|=n-1, sigma(A)=-x},
]
the replacement (S_{p	o x}) is extremal iff (pin K_x(S)).
Every (K_x) has at most (n-1) positions. For support (a), all
(a)-positions lie in (K_a).

### D13-04 — multiplicity strata
**RESOLVED / PROGRAMME PROVED.**

For every support value (a),

[
v_a(S)
e n-2.
]

At (v_a=n-3), every representation of (-a) requires a non-(a) pair
summing to (2a). At (v_a=n-1), the representation is positionally unique.

## New successor dependency

### D14-01 — ambient replacement-core incidence rigidity
**OPEN; PROMOTED TO S015.**

Determine whether an actual CAND-02 extremal can have a support value (a)
with a **nontrivial safe replacement position**

[
K_a(S)setminus P_a
earnothing.
]

Equivalently: can replacing some term of value different from (a) by (a)
preserve (n)-zero-sum-freeness?

The target is not merely a one-change pair. S015 must use the simultaneous
S014 core system and multiplicity-deficit witnesses to seek a global incidence
constraint. A proof that (K_a=P_a) for all support (a) would give ambient
one-term isolation; a counterconfiguration must satisfy all S014 core
constraints and be distinguished from a formal pair. The session must stop if
the analysis reduces to the stopped S008--S011 kernel local-hole/capacity route.

## Unchanged older dependencies

- universal D6-08/D6-09: unresolved and the progressive route remains stopped;
- D7--D10 local-hole/capacity chain: unresolved and stopped;
- D6-10/D6-12 full classification/reconstruction: unresolved;
- CAND-02 status: SOURCE-DEFINED / CURRENT STATUS UNKNOWN.

S014 does not claim that D14-01 is open in the literature or that resolving it
would by itself classify all extremals.
