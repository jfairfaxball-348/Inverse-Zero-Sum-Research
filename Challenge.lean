module

public import Mathlib

public section

namespace InverseZeroSum.Candidate3

/-- The ambient group `C_3^3`, represented positionwise. -/
abbrev G := Fin 3 → ZMod 3

/-- The target alphabet excludes the zero vector. -/
abbrev Alphabet := {x : G // x ≠ 0}

/-- A positional sequence of exactly `n` nonzero group elements. -/
abbrev PosSeq (n : ℕ) := Fin n → Alphabet

/-- Sum of the entries whose positions lie in `I`. -/
def posSum {n : ℕ} (S : PosSeq n) (I : Finset (Fin n)) : G :=
  ∑ i ∈ I, (S i : G)

/-- A nonempty zero-sum positional subsequence of length at most three. -/
def ShortZero {n : ℕ} (S : PosSeq n) (I : Finset (Fin n)) : Prop :=
  I.Nonempty ∧ I.card ≤ 3 ∧ posSum S I = 0

/-- No short zero-sum positional subsequence exists. -/
def ShortFree {n : ℕ} (S : PosSeq n) : Prop :=
  ∀ I : Finset (Fin n), ¬ ShortZero S I

/-- Squarefree means that distinct positions carry distinct values. -/
def Squarefree {n : ℕ} (S : PosSeq n) : Prop :=
  Function.Injective S

/-- The indexed intersection sum used in the defining Narkiewicz-sense relation. -/
def innerJointSum {n : ℕ} (S : PosSeq n)
    (I J : Finset (Fin n)) : G :=
  posSum S (I ∩ J)

/--
The target avoidance relation: any two short zero-sum witnesses have
zero intersection-sum. Equivalently, there do not exist two witnesses whose
positional intersection has nonzero sum.
-/
def AvoidsInnerJointPair {n : ℕ} (S : PosSeq n) : Prop :=
  ∀ I J : Finset (Fin n),
    ShortZero S I → ShortZero S J → innerJointSum S I J = 0

/-- Reduce a length-24 position to the corresponding position in one length-8 copy. -/
@[expose] def baseIndex (i : Fin 24) : Fin 8 :=
  ⟨i.val % 8, Nat.mod_lt _ (by decide)⟩

/-- A canonical positional representative of the commutative sequence `U^3`. -/
def tripleRep (U : PosSeq 8) : PosSeq 24 :=
  fun i => U (baseIndex i)

/--
Commutative-sequence equality `S = U^3`: after a permutation of positions,
`S` is the canonical triple repetition of `U`.
-/
def IsTriplePower (S : PosSeq 24) (U : PosSeq 8) : Prop :=
  ∃ e : Fin 24 ≃ Fin 24, ∀ i, S (e i) = tripleRep U i

/-- Total sum of a fixed-length positional sequence. -/
def totalSum {n : ℕ} (S : PosSeq n) : G :=
  posSum S Finset.univ

/--
Exact frozen CAND-03 statement. S043 records this proposition even when the
proof term is not yet available; no unchecked postulate or placeholder is introduced.
-/
def FrozenClassification : Prop :=
  ∀ S : PosSeq 24,
    AvoidsInnerJointPair S ↔
      ∃ U : PosSeq 8,
        Squarefree U ∧ ShortFree U ∧ IsTriplePower S U

/-- Full exact positional iff. The Challenge placeholder is intentionally unproved;
the Solution environment must supply the identical original theorem. -/
theorem frozenClassification : FrozenClassification := by
  sorry

end InverseZeroSum.Candidate3
