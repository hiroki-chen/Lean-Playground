import GrammarAndSyntax

-- Evaluate the expressions.
#eval 1 + 2
#eval "hello world!"

def my_num := 123
#eval my_num + 123

#eval String.append "great " (String.append "oak " "tree")
#eval if 3 == 3 then 5 else 7
#check (1 - 2: Int)
#eval (toString 1: String)

-- Functions
def foo (n: Nat) : Nat := n + 1
#eval foo 100

def bar (n: Nat): Bool :=
  match n with
  | 0 => true
  | _ => false
#eval bar 100

-- Define new types.
def NatFunc: Type := Nat -> Nat
def Sink: Type := Nat -> Empty

-- Define a theorem.
theorem bar_correct : (n: Nat) -> n == 0 -> bar n == true := by
  intro n; induction n
  . simp 
  . simp

#check bar_correct

-- Define a struct.
structure Point where
  x : Float
  y: Float
deriving Repr

def point: Point := {x := 1.0, y := 2.0 }
#eval point

-- This will print 'hello world!'
def main : IO Unit :=
  IO.println s!"Hello, {hello}!"
