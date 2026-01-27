import Mathlib.Data.Nat.Fib.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Data.Nat.Prime.Defs

theorem solution(p:ℕ)(hp1:Nat.Prime p)(hp2:Odd p):p∣∑n∈Finset.Icc 1 (p-1), (Nat.fib n)*(p-1).factorial/n:=by sorry
