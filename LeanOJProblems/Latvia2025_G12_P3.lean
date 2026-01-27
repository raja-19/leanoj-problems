import Mathlib.Data.Real.Basic

theorem solution (x y z : ℝ) (hx : x > 0) (hy : y > 0) (hz : z > 0) (h : x + y + z = 1) :
    1 / (x * y - z + 2) + 1 / (y * z - x + 2) + 1 / (x * z - y + 2) ≥ (27 : ℝ) / 16 := sorry
