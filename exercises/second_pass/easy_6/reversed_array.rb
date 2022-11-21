=begin
P - Understand the Problem
Problem: Write a method that takes an array as an argument and reverses its elements 
in place. Mutate the arrau. 

Implicit rules:
-array of any data type
Explicit rules:
- Return value is the same object
- no use of array reverse or reverse!
Input:Array

Output: array rearranged.


E - Examples Test cases
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Swap first and last elements 
incriment inwards till middle. 
use index till size / 2

C - Code (with intent)
=end

def reverse!(array)
  count_up = 0
  count_down = -1
  while count_up < array.size / 2
    array[count_up], array[count_down] = array[count_down], array[count_up]
    count_up += 1
    count_down -= 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true