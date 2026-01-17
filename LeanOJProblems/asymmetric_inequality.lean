import Mathlib.Data.Real.Sqrt

theorem solution (a b c : ℝ) (ha : a > 0) (hb : b > 0) (hc : c > 0)
    (h : 1 / a + 1 / b + 1 / c = 1) : a + b + c ≤ √ (b ^ 3 + a * c ^ 2 + a ^ 2 * c) := sorry
