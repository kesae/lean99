variable {α : Type}

def myLast (l : List α) : Option α :=
  match l with
  | [] => none
  | [x] => x
  | _ :: xs => myLast xs

-- The following codes are for test and you should not edit these.

example : myLast [1, 2, 3, 4] = some 4 := by rfl

example : myLast ([] : List α) = none := by rfl

example : myLast [1] = some 1 := by rfl

example : myLast ['x', 'y', 'z'] = some 'z' := by rfl
