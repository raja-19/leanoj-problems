import Mathlib.Data.Finset.Card
import Mathlib.Order.Bounds.Defs

def answer (n : ℕ) : ℕ := sorry

def S (n : ℕ) : Set ℕ := { a : ℕ | ∃ S : Finset (ℕ × ℕ), S.card = a ∧
    (∀ p ∈ S, 1 ≤ p.1 ∧ p.1 ≤ n ∧ 0 ≤ p.2 ∧ p.2 ≤ n) ∧
    (∀ u ∈ S, ∀ v ∈ S, u ≠ v → ¬(
      (u.1 ^ 2 + u.2 ^ 2) ∣ (u.1 * v.1 + u.2 * v.2) ∧
      (u.1 ^ 2 + u.2 ^ 2) ∣ (u.1 * v.2 - u.2 * v.1))) }

theorem solution (n : ℕ) (hn : n > 0) : IsGreatest (S n) (answer n) := sorry
