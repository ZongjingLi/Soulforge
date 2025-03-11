/- import Soulforge.Basic -/


theorem  modues_ponens (p q : Prop) : p → (p → q) → q := by sorry

example (p q : Prop) : p → (p → q) → q := by
  intro hp
  intro hpq
  apply hpq
  exact hp

example : ∀ p q : Prop, p → (p → q) → q := by
  intro hp
  intro hq
  sorry

theorem claim : ∀ x y: Nat, x < y → y < x → x = y := by sorry

def A : Nat := 4
def B : Nat := 4

example (a b) : a → b → a = b := by sorry

structure Line (α : Type) where
  -- spatial relations as predicates
  left : α → α → Bool
  right : α → α → Bool
  close : α → α → Bool

  -- spatial relation priors
  exclusive : ∀ a b : α, left a b = true → right a b = false
  spatial_trans :  ∀ a b c : α, left a b = true → left b c = true → left a c

structure Poset (α : Type) where
  leq : α → α → Bool

  refl : ∀ x : α, leq x x = true -- Self Reflective
  trans : ∀ a b c : α, leq a b = true → leq b c = true → leq a c -- Tansitivity
  antisymm : ∀ a b : α, leq a b = true → leq b a = true → a = b -- Antisymmetry

structure Group (α : Type) where
  add : α → α → α
  id : α
  inv : α → α
  equal : α → α → Bool

def NatPoset : Poset (Nat) where
  leq := sorry
  refl := sorry
  trans := sorry
  antisymm := sorry

example : ∀ x y : Nat , (NatPoset.leq x y) → (NatPoset.leq y x) → x = y := by
  intro hx
  intro hy
  apply NatPoset.antisymm

--example :  ∀ x y : ℕ, (Group Nat).equal ((Group Nat).add x y)  ((Group Nat).add y x) := sorry

example : ∀ x y : Nat, x ≤ y → x < y := by
  intros X Y Z
  sorry


theorem add_pos (a b : Nat) : a > 0 → b > 0 → a + b > 0 := by sorry

theorem add_pos_nm (n m : Nat) (hn : n > 0) (hm : m > 0) : n + m > 0 :=
 by
 apply add_pos
 exact hn
 exact hm
