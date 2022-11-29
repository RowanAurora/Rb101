=begin
# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

P - Understand the Problem
Problem: write a method that takes an array of integers. return the min sum of 5 consecutive numbers in the array.
if array has < 5 numbers, return nil/

Implicit rules:

Explicit rules:
Return nil if array smaller than 5
Input:Array

Output: smallest sum of 5 consequtive numbers


E - Examples Test cases
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Return nil if array size is < 5
Result_arr = []
current_sum = []
idx1 = 0
idx2 = 4
create a loop
Add index 0-4 to current sum
sum and add to result_arr
incrument idx1 and idx2 by 1
break if idx == array size - 1
return the smallest number from result_arr
C - Code (with intent)
=end

def minimum_sum(array)
return nil if array.size < 5
result_arr = []
current_sum = []
idx1 = 0
idx2 = 4
loop do
  result_arr << array[idx1..idx2].sum
  idx1 += 1
  idx2 += 1
  break if idx2 >= array.size
end
result_arr.min
end


p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) #== 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".