import Mathlib.Data.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.BigOperators
open Finset

theorem solution (m n : ℕ) (a : ℕ → ℕ → ℝ) (h_pos : ∀ i < m, ∀ j < n, 0 < a i j) :
    ∑ i ∈ range m, 1 / (∑ j ∈ range n, 1 / a i j) ≤
    1 / (∑ j ∈ range n, 1 / (∑ i ∈ range m, a i j)) := sorry
