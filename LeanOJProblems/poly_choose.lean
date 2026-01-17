import Mathlib.Data.Fintype.BigOperators
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Polynomial.Roots

theorem solution(m:ℕ)(n:ℕ):let p:Polynomial ℝ:=(∑ i ∈ (Finset.Icc 0 m), ((Polynomial.monomial i) ((n+i).choose n)));(Multiset.card p.roots)≤1:=by sorry
