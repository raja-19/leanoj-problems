import Mathlib.Data.Finset.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Analysis.SpecialFunctions.Log.Base

-- Original Problem:
-- There are $ n$ websites $ 1,2,\ldots,n$ ($ n \geq 2$). If there is a link from website $ i$ to $ j$, we can use this link so we can move website $ i$ to $ j$.
-- For all $ i \in \left\{1,2,\ldots,n - 1 \right\}$, there is a link from website $ i$ to $ i+1$.
-- Prove that we can add less or equal than $ 3(n - 1)\log_{2}(\log_{2} n)$ links so that for all integers $ 1 \leq i < j \leq n$, starting with website $ i$, and using at most three links to website $ j$. (If we use a link, website's number should increase. For example, No.7 to 4 is impossible).

def is_link(n:ℕ)(e:ℕ×ℕ):Prop:=1≤e.1∧e.1<e.2∧e.2≤n
def one_jump(L:Finset (ℕ×ℕ))(i:ℕ)(j:ℕ):Prop:=(i,j)∈L
def two_jump(L:Finset (ℕ×ℕ))(i:ℕ)(j:ℕ):Prop:=∃k:ℕ,(i,k)∈L∧(k,j)∈L
def three_jump(L:Finset (ℕ×ℕ))(i:ℕ)(j:ℕ):Prop:=∃k₁:ℕ,∃k₂:ℕ,(i,k₁)∈L∧(k₁,k₂)∈L∧(k₂,j)∈L

theorem solution(n:ℕ)(hn:n≥2):∃L:Finset (ℕ×ℕ),(∀e∈L,is_link n e)∧(∀i∈Finset.Icc 1 (n-1),(i,i+1)∈L)∧(L.card≤n-1+3*(n-1)*(Real.logb 2 (Real.logb 2 n)))∧(∀i∈Finset.Icc 1 n,∀j∈Finset.Icc 1 n,(i<j)→(one_jump L i j)∨(two_jump L i j)∨(three_jump L i j)):=by sorry
