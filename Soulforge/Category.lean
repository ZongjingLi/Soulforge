inductive Category (Obj : Type) where
  | mk : (Hom : Obj → Obj → Type)
        → (id : (X : Obj) → Hom X X)
        → (comp : ∀ {X Y Z}, Hom X Y → Hom Y Z → Hom X Z)
        → (assoc : ∀ {X Y Z W} (f : Hom X Y) (g : Hom Y Z) (h : Hom Z W),
                  comp (comp f g) h = comp f (comp g h))
        → (id_left : ∀ {X Y} (f : Hom X Y), comp (id X) f = f)
        → (id_right : ∀ {X Y} (f : Hom X Y), comp f (id Y) = f)
        → Category Obj
