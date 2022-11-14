=begin
P - Understand the Problem
Problem: Write a method that takes an Array of numbers and returns an array with the same number of element
         and each element has the running total

Implicit rules:
always array of int being passed

Explicit rules:
- Return an array with the same number of elements
- each is a running total
Input:array of intergers

Output:array of integers with same number of elements


E - Examples Test cases
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Define `running_total` method to accept 1 argument
Initialize a `current_number` local variable
Initialize a `total_arr`
Iterate through the argument adding element to current number
  -add `current_number` to `total_arr`
return total_arr

C - Code (with intent)
=end

def running_total(array)
  current_number = 0
  new_arr = []
  array.each do |num|
    current_number += num
    new_arr << current_number
  end
  new_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []