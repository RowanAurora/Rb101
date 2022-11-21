=begin
P - Understand the Problem
Problem:
WRite a methjod that takes an array as an argument and returns a nested array of two arrays.
that conatains the first half of the argument in one and the second half in the other.
Implicit rules:

Explicit rules:
- if odd number of elements, middle is in the first array
Input:one array

Output:one nested array


E - Examples Test cases

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)
If even, divide size by 2 and subtract 1 to get last index number for first array
If odd, divide size by 2 to get index for last element of first array.
Retrieve up to the index number provided by last operation
retrieve from that number + 1 to the size - 1
combine the two into a nest ed array

C - Code (with intent)
=end

def halvsies(array)
  arr3 = []
  last_element_1 = array.size / 2
  if array.size.even?
    arr1 = array[0..last_element_1]
    arr2 = array[last_element_1..array.size]
  elsif array.size == 1
    return [array, []]
  else
    arr1 = array[0...last_element_1]
    arr2 = array[(last_element_1 + 1)..array.size]
  end
  arr3 << arr1
  arr3 << arr2
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) == [[], []]