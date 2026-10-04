# S014 — global extension saturation and support-cloning

Date: 2026-10-04. Classification: internal programme mathematics, using the
published direct threshold identified below. No independent review,
formalisation or novelty certification.

## 1. Domain and source threshold

Let

[
G=G_m=C_2oplus C_{2m}oplus C_{2m},qquad n=2m,qquad mge2.
]

Then (exp(G)=n). Let (S) be a CAND-02 extremal:

[
|S|=8m=4n,qquad 0
otinSigma_n(S).
]

**SOURCE RESULT RECHECKED.** Girard--Schmid, *Direct zero-sum problems for
certain groups of rank three*, JNT 197 (2019), Theorem 3.2, gives in the
equal-factor case

[
s(C_2oplus C_{2m}oplus C_{2m})=8m+1=4n+1.
]

The inspected proof statement explicitly treats the equal-factor (n=1)
parameter in their notation by the subgroup (C_m^2) and quotient (C_2^3),
giving the upper bound ((4m-4)2+9=8m+1); the lower bound comes from their
eta value and the standard (sgeeta+exp-1) inequality. This is the
published threshold already indexed as ZS-10, not a new programme theorem.

Throughout this file, occurrences are positions. Equal-valued occurrences are
interchangeable algebraically but are distinct positions whenever deletion,
replacement or intersection is discussed.

## 2. S014-P1 — exact one-term extension saturation

**PROGRAMME LEMMA; PROVED.** For every (xin G), define the positional
representation family

[
mathcal R_x(S)={Amid S: |A|=n-1, sigma(A)=-x}.
]

Then (mathcal R_x(S)
earnothing) for every (xin G). Equivalently,

[
Sigma_{n-1}(S)=G.
]

Consequently also

[
Sigma_{3n+1}(S)=G.
]

**Proof.** Adjoin one new occurrence (x_*) of an arbitrary (xin G).
The sequence (Sx_*) has length (4n+1=s(G)), so it contains an
(n)-term zero sum (Z). Because (S) itself has no (n)-term zero sum,
(Z) must use (x_*). Removing that new position leaves
(A=Zx_*^{-1}mid S) with (|A|=n-1) and (sigma(A)=-x). Since (x)
was arbitrary, (Sigma_{n-1}(S)=G).

For complements,
(Sigma_{3n+1}(S)=sigma(S)-Sigma_{n-1}(S)=G). QED.

The second equality is fixed-length coverage, not an eta-core statement:
nothing here says a (3n+1=6m+1) complement is free of shorter zero sums.

## 3. S014-P2 — support cloning makes every old copy essential

Let (ainoperatorname{supp}(S)), with (r=v_a(S)), and let
(P_a) denote the set of its (r) old positions.

**PROGRAMME LEMMA; PROVED.** Every member (Ainmathcal R_a(S)) contains
**all** positions in (P_a). Hence every such (A) has the unique positional
form

[
A=a^r B,qquad
Bmid Sa^{-r},qquad
|B|=n-r-1,qquad
sigma(B)=-(r+1)a=(n-r-1)a.
]

In particular, after translating the terms of (B) by (-a),

[
sigma((-a)+B)=0.
]

**Position proof via the requested clone.** Append a new copy (a_*). Every
forced (n)-zero-sum (Zmid Sa_*) uses (a_*). If (Z) omitted any old
occurrence (a_iin P_a), replacing (a_*) by that omitted old position
would produce an (n)-term zero sum entirely inside (S), contradiction.
Thus (Z) contains (a_*) and all old (a)-positions. Removing (a_*)
gives an (Ainmathcal R_a(S)) containing all old copies.

The statement is stronger than existence. If *any*
(Ainmathcal R_a(S)) omitted an old (a_i), then (Aa_imid S) would
itself be an (n)-term zero sum. Therefore every representation has the
displayed form. Its length is immediate, and
(sigma(B)=-a-ra=-(r+1)a=(n-r-1)a) because (na=0). QED.

This lemma is independent of quotient fibers, pair sums, reflection capacity
and progressive blocks.

## 4. S014-P3 — exact deletion/replacement theorem

For arbitrary (xin G), define the **replacement core**

[
K_x(S)=igcap_{Ainmathcal R_x(S)}operatorname{pos}(A).
]

S014-P1 makes this intersection over a nonempty family. Therefore
(|K_x(S)|le n-1).

For an old position (p) of (S), let (S_{p	o x}) be the length-(4n)
sequence obtained by deleting (p) and adjoining one new occurrence of (x).

**PROGRAMME THEOREM; PROVED.**

[
S_{p	o x}	ext{ has no }n	ext{-term zero sum}
quadLongleftrightarrowquad
pin K_x(S).
]

Equivalently,

[
pin K_x(S)
quadLongleftrightarrowquad
-x
otinSigma_{n-1}(Sp^{-1}).
]

**Proof.** If some (Ainmathcal R_x(S)) omits (p), then
(Ax_*mid S_{p	o x}) is an (n)-term zero sum, so the replacement is not
extremal.

