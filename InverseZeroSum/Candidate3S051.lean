import InverseZeroSum.Candidate3

namespace InverseZeroSum.Candidate3

/-! ### S051: the length-15 nonzero-total-sum interface\n\nThis module is intentionally isolated from the already verified Candidate3 spine. -/

/-- Positional multiplicity of one tuple-model support value. -/
def tupleFiberCountT {n : ℕ} (R : PosSeq n) (x : F3T) : ℕ :=
  ((Finset.univ : Finset (Fin n)).filter
    (fun i => tupleValueT R i = x)).card

theorem tupleFiberCountT_le_two {n : ℕ} (R : PosSeq n)
    (hFree : ShortFree R) :
    ∀ x ∈ tupleSupportT R, tupleFiberCountT R x ≤ 2 := by
  intro x hx
  simpa [tupleFiberCountT] using tupleFiberT_card_le_two R hFree x hx

theorem tupleFiberCountT_pos {n : ℕ} (R : PosSeq n) :
    ∀ x ∈ tupleSupportT R, 0 < tupleFiberCountT R x := by
  classical
  intro x hx
  obtain ⟨i, _hi, hiEq⟩ := Finset.mem_image.mp hx
  apply Finset.card_pos.mpr
  exact ⟨i, Finset.mem_filter.mpr ⟨Finset.mem_univ i, hiEq⟩⟩

theorem card_eq_sum_tupleFiberCountT {n : ℕ} (R : PosSeq n) :
    n = ∑ x ∈ tupleSupportT R, tupleFiberCountT R x := by
  classical
  have hMaps :
      ∀ i ∈ (Finset.univ : Finset (Fin n)),
        tupleValueT R i ∈ tupleSupportT R := by
    intro i hi
    exact Finset.mem_image.mpr ⟨i, hi, rfl⟩
  simpa [tupleFiberCountT] using
    (Finset.card_eq_sum_card_fiberwise
      (f := tupleValueT R) (s := (Finset.univ : Finset (Fin n)))
      (t := tupleSupportT R) hMaps)

/-- A short-free length-15 sequence has exactly eight tuple support values. -/
theorem tupleSupportT_card_eq_eight_length15 (R : PosSeq 15)
    (hFree : ShortFree R) :
    (tupleSupportT R).card = 8 := by
  have hFiberSum := card_eq_sum_tupleFiberCountT R
  have hLe := tupleSupportT_card_le_eight R hFree
  have hEach := tupleFiberCountT_le_two R hFree
  have hBound :
      (∑ x ∈ tupleSupportT R, tupleFiberCountT R x) ≤
        ∑ _x ∈ tupleSupportT R, 2 := by
    exact Finset.sum_le_sum (fun x hx => hEach x hx)
  have hBound' : 15 ≤ 2 * (tupleSupportT R).card := by
    rw [← hFiberSum] at hBound
    simpa [Nat.mul_comm] using hBound
  omega

/-- A short-free length-15 sequence has a support value occurring exactly once. -/
theorem exists_tupleFiberCountT_eq_one_length15 (R : PosSeq 15)
    (hFree : ShortFree R) :
    ∃ u ∈ tupleSupportT R, tupleFiberCountT R u = 1 := by
  classical
  have hSupportCard := tupleSupportT_card_eq_eight_length15 R hFree
  have hFiberSum := card_eq_sum_tupleFiberCountT R
  by_contra hNo
  have hAllTwo :
      ∀ x ∈ tupleSupportT R, tupleFiberCountT R x = 2 := by
    intro x hx
    have hLe := tupleFiberCountT_le_two R hFree x hx
    have hPos := tupleFiberCountT_pos R x hx
    have hNeOne : tupleFiberCountT R x ≠ 1 := by
      intro hOne
      exact hNo ⟨x, hx, hOne⟩
    omega
  have hSixteen :
      (∑ x ∈ tupleSupportT R, tupleFiberCountT R x) = 16 := by
    calc
      (∑ x ∈ tupleSupportT R, tupleFiberCountT R x) =
          ∑ _x ∈ tupleSupportT R, 2 := by
            exact Finset.sum_congr rfl (fun x hx => hAllTwo x hx)
      _ = 16 := by simp [hSupportCard]
  omega

