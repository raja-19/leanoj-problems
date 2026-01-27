import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.BigOperators
open Finset
open BigOperators

def A(n:ℕ):Finset ((ℕ×ℕ)×(ℕ×ℕ)):=((range (n+1) ×ˢ range (n+1)) ×ˢ (range (n+1) ×ˢ range (n+1))).filter
    (fun ((a, b), (c, d)) => a ≤ c ∧ b ≤ d ∧ c + d > n ∧ b * c = a * d + 1)

noncomputable def α(n:ℕ):ℝ:=∑x∈A n,(1:ℝ)/(x.1.1*x.1.2+x.2.1*x.2.2)

def answer : ℝ := sorry

theorem solution : IsGLB {α n|n>0} answer :=by sorry
