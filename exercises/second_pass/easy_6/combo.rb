=begin
P - Understand the Problem
Problem: Write a method that takes two arrays and returns one array that contains all the values from the argument arrays
wioth no duplicates

Implicit rules:

Explicit rules:
- return a new array
- only unique objects in array
Input: 2 arrays

Output: 1 array, no dup objects


E - Examples Test cases
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Add the two argument arrays together
remove any duplicate elements
return the new array

C - Code (with intent)
=end
def merge(array1, array2)
  (array1 + array2).uniq
end  

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]