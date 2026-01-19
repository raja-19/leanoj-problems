import Mathlib.Data.Fintype.BigOperators
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Polynomial.Roots

noncomputable
def P (m n : ℕ) : Polynomial ℝ :=
    ∑ i ∈ Finset.Icc 0 m, Polynomial.monomial i ((n + i).choose n)

theorem solution (m n : ℕ) : (P m n).roots.card ≤ 1 := sorry
