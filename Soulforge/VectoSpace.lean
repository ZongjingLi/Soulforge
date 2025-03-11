import Soulforge.Basic
import Soulforge

structure VectorSpace (K : Field α) where
    add : α → α → α := K.op

structure TopologicalVectorSpace
