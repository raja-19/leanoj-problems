import Mathlib.Data.Nat.Prime.Defs

def S : Set ℕ := { n | ∃ a b : ℕ, a > 0 ∧ b > 0 ∧ a.Coprime b ∧ n = a ^ 2 + 5 * b ^ 2 }

theorem solution (p : ℕ) (hp : Nat.Prime p) (hpmod : p % 4 = 3) (hsp : ∃ n ∈ S, p ∣ n) :
    2 * p ∈ S := sorry
