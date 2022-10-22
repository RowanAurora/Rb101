# problem
# :write a method that takes two array arugments that are arrays of integers 
# and returns a new array that contains the product of each paur of numbers from the arguments that have the same index
# rules
# -arrays have same number of elements
# -always integers
# test
# arr_1 = [1, 2, 3]
# arr_2 = [1, 2, 3]
# arr_3 = arr_1.zip(arr_2).map do |arr|
#   arr.sum
# end

# data structure
# - Arrays filled with integer objects

# algorithm
# - take the first array and call .zip with the second array as arguments
# - call iterate through the return of the previous method call and product the arrays 
# - return the new array

# code 

def multiply_list(array, array_2)
  arr_3 = array.zip(array_2).map { |arr| arr.inject(&:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])