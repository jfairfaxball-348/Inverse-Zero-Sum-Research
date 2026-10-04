#!/usr/bin/env python3
from math import comb

for n in (4, 8, 16, 32):
    print("n", n)
    assert comb(3*n + 1, 2*n) % 2 == 1
    assert all(
        comb(3*n + 1 - j, 2*n - j) % 2 == (1 if j == 0 else 0)
        for j in range(n + 1)
    )
    assert all(comb(4*n - d, 2*n - d) % 2 == 1 for d in range(1, n + 1))
    assert comb(4*n, 2*n) % 2 == 0
    assert all(comb(3*n - d, 2*n - d) % 2 == 0 for d in range(1, n + 1))
    assert comb(3*n, 2*n) % 2 == 1

print("parity sanity checks pass")