Conversely suppose every (Ainmathcal R_x(S)) contains (p), but
(S_{p	o x}) has an (n)-zero-sum (Z). Since (Sp^{-1}mid S), the
zero sum cannot avoid the new (x_*). Removing (x_*) leaves
(Ainmathcal R_x(S)) that lies in (Sp^{-1}), hence omits (p), a
contradiction. QED.

**Simultaneous consequences.**

1. For every fixed insertion value (x), at most (n-1=2m-1) old positions
   can be replaced by (x) while preserving extremality. Thus at least
   (4n-(n-1)=3n+1=6m+1) single-position replacements by that fixed value
   necessarily create an (n)-term zero sum.
2. If (p) has value (a), then (-a
otinSigma_{n-1}(Sp^{-1})).
   Every old occurrence is therefore critical for at least one covered
   ((n-1))-sum target.
3. By S014-P2, (P_asubseteq K_a(S)) for each support value (a). Hence
   (v_a(S)le n-1), and the number of **nontrivial** old positions
   (positions not already valued (a)) that can be replaced by (a) while
   retaining extremality is at most (n-1-v_a(S)).

This is an exact reconstruction criterion for all one-position replacements in
the original ambient group. It is not the stopped S008--S011 kernel
one-change/capacity architecture.

## 5. S014-P4 — forbidden and forced multiplicity strata

Let (ainoperatorname{supp}(S)) and (r=v_a(S)).

**PROGRAMME COROLLARY; PROVED.**

[
r
e n-2=2m-2.
]

More precisely:

- (rle n-3) or (r=n-1);
- if (r=n-1), then (mathcal R_a(S)={a^{,n-1}}) positionally and
  (K_a(S)=P_a); no non-(a) position can be replaced by (a) while
  preserving extremality;
- if (r=n-3), every (Ainmathcal R_a(S)) consists of all (n-3)
  old (a)-positions plus two non-(a) positions (b,c) satisfying
  (b+c=2a). Hence a centered two-position incidence around (a) is forced,
  and at most two non-(a) positions can lie in (K_a(S));
- in general, if (rle n-3), the translated support-deleted sequence
  ((-a)+(Sa^{-r})) contains a nonempty zero-sum subsequence of the **exact**
  length (n-r-1). In particular, if (mle rle2m-3), this exact length
  lies in (2,ldots,m-1), strictly below the exponent.

**Proof.** S014-P2 writes every (Ainmathcal R_a(S)) as (a^rB) with
(ell=|B|=n-r-1), no term of (B) equal to (a), and
(sigma(B)=ell a).

If (r=n-2), then (ell=1). The sole term (b) of (B) must satisfy
(b=a), contradicting that all (r) occurrences of (a) were already used
and (Bmid Sa^{-r}). Thus the stratum (n-2) is impossible.

If (r=n-1), then (ell=0), so the only positional representation is all
(a)-positions. If (r=n-3), then (ell=2) and the two non-(a) terms
satisfy (b+c=2a). The general translated zero-sum statement is exactly
(sigma(B-ell a)=0). QED.

The strictly sub-exponent witness in the high-multiplicity range is a new
CAND-specific consequence of exact threshold saturation; S014 does **not**
feed it into the stopped progressive-block argument.

## 6. Focused current-source check

Retrieval date: 2026-10-04.

1. Girard--Schmid 2019, Theorem 3.2, was rechecked for the exact
   equal-factor threshold (s(G_m)=8m+1). This is the sole published theorem
   used in P1--P4 beyond basic group arithmetic.
2. Weidong Gao, Siao Hong and Jiangtao Peng, *On zero-sum subsequences of
   length (kexp(G)) II*, JCTA 187 (2022), 105563,
   DOI 10.1016/j.jcta.2021.105563, was checked because it explicitly studies
   inverse problems for fixed-length (kexp(G))-zero-sum avoidance. The
   inspected main statements give structural decompositions under their own
   hypotheses; no inspected statement is the positional support-clone /
   deletion-core criterion P2--P3 for the equal-factor rank-three extremals.
3. Focused searches using saturated sequence, critical extension, one-term
   extension/replacement, maximal (n)-zero-sum-free and inverse-EGZ
   terminology did not identify an additional primary theorem statement that
   directly contains P2--P4.

Item 3 is only a bounded search non-hit. It is **not** evidence of novelty,
openness, completeness of the literature or publishability. P2--P4 remain
programme deductions requiring later literature/result audit if they become
part of an actual contribution.

## 7. Assessment

The route is not merely the generic identity (Sigma_{n-1}(S)=G).
The support-clone swap yields:

- all-copy essentiality for each support value;
- an exact deletion/replacement theorem via the cores (K_x(S));
- a uniform (n-1) cap on safe replacement positions for every inserted
  value;
- the forbidden multiplicity (n-2);
- exact centered-pair structure at multiplicity (n-3); and
- exact support-deleted translated zero-sum lengths (n-r-1).

These obligations are global in the original (G_m) and were obtained before
using any quotient-fiber information. No quotient/capacity argument, D6-08
progressive repair, computation or outreach was used.

The full CAND-02 classification remains unresolved, but the S014 promotion bar
is met by a genuinely different structural mechanism. A successor may study
the simultaneous incidence of (K_x(S)), especially whether a support value
can have nontrivial safe replacement positions. It must stop if that question
collapses into the old kernel one-change/local-hole architecture.
