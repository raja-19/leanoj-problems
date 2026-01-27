import Mathlib.LinearAlgebra.Matrix.RowCol

-- 3 × 3 board of integers
abbrev Board := Matrix (Fin 3) (Fin 3) ℤ

inductive OpTy
  | Row
  | Col

open OpTy

inductive OpDir
  | Inc
  | Dec

open OpDir

def OpDir.delta : OpDir → ℤ
  | Inc => 1
  | Dec => -1

structure Step where
  opType : OpTy
  ix : Fin 3
  direction : OpDir

def Step.delta (op : Step) : ℤ :=
  op.direction.delta

def Step.app (op : Step) (b : Board) : Board :=
  match op.opType with
  | Row =>
      b + Matrix.updateRow 0 op.ix (List.Vector.replicate 3 op.delta).get
  | Col =>
      b + Matrix.updateCol 0 op.ix (List.Vector.replicate 3 op.delta).get

def applySteps (ops : List Step) (b : Board) : Board :=
  ops.foldl (fun acc op => op.app acc) b


def initial : Board :=
  ![![1, 2, 3],
    ![4, 5, 6],
    ![7, 8, 9]]

def final : Board :=
  ![![9, 8, 7],
    ![6, 5, 4],
    ![3, 2, 1]]

def answer : List Step := sorry

theorem solution : applySteps answer initial = final := sorry