/-- Away from the singleton, all seven length-15 support fibres have size two. -/
theorem tupleFiberCountT_eq_two_off_singleton_length15
    (R : PosSeq 15) (hFree : ShortFree R)
    {u : F3T} (hu : u ∈ tupleSupportT R)
    (huOne : tupleFiberCountT R u = 1) :
    ∀ x ∈ (tupleSupportT R).erase u, tupleFiberCountT R x = 2 := by
  classical
  have hSupportCard := tupleSupportT_card_eq_eight_length15 R hFree
  have hFiberSum := card_eq_sum_tupleFiberCountT R
  have hSplitU :
      (∑ y ∈ tupleSupportT R, tupleFiberCountT R y) =
        (∑ y ∈ (tupleSupportT R).erase u, tupleFiberCountT R y) +
          tupleFiberCountT R u := by
    exact
      (Finset.sum_erase_add (tupleSupportT R)
        (tupleFiberCountT R) hu).symm
  have hOtherSum :
      (∑ y ∈ (tupleSupportT R).erase u, tupleFiberCountT R y) = 14 := by
    rw [hSplitU, huOne] at hFiberSum
    omega
  have hEraseCard : ((tupleSupportT R).erase u).card = 7 := by
    rw [Finset.card_erase_of_mem hu, hSupportCard]
  intro x hx
  have hxSupport : x ∈ tupleSupportT R := Finset.mem_of_mem_erase hx
  have hxLe := tupleFiberCountT_le_two R hFree x hxSupport
  by_contra hxNe
  have hxLeOne : tupleFiberCountT R x ≤ 1 := by omega
  have hRestCard : (((tupleSupportT R).erase u).erase x).card = 6 := by
    rw [Finset.card_erase_of_mem hx, hEraseCard]
  have hRestLe :
      (∑ y ∈ ((tupleSupportT R).erase u).erase x,
        tupleFiberCountT R y) ≤ 12 := by
    calc
      (∑ y ∈ ((tupleSupportT R).erase u).erase x,
        tupleFiberCountT R y)
          ≤ ∑ _y ∈ ((tupleSupportT R).erase u).erase x, 2 := by
            exact Finset.sum_le_sum
              (fun y hy =>
                tupleFiberCountT_le_two R hFree y
                  (Finset.mem_of_mem_erase
                    (Finset.mem_of_mem_erase hy)))
      _ = 12 := by simp [hRestCard]
  have hSplitX :
      (∑ y ∈ (tupleSupportT R).erase u, tupleFiberCountT R y) =
        (∑ y ∈ ((tupleSupportT R).erase u).erase x,
          tupleFiberCountT R y) + tupleFiberCountT R x := by
    exact
      (Finset.sum_erase_add ((tupleSupportT R).erase u)
        (tupleFiberCountT R) hx).symm
  rw [hSplitX] at hOtherSum
  omega

/-- Group the positional tuple sum by named support-fibre multiplicities. -/
theorem tupleValueT_sum_eq_support_weight_count {n : ℕ} (R : PosSeq n) :
    (∑ i ∈ (Finset.univ : Finset (Fin n)), tupleValueT R i) =
      ∑ x ∈ tupleSupportT R, tupleFiberCountT R x • x := by
  classical
  have hMaps :
      ∀ i ∈ (Finset.univ : Finset (Fin n)),
        tupleValueT R i ∈ tupleSupportT R := by
    intro i hi
    exact Finset.mem_image.mpr ⟨i, hi, rfl⟩
  have hFiberwise :=
    Finset.sum_fiberwise_of_maps_to
      (s := (Finset.univ : Finset (Fin n))) (t := tupleSupportT R)
      (g := tupleValueT R) hMaps (tupleValueT R)
  calc
    (∑ i ∈ (Finset.univ : Finset (Fin n)), tupleValueT R i) =
        ∑ x ∈ tupleSupportT R,
          ∑ i ∈ (Finset.univ : Finset (Fin n)) with
            tupleValueT R i = x, tupleValueT R i := by
              simpa using hFiberwise.symm
    _ = ∑ x ∈ tupleSupportT R, tupleFiberCountT R x • x := by
      apply Finset.sum_congr rfl
      intro x hx
      calc
        (∑ i ∈ (Finset.univ : Finset (Fin n)) with
            tupleValueT R i = x, tupleValueT R i) =
            ∑ _i ∈ (Finset.univ : Finset (Fin n)).filter
              (fun i => tupleValueT R i = x), x := by
                exact Finset.sum_congr rfl
                  (fun i hi => (Finset.mem_filter.mp hi).2)
        _ = tupleFiberCountT R x • x := by
          simp [tupleFiberCountT]

