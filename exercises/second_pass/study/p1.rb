=begin

# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:


# The tests above should print "true".


P - Understand the Problem
Problem: Find out how many numbers are smaller than each number. return a new array
only count unique values
Input: Array
output: array the same size with counts of each number

Implicit rules:

Explicit rules:
count each number once
return same size array


E - Examples Test cases
p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
                            == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Create a duplicate of the INput array that is unique 
create a results array
iterate though original array, each elelment iterating through the dup array
add1 to count if smaller than current number.
Append to result array
reset count
start at next element of the array

C - Code (with intent)
=end

def smaller_numbers_than_current(array_org)
  arr = array_org.uniq
  result = []
  array_org.each do |num|
    count = 0
    arr.each do |num1|
      count += 1 if num1 < num
    end
    result << count
  end
  result
  end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]