import Mathlib.Algebra.Order.Group.Nat

noncomputable
def l : ℕ → ℤ
  | 0 => 1
  | 1 => 2
  | n + 2 => l (n + 1) * l n - 1

def answer : ℤ := sorry

theorem solution : l (2021 - 1) = answer := sorry