/--
If one support point has weight one and every other support point has weight
two, adding the singleton value makes the weighted sum equal the doubled
unweighted support sum.
-/
theorem weighted_sum_plus_singleton_eq_double
    {α M : Type*} [DecidableEq α] [AddCommMonoid M]
    (A : Finset α) (f : α → M) (w : α → ℕ)
    {u : α} (hu : u ∈ A) (huOne : w u = 1)
    (hOther : ∀ x ∈ A.erase u, w x = 2) :
    (∑ x ∈ A, w x • f x) + f u =
      ∑ x ∈ A, (2 : ℕ) • f x := by
  have hErase :
      (∑ x ∈ A.erase u, w x • f x) =
        ∑ x ∈ A.erase u, (2 : ℕ) • f x := by
    apply Finset.sum_congr rfl
    intro x hx
    rw [hOther x hx]
  rw [← Finset.sum_erase_add A (fun x => w x • f x) hu]
  rw [← Finset.sum_erase_add A (fun x => (2 : ℕ) • f x) hu]
  rw [hErase, huOne]
  simp [two_nsmul, add_assoc]

theorem tupleValueT_sum_plus_singleton_eq_double_support_length15
    (R : PosSeq 15) {u : F3T}
    (hu : u ∈ tupleSupportT R)
    (huOne : tupleFiberCountT R u = 1)
    (hOtherTwo :
      ∀ x ∈ (tupleSupportT R).erase u, tupleFiberCountT R x = 2) :
    (∑ i ∈ (Finset.univ : Finset (Fin 15)), tupleValueT R i) + u =
      ∑ x ∈ tupleSupportT R, (2 : ℕ) • x := by
  have hGrouped := tupleValueT_sum_eq_support_weight_count R
  have hWeightPlus :=
    weighted_sum_plus_singleton_eq_double
      (α := F3T) (M := F3T)
      (A := tupleSupportT R)
      (f := fun x : F3T => x)
      (w := tupleFiberCountT R)
      hu huOne hOtherTwo
  exact (congrArg (fun z : F3T => z + u) hGrouped).trans hWeightPlus

/--
The exact length-15 support structure determines a nonzero singleton whose
negative is the tuple-model positional total.
-/
theorem exists_nonzero_singleton_total_relation_length15
    (R : PosSeq 15) (hFree : ShortFree R) :
    ∃ u : F3T, u ≠ 0 ∧
      (∑ i ∈ (Finset.univ : Finset (Fin 15)), tupleValueT R i) + u = 0 := by
  classical
  have hSupportCard := tupleSupportT_card_eq_eight_length15 R hFree
  obtain ⟨u, hu, huOne⟩ :=
    exists_tupleFiberCountT_eq_one_length15 R hFree
  have hSupportSum :
      (∑ x ∈ tupleSupportT R, x) = 0 :=
    eight_nonzero_cap_sum_zero hSupportCard
      (zero_not_mem_tupleSupportT R)
      (insert_zero_tupleSupportT_isCap R hFree)
  have hOtherTwo :=
    tupleFiberCountT_eq_two_off_singleton_length15 R hFree hu huOne
  have hTotalPlusDouble :=
    tupleValueT_sum_plus_singleton_eq_double_support_length15
      R hu huOne hOtherTwo
  have hDouble :
      (∑ x ∈ tupleSupportT R, (2 : ℕ) • x) = 0 := by
    rw [Finset.sum_nsmul, hSupportSum]
    simp
  have hTupleTotalPlusSingleton :
      (∑ i ∈ (Finset.univ : Finset (Fin 15)), tupleValueT R i) + u = 0 :=
    hTotalPlusDouble.trans hDouble
  have huNe : u ≠ 0 := by
    intro hu0
    subst u
    exact (zero_not_mem_tupleSupportT R) hu
  exact ⟨u, huNe, hTupleTotalPlusSingleton⟩

/--
S051/D50-01 closes the exact length-15 source interface. No s=9 packing
argument enters here.
-/
theorem length15NonzeroInput : Length15NonzeroInput := by
  intro R hFree
  obtain ⟨u, huNe, hTupleTotalPlusSingleton⟩ :=
    exists_nonzero_singleton_total_relation_length15 R hFree
  intro hTotalZero
  have hTupleTotalZero :
      (∑ i ∈ (Finset.univ : Finset (Fin 15)), tupleValueT R i) = 0 := by
    have hMapped := congrArg finiteModelEquiv hTotalZero
    simpa [totalSum, posSum, tupleValueT] using hMapped
  rw [hTupleTotalZero, zero_add] at hTupleTotalPlusSingleton
  exact huNe hTupleTotalPlusSingleton

end InverseZeroSum.Candidate3
