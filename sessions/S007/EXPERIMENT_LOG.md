# S007 experiment log

## Triggering finite question

Theory first reduced m=3 exactly. By S007-P4, a bridge-failing m=3 extremal
would be a 24-element subset X of
G_3 ~= F_2^3 x F_3^2 that simultaneously has:

- no centered three-term progression;
- no zero-sum six-subset.

This is a precise finite falsification question, so bounded computation was
authorized by the S007 brief.

## Encoding

An element is encoded as (a,b,c), where a in {0,...,7} is the three-bit
F_2^3 coordinate and b,c in {0,1,2} are the F_3^2 coordinates.

For a centered progression x,h,z with x+z=2h, the F_2 endpoint coordinates
must agree. Enumerating all distinct triples gives 2112 forbidden centered
three-term edges.

The committed script is sessions/S007/m3_bridge_search.py.

## Deterministic greedy run

Command-equivalent parameters:

- seed: 20261003
- trials: 250
- target size: 24
- Python: 3.13.5

Result:

- 91 trials produced a size-24 centered-3AP-free subset;
- the best such subset still contained exactly 1596 zero-sum six-subsets;
- no bridge-failing extremal was found.

Best encoded set:

(5,0,2), (3,1,0), (4,0,1), (2,0,2), (1,2,0), (1,2,1),
(3,0,1), (0,2,0), (3,2,0), (5,0,1), (4,0,2), (0,0,1),
(6,0,2), (2,2,0), (0,0,2), (7,0,2), (6,2,0), (2,0,1),
(5,2,0), (4,2,0), (7,0,1), (1,0,1), (6,0,1), (7,2,0).

This is **EXPERIMENTAL EVIDENCE ONLY**. Failure to find a counterexample does
not prove that none exists.

## Exploratory cutting-plane MILP

A second bounded experiment used SciPy 1.17.0 / scipy.optimize.milp (HiGHS)
on 72 binary variables. The model imposed all 2112 centered-3AP constraints,
cardinality exactly 24, and iteratively added every violated zero-sum-six
hyperedge found in each incumbent.

Observed short-round incumbent zero-sum-six counts were:
2290, 2150, 2246, 1879, 2137, 2176, 1680.
After 14558 accumulated six-sum cuts, the next 5-second solve timed out without
an incumbent. A 40-second retry found another incumbent with 1680 zero-sum
six-subsets. After adding its cuts, 16238 cuts were accumulated; the following
7-second solve again timed out without an incumbent.

No zero-violation incumbent and no solver-certified infeasibility result were
obtained. The MILP experiment is therefore inconclusive and is not a proof.

## Interpretation boundary

The experiment supports only the practical observation that the exact m=3
obstruction is nontrivial. It neither establishes the m=3 bridge nor
generalizes to any m>3.
