# S012 dependency update

## D11-01 — maximal progressive-block repair

**ASSESSED; UNIVERSAL D6-08 BRIDGE UNRESOLVED.**

S012 freezes one mechanism and proves it exactly. After translating a maximum
progressive block `C` of size `c` to center zero, any disjoint complement
zero-sum block of length at most `c+1` splices onto `C` and yields a strictly
larger progressive block. Thus, in a putative D6-08 failure, the translated
complement contains no zero sum of lengths `1,...,c+1`.

Re-running the maximal-short-zero-sum step from GS Lemma 4.4(2) below its
published threshold gives a maximum complement short zero sum of length

`m+1 <= t <= 2m-c-1`.

With `d=2m-t`, one has `c+1<=d<=m-1`; after deleting that zero sum, the
remaining complement contains no zero sum of length at most `d`. If
`d-c>=2`, eta forces another short zero sum, but only at length at least
`d+1>=c+2`, again outside the splice range. If `d=c+1`, the remainder has
length `eta(G)-1` but is not shown eta-free.

A local three-term minimal zero sum shows that a total-zero complement block of
length `c+2` need not augment a progressive block, so the missing cardinality
condition cannot be dropped. This local example is not an actual CAND or D6-08
counterexample.

## D6-08 / D6-09

No universal change. D6-08 remains proved on the previously recorded scopes
(`m=2` and, via S008, Property-D moduli) and unresolved for arbitrary `m`.
Consequently GS Lemma 4.4(2) does not yield a universal translated
length-`6m+1` eta-extremal core.

S010-P4 and S011-P2 remain binding: an `eta(G)-1`-length complement is not
eta-extremal without short-zero-sum-freeness. S012's critical `d=c+1` case is
another explicit place where this distinction matters.

## Stopped routes

D10-01, D9-01, D8-02 and universal D7-01 remain unresolved. S012 does not
reopen the local-hole/capacity exchange route. No reflection-pair form,
Property D, or homocyclic GS Lemma 4.3 is assumed.

## New decision frontier — D12-01

The splice lemma isolates a genuinely CAND-specific missing input: force a
small translated-complement zero sum of length at most `c+1`, or supply a
different replacement theorem with all intermediate cardinality witnesses.
This cannot follow from complement length alone, because powers of an element
of order `2m` avoid all nonempty zero sums shorter than `2m` at arbitrary
length.

Before another proof variant is attempted, S013 should perform a **source-based
route comparison**. It should compare at least:

1. restricted-length / `s_L(G)` or short-zero-sum structure that could interact
   with the CAND constraints and S012's splice range;
2. any genuinely new unconditional homocyclic stability/equality input that
   would justify reopening the stopped kernel route; and
3. alternative equal-factor eta-core/equality-case reductions that do not
   presuppose D6-08.

The comparison must distinguish theorems for `C_m^2`, other rank-three groups,
and the exact `G_m` family. Search failure is not evidence of openness. A route
should be promoted only if a new source supplies an applicable hypothesis or a
clearly different mathematical mechanism.
