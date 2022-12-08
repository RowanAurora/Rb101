=begin
The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array or list of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
-- should be 6: [4, -1, 2, 1]
Easy case is when the list is made up of only positive numbers and the maximum sum is 
the sum of the whole array. If the list is made up of only negative numbers, return 0 instead.

Empty list is considered to have zero greatest sum. Note that the empty list or array is also a valid sublist/subarray.

PROBLEM: Find the section of an array that has the maximum value when summed and return its value

Input: An array of integers
OUTPUT an integer reprenting the sub array with the highest value

RULES :
-Empty lists return 0
- if all numbers are negative, return 0

algorithm:
Initialize result_arr = []
Iterate though the Input with each_with_index
  Initialize a counter to 1
  -loop and add sub section to result_arr
  -add to result_arr: [index, counter]
  -incriment counter
  break when counter + index == input.size
Interate over result_arr converting each to its sum
return highest number
=end

def max_sequence(array)
  result_arr = []
  array.each_with_index do |num, index|
    counter = 1
    loop do
      result_arr << array[index, counter]
      break if counter + index >= array.size
      counter += 1
    end
  end
  result = result_arr.map(&:sum).max
  if result < 1 || result_arr.empty?
    0
  else
    result
  end
end

p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])