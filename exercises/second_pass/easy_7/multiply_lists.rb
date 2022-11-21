=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

Examples:


multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

Problem: Write a method that takes two array of integer arguments and returns a new array that contains the prodcit of each pair of numbers from the arguments that have the same Index. 
Input: Two arrays of numbers
output: One array which each element is the product of the elements at each index from the input arrays

test cases 
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

algorithm
initialize a local variable `result`
Initialize a counter
iterate through one array
  -multiply the current element by the number at same index of other Array
result new Array

code: with intent:
=end
def multiply_list(arr1, arr2)
  counter = 0
  result = arr1.map do |num|
   newnum = num * arr2[counter]
   counter += 1
   newnum
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]