# S029 — exact even completion shell for the canonical kernel

Date: 2026-10-05.
Classification: **PROGRAMME-PROVED BOUNDED MATHEMATICS / NOT INDEPENDENTLY REVIEWED.**

Assume even `m>=4`. Use the S025 normal form

`K=h_1^(m-1) h_2^(m-1) h_3^(m-1)`,

where `(h_1,h_2)` is a basis of `H=C_m^2`,
`h_3=h_2-a h_1`, and `a` is a unit modulo `m`.
For `w in H`, define its completion depth

`lambda(w)=min{|V|: V|K, sigma(V)=-w}`.

Since `K` is an ordinary-`eta) extremal and `|Kw|=eta(H)`,
`lambda(w)<=m-1` for every `w`. D28-01 asks for the exact equality shell

`E(K)={w in H: lambda(w)=m-1}`.

## S029-P1 — exact distance formula

Write

`w=xi h_1+nu h_2`

and let `P=[-xi]_m`, `Q=[-nu]_m` be the standard residues in
`{0,...,m-1}`.

A subsequence
`V=h_1^alpha h_2^beta h_3^gamma`
has sum `-w` exactly when

`alpha-a gamma = P (mod m)`,
`beta+gamma = Q (mod m)`.

For fixed `gamma`, the least nonnegative choices are

`alpha=[P+a gamma]_m`,
`beta=[Q-gamma]_m`.

If `gamma>Q`, then
`beta=Q-gamma+m`, so the resulting length is

`gamma+[P+a gamma]_m+Q-gamma+m >= m`.

Such a value cannot realize the known bound `lambda(w)<=m-1`.
For `0<=gamma<=Q`, instead `beta=Q-gamma`, and the length is

`Q+[P+a gamma]_m`.

Therefore

`lambda(w)=Q+min_{0<=gamma<=Q}[P+a gamma]_m.`  (1)

The `Q+1` residues
`[P+a gamma]_m`, `0<=gamma<=Q`, are distinct because `a` is a
unit. Hence their minimum is at most `m-Q-1`. Equality in (1) is
`m-1` exactly when all `Q+1` residues are at least `m-Q-1`, namely
exactly when

`{[P+a gamma]_m:0<=gamma<=Q}={m-Q-1,...,m-1}.`  (2)

Thus the completion shell is an exact modular interval-equality problem.

## S029-P2 — classification of the shell

Put `l=Q+1`.

Three lengths require no generic rigidity argument.

1. `Q=m-1` (`l=m`). The left side of (2) is all of `Z/mZ` for every
   `P`. In `w)-coordinates this is the full affine line

   `h_2+<h_1>`.

2. `Q=0` (`l=1`). Equation (2) forces `P=m-1`, hence

   `w=h_1`.

3. `Q=m-2` (`l=m-1`). The progression contains every residue except
   `P-a`. Equation (2) requires the missing residue to be `0`, hence
   `P=a`, which gives

   `w=-a h_1+2h_2=h_2+h_3`.

Now assume `1<=Q<=m-3`, so `2<=l<=m-2`. If (2) holds, the set

`I={P,P+a,...,P+(l-1)a}`

is a cyclic interval of length `l`. Its translate `I-a` is also such an
interval, and the two sets share exactly the `l-1` elements

`P,P+a,...,P+(l-2)a`.

For a cyclic interval whose length and complementary length are both at least
two, another interval of the same length sharing all but one point is obtained
only by shifting one endpoint by one step. After translating
`I` to `{0,1,...,l-1}`, the only possibilities are
`{-1,0,...,l-2}` and `{1,...,l}`. Therefore

`a=1 (mod m)` or `a=-1 (mod m)`.

Conversely these two unit values make every intermediate length possible, and
(2) determines the starting residue uniquely.

- If `a=1`, then for `Q<=m-2` one has `P=m-Q-1`. The resulting points
  satisfy `xi+nu=1`. Since `h_3=h_2-h_1`,

  `E(K)=(h_2+<h_1>) union (h_1+<h_3>).`

- If `a=-1`, then for `Q<=m-2` one has `P=m-1`. The resulting points
  satisfy `xi=1`. Since `h_3=h_2+h_1`,

  `E(K)=(h_2+<h_1>) union (h_1+<h_2>).`

- If `a` is neither `1` nor `-1` modulo `m`, only the three boundary
  values of `Q` above occur, so

  `E(K)=(h_2+<h_1>) union {h_1,h_2+h_3}.`

For `a=+-1` the two affine lines meet in one point, so
`|E(K)|=2m-1`. In the generic unit case, `m>=4` makes the two exceptional
points distinct and off the line, so `|E(K)|=m+2`.

This is the exact depth-`m-1` completion shell.

## S029-P3 — application to the fixed S028 target

Return only to the fixed simultaneous-positive coset of S028. Put

`z=u+t in H`.

Then the residual sum is `w=h+z`, where the fixed bucket value
`h` is one of `h_1,h_2,h_3`. S028 says that actual extremality requires
`w in E(K)`. Equivalently the offset must lie in the exact translated shell

- if `a=1`:

  `z in (h_2-h+<h_1>) union (h_1-h+<h_3>);`

- if `a=-1`:

  `z in (h_2-h+<h_1>) union (h_1-h+<h_2>);`

- if `a notin {1,-1}` modulo `m`:

  `z in (h_2-h+<h_1>) union {h_1-h,h_2+h_3-h}.`

This is a genuine restriction on the previously uncontrolled offset, but it
does not exclude the target. Indeed each of `h_1,h_2,h_3` belongs to
`E(K)`, so for every possible fixed bucket `h` one has

`0 in E(K)-h`.

Thus the S028 boundary case `u=t`, equivalently `z=0`, survives the exact
shell classification.

## D28-01 verdict and stop boundary

**SUCCEEDS as an exact shell classification, but does not exclude the fixed
simultaneous-positive target.**

The remaining lift-compatibility defect is now precise: an actual fixed-coset
case must realize `z=u+t` in the corresponding translated set above. Existing
S025--S028 authority supplies no further restriction on that `H`-offset, and
the point `z=0` remains compatible.

S029 stops here. It does not solve the global `k_q/r_q` vector, inspect any
other residual quotient-zero subset, classify the seven lifts, treat odd
`m`, normalize quotient automorphisms, construct an extremal with simultaneous
positivity, or claim the full CAND-05 classification.
