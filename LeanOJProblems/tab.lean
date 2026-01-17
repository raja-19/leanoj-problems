import Mathlib.Data.Fintype.Basic
import Mathlib.Order.Interval.Finset.Nat
open Finset

structure Table (n : ℕ) where
  row1 : ℕ → ℕ
  row2 : ℕ → ℕ
  row3 : ℕ → ℕ

def Table.valid (T : Table n) : Prop :=
  ∀ j ∈ Finset.Icc 1 n, T.row3 j = T.row1 j + T.row2 j

def Table.permutes_range (T : Table n) : Prop :=
  let all_numbers : Finset ℕ :=
    (Finset.Icc 1 n).image T.row1 ∪
    (Finset.Icc 1 n).image T.row2 ∪
    (Finset.Icc 1 n).image T.row3
  all_numbers = Finset.Icc 1 (3 * n)

theorem solution : ∀ N : ℕ, ∃ n ≥ N, ∃ T : Table n, T.valid ∧ T.permutes_range := by sorry
