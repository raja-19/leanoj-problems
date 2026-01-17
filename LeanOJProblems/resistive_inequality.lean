import Mathlib.Data.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.BigOperators
open Finset

theorem solution (m n : ℕ) (a : ℕ → ℕ → ℝ)
    (h_pos : ∀ i < m, ∀ j < n, (0:ℝ) < a i j) :
    (∑ i ∈ range m, (∑ j ∈ range n, 1 / a i j)⁻¹) ≤
    (∑ j ∈ range n, (∑ i ∈ range m, a i j)⁻¹)⁻¹ := by
  sorry
