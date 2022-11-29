=begin
Write a method that takes two sorted Arrays as arguments, 
and returns a new Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array. 

You must build the result array one element at a time in the proper order.

PROBLEM: Merge and sort two arrays without using the .sort method

INPUT: Two arrays

OUTPUT: One array all elements sorted

ALGORITHM:

Create a new array that is both input arrays merged = arr
Initialize current_number = 0 
Iterate loop through arr, checking if an element is less than or equal to current number
If yes, Add to result array, find index and delete from arr
end loop when arr is empty
return new array

=end
require 'pry'
def together(arr1, arr2)
  arr3 = arr1 + arr2.flatten
  arr3.flatten
end

def merge(arr1, arr2)
  p arr = together(arr1, arr2)
  result = []
  current_number = arr.min
  loop do
    result << arr.min
    idx = arr.find_index(arr.min)
    arr.delete_at(idx)
    break if arr == []
  end
  result
end

arr1 = [1, 5, 9]
arr2 = [2, 6, 8]
p merge(arr1, arr2) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

p arr1 == [1, 5, 9]
# was stuck for a bit because of an attempt at a conditional
# if arr[counter] <= current_num, but this results in never being able to increase current num


