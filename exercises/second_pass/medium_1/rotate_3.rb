=begin
If you take a number like 735291, and rotate it to the left, you get 352917.
 If you now keep the first digit fixed in place, and rotate the remaining digits, 
 you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759.
  Keep the first 3 digits fixed in place and rotate again to get 321597. 
  Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
  The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. 
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.
Problem:
Write a method that rotates a number the max amount of times. 

Example:
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

Algorithm:
Determine the length of the input number and record
create a loop that uses the length number as the second argument for rotate rightmost digits
every pass, interate the counter by -1
break loop when counter is 0
return last returned array
code:
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

def max_rotation(num)
  counter = num.digits.size
  while counter > 0
    num = rotate_rightmost_digits(num, counter)
    counter -= 1
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845