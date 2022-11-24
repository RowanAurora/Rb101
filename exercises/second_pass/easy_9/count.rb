=begin
Create a method that takes two integers as arguments. The first argument is a count, 
and the second is the first number of a sequence that your method will create. 
The method should return an Array that contains the same number of elements as the count
 argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, 
while the starting number can be any integer value. 
If the count is 0, an empty list should be returned.

PROBLEM:
Write a method that takes two number arguments. first is a count, second is first number in a sequence.
Return an array that contains the same number of elements as the count argument
while the values of each element will be multiples of the starting number

RULES:

INPUT: first is count, second is sequence count

OUTPUT:array 


E - Examples Test cases
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Generate a range using the first number and 1
iterate though, multiplying each by the second number
return the resulting array


C - Code (with intent)
=end

def sequence(num1, num2)
  (1..num1).map { |int| int * num2}
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []