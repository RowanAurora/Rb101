=begin
Write a method that can rotate the last n digits of a number. For example:

PROBLEM:
Write a method that can "rotate" the last n digits of a number 
RULES:

INPUT:

OUTPUT:


E - Examples Test cases

D - Data Structure

A - Algorithm (Fully fleshed out logic of code chunk)


C - Code (with intent)
=end

def rotate_array(array)
  arr = array.dup
  arr << arr.shift
  arr 
end 

def rotate_rightmost_digits(number1, num)
  arr1 = number1.to_s.chars
  arr2 = arr1[-num, num]
  arr1 -= arr2
  arr1 += rotate_array(arr2)
  arr1.join.to_i
end



p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917