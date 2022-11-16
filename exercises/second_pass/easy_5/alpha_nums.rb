=begin
P - Understand the Problem
Problem: Write a method that takes an array of integers between 0 and 19,
and returns an array of those integers sorted based on the words for the number.

Implicit rules:

Explicit rules:
- array of integers
- sorta by words not numerically
Input:array of numbers

Output:array of numbers sorted to criteria


E - Examples Test cases
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Take input arrary
compare to the words equivilant using an array of the words that matches the index they are at
-sort according to that criteria

C - Code (with intent)
=end

NUM_WORDS = %w(zero, one, two, three, four, five, six, seven, eight, nine, 
ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)

def alphabetic_number_sort(array)
  array.sort_by do |num|
    NUM_WORDS[num]
  end
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]