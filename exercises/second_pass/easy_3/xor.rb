=begin
P - Understand the Problem
Problem: Write a method name xor that takes 2 arguments and onyl returns true if one argument is truthy

Implicit rules:

Explicit rules:
-Return a boolean
-one argument must be flasey and one truthy for true return, otherwise false.

Input:Two arguments 

Output: impilicit return of boolean

E - Examples Test cases
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)

Define method with 2 paramaters
Check the truthyness of each argument
  - Check if 1 is true 2 is false
  - check if 2 is true 1 is false
  - everything else return false
If either of the first two options are true
-return true
otherwise return false
end method

C - Code (with intent)
=end

def xor?(arg1, arg2)
  if arg1 == true && arg2 == false
    true
  elsif arg2 == true && arg1 == false
    true
  else
    false
  end
end


p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false