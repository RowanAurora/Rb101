=begin
P - Understand the Problem
Problem:
 Write a method named include? that takes anarray and a search value. 
 return true if value is in the array, false if not
Implicit rules:

Explicit rules:
-return true if search value is in array argument
-return false if not
Input: array, search value

Output: boolean


E - Examples Test cases
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
Initialize a variable `compare` to false
Iterate through input check each element against sv
if a match occurs, overwrite `compare` to true


C - Code (with intent)
=end
def include?(array, search_value)
  compare = false
  array.each do |element|
    if element == search_value
      compare = true
    end
  end
  compare
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false