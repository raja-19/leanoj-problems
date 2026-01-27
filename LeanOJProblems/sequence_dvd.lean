import Mathlib.Data.Nat.Basic

def a : ℕ → ℕ
  | 0 => 1
  | 1 => 1
  | 2 => 2
  | n + 2 => a n * a (n + 1) + a n

theorem solution (n : ℕ) (hn : n ≥ 5) : a n ^ n ∣ a (a n) := sorry
