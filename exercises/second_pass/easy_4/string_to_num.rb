=begin
P - Understand the Problem
Problem:Write a method that converts a string of digits to its integer equivilant

Implicit rules:

Explicit rules:
- no use of to_i or other standard conversion methods
Input:string of numbers

Output:integer equivalent 


E - Examples Test cases
string_to_integer('4321') == 4321
string_to_integer('570') == 570

D - Data Structure
A hash with the keys as string numbers and values as integers
could be useful for converting

A - Algorithm (Fully fleshed out logic of code chunk)
Initialize a constant hash with string keys and integer values
define string_to_integer method with 1 parameter
initialize `total` local variable
assign `counter` local variable to the size of the input minus 1
assign `multiply` local variable to 1
create a loop
Retrieve a number from the hash using index on the string
multiply the number by `multiply`
multiply `multiply` by 10
add number to total
remove 1 from counter
end the loop
return total

C - Code (with intent)
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  total = 0
  counter = string.size 
  multiply = 1
  num = 0
  loop do
    counter -= 1
    num = DIGITS[string[counter]]
    num *= multiply
    multiply *= 10
    total += num
    break if counter == 0
  end
  total
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570