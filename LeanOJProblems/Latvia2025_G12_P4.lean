import Mathlib.Data.Nat.Prime.Defs

theorem solution (p q : ℕ) (hp : p.Prime) (hq : q.Prime)
    (h : ∃ a, p ^ 2 + p * q + q ^ 2 = a ^ 2) : (p ^ 2 + q ^ 2 - p * q).Prime := sorry
