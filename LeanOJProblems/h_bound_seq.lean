import Mathlib.Data.Real.Basic

theorem solution (a : ℕ → ℝ) (ha_1 : 0 < a 0) (ha_rec : ∀ n : ℕ, a (n + 1) = a n + (n + 1) / a n) :
    ∃ c : ℝ , ∀ n : ℕ, a n ≤ n + 1 + c / (n + 1) := sorry
