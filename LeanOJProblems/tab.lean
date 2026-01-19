import Mathlib.Data.Fintype.Basic
import Mathlib.Order.Interval.Finset.Nat

structure Table (n : ℕ) where
  row1 : ℕ → ℕ
  row2 : ℕ → ℕ
  row3 : ℕ → ℕ

def Table.valid {n : ℕ} (T : Table n) : Prop :=
  ∀ j ∈ Finset.Icc 1 n, T.row3 j = T.row1 j + T.row2 j

def Table.range {n : ℕ} (T : Table n) : Finset ℕ :=
  (Finset.Icc 1 n).image T.row1 ∪
  (Finset.Icc 1 n).image T.row2 ∪
  (Finset.Icc 1 n).image T.row3

def Table.permutation {n : ℕ} (T : Table n) : Prop :=
  T.range = Finset.Icc 1 (3 * n)

theorem solution : ∀ N : ℕ, ∃ n ≥ N, ∃ T : Table n, T.valid ∧ T.permutation := sorry
