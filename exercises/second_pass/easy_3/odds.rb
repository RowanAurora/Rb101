=begin
P - Understand the Problem
Problem: Write a method that returns an array that contains every other element of an array.
         

Implicit rules: Accept array of any object
                Accept empty array

Explicit rules: The value of the returned array should be the 1st, 3rd ,5th etc elements of
                argument array

Input:array

Output:array with only the odd ordered elements (not by index)


E - Examples Test cases

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

D - Data Structure
The method requires arrays

A - Algorithm (Fully fleshed out logic of code chunk)

Define method to accept 1 param
Iterate though the passed array
  - add odd elements to new array
return new array


C - Code (with intent)
=end

def oddities(arr1)
  arr2 = []
  counter = 0
  loop do
    break if counter >= arr1.size
    if counter.even?
      arr2 << arr1[counter]
      counter += 1
    else 
      counter += 1
    end
  end 
  arr2
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]