import Mathlib.Analysis.Complex.Norm

def answer : ℝ := sorry

def S : Set ℝ := {t|∃a b c:ℂ,(∀z:ℂ,‖z‖≤1→‖a*z^2+b*z+c‖≤1)∧(t=‖b*c‖)}

theorem solution : IsGreatest S answer :=by sorry
