import Mathlib.Analysis.Normed.Field.Lemmas

def a : ℕ := sorry
def b : ℕ := sorry
def c : ℕ := sorry
def d : ℕ := sorry

lemma ha : 1 ≤ a ∧ a ≤ 6 := sorry
lemma hb : 1 ≤ b ∧ b ≤ 6 := sorry
lemma hc : 1 ≤ c ∧ c ≤ 6 := sorry
lemma hd : 1 ≤ d ∧ d ≤ 6 := sorry

lemma habcd : Finset.card {a, b, c, d} = 4 := sorry

theorem solution : (a : ℚ) / b = c / d + 2 := sorry
