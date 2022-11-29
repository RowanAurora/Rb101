=begin
# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

Problem:
Write a method that takes an array and returns an array of the two numbers closest in value
Implicit rules:

Explicit rules:

Input:array

Output:2 element array



E - Examples Test cases
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Create a new array that is each possible pair of elements
Initialize a result array
Iterate though the new array, 
  - compare result arr to each sub array by comparing what the max elelment - min element is
  - if less than current array, replace
  when done, return new array

C - Code (with intent)
=end

def perm_arr_maker(array)
  arr = []
  array.permutation(2) { |perm| arr << perm}
  arr
end

def closest_numbers(array)
  arr = perm_arr_maker(array)  
  result = arr[0]
  arr.each do |subarr|
    if (subarr.max - subarr.min) < (result.max - result.min)
    result = subarr
    end
  end
  result
end
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]


# The tests above should print "true".