def package := "Malkyriss"

def Set (α : Type) := α → Prop


structure Magma (carrier : Type) where
  op : carrier → carrier → carrier

structure Semigroup (carrier : Type) extends Magma carrier where
  assoc : (a b c : carrier) → op (op a b) c = op a (op b c)

structure Monoid (carrier : Type) extends Semigroup carrier where
  id : carrier
  op_id : (a : carrier) → op id a = a
  id_op : (a : carrier) → op a id = a

structure Group (carrier : Type) extends Monoid carrier where
  inv : carrier → carrier
  op_inv : (a : carrier) → op a (inv a) = id
  inv_op : (a : carrier) → op (inv a) a = id

structure AbelianGroup (carrier : Type) extends Group carrier where
  op_commute : (a b : carrier) → op a b = op b a

structure Ring (carrier : Type) extends AbelianGroup carrier where
  mul : carrier → carrier → carrier
  mul_assoc : ∀ a b c : carrier, mul a (mul b c) = mul (mul a b) c
  one : carrier
  id_equal : one = id
  mul_one : ∀ a : carrier, mul a one = mul one a
  one_mul : ∀ a : carrier, mul one a = mul a one
  left_distrib : ∀ a x y : carrier, mul a (op x y) = op (mul a x) (mul a y)
  right_distrib : ∀ x y a : carrier, mul (op x y) a = op (mul x a) (mul y a)

structure CommutativeRing (carrier : Type) extends Ring carrier where
  mul_commute : ∀ a b : carrier, mul a b = mul b a

structure Field (carrier : Type) extends CommutativeRing carrier where
  mul_inv : carrier → carrier
  mul_by_inv : ∀ a : carrier, mul a (mul_inv a) = one
  inv_by_mul : ∀ a : carrier, mul (mul_inv a) a = one

theorem commutative_group_op (G : AbelianGroup carrier) (a b : carrier) :
  G.op a b = G.op b a :=
G.op_commute a b
