#!/usr/bin/env python3
"""Check the manuscript's finite examples, references and optional build logs.

These checks validate illustrations, not the universal classification theorem.
The theorem's proof is in the paper and the unchanged registered Lean source.
"""
import argparse
from collections import Counter
from itertools import combinations, product
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
ZERO = (0, 0, 0)


def sigma(values):
    values = tuple(values)
    return tuple(sum(v[j] for v in values) % 3 for j in range(3))


def witnesses(sequence):
    return [frozenset(i) for k in (1, 2, 3)
            for i in combinations(range(len(sequence)), k)
            if sigma(sequence[j] for j in i) == ZERO]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--log', type=Path)
    parser.add_argument('--blg', type=Path)
    args = parser.parse_args()

    # Explicit coordinates used in Example 2.5 and Figure 2 (numbering may move).
    core = [(1, 0, 1), (2, 0, 1), (0, 1, 1), (0, 2, 1),
            (1, 1, 2), (1, 2, 2), (2, 1, 2), (2, 2, 2)]
    assert set(core) == {(x, y, (x*x+y*y) % 3)
                         for x, y in product(range(3), repeat=2) if (x, y) != (0, 0)}
    assert len(set(core)) == 8 and ZERO not in core
    assert sigma(core) == ZERO and not witnesses(core) and not witnesses(core*2)
    extremal = core*3
    expected = {frozenset((i, i+8, i+16)) for i in range(8)}
    actual = set(witnesses(extremal))
    assert actual == expected
    assert all(sigma(extremal[i] for i in a & b) == ZERO for a in actual for b in actual)

    residual = (core*2)[1:]
    counts = Counter(residual)
    assert sorted(counts.values()) == [1]+[2]*7
    assert [a for a, n in counts.items() if n == 1] == [core[0]]
    assert sigma(residual) == (2, 0, 2)
    assert not witnesses(residual)
    a = core[0]
    assert witnesses([a]*3) == [frozenset((0, 1, 2))]
    assert sigma([a, a]) != ZERO
    assert len(witnesses([a]*4)) == 4
    negative_a = tuple(-x % 3 for x in a)
    assert witnesses([a, negative_a]) == [frozenset((0, 1))]
    assert set(witnesses([a, negative_a, a])) == {frozenset((0, 1)), frozenset((1, 2))}
    extended = extremal+[a]
    assert frozenset((0, 8, 16)) in witnesses(extended)
    assert frozenset((0, 8, 24)) in witnesses(extended)
    assert sigma(extended[i] for i in (0, 8)) != ZERO

    signatures = {(l, s, r) for l in range(6, 10) for s in range(8, 10)
                  for r in range(25) if l <= s and l+2*s+r == 24}
    assert signatures == {(6, 8, 2), (7, 8, 1), (8, 8, 0), (6, 9, 0)}
    # Counts of the other fibres are unchanged, so total singleton count
    # before and after must both be exactly one.
    transitions = set()
    for x, y, other_singles in product(range(3), range(3), range(2)):
        if x+1 > 2 or y-1 < 0:
            continue
        if (x == 1)+(y == 1)+other_singles == 1 and (x+1 == 1)+(y-1 == 1)+other_singles == 1:
            transitions.add(((x, y), (x+1, y-1)))
    assert transitions == {((0, 1), (1, 0)), ((1, 2), (2, 1))}

    tex = (ROOT/'paper/main.tex').read_text()
    bib = (ROOT/'paper/references.bib').read_text()
    keys = re.findall(r'@\w+\{([^,]+),', bib)
    assert len(keys) == len(set(keys)), 'Duplicate bibliography key'
    cited = set()
    for group in re.findall(r'\\cite(?:\[[^\]]*\])?\{([^}]+)\}', tex):
        cited.update(group.split(','))
    assert cited == set(keys), f'Citation mismatch: {cited ^ set(keys)}'
    labels = re.findall(r'\\label\{([^}]+)\}', tex)
    assert len(labels) == len(set(labels)), 'Duplicate label'
    assert set(re.findall(r'\\(?:eqref|ref)\{([^}]+)\}', tex)) <= set(labels)
    assert len(re.findall(r'\\begin\{figure\}', tex)) == 5
    assert len(re.findall(r'\\begin\{example\}', tex)) == 6

    if args.log:
        log = args.log.read_text(errors='replace')
        bad = re.findall(r'^.*(?:Overfull|undefined|multiply defined|LaTeX Error|^!|Rerun to get|Label\(s\) may have changed).*$', log, re.M)
        assert not bad, '\n'.join(bad)
        assert 'Output written on' in log
    if args.blg:
        blg = args.blg.read_text(errors='replace')
        assert not re.search(r'Warning--|I couldn.t open|error message', blg), blg
    print('PASS: explicit core, all illustrated witnesses, 15-term residual, sharpness example, four signatures, two exchanges, citations and labels' + (', clean TeX/BibTeX logs' if args.log else ''))
    print('Illustrations: 5 vector figures and 6 worked examples. No exhaustive extremal search performed.')


if __name__ == '__main__':
    main()
