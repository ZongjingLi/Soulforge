import Soulforge.Basic

structure NormedSpace (carrier : Type) where
  norm : carrier → Nat

structure MetricSpace (carrier : Type) where
  distance : carrier → carrier → Nat
  symmetry : ∀ a b : carrier, distance a b = distance b a
  non_negative : ∀ a b : carrier, distance a b >= 0
  non_degenerate : ∀ a b : carrier, distance a b = 0 → a = b
  tri_inequality : ∀ a b c : carrier, distance a b + distance b c > distance a c

  symmetry_bi : (a b : carrier) → distance a b  = distance b a
