=begin
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

Examples:


sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

problem:
WRite a method thattakes an array of numbers and then returns the sum of the sums of each leading subsequence for that array. always at least 1 numbers
input: Array
output: sum of sum interger
Examples

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
algorithm

Define sum of sums method to accept 1 array argument 
initialize a variable `current number`
iterate over the inout Array
  - add the current element to the `current number variable`
return the result of the interation

code:
=end

def sum_of_sums(array)
  current_num = 0
  rest_of_nums = []
  array.each do |num|
    rest_of_nums << num
    current_num += rest_of_nums.sum
  end
  current_num
end


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35