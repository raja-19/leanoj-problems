import Mathlib

def Phillipine (p : Polynomial ℝ) :=
    p.degree = 3 ∧ p.eval 1 = p.eval 8 ∧ p.eval 2 = 6 ∧ p.eval 6 = 2  

theorem solution (a b : ℤ) (h : ∀ p, Phillipine p → p.eval (a : ℝ) = b) : a + b = 85 := by
  sorry
