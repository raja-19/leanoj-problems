import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Data.Fintype.BigOperators

theorem solution{a:ℤ}{n:ℕ}(hn:n≠0):(n:ℤ)∣(∑ k ∈ (Finset.Icc 1 n), a^(Nat.gcd k n)):=by sorry
