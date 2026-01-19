import Mathlib

example (a b : ℤ) : a^2 + 2 * a * b + b ^ 2 ≥ 0 := by
  rw [← add_pow_two]
  apply pow_two_nonneg
