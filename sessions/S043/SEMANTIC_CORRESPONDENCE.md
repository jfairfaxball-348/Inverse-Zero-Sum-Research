# S043 semantic correspondence

Date: 2026-10-06.
Lean namespace: `InverseZeroSum.Candidate3`.

## Repository theorem to Lean

| Repository concept | Lean encoding |
| --- | --- |
| `C_3^3` | `G := Fin 3 → ZMod 3` |
| nonzero alphabet | `Alphabet := {x : G // x ≠ 0}` |
| positional length-`n` sequence | `PosSeq n := Fin n → Alphabet` |
| positional subsequence | `Finset (Fin n)` |
| subsequence sum | `posSum S I` |
| short zero sum | `ShortZero S I`: nonempty, card at most 3, sum zero |
| short-free | `ShortFree S` |
| squarefree | `Squarefree S := Function.Injective S` |
| indexed intersection sum | `innerJointSum S I J := posSum S (I ∩ J)` |
| no two innerly non-zero-sum-joint short zero sums | `AvoidsInnerJointPair S` |
| canonical representative of `U^3` | `tripleRep U`, positions reduced modulo 8 |
| sequence equality `S=U^3` | `IsTriplePower S U`: equality after a permutation of the 24 positions |
| frozen iff theorem | `FrozenClassification`, using `IsTriplePower` rather than literal fixed-order equality |

The avoidance definition is deliberately positional. It quantifies over two
finite position sets and requires the sum on their position-set intersection
to be zero whenever both are short zero-sum witnesses. Thus it does not replace
a sequence by its support. The structural conclusion is nevertheless a commutative-sequence statement: `IsTriplePower` permits a position permutation rather than imposing an artificial fixed ordering on the original 24 positions.

## S040/S041 proof correspondence

The first source-level residual obligations used downstream are separately
encoded as propositions, not assumptions:

- `Length16SumZeroInput` corresponds to the S040/S041 use of Fan--Gao--Wang--
  Zhong--Zhuang 2012 Lemma 28.
- `Eta17Input` corresponds to the `eta(C_3^3)=17` threshold used in the
  length-15 support argument.
- `Length15NonzeroInput` corresponds to the S040/S041 use of 2012
  Lemma 29(1).

The elementary nonzero-alphabet fact that a singleton position cannot be a
short zero sum is proved as `singleton_not_shortZero`.

The S039 packed-atom decomposition and its arbitrary-representative residual
quantifier have not been replaced by an axiom or opaque catalogue. They are the
earliest remaining proof-spine component that must be formalized before the
S040 representative-swap elimination can be reproduced faithfully.

## Trust boundary

Lean checks only the encoded definitions and proved declarations under the
pinned Lean/mathlib toolchain. A successful build does not establish literature
novelty, previous openness, significance, semantic correctness of the human
correspondence note, or journal review. No `sorry`, `admit`, unsound axiom,
or external oracle is permitted in the formal source.


### Sequence equality semantics

The repository writes sequences multiplicatively and treats position order as
irrelevant. Lean represents a positional sequence as a function `Fin n → Alphabet`,
so literal function equality would accidentally choose one ordering. The formal
normal form therefore uses `IsTriplePower S U`: there exists an equivalence
`Fin 24 ≃ Fin 24` whose reindexing makes `S` equal to the canonical
`tripleRep U`. This preserves positional witnesses while matching the
commutative sequence statement `S=U^3`.
