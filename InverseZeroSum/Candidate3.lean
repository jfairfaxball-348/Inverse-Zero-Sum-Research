import Mathlib

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
def baseIndex (i : Fin 24) : Fin 8 :=
  ⟨i.val % 8, Nat.mod_lt _ (by decide)⟩

/-- The positional triple repetition `U^3`. -/
def tripleRep (U : PosSeq 8) : PosSeq 24 :=
  fun i => U (baseIndex i)

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
        Squarefree U ∧ ShortFree U ∧ S = tripleRep U

/--
Formal statement of the 2012 length-16 residual input used by S040.
This is a proposition to be proved, not an assumed theorem.
-/
def Length16SumZeroInput : Prop :=
  ∀ R : PosSeq 16, ShortFree R → totalSum R = 0

/--
Formal statement of the ordinary `eta(C_3^3)=17` consequence used in the
length-15 residual argument. This is a proof obligation, not an assumed theorem.
-/
def Eta17Input : Prop :=
  ∀ R : PosSeq 17, ∃ I : Finset (Fin 17), ShortZero R I

/--
Formal statement of the 2012 length-15 nonzero-total-sum input used by S040.
This is a proposition to be proved, not an assumed axiom.
-/
def Length15NonzeroInput : Prop :=
  ∀ R : PosSeq 15, ShortFree R → totalSum R ≠ 0

/-- Short-freeness restricted to an explicit set of surviving positions. -/
def ShortFreeOn {n : ℕ} (S : PosSeq n) (A : Finset (Fin n)) : Prop :=
  ∀ I : Finset (Fin n), I ⊆ A → ¬ ShortZero S I

/-- The four packing signatures proved in S039. -/
def S039Signature (l s r : ℕ) : Prop :=
  (l = 6 ∧ s = 8 ∧ r = 2) ∨
  (l = 7 ∧ s = 8 ∧ r = 1) ∨
  (l = 8 ∧ s = 8 ∧ r = 0) ∨
  (l = 6 ∧ s = 9 ∧ r = 0)

/-- Union of all packed position blocks. -/
def blockUnion {s : ℕ} (blocks : Fin s → Finset (Fin 24)) : Finset (Fin 24) :=
  Finset.univ.biUnion blocks

/-- The set of one selected representative position from each packed block. -/
def representativeSet {s : ℕ} (rep : Fin s → Fin 24) : Finset (Fin 24) :=
  Finset.univ.image rep

/--
Data-level form of the S039 packed-atom output used by S040.  It keeps the
arbitrary-representative quantifier explicit and positional.
-/
structure S039PackingCertificate (S : PosSeq 24) where
  s : ℕ
  l : ℕ
  r : ℕ
  signature : S039Signature l s r
  blocks : Fin s → Finset (Fin 24)
  block_shortZero : ∀ j, ShortZero S (blocks j)
  pairwise_disjoint : ∀ i j, i ≠ j → Disjoint (blocks i) (blocks j)
  block_card : ∀ j, (blocks j).card = (if j.val < l then 3 else 2)
  remainder_card : (Finset.univ \ blockUnion blocks).card = r
  every_representative_residual_shortFree :
    ∀ rep : Fin s → Fin 24,
      (∀ j, rep j ∈ blocks j) →
      ShortFreeOn S (Finset.univ \ representativeSet rep)

/--
Exact first unresolved programme-proof interface: formalize the S039 packing
certificate for every target-avoiding length-24 sequence.
-/
def S039PackingInput : Prop :=
  ∀ S : PosSeq 24, AvoidsInnerJointPair S → Nonempty (S039PackingCertificate S)

@[simp] theorem baseIndex_val (i : Fin 24) :
    (baseIndex i).val = i.val % 8 := rfl

theorem singleton_not_shortZero {n : ℕ} (S : PosSeq n) (i : Fin n) :
    ¬ ShortZero S {i} := by
  intro h
  have hz : (S i : G) = 0 := by
    simpa [ShortZero, posSum] using h.2.2
  exact (S i).property hz

end InverseZeroSum.Candidate3
