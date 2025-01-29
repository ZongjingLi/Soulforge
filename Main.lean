import Soulforge

open Nat (add_assoc add_comm)

theorem hello_world (a b c : Nat)
  : a + b + c = a + c + b := by
  rw [add_assoc, add_comm b, ←add_assoc]

theorem foo (a : Nat) : a + 1 = Nat.succ a := by rfl


variable (a b c : ℝ)
variable (p q r: Prop)

theorem t : p → q → p := fun (hp : p) => fun (hq : q) => hp

theorem t2 (f : p → q) (g : q → r) : p → r :=
  fun (hp : p) => g (f hp)

theorem triv (a b c : Nat)
  : a + b + c = a + c + b :=
  by rw [
    add_assoc,
    add_comm b,
    add_assoc,
  ]



#check t2

#eval

/-
潜入萨墓时他已经按耐不住嘴边疯狂的笑容
他的一生都因为弱小而被操纵
他是这样在泥泞中匍匐爬行,没有尊严,没有人格,没有一切
他就像蛆虫一样丑陋,令人嫌恶,任人宰割
没有什么是不可以背叛的,没有什么是值得信仰的
他的内心从很早开始就已经空无一物了
他所期待的也不过是有一天
蛆虫也能长出站立的双腿，再长出钢铁般的拳头,拥有无可匹敌的力量
那时他是不是也可以去撕咬他人的血肉，吞噬他人的骨头，操纵他人的人生
让世间所有的生灵都感受他曾经的痛苦
让所有生灵都明白弱小即是原罪，他们活该被自己踏入尘土
-/
