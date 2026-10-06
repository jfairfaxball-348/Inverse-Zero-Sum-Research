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
      simpa [posSum, add_comm] using (Finset.sum_sdiff hsub (f := fun i => (S i : G)))
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
noncomputable def s039AllBlocks (S : PosSeq 24) : Finset (Finset (Fin 24)) := by
  classical
  exact Finset.univ.filter (ShortZero S)

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


/--
One chosen representative from each pairwise-disjoint block gives exactly as
many deleted positions as there are blocks.
-/
theorem representativeSet_card_of_pairwise {s : ℕ}
    {blocks : Fin s → Finset (Fin 24)} {rep : Fin s → Fin 24}
    (hBlocks : ∀ i j, i ≠ j → Disjoint (blocks i) (blocks j))
    (hRep : ∀ j, rep j ∈ blocks j) :
    (representativeSet rep).card = s := by
  classical
  have hInj : Function.Injective rep := by
    intro i j hij
    by_contra hne
    have hDisj := hBlocks i j hne
    have hmemj : rep i ∈ blocks j := by
      rw [hij]
      exact hRep j
    exact (Finset.disjoint_left.mp hDisj) (hRep i) hmemj
  simpa [representativeSet] using
    Finset.card_image_of_injective (Finset.univ : Finset (Fin s)) hInj


/-! ### S045: the three-term length-19 threshold -/

/-- A coordinatewise finite model of the frozen ambient group. -/
abbrev F3G := Fin 3 → Fin 3

/-- A tuple representation of the same finite model; unlike function equality it reduces cheaply. -/
abbrev F3T := Fin 3 × Fin 3 × Fin 3

