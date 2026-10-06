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

/-- The linear form defining one of the 13 affine-plane directions. -/
def planeValueT (d : Fin 13) (x : F3T) : Fin 3 :=
  let k := d.val
  if h9 : k < 9 then
    let a : Fin 3 := ⟨k / 3, by omega⟩
    let b : Fin 3 := ⟨k % 3, Nat.mod_lt _ (by omega)⟩
    x.1 + a * x.2.1 + b * x.2.2
  else if h12 : k < 12 then
    let b : Fin 3 := ⟨k - 9, by omega⟩
    x.2.1 + b * x.2.2
  else
    x.2.2

/-- A computable Boolean form of the explicit affine-plane equation. -/
def onPlaneTB (p : PlaneIdx) (x : F3T) : Bool :=
  planeValueT p.1 x == p.2

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


/-- A set in the tuple model is a cap when no three distinct points sum to zero. -/
def IsCapT (A : Finset F3T) : Prop :=
  ∀ a ∈ A, ∀ b ∈ A, ∀ c ∈ A,
    a ≠ b → a ≠ c → b ≠ c → a + b + c ≠ 0

/-- A cap meets every affine plane in at most four points. -/
theorem cap_inter_plane_le_four {A : Finset F3T} (hA : IsCapT A) (p : PlaneIdx) :
    (A ∩ planeSetT p).card ≤ 4 := by
  classical
  let Q : Finset PlaneCoord :=
    Finset.univ.filter (fun q => planePointT p q ∈ A)
  have hQcap :
      ∀ a ∈ Q, ∀ b ∈ Q, ∀ c ∈ Q,
        a ≠ b → a ≠ c → b ≠ c → a + b + c ≠ 0 := by
    intro a ha b hb c hc hab hac hbc hzero
    have haA : planePointT p a ∈ A := (Finset.mem_filter.mp ha).2
    have hbA : planePointT p b ∈ A := (Finset.mem_filter.mp hb).2
    have hcA : planePointT p c ∈ A := (Finset.mem_filter.mp hc).2
    have hab' : planePointT p a ≠ planePointT p b :=
      (planePointT_injective p).ne hab
    have hac' : planePointT p a ≠ planePointT p c :=
      (planePointT_injective p).ne hac
    have hbc' : planePointT p b ≠ planePointT p c :=
      (planePointT_injective p).ne hbc
    exact (hA _ haA _ hbA _ hcA hab' hac' hbc')
      (planePointT_sum_zero_of_coord p a b c hzero)
  have hImage :
      Q.image (planePointT p) = A ∩ planeSetT p := by
    ext x
    constructor
    · intro hx
      obtain ⟨q, hqQ, rfl⟩ := Finset.mem_image.mp hx
      have hqA : planePointT p q ∈ A := (Finset.mem_filter.mp hqQ).2
      refine Finset.mem_inter.mpr ⟨hqA, ?_⟩
      rw [planeSetT_eq_image p]
      exact Finset.mem_image.mpr ⟨q, Finset.mem_univ q, rfl⟩
    · intro hx
      have hxA : x ∈ A := (Finset.mem_inter.mp hx).1
      have hxP : x ∈ planeSetT p := (Finset.mem_inter.mp hx).2
      rw [planeSetT_eq_image p] at hxP
      obtain ⟨q, _hq, rfl⟩ := Finset.mem_image.mp hxP
      exact Finset.mem_image.mpr
        ⟨q, Finset.mem_filter.mpr ⟨Finset.mem_univ q, hxA⟩, rfl⟩
  calc
    (A ∩ planeSetT p).card = (Q.image (planePointT p)).card := by
      rw [hImage]
    _ = Q.card := Finset.card_image_of_injective Q (planePointT_injective p)
    _ ≤ 4 := planeCoord_cap_le_four Q hQcap


/-- The third coordinate used for the fixed three-plane partition of affine space. -/
def thirdCoordT (x : F3T) : Fin 3 := x.2.2

/-- The horizontal plane whose third coordinate is \`c\`. -/
def horizontalPlaneT (c : Fin 3) : PlaneIdx :=
  (⟨12, by omega⟩, c)

/-- Membership in the fixed horizontal plane is exactly third-coordinate equality. -/
theorem on_horizontalPlaneT_iff (c : Fin 3) (x : F3T) :
    onPlaneTB (horizontalPlaneT c) x = true ↔ thirdCoordT x = c := by
  norm_num [onPlaneTB, horizontalPlaneT, thirdCoordT, planeValueT]

/-- One fiber of the fixed horizontal three-plane partition. -/
def horizontalSliceT (A : Finset F3T) (c : Fin 3) : Finset F3T :=
  A.filter (fun x => thirdCoordT x = c)

theorem horizontalSliceT_eq_inter (A : Finset F3T) (c : Fin 3) :
    horizontalSliceT A c = A ∩ planeSetT (horizontalPlaneT c) := by
  classical
  ext x
  simp [horizontalSliceT, planeSetT, on_horizontalPlaneT_iff]

theorem horizontalSliceT_card_le_four {A : Finset F3T} (hA : IsCapT A) (c : Fin 3) :
    (horizontalSliceT A c).card ≤ 4 := by
  rw [horizontalSliceT_eq_inter]
  exact cap_inter_plane_le_four hA (horizontalPlaneT c)

theorem card_eq_sum_horizontalSliceT (A : Finset F3T) :
    A.card = ∑ c : Fin 3, (horizontalSliceT A c).card := by
  classical
  simpa [horizontalSliceT, thirdCoordT] using
    (Finset.card_eq_sum_card_fiberwise
      (f := thirdCoordT) (s := A) (t := (Finset.univ : Finset (Fin 3)))
      (fun x _hx => Finset.mem_univ (thirdCoordT x)))

/-- Every two distinct tuple-model points lie on exactly four affine planes. -/
theorem pair_plane_countT :
    ∀ x y : F3T, x ≠ y →
      ((Finset.univ : Finset PlaneIdx).filter
        (fun p => onPlaneTB p x = true ∧ onPlaneTB p y = true)).card = 4 := by
  set_option maxRecDepth 10000 in
  set_option maxHeartbeats 1000000 in
    decide

/-- The explicit direction forms are additive. -/
theorem planeValueT_sub :
    ∀ d : Fin 13, ∀ x y : F3T,
      planeValueT d (x - y) = planeValueT d x - planeValueT d y := by
  decide

/--
Translation-reduced finite incidence check: for every nonzero direction vector
and every relative third point, one of the 13 plane normals annihilates both.
This checks only 26*27 relative configurations.
-/
theorem relative_plane_directionT :
    ∀ d e : F3T, d ≠ 0 →
      ∃ n : Fin 13, planeValueT n d = 0 ∧ planeValueT n e = 0 := by
  set_option maxRecDepth 10000 in
  set_option maxHeartbeats 800000 in
    decide

/--
The four affine planes through a line cover the whole three-dimensional affine
space.  This theorem reconstructs the affine constant from the
translation-reduced direction check.
-/
theorem pair_planes_coverT (x y z : F3T) (hxy : x ≠ y) :
    ∃ p : PlaneIdx,
      onPlaneTB p x = true ∧ onPlaneTB p y = true ∧ onPlaneTB p z = true := by
  have hdiff : y - x ≠ 0 := sub_ne_zero.mpr hxy.symm
  obtain ⟨n, hnyx, hnzx⟩ :=
    relative_plane_directionT (y - x) (z - x) hdiff
  have hny : planeValueT n y = planeValueT n x := by
    have hsub := planeValueT_sub n y x
    rw [hsub] at hnyx
    exact sub_eq_zero.mp hnyx
  have hnz : planeValueT n z = planeValueT n x := by
    have hsub := planeValueT_sub n z x
    rw [hsub] at hnzx
    exact sub_eq_zero.mp hnzx
  refine ⟨(n, planeValueT n x), ?_⟩
  simp [onPlaneTB, hny, hnz]


/-- There is no ten-point cap in the affine space \`F_3^3\`. -/
theorem no_ten_capT {A : Finset F3T} (hA : IsCapT A) (hcard : A.card = 10) : False := by
  classical
  have hSlice4 : ∀ c : Fin 3, (horizontalSliceT A c).card ≤ 4 :=
    fun c => horizontalSliceT_card_le_four hA c
  obtain ⟨c, _hc_mem, hc_lt⟩ :=
    Finset.exists_card_fiber_lt_of_card_lt_mul
      (f := thirdCoordT) (s := A) (t := (Finset.univ : Finset (Fin 3))) (n := 4)
      (by simp [hcard])
  have hc_lt4 : (horizontalSliceT A c).card < 4 := by
    simpa [horizontalSliceT, thirdCoordT] using hc_lt
  have hc_le3 : (horizontalSliceT A c).card ≤ 3 := by omega
  have hc_ge2 : 2 ≤ (horizontalSliceT A c).card := by
    by_contra hnot
    have hc_le1 : (horizontalSliceT A c).card ≤ 1 := by omega
    have hrest :
        (∑ d ∈ (Finset.univ : Finset (Fin 3)).erase c,
          (horizontalSliceT A d).card) ≤ 8 := by
      calc
        (∑ d ∈ (Finset.univ : Finset (Fin 3)).erase c,
            (horizontalSliceT A d).card)
            ≤ ∑ _d ∈ (Finset.univ : Finset (Fin 3)).erase c, 4 := by
              exact Finset.sum_le_sum (fun d _hd => hSlice4 d)
        _ = 8 := by simp
    have hdecomp :
        A.card =
          (∑ d ∈ (Finset.univ : Finset (Fin 3)).erase c,
            (horizontalSliceT A d).card) +
          (horizontalSliceT A c).card := by
      calc
        A.card = ∑ d ∈ (Finset.univ : Finset (Fin 3)),
            (horizontalSliceT A d).card := by
              simpa using card_eq_sum_horizontalSliceT A
        _ =
            (∑ d ∈ (Finset.univ : Finset (Fin 3)).erase c,
              (horizontalSliceT A d).card) +
            (horizontalSliceT A c).card :=
              (Finset.sum_erase_add (Finset.univ : Finset (Fin 3))
                (fun d => (horizontalSliceT A d).card) (Finset.mem_univ c)).symm
    rw [hcard] at hdecomp
    omega
  obtain ⟨a, b, haS, hbS, hab⟩ :=
    Finset.one_lt_card_iff.mp (show 1 < (horizontalSliceT A c).card by omega)
  have haA : a ∈ A := (Finset.mem_filter.mp haS).1
  have hbA : b ∈ A := (Finset.mem_filter.mp hbS).1
  let H : PlaneIdx := horizontalPlaneT c
  have haH : a ∈ planeSetT H := by
    have hmem : a ∈ A ∩ planeSetT (horizontalPlaneT c) := by
      rw [← horizontalSliceT_eq_inter A c]
      exact haS
    simpa [H] using (Finset.mem_inter.mp hmem).2
  have hbH : b ∈ planeSetT H := by
    have hmem : b ∈ A ∩ planeSetT (horizontalPlaneT c) := by
      rw [← horizontalSliceT_eq_inter A c]
      exact hbS
    simpa [H] using (Finset.mem_inter.mp hmem).2
  let P : Finset F3T := {a, b}
  have hPcard : P.card = 2 := by simp [P, hab]
  have hPsubA : P ⊆ A := by
    intro x hx
    simp only [P, Finset.mem_insert, Finset.mem_singleton] at hx
    rcases hx with rfl | rfl
    · exact haA
    · exact hbA
  let Rset : Finset F3T := A \ P
  have hRcard : Rset.card = 8 := by
    dsimp [Rset]
    rw [Finset.card_sdiff hPsubA, hcard, hPcard]
  let T : Finset PlaneIdx :=
    Finset.univ.filter
      (fun p => onPlaneTB p a = true ∧ onPlaneTB p b = true)
  have hTcard : T.card = 4 := by
    simpa [T] using pair_plane_countT a b hab
  have hHa : onPlaneTB H a = true := (Finset.mem_filter.mp haH).2
  have hHb : onPlaneTB H b = true := (Finset.mem_filter.mp hbH).2
  have hHT : H ∈ T := by
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ H, hHa, hHb⟩
  have hRplane :
      ∀ p ∈ T, (Rset ∩ planeSetT p).card ≤ 2 := by
    intro p hp
    have hpab := (Finset.mem_filter.mp hp).2
    have haP : a ∈ planeSetT p :=
      Finset.mem_filter.mpr ⟨Finset.mem_univ a, hpab.1⟩
    have hbP : b ∈ planeSetT p :=
      Finset.mem_filter.mpr ⟨Finset.mem_univ b, hpab.2⟩
    have hPsub : P ⊆ A ∩ planeSetT p := by
      intro x hx
      have hx' : x = a ∨ x = b := by simpa [P] using hx
      rcases hx' with rfl | rfl
      · exact Finset.mem_inter.mpr ⟨haA, haP⟩
      · exact Finset.mem_inter.mpr ⟨hbA, hbP⟩
    have heq :
        Rset ∩ planeSetT p = (A ∩ planeSetT p) \ P := by
      ext x
      simp [Rset, P, and_assoc, and_left_comm, and_comm]
    have h4p := cap_inter_plane_le_four hA p
    rw [heq, Finset.card_sdiff hPsub, hPcard]
    omega
  have hRH : (Rset ∩ planeSetT H).card ≤ 1 := by
    have hPsubH : P ⊆ A ∩ planeSetT H := by
      intro x hx
      have hx' : x = a ∨ x = b := by simpa [P] using hx
      rcases hx' with rfl | rfl
      · exact Finset.mem_inter.mpr ⟨haA, haH⟩
      · exact Finset.mem_inter.mpr ⟨hbA, hbH⟩
    have heqH :
        Rset ∩ planeSetT H = (A ∩ planeSetT H) \ P := by
      ext x
      simp [Rset, P, and_assoc, and_left_comm, and_comm]
    have hAH3 : (A ∩ planeSetT H).card ≤ 3 := by
      have h := hc_le3
      rw [horizontalSliceT_eq_inter A c] at h
      simpa [H] using h
    rw [heqH, Finset.card_sdiff hPsubH, hPcard]
    omega
  have hRsubset :
      Rset ⊆ T.biUnion (fun p => Rset ∩ planeSetT p) := by
    intro z hz
    obtain ⟨p, hpa, hpb, hpz⟩ := pair_planes_coverT a b z hab
    exact Finset.mem_biUnion.mpr
      ⟨p,
        Finset.mem_filter.mpr ⟨Finset.mem_univ p, hpa, hpb⟩,
        Finset.mem_inter.mpr
          ⟨hz, Finset.mem_filter.mpr ⟨Finset.mem_univ z, hpz⟩⟩⟩
  have hRle :
      Rset.card ≤ ∑ p ∈ T, (Rset ∩ planeSetT p).card :=
    (Finset.card_le_card hRsubset).trans Finset.card_biUnion_le
  have hTEraseCard : (T.erase H).card = 3 := by
    rw [Finset.card_erase_of_mem hHT, hTcard]
  have hOther :
      (∑ p ∈ T.erase H, (Rset ∩ planeSetT p).card) ≤ 6 := by
    calc
      (∑ p ∈ T.erase H, (Rset ∩ planeSetT p).card)
          ≤ ∑ _p ∈ T.erase H, 2 := by
            exact Finset.sum_le_sum
              (fun p hp => hRplane p (Finset.mem_of_mem_erase hp))
      _ = 6 := by simp [hTEraseCard]
  have hsumSplit :
      (∑ p ∈ T, (Rset ∩ planeSetT p).card) =
        (∑ p ∈ T.erase H, (Rset ∩ planeSetT p).card) +
          (Rset ∩ planeSetT H).card := by
    exact (Finset.sum_erase_add T
      (fun p => (Rset ∩ planeSetT p).card) hHT).symm
  have hsumLe :
      (∑ p ∈ T, (Rset ∩ planeSetT p).card) ≤ 7 := by
    rw [hsumSplit]
    omega
  omega


/-- Every cap in \`F_3^3\` has at most nine points. -/
theorem capT_card_le_nine {A : Finset F3T} (hA : IsCapT A) : A.card ≤ 9 := by
  by_contra hnot
  have h10 : 10 ≤ A.card := by omega
  obtain ⟨B, hBA, hBcard⟩ :=
    Finset.exists_subset_card_eq (s := A) (n := 10) h10
  have hB : IsCapT B := by
    intro a ha b hb c hc hab hac hbc
    exact hA a (hBA ha) b (hBA hb) c (hBA hc) hab hac hbc
  exact no_ten_capT hB hBcard

/--
Kernel-checked realization of the exact S039 length-19 source interface.
The only finite supporting checks are the explicit affine-plane checks above;
the numerical threshold is not postulated.
-/
theorem threeTerm19Input : ThreeTerm19Input := by
  classical
  intro R
  by_contra hcontra
  have hNo :
      ∀ I : Finset (Fin 19), I.card = 3 → posSum R I ≠ 0 := by
    intro I hIcard hzero
    exact hcontra ⟨I, hIcard, hzero⟩
  let f : Fin 19 → F3T :=
    fun i => finiteModelEquiv (R i : G)
  let support : Finset F3T :=
    (Finset.univ : Finset (Fin 19)).image f
  have hCap : IsCapT support := by
    intro x hx y hy z hz hxy hxz hyz hxyz
    have hx' : x ∈ (Finset.univ : Finset (Fin 19)).image f := by
      simpa [support] using hx
    obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hx'
    have hy' : y ∈ (Finset.univ : Finset (Fin 19)).image f := by
      simpa [support] using hy
    obtain ⟨j, _hj, rfl⟩ := Finset.mem_image.mp hy'
    have hz' : z ∈ (Finset.univ : Finset (Fin 19)).image f := by
      simpa [support] using hz
    obtain ⟨k, _hk, rfl⟩ := Finset.mem_image.mp hz'
    have hij : i ≠ j := by
      intro hij
      subst j
      exact hxy rfl
    have hik : i ≠ k := by
      intro hik
      subst k
      exact hxz rfl
    have hjk : j ≠ k := by
      intro hjk
      subst k
      exact hyz rfl
    have hGsum : (R i : G) + (R j : G) + (R k : G) = 0 := by
      apply finiteModelEquiv.injective
      simpa [f] using hxyz
    have hIcard : ({i, j, k} : Finset (Fin 19)).card = 3 := by
      simp [hij, hik, hjk]
    have hpos : posSum R ({i, j, k} : Finset (Fin 19)) = 0 := by
      simpa [posSum, hij, hik, hjk, add_assoc] using hGsum
    exact (hNo _ hIcard) hpos
  have hFiber :
      ∀ x ∈ support,
        ((Finset.univ : Finset (Fin 19)).filter (fun i => f i = x)).card ≤ 2 := by
    intro x _hx
    let fiber : Finset (Fin 19) :=
      (Finset.univ : Finset (Fin 19)).filter (fun i => f i = x)
    have hfiber_eq :
        fiber =
          (Finset.univ : Finset (Fin 19)).filter (fun i => f i = x) := rfl
    rw [← hfiber_eq]
    by_contra hle
    have h3 : 3 ≤ fiber.card := by omega
    obtain ⟨I, hI_sub, hIcard⟩ :=
      Finset.exists_subset_card_eq (s := fiber) (n := 3) h3
    have hconst :
        ∀ i ∈ I, (R i : G) = finiteModelEquiv.symm x := by
      intro i hi
      have hiFiber : i ∈ fiber := hI_sub hi
      have hfix : f i = x := (Finset.mem_filter.mp hiFiber).2
      have hback := congrArg finiteModelEquiv.symm hfix
      simpa [f] using hback
    have hsum : posSum R I = 0 := by
      unfold posSum
      calc
        (∑ i ∈ I, (R i : G)) =
            ∑ _i ∈ I, finiteModelEquiv.symm x := by
              exact Finset.sum_congr rfl (fun i hi => hconst i hi)
        _ = I.card • finiteModelEquiv.symm x := by simp
        _ = 0 := by
          rw [hIcard]
          simpa using
            ZModModule.char_nsmul_eq_zero 3 (finiteModelEquiv.symm x)
    exact (hNo I hIcard) hsum
  have hMaps :
      ∀ i ∈ (Finset.univ : Finset (Fin 19)), f i ∈ support := by
    intro i hi
    change f i ∈ (Finset.univ : Finset (Fin 19)).image f
    exact Finset.mem_image.mpr ⟨i, hi, rfl⟩
  have hBound :=
    Finset.card_le_mul_card_image_of_maps_to hMaps 2 hFiber
  have hBound' : 19 ≤ 2 * support.card := by
    simpa using hBound
  have hSupport10 : 10 ≤ support.card := by omega
  have hSupport9 : support.card ≤ 9 := capT_card_le_nine hCap
  omega

/--
Kernel-checked realization of the exact ordinary eta(C_3^3)=17 source
interface.  A hypothetical short-free length-17 sequence has support which is
a cap.  Since it also has no two-term zero sum, adjoining the origin preserves
the cap property; S045's cap bound then forces support size at most eight.
Every support value has multiplicity at most two, contradicting 17 positions.
-/
theorem eta17Input : Eta17Input := by
  classical
  intro R
  by_contra hcontra
  have hFree : ShortFree R := by
    intro I hI
    exact hcontra ⟨I, hI⟩
  let f : Fin 17 → F3T :=
    fun i => finiteModelEquiv (R i : G)
  let support : Finset F3T :=
    (Finset.univ : Finset (Fin 17)).image f

  have hZeroNot : (0 : F3T) ∉ support := by
    intro h0
    have h0' :
        (0 : F3T) ∈ (Finset.univ : Finset (Fin 17)).image f := by
      simpa [support] using h0
    obtain ⟨i, _hi, hfi⟩ := Finset.mem_image.mp h0'
    have hG0 : (R i : G) = 0 := by
      apply finiteModelEquiv.injective
      simpa [f] using hfi
    exact (R i).property hG0

  have hCap : IsCapT support := by
    intro x hx y hy z hz hxy hxz hyz hxyz
    have hx' : x ∈ (Finset.univ : Finset (Fin 17)).image f := by
      simpa [support] using hx
    obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hx'
    have hy' : y ∈ (Finset.univ : Finset (Fin 17)).image f := by
      simpa [support] using hy
    obtain ⟨j, _hj, rfl⟩ := Finset.mem_image.mp hy'
    have hz' : z ∈ (Finset.univ : Finset (Fin 17)).image f := by
      simpa [support] using hz
    obtain ⟨k, _hk, rfl⟩ := Finset.mem_image.mp hz'
    have hij : i ≠ j := by
      intro hij
      subst j
      exact hxy rfl
    have hik : i ≠ k := by
      intro hik
      subst k
      exact hxz rfl
    have hjk : j ≠ k := by
      intro hjk
      subst k
      exact hyz rfl
    have hGsum : (R i : G) + (R j : G) + (R k : G) = 0 := by
      apply finiteModelEquiv.injective
      simpa [f] using hxyz
    have hIcard : ({i, j, k} : Finset (Fin 17)).card = 3 := by
      simp [hij, hik, hjk]
    have hpos : posSum R ({i, j, k} : Finset (Fin 17)) = 0 := by
      simpa [posSum, hij, hik, hjk, add_assoc] using hGsum
    exact (hFree _) ⟨Finset.card_pos.mp (by omega), by omega, hpos⟩

  have hNoPair :
      ∀ x ∈ support, ∀ y ∈ support, x + y ≠ 0 := by
    have hSelf :
        ∀ x : F3T, x ≠ 0 → x + x ≠ 0 := by
      decide
    intro x hx y hy hxy
    have hx' : x ∈ (Finset.univ : Finset (Fin 17)).image f := by
      simpa [support] using hx
    obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hx'
    have hy' : y ∈ (Finset.univ : Finset (Fin 17)).image f := by
      simpa [support] using hy
    obtain ⟨j, _hj, rfl⟩ := Finset.mem_image.mp hy'
    have hfi0 : f i ≠ 0 := by
      intro h0
      have hz : (0 : F3T) ∈ support := by
        change (0 : F3T) ∈ (Finset.univ : Finset (Fin 17)).image f
        exact Finset.mem_image.mpr ⟨i, Finset.mem_univ i, h0⟩
      exact hZeroNot hz
    have hij : i ≠ j := by
      intro hij
      subst j
      exact (hSelf (f i) hfi0) hxy
    have hGsum : (R i : G) + (R j : G) = 0 := by
      apply finiteModelEquiv.injective
      simpa [f] using hxy
    have hIcard : ({i, j} : Finset (Fin 17)).card = 2 := by
      simp [hij]
    have hpos : posSum R ({i, j} : Finset (Fin 17)) = 0 := by
      simpa [posSum, hij, add_comm] using hGsum
    exact (hFree _) ⟨Finset.card_pos.mp (by omega), by omega, hpos⟩

  let cap0 : Finset F3T := insert 0 support
  have hCap0 : IsCapT cap0 := by
    intro a ha b hb c hc hab hac hbc hsum
    simp only [cap0, Finset.mem_insert] at ha hb hc
    rcases ha with rfl | ha
    · have hbS : b ∈ support := by
        rcases hb with hb0 | hbS
        · exact False.elim (hab hb0.symm)
        · exact hbS
      have hcS : c ∈ support := by
        rcases hc with hc0 | hcS
        · exact False.elim (hac hc0.symm)
        · exact hcS
      apply hNoPair b hbS c hcS
      simpa using hsum
    · rcases hb with rfl | hb
      · have hcS : c ∈ support := by
          rcases hc with hc0 | hcS
          · exact False.elim (hbc hc0.symm)
          · exact hcS
        apply hNoPair a ha c hcS
        simpa using hsum
      · rcases hc with rfl | hc
        · apply hNoPair a ha b hb
          simpa [add_assoc] using hsum
        · exact hCap a ha b hb c hc hab hac hbc hsum

  have hCap0Card : cap0.card ≤ 9 :=
    capT_card_le_nine hCap0
  have hSupportLe : support.card ≤ 8 := by
    have hCard : cap0.card = support.card + 1 := by
      simp [cap0, hZeroNot, Nat.add_comm]
    rw [hCard] at hCap0Card
    omega

  have hFiber :
      ∀ x ∈ support,
        ((Finset.univ : Finset (Fin 17)).filter (fun i => f i = x)).card ≤ 2 := by
    intro x _hx
    let fiber : Finset (Fin 17) :=
      (Finset.univ : Finset (Fin 17)).filter (fun i => f i = x)
    have hfiber_eq :
        fiber =
          (Finset.univ : Finset (Fin 17)).filter (fun i => f i = x) := rfl
    rw [← hfiber_eq]
    by_contra hle
    have h3 : 3 ≤ fiber.card := by omega
    obtain ⟨I, hI_sub, hIcard⟩ :=
      Finset.exists_subset_card_eq (s := fiber) (n := 3) h3
    have hconst :
        ∀ i ∈ I, (R i : G) = finiteModelEquiv.symm x := by
      intro i hi
      have hiFiber : i ∈ fiber := hI_sub hi
      have hfix : f i = x := (Finset.mem_filter.mp hiFiber).2
      have hback := congrArg finiteModelEquiv.symm hfix
      simpa [f] using hback
    have hsum : posSum R I = 0 := by
      unfold posSum
      calc
        (∑ i ∈ I, (R i : G)) =
            ∑ _i ∈ I, finiteModelEquiv.symm x := by
              exact Finset.sum_congr rfl (fun i hi => hconst i hi)
        _ = I.card • finiteModelEquiv.symm x := by simp
        _ = 0 := by
          rw [hIcard]
          simpa using
            ZModModule.char_nsmul_eq_zero 3 (finiteModelEquiv.symm x)
    exact (hFree I) ⟨Finset.card_pos.mp (by omega), by omega, hsum⟩

  have hMaps :
      ∀ i ∈ (Finset.univ : Finset (Fin 17)), f i ∈ support := by
    intro i hi
    change f i ∈ (Finset.univ : Finset (Fin 17)).image f
    exact Finset.mem_image.mpr ⟨i, hi, rfl⟩
  have hBound :=
    Finset.card_le_mul_card_image_of_maps_to hMaps 2 hFiber
  have hBound' : 17 ≤ 2 * support.card := by
    simpa using hBound
  omega

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

/--
S047/D46-01 closes the S039 packing input from the already kernel-checked
conditional packing theorem and its two closed threshold inputs.
-/
theorem s039PackingInput : S039PackingInput :=
  s039PackingInput_of_thresholds threeTerm19Input eta17Input


/-! ### S048: the length-16 short-free total-sum interface -/

def e1T : F3T := (1, 0, 0)
def e2T : F3T := (0, 1, 0)
def e3T : F3T := (0, 0, 1)

def basisSupportT : Finset F3T := {e1T, e2T, e3T}
def basisSeedT : Finset F3T := insert 0 basisSupportT

theorem isCapT_of_subset {A B : Finset F3T} (hB : IsCapT B) (hAB : A ⊆ B) :
    IsCapT A := by
  intro a ha b hb c hc hab hac hbc
  exact hB a (hAB ha) b (hAB hb) c (hAB hc) hab hac hbc

/--
The finite set of forbidden ordered triples in a proposed tuple-model cap.
Unlike `IsCapT`, this is an explicitly computable finite object.
-/
def capViolationsT (A : Finset F3T) : Finset ((F3T × F3T) × F3T) :=
  ((A.product A).product A).filter (fun q =>
    q.1.1 ≠ q.1.2 ∧ q.1.1 ≠ q.2 ∧ q.1.2 ≠ q.2 ∧
      q.1.1 + q.1.2 + q.2 = 0)

theorem capViolationsT_eq_empty_iff (A : Finset F3T) :
    capViolationsT A = ∅ ↔ IsCapT A := by
  constructor
  · intro hempty a ha b hb c hc hab hac hbc hsum
    have hmem : ((a, b), c) ∈ capViolationsT A := by
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_product.mpr
        ⟨Finset.mem_product.mpr ⟨ha, hb⟩, hc⟩, ?_⟩
      exact ⟨hab, hac, hbc, hsum⟩
    rw [hempty] at hmem
    simpa using hmem
  · intro hCap
    ext q
    constructor
    · intro hq
      rcases q with ⟨⟨a, b⟩, c⟩
      have hf := Finset.mem_filter.mp hq
      have hprod := Finset.mem_product.mp hf.1
      have habmem := Finset.mem_product.mp hprod.1
      exact False.elim ((hCap a habmem.1 b habmem.2 c hprod.2
        hf.2.1 hf.2.2.1 hf.2.2.2.1) hf.2.2.2.2)
    · intro hq
      simpa using hq


/--
A faster finite cap certificate: a pair is violating when its forced third
point `-(a+b)` is a distinct member of the same set.  This reduces each cap
check from ordered triples to ordered pairs.
-/
def capPairViolationsT (A : Finset F3T) : Finset (F3T × F3T) :=
  (A.product A).filter (fun q =>
    q.1 ≠ q.2 ∧
      (-(q.1 + q.2) ∈ A) ∧
      (-(q.1 + q.2) ≠ q.1) ∧
      (-(q.1 + q.2) ≠ q.2))

theorem capPairViolationsT_eq_empty_iff (A : Finset F3T) :
    capPairViolationsT A = ∅ ↔ IsCapT A := by
  constructor
  · intro hempty a ha b hb c hc hab hac hbc hsum
    have hz : -(a + b) = c := by
      rw [neg_eq_iff_add_eq_zero]
      simpa [add_assoc] using hsum
    have hmem : (a, b) ∈ capPairViolationsT A := by
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_product.mpr ⟨ha, hb⟩, hab, ?_⟩
      refine ⟨?_, ?_, ?_⟩
      · simpa [hz] using hc
      · simpa [hz] using hac.symm
      · simpa [hz] using hbc.symm
    rw [hempty] at hmem
    simpa using hmem
  · intro hCap
    ext q
    constructor
    · intro hq
      rcases q with ⟨a, b⟩
      have hf := Finset.mem_filter.mp hq
      have hprod := Finset.mem_product.mp hf.1
      have hsum : a + b + (-(a + b)) = 0 := by
        simp
      exact False.elim
        ((hCap a hprod.1 b hprod.2 (-(a + b)) hf.2.2.1
          hf.2.1 hf.2.2.2.1.symm hf.2.2.2.2.symm) hsum)
    · intro hq
      simpa using hq

/--
Candidates that can extend the normalized origin-plus-basis seed while
preserving the cap condition. The predicate is phrased through the finite
violation set so kernel reduction has an explicit computable trust boundary.
-/
def normalizedCandidateSetT : Finset F3T :=
  Finset.univ.filter
    (fun x => x ∉ basisSeedT ∧ capPairViolationsT (insert x basisSeedT) = ∅)

@[simp] theorem normalizedCandidateSetT_card :
    normalizedCandidateSetT.card = 17 := by
  decide

abbrev NormalizedCandidateT := {x : F3T // x ∈ normalizedCandidateSetT}

def normalizedCandidateVal : NormalizedCandidateT ↪ F3T where
  toFun := Subtype.val
  inj' := Subtype.val_injective

def normalizedCapT (B : Finset NormalizedCandidateT) : Finset F3T :=
  basisSeedT ∪ B.map normalizedCandidateVal

/-- The 6,188 five-element subsets of the 17 normalized candidates. -/
def normalizedFiveSetsT : Finset (Finset NormalizedCandidateT) :=
  normalizedCandidateSetT.attach.powersetCard 5

/--
A normalized five-set is bad when it completes the seed to a cap but the
resulting nine-point cap has nonzero total sum.
-/
def normalizedBadCompletionsT : Finset (Finset NormalizedCandidateT) :=
  normalizedFiveSetsT.filter (fun B =>
    capPairViolationsT (normalizedCapT B) = ∅ ∧
      (∑ x ∈ normalizedCapT B, x) ≠ 0)

/--
The explicit normalized bad-completion set is empty.  This ordinary kernel
reduction ranges only over the 6,188 five-subsets of the 17 candidate points.
-/
set_option maxRecDepth 10000 in
set_option maxHeartbeats 50000000 in
@[simp] theorem normalizedBadCompletionsT_empty :
    normalizedBadCompletionsT = ∅ := by
  decide

theorem normalized_capT_sum_zero
    (B : Finset NormalizedCandidateT)
    (hcard : B.card = 5)
    (hcap : capPairViolationsT (normalizedCapT B) = ∅) :
    (∑ x ∈ normalizedCapT B, x) = 0 := by
  by_contra hsum
  have hsub : B ⊆ normalizedCandidateSetT.attach := by
    intro x hx
    simp
  have hfive : B ∈ normalizedFiveSetsT := by
    exact Finset.mem_powersetCard.mpr ⟨hsub, hcard⟩
  have hbad : B ∈ normalizedBadCompletionsT :=
    Finset.mem_filter.mpr ⟨hfive, hcap, hsum⟩
  rw [normalizedBadCompletionsT_empty] at hbad
  simpa using hbad

def basisBuildT (a b c u : F3T) : F3T :=
  (u.1 * a.1 + u.2.1 * b.1 + u.2.2 * c.1,
   u.1 * a.2.1 + u.2.1 * b.2.1 + u.2.2 * c.2.1,
   u.1 * a.2.2 + u.2.1 * b.2.2 + u.2.2 * c.2.2)

def basisBuildHomT (a b c : F3T) : F3T →+ F3T where
  toFun := basisBuildT a b c
  map_zero' := by
    simp [basisBuildT]
  map_add' x y := by
    apply Prod.ext
    · simp [basisBuildT]
      ring
    · apply Prod.ext
      · simp [basisBuildT]
        ring
      · simp [basisBuildT]
        ring

@[simp] theorem basisBuildT_e1 (a b c : F3T) :
    basisBuildT a b c e1T = a := by
  rcases a with ⟨a0, a1, a2⟩
  simp [basisBuildT, e1T]

@[simp] theorem basisBuildT_e2 (a b c : F3T) :
    basisBuildT a b c e2T = b := by
  rcases b with ⟨b0, b1, b2⟩
  simp [basisBuildT, e2T]

@[simp] theorem basisBuildT_e3 (a b c : F3T) :
    basisBuildT a b c e3T = c := by
  rcases c with ⟨c0, c1, c2⟩
  simp [basisBuildT, e3T]

/-- Explicit collision pairs for one proposed basis map. -/
def basisCollisionsT (a b c : F3T) : Finset (F3T × F3T) :=
  ((Finset.univ : Finset F3T).product Finset.univ).filter (fun q =>
    q.1 ≠ q.2 ∧ basisBuildT a b c q.1 = basisBuildT a b c q.2)

/--
For every admissible plane/basis configuration the concrete collision set is
empty.  The point-pair search is therefore finite and explicit.
-/
set_option maxRecDepth 10000 in
set_option maxHeartbeats 30000000 in
theorem basisCollisionsT_empty_of_plane :
    ∀ a b c : F3T, ∀ p : PlaneIdx,
      a ≠ 0 → b ≠ 0 → a ≠ b → a + b ≠ 0 →
      onPlaneTB p 0 = true →
      onPlaneTB p a = true →
      onPlaneTB p b = true →
      onPlaneTB p c = false →
      basisCollisionsT a b c = ∅ := by
  decide

theorem basisBuildT_injective_of_plane
    (a b c : F3T) (p : PlaneIdx)
    (ha0 : a ≠ 0) (hb0 : b ≠ 0) (hab : a ≠ b) (habSum : a + b ≠ 0)
    (hp0 : onPlaneTB p 0 = true)
    (hpa : onPlaneTB p a = true)
    (hpb : onPlaneTB p b = true)
    (hpc : onPlaneTB p c = false) :
    Function.Injective (basisBuildT a b c) := by
  intro x y hxy
  by_contra hne
  have hmem : (x, y) ∈ basisCollisionsT a b c := by
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_product.mpr ⟨Finset.mem_univ x, Finset.mem_univ y⟩,
        hne, hxy⟩
  have hempty :=
    basisCollisionsT_empty_of_plane a b c p ha0 hb0 hab habSum
      hp0 hpa hpb hpc
  rw [hempty] at hmem
  simpa using hmem

theorem isCapT_map_addEquiv (e : F3T ≃+ F3T) {A : Finset F3T}
    (hA : IsCapT A) :
    IsCapT (A.map e.toEmbedding) := by
  classical
  intro x hx y hy z hz hxy hxz hyz hsum
  obtain ⟨a, ha, rfl⟩ := Finset.mem_map.mp hx
  obtain ⟨b, hb, rfl⟩ := Finset.mem_map.mp hy
  obtain ⟨c, hc, rfl⟩ := Finset.mem_map.mp hz
  have hab : a ≠ b := by
    intro h
    apply hxy
    simpa [h]
  have hac : a ≠ c := by
    intro h
    apply hxz
    simpa [h]
  have hbc : b ≠ c := by
    intro h
    apply hyz
    simpa [h]
  apply hA a ha b hb c hc hab hac hbc
  apply e.injective
  simpa using hsum


def tupleValueT {n : ℕ} (R : PosSeq n) (i : Fin n) : F3T :=
  finiteModelEquiv (R i : G)

def tupleSupportT {n : ℕ} (R : PosSeq n) : Finset F3T :=
  (Finset.univ : Finset (Fin n)).image (tupleValueT R)

theorem zero_not_mem_tupleSupportT {n : ℕ} (R : PosSeq n) :
    (0 : F3T) ∉ tupleSupportT R := by
  intro h0
  obtain ⟨i, _hi, hval⟩ := Finset.mem_image.mp h0
  have hG0 : (R i : G) = 0 := by
    apply finiteModelEquiv.injective
    simpa [tupleValueT] using hval
  exact (R i).property hG0

theorem tupleSupportT_isCap {n : ℕ} (R : PosSeq n) (hFree : ShortFree R) :
    IsCapT (tupleSupportT R) := by
  classical
  intro x hx y hy z hz hxy hxz hyz hxyz
  obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hx
  obtain ⟨j, _hj, rfl⟩ := Finset.mem_image.mp hy
  obtain ⟨k, _hk, rfl⟩ := Finset.mem_image.mp hz
  have hij : i ≠ j := by
    intro hij
    subst j
    exact hxy rfl
  have hik : i ≠ k := by
    intro hik
    subst k
    exact hxz rfl
  have hjk : j ≠ k := by
    intro hjk
    subst k
    exact hyz rfl
  have hGsum : (R i : G) + (R j : G) + (R k : G) = 0 := by
    apply finiteModelEquiv.injective
    simpa [tupleValueT] using hxyz
  have hIcard : ({i, j, k} : Finset (Fin n)).card = 3 := by
    simp [hij, hik, hjk]
  have hpos : posSum R ({i, j, k} : Finset (Fin n)) = 0 := by
    simpa [posSum, hij, hik, hjk, add_assoc] using hGsum
  exact (hFree _) ⟨Finset.card_pos.mp (by omega), by omega, hpos⟩

theorem f3t_self_add_ne_zero :
    ∀ x : F3T, x ≠ 0 → x + x ≠ 0 := by
  decide

theorem tupleSupportT_no_pair {n : ℕ} (R : PosSeq n) (hFree : ShortFree R) :
    ∀ x ∈ tupleSupportT R, ∀ y ∈ tupleSupportT R, x + y ≠ 0 := by
  classical
  intro x hx y hy hxy
  obtain ⟨i, _hi, rfl⟩ := Finset.mem_image.mp hx
  obtain ⟨j, _hj, rfl⟩ := Finset.mem_image.mp hy
  have hfi0 : tupleValueT R i ≠ 0 := by
    intro h0
    have hz : (0 : F3T) ∈ tupleSupportT R :=
      Finset.mem_image.mpr ⟨i, Finset.mem_univ i, h0⟩
    exact zero_not_mem_tupleSupportT R hz
  have hij : i ≠ j := by
    intro hij
    subst j
    exact (f3t_self_add_ne_zero (tupleValueT R i) hfi0) hxy
  have hGsum : (R i : G) + (R j : G) = 0 := by
    apply finiteModelEquiv.injective
    simpa [tupleValueT] using hxy
  have hIcard : ({i, j} : Finset (Fin n)).card = 2 := by
    simp [hij]
  have hpos : posSum R ({i, j} : Finset (Fin n)) = 0 := by
    simpa [posSum, hij, add_comm] using hGsum
  exact (hFree _) ⟨Finset.card_pos.mp (by omega), by omega, hpos⟩

theorem insert_zero_tupleSupportT_isCap {n : ℕ} (R : PosSeq n)
    (hFree : ShortFree R) :
    IsCapT (insert 0 (tupleSupportT R)) := by
  classical
  have hCap := tupleSupportT_isCap R hFree
  have hNoPair := tupleSupportT_no_pair R hFree
  intro a ha b hb c hc hab hac hbc hsum
  simp only [Finset.mem_insert] at ha hb hc
  rcases ha with rfl | ha
  · have hbS : b ∈ tupleSupportT R := by
      rcases hb with hb0 | hbS
      · exact False.elim (hab hb0.symm)
      · exact hbS
    have hcS : c ∈ tupleSupportT R := by
      rcases hc with hc0 | hcS
      · exact False.elim (hac hc0.symm)
      · exact hcS
    apply hNoPair b hbS c hcS
    simpa using hsum
  · rcases hb with rfl | hb
    · have hcS : c ∈ tupleSupportT R := by
        rcases hc with hc0 | hcS
        · exact False.elim (hbc hc0.symm)
        · exact hcS
      apply hNoPair a ha c hcS
      simpa using hsum
    · rcases hc with rfl | hc
      · apply hNoPair a ha b hb
        simpa [add_assoc] using hsum
      · exact hCap a ha b hb c hc hab hac hbc hsum

theorem tupleFiberT_card_le_two {n : ℕ} (R : PosSeq n) (hFree : ShortFree R) :
    ∀ x ∈ tupleSupportT R,
      ((Finset.univ : Finset (Fin n)).filter
        (fun i => tupleValueT R i = x)).card ≤ 2 := by
  classical
  intro x _hx
  let fiber : Finset (Fin n) :=
    (Finset.univ : Finset (Fin n)).filter (fun i => tupleValueT R i = x)
  have hfiber_eq :
      fiber =
        (Finset.univ : Finset (Fin n)).filter
          (fun i => tupleValueT R i = x) := rfl
  rw [← hfiber_eq]
  by_contra hle
  have h3 : 3 ≤ fiber.card := by omega
  obtain ⟨I, hI_sub, hIcard⟩ :=
    Finset.exists_subset_card_eq (s := fiber) (n := 3) h3
  have hconst :
      ∀ i ∈ I, (R i : G) = finiteModelEquiv.symm x := by
    intro i hi
    have hiFiber : i ∈ fiber := hI_sub hi
    have hfix : tupleValueT R i = x := (Finset.mem_filter.mp hiFiber).2
    have hback := congrArg finiteModelEquiv.symm hfix
    simpa [tupleValueT] using hback
  have hsum : posSum R I = 0 := by
    unfold posSum
    calc
      (∑ i ∈ I, (R i : G)) =
          ∑ _i ∈ I, finiteModelEquiv.symm x := by
            exact Finset.sum_congr rfl (fun i hi => hconst i hi)
      _ = I.card • finiteModelEquiv.symm x := by simp
      _ = 0 := by
        rw [hIcard]
        simpa using
          ZModModule.char_nsmul_eq_zero 3 (finiteModelEquiv.symm x)
  exact (hFree I) ⟨Finset.card_pos.mp (by omega), by omega, hsum⟩

theorem tupleSupportT_card_le_eight {n : ℕ} (R : PosSeq n)
    (hFree : ShortFree R) :
    (tupleSupportT R).card ≤ 8 := by
  have hCap0 := insert_zero_tupleSupportT_isCap R hFree
  have hCap0Card : (insert 0 (tupleSupportT R)).card ≤ 9 :=
    capT_card_le_nine hCap0
  have hZeroNot := zero_not_mem_tupleSupportT R
  have hCard :
      (insert 0 (tupleSupportT R)).card = (tupleSupportT R).card + 1 := by
    simp [hZeroNot, Nat.add_comm]
  rw [hCard] at hCap0Card
  omega


theorem eight_support_sum_zero {A : Finset F3T}
    (hAcard : A.card = 8) (hZeroNot : (0 : F3T) ∉ A)
    (hCap0 : IsCapT (insert 0 A)) :
    (∑ x ∈ A, x) = 0 := by
  classical
  have hCap : IsCapT A :=
    isCapT_of_subset hCap0 (Finset.subset_insert 0 A)
  obtain ⟨a, b, haA, hbA, hab⟩ :=
    Finset.one_lt_card_iff.mp (show 1 < A.card by omega)
  have ha0 : a ≠ 0 := by
    intro ha
    subst a
    exact hZeroNot haA
  have hb0 : b ≠ 0 := by
    intro hb
    subst b
    exact hZeroNot hbA
  have habSum : a + b ≠ 0 := by
    intro hsum
    exact (hCap0 0 (by simp) a (by simp [haA]) b (by simp [hbA])
      (Ne.symm ha0) (Ne.symm hb0) hab) (by simpa using hsum)
  obtain ⟨p, hp0, hpa, hpb⟩ :=
    pair_planes_coverT 0 a b (Ne.symm ha0)
  have hInterLe : (A ∩ planeSetT p).card ≤ 4 :=
    cap_inter_plane_le_four hCap p
  have hcExists : ∃ c ∈ A, c ∉ planeSetT p := by
    by_contra! hAll
    have hsub : A ⊆ planeSetT p := by
      intro x hx
      exact hAll x hx
    have heq : A ∩ planeSetT p = A := Finset.inter_eq_left.mpr hsub
    rw [heq, hAcard] at hInterLe
    omega
  obtain ⟨c, hcA, hcOut⟩ := hcExists
  have hpc : onPlaneTB p c = false := by
    by_cases htrue : onPlaneTB p c = true
    · exact False.elim
        (hcOut (Finset.mem_filter.mpr ⟨Finset.mem_univ c, htrue⟩))
    · exact Bool.eq_false_of_not_eq_true htrue
  have hinj : Function.Injective (basisBuildT a b c) :=
    basisBuildT_injective_of_plane a b c p ha0 hb0 hab habSum
      hp0 hpa hpb hpc
  have hbij : Function.Bijective (basisBuildT a b c) :=
    Finite.injective_iff_bijective.mp hinj
  let e : F3T ≃+ F3T :=
    AddEquiv.ofBijective (basisBuildHomT a b c) hbij
  let N : Finset F3T := A.map e.symm.toEmbedding
  have hNCard : N.card = 8 := by
    simp [N, hAcard]
  have he1 : e e1T = a := by
    simp [e, basisBuildHomT]
  have he2 : e e2T = b := by
    simp [e, basisBuildHomT]
  have he3 : e e3T = c := by
    simp [e, basisBuildHomT]
  have he1inv : e.symm a = e1T := by
    rw [← he1, e.symm_apply_apply]
  have he2inv : e.symm b = e2T := by
    rw [← he2, e.symm_apply_apply]
  have he3inv : e.symm c = e3T := by
    rw [← he3, e.symm_apply_apply]
  have he1N : e1T ∈ N :=
    Finset.mem_map.mpr ⟨a, haA, he1inv⟩
  have he2N : e2T ∈ N :=
    Finset.mem_map.mpr ⟨b, hbA, he2inv⟩
  have he3N : e3T ∈ N :=
    Finset.mem_map.mpr ⟨c, hcA, he3inv⟩
  have hBaseSubN : basisSupportT ⊆ N := by
    intro x hx
    simp only [basisSupportT, Finset.mem_insert, Finset.mem_singleton] at hx
    rcases hx with rfl | rfl | rfl
    · exact he1N
    · exact he2N
    · exact he3N
  have hNZeroNot : (0 : F3T) ∉ N := by
    intro h0
    obtain ⟨x, hxA, hx⟩ := Finset.mem_map.mp h0
    have hx0 : x = 0 := by
      apply e.symm.injective
      simpa using hx
    exact hZeroNot (hx0 ▸ hxA)
  have hCapMapped :
      IsCapT ((insert 0 A).map e.symm.toEmbedding) :=
    isCapT_map_addEquiv e.symm hCap0
  have hCapN0 : IsCapT (insert 0 N) := by
    simpa [N] using hCapMapped
  let rest : Finset F3T := N \ basisSupportT
  have hRestCard : rest.card = 5 := by
    dsimp [rest]
    rw [Finset.card_sdiff hBaseSubN, hNCard]
    norm_num [basisSupportT, e1T, e2T, e3T]
  have hSeedSub : basisSeedT ⊆ insert 0 N := by
    intro x hx
    have hx' : x = 0 ∨ x ∈ basisSupportT := by
      simpa [basisSeedT] using hx
    rcases hx' with rfl | hx'
    · simp
    · exact Finset.mem_insert_of_mem (hBaseSubN hx')
  have hRestCandidate : ∀ x ∈ rest, x ∈ normalizedCandidateSetT := by
    intro x hx
    have hxN : x ∈ N := (Finset.mem_sdiff.mp hx).1
    have hxNotBase : x ∉ basisSupportT := (Finset.mem_sdiff.mp hx).2
    have hx0 : x ≠ 0 := by
      intro h0
      subst x
      exact hNZeroNot hxN
    have hxNotSeed : x ∉ basisSeedT := by
      simp [basisSeedT, hx0, hxNotBase]
    have hxBig : x ∈ insert 0 N := Finset.mem_insert_of_mem hxN
    have hSmallSub : insert x basisSeedT ⊆ insert 0 N :=
      Finset.insert_subset hxBig hSeedSub
    have hSmallCap : IsCapT (insert x basisSeedT) :=
      isCapT_of_subset hCapN0 hSmallSub
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_univ x, hxNotSeed,
        (capPairViolationsT_eq_empty_iff (insert x basisSeedT)).2 hSmallCap⟩
  let B : Finset NormalizedCandidateT :=
    normalizedCandidateSetT.attach.filter (fun y => y.1 ∈ rest)
  have hBMap : B.map normalizedCandidateVal = rest := by
    ext x
    constructor
    · intro hx
      obtain ⟨y, hyB, hyx⟩ := Finset.mem_map.mp hx
      have hyRest := (Finset.mem_filter.mp hyB).2
      simpa [normalizedCandidateVal] using hyx ▸ hyRest
    · intro hx
      let y : NormalizedCandidateT := ⟨x, hRestCandidate x hx⟩
      have hyAttach : y ∈ normalizedCandidateSetT.attach := by simp
      have hyB : y ∈ B := by
        exact Finset.mem_filter.mpr ⟨hyAttach, hx⟩
      exact Finset.mem_map.mpr ⟨y, hyB, rfl⟩
  have hBCard : B.card = 5 := by
    have hc := congrArg Finset.card hBMap
    simp at hc
    omega
  have hBaseRest : basisSupportT ∪ rest = N := by
    simpa [rest] using Finset.union_sdiff_of_subset hBaseSubN
  have hSeedRest : basisSeedT ∪ rest = insert 0 N := by
    rw [basisSeedT, Finset.insert_union, hBaseRest]
  have hNormalizedEq : normalizedCapT B = insert 0 N := by
    simp [normalizedCapT, hBMap, hSeedRest]
  have hNormCap : IsCapT (normalizedCapT B) := by
    simpa [hNormalizedEq] using hCapN0
  have hNormNoViol : capPairViolationsT (normalizedCapT B) = ∅ :=
    (capViolationsT_eq_empty_iff (normalizedCapT B)).2 hNormCap
  have hNormalizedSum :=
    normalized_capT_sum_zero B hBCard hNormNoViol
  have hNSum : (∑ x ∈ N, x) = 0 := by
    rw [hNormalizedEq] at hNormalizedSum
    simpa [hNZeroNot] using hNormalizedSum
  have hMapSum :
      (∑ x ∈ N, x) = e.symm (∑ x ∈ A, x) := by
    simp [N]
  apply e.symm.injective
  simpa [hMapSum] using hNSum


theorem length16SumZeroInput : Length16SumZeroInput := by
  classical
  intro R hFree
  let f : Fin 16 → F3T := tupleValueT R
  let support : Finset F3T := tupleSupportT R
  have hSupportLe : support.card ≤ 8 := by
    simpa [support] using tupleSupportT_card_le_eight R hFree
  have hFiber :
      ∀ x ∈ support,
        ((Finset.univ : Finset (Fin 16)).filter (fun i => f i = x)).card ≤ 2 := by
    simpa [support, f] using tupleFiberT_card_le_two R hFree
  have hMaps :
      ∀ i ∈ (Finset.univ : Finset (Fin 16)), f i ∈ support := by
    intro i hi
    change f i ∈ (Finset.univ : Finset (Fin 16)).image f
    exact Finset.mem_image.mpr ⟨i, hi, rfl⟩
  have hBound :=
    Finset.card_le_mul_card_image_of_maps_to hMaps 2 hFiber
  have hBound' : 16 ≤ 2 * support.card := by
    simpa [support, f] using hBound
  have hSupportCard : support.card = 8 := by
    omega
  have hFiberEq :
      ∀ x ∈ support,
        ((Finset.univ : Finset (Fin 16)).filter (fun i => f i = x)).card = 2 := by
    intro x hx
    have hxle := hFiber x hx
    have hCount :
        16 =
          ∑ y ∈ support,
            ((Finset.univ : Finset (Fin 16)).filter (fun i => f i = y)).card := by
      simpa using
        (Finset.card_eq_sum_card_fiberwise
          (f := f) (s := (Finset.univ : Finset (Fin 16)))
          (t := support) hMaps)
    have hEraseCard : (support.erase x).card = 7 := by
      rw [Finset.card_erase_of_mem hx, hSupportCard]
    have hOther :
        (∑ y ∈ support.erase x,
          ((Finset.univ : Finset (Fin 16)).filter (fun i => f i = y)).card) ≤ 14 := by
      calc
        (∑ y ∈ support.erase x,
          ((Finset.univ : Finset (Fin 16)).filter (fun i => f i = y)).card)
            ≤ ∑ _y ∈ support.erase x, 2 := by
              exact Finset.sum_le_sum
                (fun y hy => hFiber y (Finset.mem_of_mem_erase hy))
        _ = 14 := by simp [hEraseCard]
    have hSplit :
        (∑ y ∈ support,
          ((Finset.univ : Finset (Fin 16)).filter (fun i => f i = y)).card) =
          (∑ y ∈ support.erase x,
            ((Finset.univ : Finset (Fin 16)).filter (fun i => f i = y)).card) +
          ((Finset.univ : Finset (Fin 16)).filter (fun i => f i = x)).card := by
      exact (Finset.sum_erase_add support
        (fun y =>
          ((Finset.univ : Finset (Fin 16)).filter (fun i => f i = y)).card)
        hx).symm
    by_contra hne
    have hxone :
        ((Finset.univ : Finset (Fin 16)).filter (fun i => f i = x)).card ≤ 1 := by
      omega
    rw [hSplit] at hCount
    omega
  have hZeroNot : (0 : F3T) ∉ support := by
    simpa [support] using zero_not_mem_tupleSupportT R
  have hCap0 : IsCapT (insert 0 support) := by
    simpa [support] using insert_zero_tupleSupportT_isCap R hFree
  have hSupportSum : (∑ x ∈ support, x) = 0 :=
    eight_support_sum_zero hSupportCard hZeroNot hCap0
  have hTupleSum : (∑ i : Fin 16, f i) = 0 := by
    calc
      (∑ i : Fin 16, f i) =
          ∑ x ∈ support,
            ((Finset.univ : Finset (Fin 16)).filter (fun i => f i = x)).card • x := by
              simpa [support] using
                (Finset.sum_comp
                  (s := (Finset.univ : Finset (Fin 16)))
                  (f := fun x : F3T => x) (g := f))
      _ = ∑ x ∈ support, 2 • x := by
        apply Finset.sum_congr rfl
        intro x hx
        rw [hFiberEq x hx]
      _ = 2 • (∑ x ∈ support, x) := by
        rw [Finset.sum_nsmul]
      _ = 0 := by rw [hSupportSum]; simp
  have hMappedTotal : finiteModelEquiv (totalSum R) = 0 := by
    simpa [totalSum, posSum, f, tupleValueT] using hTupleSum
  exact finiteModelEquiv.injective (by simpa using hMappedTotal)

end InverseZeroSum.Candidate3
