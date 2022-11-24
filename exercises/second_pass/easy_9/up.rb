=begin
Write a method that takes an integer argument, and returns an Array of all integers, 
in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

PROBLEM: Write a method that takes an integer argument and returns an array of all integers in sequence
between one and the argument

RULES:

INPUT:num

OUTPUT:array of numbers 1 to argument in sequence


E - Examples Test cases
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Generate a range using 1 and the argument
convert to an array

C - Code (with intent)
=end

def sequence(num)
  (1..num).to_a
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]