import Mathlib.Data.Nat.BitIndices
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Order.Interval.Finset.Nat

theorem solution(n:ℕ)(hn:n>0):∑ i ∈ (Finset.Icc 1 n),(-1)^((Nat.bitIndices (3*i)).length)>0:=by sorry
