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

/--
Formal statement of the 2012 length-16 residual input used by S040.
This is a proposition to be proved, not an assumed theorem.
-/
def Length16SumZeroInput : Prop :=
  ∀ R : PosSeq 16, ShortFree R → totalSum R = 0

/--
Formal statement of the exact `s(C_3^3)=19` consequence used in S039:
every length-19 nonzero sequence has a three-term zero sum.
-/
def ThreeTerm19Input : Prop :=
  ∀ R : PosSeq 19, ∃ I : Finset (Fin 19), I.card = 3 ∧ posSum R I = 0

/--
Formal statement of the ordinary `eta(C_3^3)=17` consequence used in the
length-15 residual argument. This is a proof obligation, not an assumed theorem.
-/
def Eta17Input : Prop :=
  ∀ R : PosSeq 17, ∃ I : Finset (Fin 17), ShortZero R I

/--
Formal statement of the 2012 length-15 nonzero-total-sum input used by S040.
This is a proposition to be proved, not an assumed theorem.
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

/--
The integer bookkeeping in S039: the source-derived bounds `l ≥ 6`,
`s ≥ 8`, together with `l ≤ s` and
`24 = l + 2s + r`, leave exactly the four recorded signatures.
-/
theorem s039_signature_of_arithmetic {l s r : ℕ}
    (hl : 6 ≤ l) (hs : 8 ≤ s) (hls : l ≤ s)
    (hlen : l + 2 * s + r = 24) :
    S039Signature l s r := by
  have hs' : s = 8 ∨ s = 9 := by omega
  rcases hs' with hs8 | hs9
  · subst s
    have hl' : l = 6 ∨ l = 7 ∨ l = 8 := by omega
    rcases hl' with hl6 | hl7 | hl8
    · left
      omega
    · right
      left
      omega
    · right
      right
      left
      omega
  · subst s
    right
    right
    right
    omega

theorem s039_signature_s_eq_eight_or_nine {l s r : ℕ}
    (h : S039Signature l s r) : s = 8 ∨ s = 9 := by
  rcases h with h | h | h | h
  · exact Or.inl h.2.1
  · exact Or.inl h.2.1
  · exact Or.inl h.2.1
  · exact Or.inr h.2.1

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

theorem shortZero_card_two_or_three {n : ℕ} {S : PosSeq n}
    {I : Finset (Fin n)} (h : ShortZero S I) :
    I.card = 2 ∨ I.card = 3 := by
  have hpos : 0 < I.card := Finset.card_pos.mpr h.1
  have hle : I.card ≤ 3 := h.2.1
  have hne : I.card ≠ 1 := by
    intro hone
    obtain ⟨i, rfl⟩ := Finset.card_eq_one.mp hone
    exact singleton_not_shortZero S i h
  omega


/-- Pull a positional sequence back along an injective map of positions. -/
def pullSeq {m n : ℕ} (S : PosSeq n) (e : Fin m ↪ Fin n) : PosSeq m :=
  fun i => S (e i)

/-- A short zero sum survives transport along an injective map of positions. -/
theorem shortZero_map_pullSeq {m n : ℕ} (S : PosSeq n) (e : Fin m ↪ Fin n)
    {I : Finset (Fin m)} (h : ShortZero (pullSeq S e) I) :
    ShortZero S (I.map e) := by
  classical
  simpa [ShortZero, posSum, pullSeq] using h

/--
Over the nonzero alphabet in exponent three, a short zero-sum positional block
has no proper nonempty zero-sum subblock.  This is the minimality fact used by
the packed-atom source proof.
-/
theorem shortZero_subset_eq {n : ℕ} {S : PosSeq n}
    {I J : Finset (Fin n)} (hI : ShortZero S I) (hJ : ShortZero S J)
    (hsub : I ⊆ J) : I = J := by
  classical
  rcases shortZero_card_two_or_three hI with hi | hi <;>
    rcases shortZero_card_two_or_three hJ with hj | hj
  · exact Finset.eq_of_subset_of_card_le hsub (by omega)
  · have hcard : (J \ I).card = 1 := by
      rw [Finset.card_sdiff hsub]
      omega
    obtain ⟨k, hk⟩ := Finset.card_eq_one.mp hcard
    have hsum : posSum S I + posSum S (J \ I) = posSum S J := by
      simpa [posSum] using (Finset.sum_sdiff hsub (f := fun i => (S i : G)))
    have hz : posSum S (J \ I) = 0 := by
      rw [hI.2.2, hJ.2.2] at hsum
      simpa using hsum
    apply False.elim
    apply singleton_not_shortZero S k
    refine ⟨by simp, by simp, ?_⟩
    simpa [hk] using hz
  · exact Finset.eq_of_subset_of_card_le hsub (by omega)
  · exact Finset.eq_of_subset_of_card_le hsub (by omega)


/--
For a target-avoiding sequence, distinct short zero-sum positional blocks are
disjoint.  Thus the maximal packed family in the S039 source proof may be
chosen transparently as the family of all short zero-sum blocks.
-/
theorem shortZero_disjoint_of_ne {n : ℕ} {S : PosSeq n}
    (hAvoid : AvoidsInnerJointPair S) {I J : Finset (Fin n)}
    (hI : ShortZero S I) (hJ : ShortZero S J) (hne : I ≠ J) :
    Disjoint I J := by
  classical
  rw [Finset.disjoint_left]
  intro x hxI hxJ
  have hnonempty : (I ∩ J).Nonempty := by
    exact ⟨x, Finset.mem_inter.mpr ⟨hxI, hxJ⟩⟩
  have hzero : posSum S (I ∩ J) = 0 := by
    simpa [innerJointSum] using hAvoid I J hI hJ
  have hInter : ShortZero S (I ∩ J) := by
    refine ⟨hnonempty, ?_, hzero⟩
    exact (Finset.card_le_card Finset.inter_subset_left).trans hI.2.1
  have hEq : I ∩ J = I :=
    shortZero_subset_eq hInter hI Finset.inter_subset_left
  have hIJ : I ⊆ J := Finset.inter_eq_left.mp hEq
  exact hne (shortZero_subset_eq hI hJ hIJ)

/-- All short zero-sum positional blocks of a length-24 sequence. -/
def s039AllBlocks (S : PosSeq 24) : Finset (Finset (Fin 24)) :=
  Finset.univ.filter (ShortZero S)

@[simp] theorem mem_s039AllBlocks {S : PosSeq 24} {I : Finset (Fin 24)} :
    I ∈ s039AllBlocks S ↔ ShortZero S I := by
  classical
  simp [s039AllBlocks]

/--
The all-block family is pairwise disjoint under the target avoidance
hypothesis.  This is the source maximal-packing interface without an opaque
catalogue.
-/
theorem s039AllBlocks_pairwiseDisjoint {S : PosSeq 24}
    (hAvoid : AvoidsInnerJointPair S) :
    (s039AllBlocks S : Set (Finset (Fin 24))).PairwiseDisjoint id := by
  intro I hI J hJ hne
  exact shortZero_disjoint_of_ne hAvoid
    (mem_s039AllBlocks.mp hI) (mem_s039AllBlocks.mp hJ) hne

end InverseZeroSum.Candidate3
