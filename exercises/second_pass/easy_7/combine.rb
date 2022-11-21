=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Example:

Copy Code
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
= end

=begin
P - Understand the Problem
Problem: Write a Method that combines 2 arrays passed in as arguments
and returns a new array that contains all elements from both arguments in alternating appearennce

Implicit rules:

Explicit rules:
- both non empty, with same number of elements
Input:

Output:


E - Examples Test cases
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
initialize variable `result`
initialize a counter
Iterate through first array argument
add element to result
add element from second array argument to result using counter
incriment counter
return result Array

C - Code (with intent)
=end

def interleave(arr1, arr2)
  counter = 0
  result = []
  arr1.each do |element|
    result << element
    result << arr2[counter]
    counter += 1
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']