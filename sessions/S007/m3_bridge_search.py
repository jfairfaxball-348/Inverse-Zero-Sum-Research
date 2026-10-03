#!/usr/bin/env python3
"""S007 bounded m=3 bridge-falsification experiment.

Elements of G_3 = C_2 + C_6 + C_6 are encoded through
G_3 ~= F_2^3 x F_3^2 as triples (a,b,c), where a in {0,...,7}
is a three-bit vector and b,c in {0,1,2}.

The rigorous S007 reduction says a bridge-failing m=3 extremal would be a
24-element subset that is both centered-three-term-progression-free and
free of zero-sum 6-subsets. This script searches only that finite question.
It is experimental evidence, not a theorem.
"""
from __future__ import annotations

import argparse
import itertools
import json
import random
from typing import Iterable

SEED = 20261003
GREEDY_TRIALS = 250
TARGET_SIZE = 24

B9 = [(i, j) for i in range(3) for j in range(3)]
U = [(a, b0, b1) for b0, b1 in B9 for a in range(8)]
INDEX = {g: i for i, g in enumerate(U)}


def centered_edges() -> list[tuple[int, int, int]]:
    edges = set()
    for a in range(8):
        for p, q in itertools.combinations(B9, 2):
            r = ((-p[0] - q[0]) % 3, (-p[1] - q[1]) % 3)
            for c in range(8):
                e = tuple(sorted((
                    INDEX[(a, p[0], p[1])],
                    INDEX[(a, q[0], q[1])],
                    INDEX[(c, r[0], r[1])],
                )))
                if len(set(e)) == 3:
                    edges.add(e)
    return sorted(edges)


AP_EDGES = centered_edges()
AP_BY_VERTEX: list[list[tuple[int, int, int]]] = [[] for _ in U]
for edge in AP_EDGES:
    for vertex in edge:
        AP_BY_VERTEX[vertex].append(edge)


def zero_sum_6_count(selection: Iterable[int], cutoff: int | None = None) -> int:
    count = 0
    for comb in itertools.combinations(selection, 6):
        f2 = b0 = b1 = 0
        for i in comb:
            a, x, y = U[i]
            f2 ^= a
            b0 += x
            b1 += y
        if f2 == 0 and b0 % 3 == 0 and b1 % 3 == 0:
            count += 1
            if cutoff is not None and count >= cutoff:
                return count
    return count


def greedy_search(seed: int = SEED, trials: int = GREEDY_TRIALS) -> dict:
    rng = random.Random(seed)
    best_count = 10**18
    best: list[int] | None = None
    completed = 0

    for _ in range(trials):
        order = list(range(len(U)))
        rng.shuffle(order)
        selection: list[int] = []
        selected = set()
        for vertex in order:
            if len(selection) == TARGET_SIZE:
                break
            bad = any(
                all(u == vertex or u in selected for u in edge)
                for edge in AP_BY_VERTEX[vertex]
            )
            if not bad:
                selection.append(vertex)
                selected.add(vertex)

        if len(selection) != TARGET_SIZE:
            continue

        completed += 1
        count = zero_sum_6_count(selection, cutoff=best_count)
        if count < best_count:
            best_count = count
            best = selection[:]

    return {
        "seed": seed,
        "trials": trials,
        "centered_edges": len(AP_EDGES),
        "completed_size_24": completed,
        "best_zero_sum_6_count": None if best is None else best_count,
        "best_set": None if best is None else [U[i] for i in best],
        "counterexample_found": bool(best is not None and best_count == 0),
    }


def cutting_plane(time_limits: list[float]) -> dict:
    """Optional SciPy/HiGHS feasibility search with accumulated 6-sum cuts."""
    import numpy as np
    from scipy.optimize import Bounds, LinearConstraint, milp
    from scipy.sparse import csr_matrix, vstack

    def edge_matrix(edges, width=72):
        edges = list(edges)
        rows, cols, data = [], [], []
        for row, edge in enumerate(edges):
            for col in edge:
                rows.append(row)
                cols.append(col)
                data.append(1.0)
        return csr_matrix((data, (rows, cols)), shape=(len(edges), width))

    def zero_sum_edges(selection):
        answer = []
        for comb in itertools.combinations(selection, 6):
            if zero_sum_6_count(comb) == 1:
                answer.append(tuple(comb))
        return answer

    ap_matrix = edge_matrix(AP_EDGES)
    cuts: set[tuple[int, ...]] = set()
    history = []

    for limit in time_limits:
        parts = [ap_matrix]
        upper_parts = [np.full(ap_matrix.shape[0], 2.0)]
        if cuts:
            cut_matrix = edge_matrix(cuts)
            parts.append(cut_matrix)
            upper_parts.append(np.full(cut_matrix.shape[0], 5.0))

        total = csr_matrix(np.ones((1, 72)))
        matrix = vstack(parts + [total])
        upper = np.r_[*upper_parts, [24.0]]
        lower = np.r_[
            np.full(sum(part.shape[0] for part in parts), -np.inf),
            [24.0],
        ]

        result = milp(
            c=np.zeros(72),
            integrality=np.ones(72),
            bounds=Bounds(np.zeros(72), np.ones(72)),
            constraints=LinearConstraint(matrix, lb=lower, ub=upper),
            options={"time_limit": limit},
        )

        if result.x is None:
            history.append({
                "time_limit_seconds": limit,
                "incumbent": False,
                "cuts_before": len(cuts),
                "solver_message": result.message,
            })
            break

        selection = [i for i, x in enumerate(result.x) if x > 0.5]
        violated = zero_sum_edges(selection)
        history.append({
            "time_limit_seconds": limit,
            "incumbent": True,
            "zero_sum_6_count": len(violated),
            "cuts_before": len(cuts),
            "solver_message": result.message,
        })
        if not violated:
            return {
                "counterexample_found": True,
                "set": [U[i] for i in selection],
                "history": history,
            }
        cuts.update(violated)

    return {
        "counterexample_found": False,
        "infeasibility_proved": False,
        "cuts_accumulated": len(cuts),
        "history": history,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--seed", type=int, default=SEED)
    parser.add_argument("--trials", type=int, default=GREEDY_TRIALS)
    parser.add_argument("--milp", action="store_true")
    args = parser.parse_args()

    print(json.dumps(greedy_search(args.seed, args.trials), indent=2))
    if args.milp:
        limits = [5.0] * 8 + [40.0, 7.0]
        print(json.dumps(cutting_plane(limits), indent=2))


if __name__ == "__main__":
    main()
