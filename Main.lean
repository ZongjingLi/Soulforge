import Soulforge

open Nat (add_assoc add_comm)

theorem hello_world (a b c : Nat)
  : a + b + c = a + c + b := by
  rw [add_assoc, add_comm b, ←add_assoc]

theorem foo (a : Nat) : a + 1 = Nat.succ a := by rfl

theorem ring_is_module (R : Ring carrier) (a b : carrier) :
  R.op a (R.op b a) = R.op b (R.op a a) :=
  by
    rw [
      R.op_commute a,
      R.assoc
    ]


#eval s!"Finished Building {package}"