/-- The coordinatewise additive equivalence from \`Fin 3\` coordinates to the frozen group. -/
def f3ToG : F3G ≃+ G :=
  AddEquiv.piCongrRight (fun _ => (ZMod.finEquiv 3).toAddEquiv)

/-- Evaluation at the three coordinates as an additive equivalence. -/
def f3TupleEquiv : F3G ≃+ F3T where
  toFun x := (x 0, x 1, x 2)
  invFun x := ![x.1, x.2.1, x.2.2]
  left_inv x := by
    funext i
    fin_cases i <;> rfl
  right_inv x := by
    rcases x with ⟨x0, x1, x2⟩
    rfl
  map_add' x y := rfl

/-- The finite tuple model of the frozen ambient group. -/
def finiteModelEquiv : G ≃+ F3T :=
  f3ToG.symm.trans f3TupleEquiv

/-- Coordinates on a nine-point affine plane. -/
abbrev PlaneCoord := Fin 3 × Fin 3

/-- The 39 affine planes of \`F_3^3\`: 13 directions and three cosets each. -/
abbrev PlaneIdx := Fin 13 × Fin 3

/-- A computable Boolean form of the explicit affine-plane equation. -/
def onPlaneTB (p : PlaneIdx) (x : F3T) : Bool :=
  let d := p.1.val
  let c : Fin 3 := p.2
  if h9 : d < 9 then
    let a : Fin 3 := ⟨d / 3, by omega⟩
    let b : Fin 3 := ⟨d % 3, Nat.mod_lt _ (by omega)⟩
    x.1 + a * x.2.1 + b * x.2.2 == c
  else if h12 : d < 12 then
    let b : Fin 3 := ⟨d - 9, by omega⟩
    x.2.1 + b * x.2.2 == c
  else
    x.2.2 == c

/-- Explicit parametrisation of each nine-point affine plane in the tuple model. -/
def planePointT (p : PlaneIdx) (q : PlaneCoord) : F3T :=
  let d := p.1.val
  let c : Fin 3 := p.2
  let y : Fin 3 := q.1
  let z : Fin 3 := q.2
  if h9 : d < 9 then
    let a : Fin 3 := ⟨d / 3, by omega⟩
    let b : Fin 3 := ⟨d % 3, Nat.mod_lt _ (by omega)⟩
    (c - a * y - b * z, y, z)
  else if h12 : d < 12 then
    let b : Fin 3 := ⟨d - 9, by omega⟩
    (y, c - b * z, z)
  else
    (y, z, c)

/-- The point set of an explicitly indexed affine plane. -/
def planeSetT (p : PlaneIdx) : Finset F3T :=
  Finset.univ.filter (fun x => onPlaneTB p x = true)

theorem planePointT_injective :
    ∀ p : PlaneIdx, Function.Injective (planePointT p) := by
  decide

theorem planePointT_onPlane :
    ∀ p : PlaneIdx, ∀ q : PlaneCoord,
      onPlaneTB p (planePointT p q) = true := by
  decide

theorem planePointT_surjective_on :
    ∀ p : PlaneIdx, ∀ x : F3T,
      onPlaneTB p x = true → ∃ q : PlaneCoord, planePointT p q = x := by
  decide

theorem planeSetT_eq_image (p : PlaneIdx) :
    planeSetT p = Finset.univ.image (planePointT p) := by
  classical
  ext x
  constructor
  · intro hx
    have hon : onPlaneTB p x = true := (Finset.mem_filter.mp hx).2
    obtain ⟨q, hq⟩ := planePointT_surjective_on p x hon
    exact Finset.mem_image.mpr ⟨q, Finset.mem_univ q, hq⟩
  · intro hx
    obtain ⟨q, _hq, rfl⟩ := Finset.mem_image.mp hx
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, planePointT_onPlane p q⟩

@[simp] theorem planeSetT_card (p : PlaneIdx) :
    (planeSetT p).card = 9 := by
  classical
  rw [planeSetT_eq_image p]
  simpa using
    Finset.card_image_of_injective (Finset.univ : Finset PlaneCoord)
      (planePointT_injective p)

/--
The small affine-plane fact needed by S045: a subset of \`F_3^2\` with no
three distinct elements summing to zero has at most four elements.
-/
theorem planeCoord_cap_le_four :
    ∀ A : Finset PlaneCoord,
      (∀ a ∈ A, ∀ b ∈ A, ∀ c ∈ A,
        a ≠ b → a ≠ c → b ≠ c → a + b + c ≠ 0) →
      A.card ≤ 4 := by
  set_option maxRecDepth 10000 in
  set_option maxHeartbeats 500000 in
    decide

/-- The affine parametrisation preserves three-term zero sums. -/
theorem planePointT_sum_zero_of_coord :
    ∀ p : PlaneIdx, ∀ a b c : PlaneCoord,
      a + b + c = 0 →
      planePointT p a + planePointT p b + planePointT p c = 0 := by
  set_option maxRecDepth 10000 in
  set_option maxHeartbeats 500000 in
    decide

/-- Every two distinct tuple-model points lie on exactly four affine planes. -/
theorem pair_plane_countT :
    ∀ x y : F3T, x ≠ y →
      ((Finset.univ : Finset PlaneIdx).filter
        (fun p => onPlaneTB p x = true ∧ onPlaneTB p y = true)).card = 4 := by
  set_option maxRecDepth 10000 in
  set_option maxHeartbeats 1000000 in
    decide

/--
The four affine planes through a line cover the whole three-dimensional affine
space.  This is the second and final finite incidence check used by the
structural cap proof.
-/
theorem pair_planes_coverT :
    ∀ x y z : F3T, x ≠ y →
      ∃ p : PlaneIdx,
        onPlaneTB p x = true ∧ onPlaneTB p y = true ∧ onPlaneTB p z = true := by
  set_option maxRecDepth 10000 in
  set_option maxHeartbeats 1500000 in
    decide


/--
The published eta(C_3^3)=17 source interface bounds any short-free set of
positions in a length-24 positional sequence by 16.
-/
theorem card_le_sixteen_of_eta17 (hEta : Eta17Input)
    (S : PosSeq 24) {A : Finset (Fin 24)} (hFree : ShortFreeOn S A) :
    A.card ≤ 16 := by
  classical
  by_contra h
  have h17 : 17 ≤ A.card := by omega
  let eOrder : Fin 17 ↪o Fin 24 := A.orderEmbOfCardLe h17
  let e : Fin 17 ↪ Fin 24 := eOrder.toEmbedding
  let R : PosSeq 17 := pullSeq S e
  obtain ⟨I, hI⟩ := hEta R
  have hMap : ShortZero S (I.map e) :=
    shortZero_map_pullSeq S e hI
  have hSub : I.map e ⊆ A := by
    intro x hx
    obtain ⟨i, hi, rfl⟩ := Finset.mem_map.mp hx
    simpa [e, eOrder] using Finset.orderEmbOfCardLe_mem A h17 i
  exact (hFree (I.map e) hSub) hMap

/--
The published three-term length-19 source interface bounds a set of positions
with no three-term zero sum by 18.
-/
theorem card_le_eighteen_of_threeTerm19 (h19 : ThreeTerm19Input)
    (S : PosSeq 24) {A : Finset (Fin 24)}
    (hNoThree :
      ∀ I : Finset (Fin 24), I ⊆ A → I.card = 3 → posSum S I ≠ 0) :
    A.card ≤ 18 := by
  classical
  by_contra h
  have h19le : 19 ≤ A.card := by omega
  let eOrder : Fin 19 ↪o Fin 24 := A.orderEmbOfCardLe h19le
  let e : Fin 19 ↪ Fin 24 := eOrder.toEmbedding
  let R : PosSeq 19 := pullSeq S e
  obtain ⟨I, hCard, hZero⟩ := h19 R
  have hShort : ShortZero R I := by
    refine ⟨Finset.card_pos.mp (by omega), by omega, hZero⟩
  have hMap : ShortZero S (I.map e) :=
    shortZero_map_pullSeq S e hShort
  have hSub : I.map e ⊆ A := by
    intro x hx
    obtain ⟨i, hi, rfl⟩ := Finset.mem_map.mp hx
    simpa [e, eOrder] using Finset.orderEmbOfCardLe_mem A h19le i
  have hMapCard : (I.map e).card = 3 := by
    simpa using hCard
  exact (hNoThree (I.map e) hSub hMapCard) hMap.2.2


/--
Faithful formalization of the S039 packed-short-minimal-zero-sum architecture,
conditional only on the two published threshold interfaces that S043 recorded
as separate proof obligations.

The packing itself is not assumed: for an avoiding sequence, all short
zero-sum blocks are pairwise disjoint, so they form the required maximal
packing.  Three-blocks are enumerated first, two-blocks second, and arbitrary
representative deletion is proved positionally.
-/
theorem s039PackingInput_of_thresholds
    (h19 : ThreeTerm19Input) (hEta : Eta17Input) :
    S039PackingInput := by
  classical
  intro S hAvoid
  let P : Finset (Finset (Fin 24)) := s039AllBlocks S
  let P3 : Finset (Finset (Fin 24)) := P.filter (fun B => B.card = 3)
  let P2 : Finset (Finset (Fin 24)) := P.filter (fun B => B.card ≠ 3)
  let l : ℕ := P3.card
  let t : ℕ := P2.card
  let s : ℕ := l + t
  let U : Finset (Fin 24) := P.biUnion id
  let r : ℕ := (Finset.univ \ U).card

  have hPShort : ∀ B ∈ P, ShortZero S B := by
    intro B hB
    simpa [P] using hB

  have hPCardSplit : l + t = P.card := by
    have h :=
      Finset.sum_filter_add_sum_filter_not P
        (fun B : Finset (Fin 24) => B.card = 3) (fun _ => (1 : ℕ))
    simpa [l, t, P3, P2] using h

  have hPCard : P.card = s := by
    dsimp [s]
    omega

  have hP3Short : ∀ B ∈ P3, ShortZero S B := by
    intro B hB
    exact hPShort B (Finset.mem_filter.mp hB).1

  have hP2Short : ∀ B ∈ P2, ShortZero S B := by
    intro B hB
    exact hPShort B (Finset.mem_filter.mp hB).1

  have hP2Card : ∀ B ∈ P2, B.card = 2 := by
    intro B hB
    have hNotThree : B.card ≠ 3 := (Finset.mem_filter.mp hB).2
    rcases shortZero_card_two_or_three (hP2Short B hB) with hTwo | hThree
    · exact hTwo
    · exact (hNotThree hThree).elim

  have hPairSet : (P : Set (Finset (Fin 24))).PairwiseDisjoint id := by
    simpa [P] using s039AllBlocks_pairwiseDisjoint hAvoid

  have hSum3 : (∑ B ∈ P3, B.card) = 3 * l := by
    calc
      (∑ B ∈ P3, B.card) = ∑ _B ∈ P3, 3 := by
        apply Finset.sum_congr rfl
        intro B hB
        exact (Finset.mem_filter.mp hB).2
      _ = 3 * l := by simp [l, Nat.mul_comm]

  have hSum2 : (∑ B ∈ P2, B.card) = 2 * t := by
    calc
      (∑ B ∈ P2, B.card) = ∑ _B ∈ P2, 2 := by
        apply Finset.sum_congr rfl
        intro B hB
        exact hP2Card B hB
      _ = 2 * t := by simp [t, Nat.mul_comm]

  have hUnionCard : U.card = 3 * l + 2 * t := by
    have hSplit :=
      Finset.sum_filter_add_sum_filter_not P
        (fun B : Finset (Fin 24) => B.card = 3) (fun B => B.card)
    calc
      U.card = ∑ B ∈ P, B.card := by
        simpa [U] using Finset.card_biUnion hPairSet
      _ = (∑ B ∈ P3, B.card) + ∑ B ∈ P2, B.card := by
        simpa [P3, P2] using hSplit.symm
      _ = 3 * l + 2 * t := by rw [hSum3, hSum2]

  have hRemainderCount : r + U.card = 24 := by
    have h :=
      Finset.card_sdiff_add_card_eq_card (Finset.subset_univ U)
    simpa [r] using h

  have hLength : l + 2 * s + r = 24 := by
    dsimp [s]
    omega

  have hLS : l ≤ s := by
    dsimp [s]
    omega

  -- The three-block residual used for the source bound l ≥ 6.
  let b3 : Fin l → Finset (Fin 24) :=
    fun i => (P3.equivFin.symm i).1
  have hb3Mem : ∀ i, b3 i ∈ P3 := by
    intro i
    exact (P3.equivFin.symm i).2
  have hb3Short : ∀ i, ShortZero S (b3 i) := by
    intro i
    exact hP3Short (b3 i) (hb3Mem i)
  have hb3Card : ∀ i, (b3 i).card = 3 := by
    intro i
    exact (Finset.mem_filter.mp (hb3Mem i)).2
  have hb3Pair :
      ∀ i j, i ≠ j → Disjoint (b3 i) (b3 j) := by
    intro i j hij
    apply shortZero_disjoint_of_ne hAvoid (hb3Short i) (hb3Short j)
    intro hBlocksEq
    apply hij
    apply (P3.equivFin.symm).injective
    apply Subtype.ext
    exact hBlocksEq

  let rep3 : Fin l → Fin 24 :=
    fun i => Classical.choose (hb3Short i).1
  have hrep3 : ∀ i, rep3 i ∈ b3 i := by
    intro i
    exact Classical.choose_spec (hb3Short i).1
  have hrep3Card : (representativeSet rep3).card = l :=
    representativeSet_card_of_pairwise hb3Pair hrep3

  let A3 : Finset (Fin 24) := Finset.univ \ representativeSet rep3
  have hA3Card : A3.card = 24 - l := by
    dsimp [A3]
    rw [Finset.card_sdiff (Finset.subset_univ _), hrep3Card]
    simp

  have hNoThreeA3 :
      ∀ J : Finset (Fin 24), J ⊆ A3 →
        J.card = 3 → posSum S J ≠ 0 := by
    intro J hJA hJCard hJZero
    have hJShort : ShortZero S J := by
      refine ⟨Finset.card_pos.mp (by omega), by omega, hJZero⟩
    have hJP3 : J ∈ P3 := by
      simp [P3, P, hJShort, hJCard]
    let i : Fin l := P3.equivFin ⟨J, hJP3⟩
    have hi : b3 i = J := by
      simp [b3, i]
    have hrepInJ : rep3 i ∈ J := by
      rw [← hi]
      exact hrep3 i
    have hrepInSet : rep3 i ∈ representativeSet rep3 := by
      simp [representativeSet]
    exact (Finset.mem_sdiff.mp (hJA hrepInJ)).2 hrepInSet

  have hA3Le : A3.card ≤ 18 :=
    card_le_eighteen_of_threeTerm19 h19 S hNoThreeA3
  have hL : 6 ≤ l := by
    rw [hA3Card] at hA3Le
    omega

  -- The all-block residual used for the source bound s ≥ 8.
  let bAll : Fin P.card → Finset (Fin 24) :=
    fun i => (P.equivFin.symm i).1
  have hbAllMem : ∀ i, bAll i ∈ P := by
    intro i
    exact (P.equivFin.symm i).2
  have hbAllShort : ∀ i, ShortZero S (bAll i) := by
    intro i
    exact hPShort (bAll i) (hbAllMem i)
  have hbAllPair :
      ∀ i j, i ≠ j → Disjoint (bAll i) (bAll j) := by
    intro i j hij
    apply shortZero_disjoint_of_ne hAvoid (hbAllShort i) (hbAllShort j)
    intro hBlocksEq
    apply hij
    apply (P.equivFin.symm).injective
    apply Subtype.ext
    exact hBlocksEq

  let repAll : Fin P.card → Fin 24 :=
    fun i => Classical.choose (hbAllShort i).1
  have hrepAll : ∀ i, repAll i ∈ bAll i := by
    intro i
    exact Classical.choose_spec (hbAllShort i).1
  have hrepAllCard : (representativeSet repAll).card = P.card :=
    representativeSet_card_of_pairwise hbAllPair hrepAll

  let AAll : Finset (Fin 24) := Finset.univ \ representativeSet repAll
  have hAAllCard : AAll.card = 24 - P.card := by
    dsimp [AAll]
    rw [Finset.card_sdiff (Finset.subset_univ _), hrepAllCard]
    simp

  have hAAllFree : ShortFreeOn S AAll := by
    intro J hJA hJShort
    have hJP : J ∈ P := by
      simpa [P] using hJShort
    let i : Fin P.card := P.equivFin ⟨J, hJP⟩
    have hi : bAll i = J := by
      simp [bAll, i]
    have hrepInJ : repAll i ∈ J := by
      rw [← hi]
      exact hrepAll i
    have hrepInSet : repAll i ∈ representativeSet repAll := by
      simp [representativeSet]
    exact (Finset.mem_sdiff.mp (hJA hrepInJ)).2 hrepInSet

  have hAAllLe : AAll.card ≤ 16 :=
    card_le_sixteen_of_eta17 hEta S hAAllFree
  have hS : 8 ≤ s := by
    rw [hAAllCard] at hAAllLe
    rw [hPCard] at hAAllLe
    omega

  have hSignature : S039Signature l s r :=
    s039_signature_of_arithmetic hL hS hLS hLength

  -- Enumerate three-blocks first and two-blocks second for the exact S039
  -- certificate interface.
  let b2 : Fin t → Finset (Fin 24) :=
    fun i => (P2.equivFin.symm i).1
  have hb2Mem : ∀ i, b2 i ∈ P2 := by
    intro i
    exact (P2.equivFin.symm i).2
  have hb2Short : ∀ i, ShortZero S (b2 i) := by
    intro i
    exact hP2Short (b2 i) (hb2Mem i)
  have hb2Card : ∀ i, (b2 i).card = 2 := by
    intro i
    exact hP2Card (b2 i) (hb2Mem i)

  let blocks : Fin s → Finset (Fin 24) := by
    dsimp [s]
    exact Fin.addCases b3 b2

  have hBlocksShort : ∀ j, ShortZero S (blocks j) := by
    intro j
    dsimp [s] at j
    refine Fin.addCases (fun i => ?_) (fun i => ?_) j
    · simpa [blocks] using hb3Short i
    · simpa [blocks] using hb2Short i

  have hBlocksCard :
      ∀ j, (blocks j).card = (if j.val < l then 3 else 2) := by
    intro j
    dsimp [s] at j
    refine Fin.addCases (fun i => ?_) (fun i => ?_) j
    · have hi : (Fin.castAdd t i).val < l := i.isLt
      simp [blocks, hb3Card i, hi]
    · have hi : ¬(Fin.natAdd l i).val < l := by simp
      simp [blocks, hb2Card i, hi]

  have hBlocksInj : Function.Injective blocks := by
    intro i j hij
    dsimp [s] at i j
    obtain ⟨i' | i', rfl⟩ := finSumFinEquiv.surjective i
    · obtain ⟨j' | j', rfl⟩ := finSumFinEquiv.surjective j
      · have hEq : b3 i' = b3 j' := by
          simpa [blocks] using hij
        have hij' : i' = j' := by
          apply (P3.equivFin.symm).injective
          apply Subtype.ext
          exact hEq
        subst j'
        rfl
      · have hCardEq := congrArg Finset.card hij
        have hi3 := hb3Card i'
        have hj2 := hb2Card j'
        simp [blocks, hi3, hj2] at hCardEq
    · obtain ⟨j' | j', rfl⟩ := finSumFinEquiv.surjective j
      · have hCardEq := congrArg Finset.card hij
        have hi2 := hb2Card i'
        have hj3 := hb3Card j'
        simp [blocks, hi2, hj3] at hCardEq
      · have hEq : b2 i' = b2 j' := by
          simpa [blocks] using hij
        have hij' : i' = j' := by
          apply (P2.equivFin.symm).injective
          apply Subtype.ext
          exact hEq
        subst j'
        rfl

  have hBlocksMem : ∀ j, blocks j ∈ P := by
    intro j
    dsimp [s] at j
    refine Fin.addCases (fun i => ?_) (fun i => ?_) j
    · have h := (Finset.mem_filter.mp (hb3Mem i)).1
      simpa [blocks] using h
    · have h := (Finset.mem_filter.mp (hb2Mem i)).1
      simpa [blocks] using h

  have hBlocksPair :
      ∀ i j, i ≠ j → Disjoint (blocks i) (blocks j) := by
    intro i j hij
    apply shortZero_disjoint_of_ne hAvoid (hBlocksShort i) (hBlocksShort j)
    intro hEq
    exact hij (hBlocksInj hEq)

  have hBlocksSurj :
      ∀ B ∈ P, ∃ j : Fin s, blocks j = B := by
    intro B hBP
    by_cases hThree : B.card = 3
    · have hBP3 : B ∈ P3 := by
        simp [P3, hBP, hThree]
      let i : Fin l := P3.equivFin ⟨B, hBP3⟩
      refine ⟨Fin.castAdd t i, ?_⟩
      simp [blocks, s, b3, i]
    · have hBP2 : B ∈ P2 := by
        simp [P2, hBP, hThree]
      let i : Fin t := P2.equivFin ⟨B, hBP2⟩
      refine ⟨Fin.natAdd l i, ?_⟩
      simp [blocks, s, b2, i]

  have hBlockUnion : blockUnion blocks = U := by
    ext x
    constructor
    · intro hx
      obtain ⟨j, hj⟩ := Finset.mem_biUnion.mp hx
      have hBP : blocks j ∈ P := hBlocksMem j
      exact Finset.mem_biUnion.mpr ⟨blocks j, hBP, hj.2⟩
    · intro hx
      obtain ⟨B, hB⟩ := Finset.mem_biUnion.mp hx
      obtain ⟨j, hj⟩ := hBlocksSurj B hB.1
      apply Finset.mem_biUnion.mpr
      refine ⟨j, Finset.mem_univ j, ?_⟩
      simpa [hj] using hB.2

  have hCertificateResidual :
      ∀ rep : Fin s → Fin 24,
        (∀ j, rep j ∈ blocks j) →
        ShortFreeOn S (Finset.univ \ representativeSet rep) := by
    intro rep hrep
    intro J hJSub hJShort
    have hJP : J ∈ P := by
      simpa [P] using hJShort
    obtain ⟨j, hj⟩ := hBlocksSurj J hJP
    have hrepInJ : rep j ∈ J := by
      rw [← hj]
      exact hrep j
    have hrepInSet : rep j ∈ representativeSet rep := by
      simp [representativeSet]
    exact (Finset.mem_sdiff.mp (hJSub hrepInJ)).2 hrepInSet

  refine ⟨{
    s := s
    l := l
    r := r
    signature := hSignature
    blocks := blocks
    block_shortZero := hBlocksShort
    pairwise_disjoint := hBlocksPair
    block_card := hBlocksCard
    remainder_card := ?_
    every_representative_residual_shortFree := hCertificateResidual
  }⟩
  simpa [r, hBlockUnion]

end InverseZeroSum.Candidate3
