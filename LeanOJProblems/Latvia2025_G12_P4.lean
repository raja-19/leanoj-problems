import Mathlib

theorem solution (p : ℕ) (q : ℕ) (hp : p.Prime) (hq : q.Prime) (h : ∃ a : ℕ, (p^2 + p*q + q^2) = a^2) : Nat.Prime (p^2 - p*q + q^2) := sorry

