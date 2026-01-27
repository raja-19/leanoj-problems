import Mathlib.Combinatorics.SimpleGraph.Finite
import Mathlib.Combinatorics.SimpleGraph.Clique
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.BigOperators
open scoped Classical

theorem solution(n:ℕ)(hn:n≥2)(x:ℕ→ℝ)(hx:∀i:Fin n,x i≥0)(G:SimpleGraph (Fin n)):∑e∈SimpleGraph.edgeFinset G ,(x (Quot.out e).1*x (Quot.out e).2)≤((G.cliqueNum-1):ℝ)/(2*G.cliqueNum)*(∑i:Fin n,x i)^2:=by sorry
