structure Cat (α : Type) where
  object : α
  morph : α → α

structure AddCat (α : Type) extends Cat α where
  morphs_abelian : α

structure AbCat (α : Type) extends AddCat α where
  ker_exist : ∀ f g : α, f = g
  coker_exist : ∀ f g : α, f ≠ g

structure Exact (cat : AbCat α) where
