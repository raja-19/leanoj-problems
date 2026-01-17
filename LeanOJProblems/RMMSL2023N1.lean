import Mathlib.Data.Finset.Card
import Mathlib.Order.Bounds.Defs

def max_size(n:ℕ):ℕ:=by sorry

theorem solution(n:ℕ)(hn:n>0):IsGreatest {a:ℕ|∃S:Finset (ℕ×ℕ),(∀p∈S,1≤p.1∧p.1≤n∧0≤p.2∧p.2≤n)∧(∀u∈S,∀v∈S,(u≠v)→¬((u.1^2+u.2^2)∣(u.1*v.1+u.2*v.2)∧(u.1^2+u.2^2)∣(u.1*v.2-u.2*v.1)))∧(S.card=a)} (max_size n):=by sorry
