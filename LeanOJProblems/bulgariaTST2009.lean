import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Real.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Data.Finset.Basic

theorem solution (a b c : ℕ → ℝ) (n : ℕ) (hn : n ≥ 1) (ha : ∀ i ∈ Finset.Icc 1 n, a i > 0)
    (hb : ∀ i ∈ Finset.Icc 1 n, b i > 0) (hc : ∀ i ∈ Finset.Icc 1 n, c i > 0) :
    (∑ i ∈ Finset.Icc 1 n, ∑ j ∈ Finset.Icc 1 n, a i * a j / (c i + c j)) *
    (∑ i ∈ Finset.Icc 1 n, ∑ j ∈ Finset.Icc 1 n, b i * b j / (c i + c j)) ≥
    (∑ i ∈ Finset.Icc 1 n, ∑ j ∈ Finset.Icc 1 n, a i * b j / (c i  +c j)) ^ 2 := sorry
